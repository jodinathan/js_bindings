/// Audio Output Devices API
///
/// https://w3c.github.io/mediacapture-output/
@JS('window')
@staticInterop
library audio_output;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
mediacapture_streams */

@anonymous
@JS()
@staticInterop
class AudioOutputOptions {
  external factory AudioOutputOptions({String deviceId = ''});
}

extension PropsAudioOutputOptions on AudioOutputOptions {
  String get deviceId => js_util.getProperty(this, 'deviceId');
  set deviceId(String newValue) {
    js_util.setProperty(this, 'deviceId', newValue);
  }
}
