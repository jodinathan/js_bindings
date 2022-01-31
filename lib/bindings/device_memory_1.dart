/// Device Memory 1
///
/// https://w3c.github.io/device-memory/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library device_memory_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class NavigatorDeviceClass {
  external NavigatorDeviceClass();
}

extension PropsNavigatorDeviceClass on NavigatorDeviceClass {
  double get deviceMemory => js_util.getProperty(this, 'deviceMemory');
}

@JS()
@staticInterop
class NavigatorDeviceMemory {
  external NavigatorDeviceMemory();
}

extension PropsNavigatorDeviceMemory on NavigatorDeviceMemory {
  double get deviceMemory => js_util.getProperty(this, 'deviceMemory');
}
