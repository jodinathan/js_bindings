/// DataCue API
///
/// https://wicg.github.io/datacue/
@JS('window')
@staticInterop
library datacue;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html */

@JS()
@staticInterop
class DataCue implements TextTrackCue {
  external factory DataCue(
      double startTime, /* double | NaN */ dynamic endTime, dynamic value,
      [String? type]);
}

extension PropsDataCue on DataCue {
  external dynamic get value;
  external set value(dynamic newValue);
  external String get type;
}
