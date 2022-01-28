/// Audio Output Devices API
///
/// https://w3c.github.io/mediacapture-output/
@JS('window')
@staticInterop
library audio_output;

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
  external String get deviceId;
  external set deviceId(String newValue);
}
