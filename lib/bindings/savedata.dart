/// Save Data API
///
/// https://wicg.github.io/savedata/
@JS('window')
@staticInterop
library savedata;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

@JS()
@staticInterop
class NetworkInformationSaveData {
  external NetworkInformationSaveData();
}

extension PropsNetworkInformationSaveData on NetworkInformationSaveData {
  bool get saveData => js_util.getProperty(this, 'saveData');
}
