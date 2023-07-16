import 'package:async/async.dart';
import 'package:getx_clean_template_vip/core/utils/logger.dart';

class ApiParallel<T> {
  Stream<ApiResponse<T>> execute(List<Future<T>> apiCalls) {
    final StreamGroup<ApiResponse<T>> streamGroup = StreamGroup<ApiResponse<T>>();

    for (int i = 0; i < apiCalls.length; i++) {
      final Future<T> apiCall = apiCalls[i];
      final ApiResponse<T> apiResponse = ApiResponse<T>(apiCall, i);
      streamGroup.add(apiResponse.asStream());
    }

    return streamGroup.stream;
  }
}

class ApiResponse<T> {
  final Future<T> apiCall;
  final int index;

  ApiResponse(this.apiCall, this.index);

  Stream<ApiResponse<T>> asStream() async* {
    final T response = await apiCall;
    yield ApiResponse<T>(apiCall, index);
  }

  Future<dynamic> logResponse() async {
    final dynamic response = await apiCall;
    Logger.log("ISOLATE",'API $index response: ${response.toString()}');
    return response;
  }
}
