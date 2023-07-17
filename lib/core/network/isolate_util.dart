import 'dart:isolate';

import '../utils/logger.dart';

class IsolateUtils {
  static void runIsolate<T>(
      Function(T, SendPort) isolateMethod,
      T argument,
      void Function(dynamic) onUpdate,
      ) async {

    final receivePort = ReceivePort();

    final isolate = await Isolate.spawn(_isolateEntry, {
      'isolateMethod': isolateMethod,
      'argument': argument,
      'sendPort': receivePort.sendPort,
    });

    receivePort.listen((message) {
      if (onUpdate != null) {
        onUpdate(message);
      }
    });

    // Optional: Listen for isolate errors and exit events
    isolate.errors.listen((error) {
      Logger.log("ISOLATE",'Isolate error: $error');
    });

    isolate.addOnExitListener(receivePort.sendPort);

    // To stop the isolate when needed, call isolate.kill(priority: Isolate.immediate);
  }

  static void _isolateEntry(dynamic data) {
    final isolateMethod = data['isolateMethod'];
    final argument = data['argument'];
    final mainSendPort = data['sendPort'];

    isolateMethod(argument, mainSendPort);
  }
}

/// for invoke isolate util
/*IsolateUtils.runIsolate(
backgroundProcess,
'Hello from the main isolate!',
(message) {
print('Received message: $message');
},);

void backgroundProcess(dynamic data, SendPort sendPort) {
  // Access the argument and sendPort from the data map
  final argument = data['argument'];
  final mainSendPort = data['sendPort'];
  // Perform your background process here
  // Example: Send a message back to the main isolate
  mainSendPort.send('Background process completed with argument: $argument');
}
*/
