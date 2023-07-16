import 'dart:isolate';

import 'package:async/async.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_clean_template_vip/core/utils/logger.dart';
import 'package:getx_clean_template_vip/domain/entity/post_responds.dart';

import '../../../core/routes/navigation_args.dart';
import '../../../domain/usecases/home_post_use_case.dart';
import '../../../domain/usecases/home_postdetails_use_case.dart';
import '../../base_controller.dart';

class HomeController extends BaseController {
  HomeController(this._postUseCase, this._postDetailsUsecase);

  final HomeUseCaseForGetPosts _postUseCase;
  final HomeUseCaseForGetPostDetails _postDetailsUsecase;

  var id = Get.arguments[NavigationArgs.id];
  var token = Get.arguments[NavigationArgs.data];

  @override
  void onInit() {
    Logger.log("HomeScreen", "-- token: $token");

   // fetchApi_Serial();
   // fetchApi_Parallel();

    performBackgroundOperation(_postUseCase);
  }

  /// when we need to call api one by one use this flow
  fetchApi_Serial() async {
    var responds_one = await _postDetailsUsecase.execute("");
    /**  'responds_two' will execute only after
     * 'responds_one' result come */
    var responds_two = await _postUseCase.execute();
  }

  /// when we need to call api Asynchronous use this flow
  fetchApi_Parallel() async {
    /** 'Future.wait' call multiple apis parallel
     * both api call success then returned the result **/
    final result = await Future.wait(
        [_postDetailsUsecase.execute(""),
          _postUseCase.execute()
        ]);

    var postDetails = result[0];
    var posts = result[1];
  }
  
  fetchApiParallel_DependentonOtherAPIValues() async{
    final result = await Future.wait(
        [ _postDetailsUsecase.execute(""),
          _postUseCase.execute()
        ])
    .then((resultData) {
      // call another api based on first one value
      var newResult = _postDetailsUsecase.execute(resultData[0]!.page!.toString());
    }).whenComplete(() {
      // hide loader
    })
    .onError((error, stackTrace) {Logger.log("ERROR",error.toString());});
  }

}




// TODO  - we should write all isolate functionality in out side of the class
/// if want perform huge/UI affecting task
/// eg: image compression , huge json parsing , upload document etc..
///  if use 'await' it will freez or hang the UI(user interaction blocked)
performBackgroundOperation(HomeUseCaseForGetPosts postUseCase) {
  /**  Isolate : Using isolates,
   * Dart code can perform multiple independent tasks at once
   * Each Isolate has its own memory - unlike Threads, don’t share memory.
   * Each Isolate has an event loop executing events
   * Our flutter app runs in a main isolate
   * 2 methods 'spawn()'  and 'compute()'
   * compute():- performing computationally expensive tasks
   * spawn() : -This is useful when performing tasks that might block the main thread,
   * such as network requests, heavy calculations, or file I/O operations.**/

  Future.delayed(const Duration(milliseconds: 1000), () {
    Logger.log("FreezingCALL","-- ${runHeavyTask(100000000)} -- "); // UI will freez when call directly
  });

  // useSpawn(postUseCase);
  //useCompute();
}

useCompute() async {
   await compute(runHeavyTask, 100000000)
      .then((value) { Logger.log("RESULT", "--SUM: $value ----"); });
}

/// here we can write any login image compression or local DB writing
int runHeavyTask(int limit) {
  int sum = 0;
  for (int i = 0; i < limit; i++) {
    sum += i;
  }
  return sum;
}

Future<String> useSpawn(HomeUseCaseForGetPosts postUseCase) async {
  const String imageDownloadLink = 'this is a link';
  // create the port to receive data from
  final receivePort = ReceivePort();
  try {

    await Isolate.spawn(
        _readAndParseJson, [receivePort.sendPort, imageDownloadLink,postUseCase]);

    /// we can listen data from the isolate
    receivePort.listen((message) {
      if (message is String) {
        // Handle successful data
        Logger.log("RESULT",'API response: $message');
      } else if (message is Error) {
        // Handle error
        Logger.log("RESULT",'API request failed');
      } else if (message is double) {
        // Handle progress update
        final progressPercentage = message * 100;
        Logger.log("RESULT",'Download progress: ${progressPercentage.toStringAsFixed(2)}%');
      }
    });


  } on Object {
    // check if sending the entrypoint to the new isolate failed.
    // If it did, the result port won’t get any message, and needs to be closed
    receivePort.close();
  }

  // Receive the SendPort from the Isolate
  SendPort response = await receivePort.first;

  return response as String;
}

// It contain the send port. This send port will actually be used to
// communicate the result back to the main isolate
Future<void> _readAndParseJson(List<dynamic> args) async {
  SendPort sentPort = args[0];
  String fileLink = args[1];
  HomeUseCaseForGetPosts postUseCase = args[2];

  var resultData = await postUseCase.execute();
  //here we can perform download action - parse any huge operation- computations or REST api call
  if (resultData!.page == 200) {
    // Successful response
    sentPort.send(resultData);
  } else {
    // Handle error
    sentPort.send(Error());
  }

 // Isolate.exit(sentPort, resultData);
}
