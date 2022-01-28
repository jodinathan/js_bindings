/// Media Capture Automation
///
/// https://w3c.github.io/mediacapture-automation/
@JS('window')
@staticInterop
library mediacapture_automation;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

enum MockCapturePromptResult { granted, denied }

@anonymous
@JS()
@staticInterop
class MockCapturePromptResultConfiguration {
  external factory MockCapturePromptResultConfiguration(
      {MockCapturePromptResult getUserMedia,
      MockCapturePromptResult getDisplayMedia});
}

extension PropsMockCapturePromptResultConfiguration
    on MockCapturePromptResultConfiguration {
  external MockCapturePromptResult get getUserMedia;
  external set getUserMedia(MockCapturePromptResult newValue);
  external MockCapturePromptResult get getDisplayMedia;
  external set getDisplayMedia(MockCapturePromptResult newValue);
}

@anonymous
@JS()
@staticInterop
class MockCaptureDeviceConfiguration {
  external factory MockCaptureDeviceConfiguration(
      {String label, String deviceId, String groupId});
}

extension PropsMockCaptureDeviceConfiguration
    on MockCaptureDeviceConfiguration {
  external String get label;
  external set label(String newValue);
  external String get deviceId;
  external set deviceId(String newValue);
  external String get groupId;
  external set groupId(String newValue);
}

@anonymous
@JS()
@staticInterop
class MockCameraConfiguration implements MockCaptureDeviceConfiguration {
  external factory MockCameraConfiguration(
      {double defaultFrameRate = 30, String facingMode = 'user'});
}

extension PropsMockCameraConfiguration on MockCameraConfiguration {
  external double get defaultFrameRate;
  external set defaultFrameRate(double newValue);
  external String get facingMode;
  external set facingMode(String newValue);
}

@anonymous
@JS()
@staticInterop
class MockMicrophoneConfiguration implements MockCaptureDeviceConfiguration {
  external factory MockMicrophoneConfiguration({int defaultSampleRate = 44100});
}

extension PropsMockMicrophoneConfiguration on MockMicrophoneConfiguration {
  external int get defaultSampleRate;
  external set defaultSampleRate(int newValue);
}
