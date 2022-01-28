/// Device Memory 1
///
/// https://w3c.github.io/device-memory/
@JS('window')
@staticInterop
library device_memory_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

@JS()
@staticInterop
class NavigatorDeviceClass {
  external factory NavigatorDeviceClass();
}

extension PropsNavigatorDeviceClass on NavigatorDeviceClass {
  external double get deviceMemory;
}

@JS()
@staticInterop
class NavigatorDeviceMemory {
  external factory NavigatorDeviceMemory();
}

extension PropsNavigatorDeviceMemory on NavigatorDeviceMemory {
  external double get deviceMemory;
}
