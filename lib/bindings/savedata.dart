/// Save Data API
///
/// https://wicg.github.io/savedata/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library savedata;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class NetworkInformationSaveData {
  external NetworkInformationSaveData();
}

extension PropsNetworkInformationSaveData on NetworkInformationSaveData {
  bool get saveData => js_util.getProperty(this, 'saveData');
}
