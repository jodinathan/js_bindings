/// Media Capture Automation
///
/// https://w3c.github.io/mediacapture-automation/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library mediacapture_automation;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum MockCapturePromptResult {
  granted('granted'),
  denied('denied');

  final String value;
  static MockCapturePromptResult fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MockCapturePromptResult> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const MockCapturePromptResult(this.value);
}

@anonymous
@JS()
@staticInterop
class MockCapturePromptResultConfiguration {
  external factory MockCapturePromptResultConfiguration._(
      {String? getUserMedia, String? getDisplayMedia});

  factory MockCapturePromptResultConfiguration(
          {MockCapturePromptResult? getUserMedia,
          MockCapturePromptResult? getDisplayMedia}) =>
      MockCapturePromptResultConfiguration._(
          getUserMedia: getUserMedia?.value ?? undefined,
          getDisplayMedia: getDisplayMedia?.value ?? undefined);
}

extension PropsMockCapturePromptResultConfiguration
    on MockCapturePromptResultConfiguration {
  MockCapturePromptResult get getUserMedia => MockCapturePromptResult.fromValue(
      js_util.getProperty(this, 'getUserMedia'));
  set getUserMedia(MockCapturePromptResult newValue) {
    js_util.setProperty(this, 'getUserMedia', newValue.value);
  }

  MockCapturePromptResult get getDisplayMedia =>
      MockCapturePromptResult.fromValue(
          js_util.getProperty(this, 'getDisplayMedia'));
  set getDisplayMedia(MockCapturePromptResult newValue) {
    js_util.setProperty(this, 'getDisplayMedia', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class MockCaptureDeviceConfiguration {
  external factory MockCaptureDeviceConfiguration(
      {String? label, String? deviceId, String? groupId});
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
  external factory MockCameraConfiguration._(
      {double? defaultFrameRate, String? facingMode});

  factory MockCameraConfiguration(
          {double? defaultFrameRate, String? facingMode}) =>
      MockCameraConfiguration._(
          defaultFrameRate: defaultFrameRate ?? 30,
          facingMode: facingMode ?? 'user');
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
  external factory MockMicrophoneConfiguration._({int? defaultSampleRate});

  factory MockMicrophoneConfiguration({int? defaultSampleRate}) =>
      MockMicrophoneConfiguration._(
          defaultSampleRate: defaultSampleRate ?? 44100);
}

extension PropsMockMicrophoneConfiguration on MockMicrophoneConfiguration {
  int get defaultSampleRate => js_util.getProperty(this, 'defaultSampleRate');
  set defaultSampleRate(int newValue) {
    js_util.setProperty(this, 'defaultSampleRate', newValue);
  }
}
