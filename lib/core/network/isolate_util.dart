/*
import 'dart:isolate';

class IsolateUtils {
  static void runIsolate<T>(
      Function(T, SendPort) isolateMethod,
      T argument,
      void Function(dynamic) onUpdate,
      ) {
    final receivePort = ReceivePort();
    Isolate.spawn(isolateMethod, [argument, receivePort.sendPort]);

    receivePort.listen((message) {
      // Handle messages received from the isolate
      onUpdate(message);
    });
  }
}

*/
