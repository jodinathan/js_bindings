/// Save Data API
///
/// https://wicg.github.io/savedata/
@JS('window')
library savedata;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

@JS()
abstract class NetworkInformationSaveData {
  external bool get saveData;
}
