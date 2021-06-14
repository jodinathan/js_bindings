/// Audio Output Devices API
///
/// https://w3c.github.io/mediacapture-output/
@JS('window')
library audio_output;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'mediacapture_streams.dart';

@anonymous
@JS()
class AudioOutputOptions {
  external String get deviceId;
  external set deviceId(String newValue);

  external factory AudioOutputOptions({String deviceId = ''});
}
