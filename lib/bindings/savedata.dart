/// Save Data API
///
/// https://wicg.github.io/savedata/
@JS('window')
@staticInterop
library savedata;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

@JS()
@staticInterop
class NetworkInformationSaveData {
  external factory NetworkInformationSaveData();
}

extension PropsNetworkInformationSaveData on NetworkInformationSaveData {
  external bool get saveData;
}
