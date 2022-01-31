/// DataCue API
///
/// https://wicg.github.io/datacue/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library datacue;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class DataCue implements TextTrackCue {
  external DataCue(
      double startTime, /* double | NaN */ dynamic endTime, dynamic value,
      [String? type]);
}

extension PropsDataCue on DataCue {
  dynamic get value => js_util.getProperty(this, 'value');
  set value(dynamic newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
}
