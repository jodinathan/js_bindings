/// Device Memory 1
///
/// https://w3c.github.io/device-memory/
@JS('window')
library device_memory_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

@JS()
class NavigatorDeviceClass {
  external double get deviceMemory;

  external factory NavigatorDeviceClass();
}

@JS()
abstract class NavigatorDeviceMemory {
  external double get deviceMemory;
}
