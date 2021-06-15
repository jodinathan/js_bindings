/// DataCue API
///
/// https://wicg.github.io/datacue/
@JS('window')
library datacue;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';

@JS()
class DataCue // EventTarget -> {} -> TextTrackCue
    extends TextTrackCue {
  external factory DataCue(
      double startTime, /* double | NaN */ dynamic endTime, dynamic value,
      [String? type]);
  external dynamic get value;
  external set value(dynamic newValue);
  external String get type;
}
