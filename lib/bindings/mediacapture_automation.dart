/// Media Capture Automation
///
/// https://w3c.github.io/mediacapture-automation/
@JS('window')
library mediacapture_automation;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

@JS()
enum MockCapturePromptResult { granted, denied }

@anonymous
@JS()
class MockCapturePromptResultConfiguration {
  external MockCapturePromptResult get getUserMedia;
  external set getUserMedia(MockCapturePromptResult newValue);
  external MockCapturePromptResult get getDisplayMedia;
  external set getDisplayMedia(MockCapturePromptResult newValue);

  external factory MockCapturePromptResultConfiguration(
      {MockCapturePromptResult getUserMedia,
      MockCapturePromptResult getDisplayMedia});
}

@anonymous
@JS()
class MockCaptureDeviceConfiguration {
  external String get label;
  external set label(String newValue);
  external String get deviceId;
  external set deviceId(String newValue);
  external String get groupId;
  external set groupId(String newValue);

  external factory MockCaptureDeviceConfiguration(
      {String label, String deviceId, String groupId});
}

@anonymous
@JS()
class MockCameraConfiguration // null -> {} -> MockCaptureDeviceConfiguration
    with
        MockCaptureDeviceConfiguration {
  external double get defaultFrameRate;
  external set defaultFrameRate(double newValue);
  external String get facingMode;
  external set facingMode(String newValue);

  external factory MockCameraConfiguration(
      {double defaultFrameRate = 30, String facingMode = 'user'});
}

@anonymous
@JS()
class MockMicrophoneConfiguration // null -> {} -> MockCaptureDeviceConfiguration
    with
        MockCaptureDeviceConfiguration {
  external int get defaultSampleRate;
  external set defaultSampleRate(int newValue);

  external factory MockMicrophoneConfiguration({int defaultSampleRate = 44100});
}
