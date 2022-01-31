/// Media Capture Automation
///
/// https://w3c.github.io/mediacapture-automation/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library mediacapture_automation;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
  MockCapturePromptResult get getUserMedia =>
      js_util.getProperty(this, 'getUserMedia');
  set getUserMedia(MockCapturePromptResult newValue) {
    js_util.setProperty(this, 'getUserMedia', newValue);
  }

  MockCapturePromptResult get getDisplayMedia =>
      js_util.getProperty(this, 'getDisplayMedia');
  set getDisplayMedia(MockCapturePromptResult newValue) {
    js_util.setProperty(this, 'getDisplayMedia', newValue);
  }
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
  String get label => js_util.getProperty(this, 'label');
  set label(String newValue) {
    js_util.setProperty(this, 'label', newValue);
  }

  String get deviceId => js_util.getProperty(this, 'deviceId');
  set deviceId(String newValue) {
    js_util.setProperty(this, 'deviceId', newValue);
  }

  String get groupId => js_util.getProperty(this, 'groupId');
  set groupId(String newValue) {
    js_util.setProperty(this, 'groupId', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MockCameraConfiguration implements MockCaptureDeviceConfiguration {
  external factory MockCameraConfiguration(
      {double defaultFrameRate = 30, String? facingMode = 'user'});
}

extension PropsMockCameraConfiguration on MockCameraConfiguration {
  double get defaultFrameRate => js_util.getProperty(this, 'defaultFrameRate');
  set defaultFrameRate(double newValue) {
    js_util.setProperty(this, 'defaultFrameRate', newValue);
  }

  String get facingMode => js_util.getProperty(this, 'facingMode');
  set facingMode(String newValue) {
    js_util.setProperty(this, 'facingMode', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MockMicrophoneConfiguration implements MockCaptureDeviceConfiguration {
  external factory MockMicrophoneConfiguration({int defaultSampleRate = 44100});
}

extension PropsMockMicrophoneConfiguration on MockMicrophoneConfiguration {
  int get defaultSampleRate => js_util.getProperty(this, 'defaultSampleRate');
  set defaultSampleRate(int newValue) {
    js_util.setProperty(this, 'defaultSampleRate', newValue);
  }
}
