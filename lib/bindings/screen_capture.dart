/// Screen Capture
///
/// https://w3c.github.io/mediacapture-screen-share/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library screen_capture;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum SelfCapturePreferenceEnum {
  include('include'),
  exclude('exclude');

  final String value;
  static SelfCapturePreferenceEnum fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<SelfCapturePreferenceEnum> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const SelfCapturePreferenceEnum(this.value);
}

enum SystemAudioPreferenceEnum {
  include('include'),
  exclude('exclude');

  final String value;
  static SystemAudioPreferenceEnum fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<SystemAudioPreferenceEnum> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const SystemAudioPreferenceEnum(this.value);
}

enum SurfaceSwitchingPreferenceEnum {
  include('include'),
  exclude('exclude');

  final String value;
  static SurfaceSwitchingPreferenceEnum fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<SurfaceSwitchingPreferenceEnum> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const SurfaceSwitchingPreferenceEnum(this.value);
}

@anonymous
@JS()
@staticInterop
class DisplayMediaStreamOptions {
  external factory DisplayMediaStreamOptions._(
      {dynamic video,
      dynamic audio,
      String? selfBrowserSurface,
      String? systemAudio,
      String? surfaceSwitching});

  factory DisplayMediaStreamOptions(
          {dynamic video,
          dynamic audio,
          SelfCapturePreferenceEnum? selfBrowserSurface,
          SystemAudioPreferenceEnum? systemAudio,
          SurfaceSwitchingPreferenceEnum? surfaceSwitching}) =>
      DisplayMediaStreamOptions._(
          video: video ?? true,
          audio: audio ?? false,
          selfBrowserSurface: selfBrowserSurface?.value ?? undefined,
          systemAudio: systemAudio?.value ?? undefined,
          surfaceSwitching: surfaceSwitching?.value ?? undefined);
}

extension PropsDisplayMediaStreamOptions on DisplayMediaStreamOptions {
  dynamic get video => js_util.getProperty(this, 'video');
  set video(dynamic newValue) {
    js_util.setProperty(this, 'video', newValue);
  }

  dynamic get audio => js_util.getProperty(this, 'audio');
  set audio(dynamic newValue) {
    js_util.setProperty(this, 'audio', newValue);
  }

  SelfCapturePreferenceEnum get selfBrowserSurface =>
      SelfCapturePreferenceEnum.fromValue(
          js_util.getProperty(this, 'selfBrowserSurface'));
  set selfBrowserSurface(SelfCapturePreferenceEnum newValue) {
    js_util.setProperty(this, 'selfBrowserSurface', newValue.value);
  }

  SystemAudioPreferenceEnum get systemAudio =>
      SystemAudioPreferenceEnum.fromValue(
          js_util.getProperty(this, 'systemAudio'));
  set systemAudio(SystemAudioPreferenceEnum newValue) {
    js_util.setProperty(this, 'systemAudio', newValue.value);
  }

  SurfaceSwitchingPreferenceEnum get surfaceSwitching =>
      SurfaceSwitchingPreferenceEnum.fromValue(
          js_util.getProperty(this, 'surfaceSwitching'));
  set surfaceSwitching(SurfaceSwitchingPreferenceEnum newValue) {
    js_util.setProperty(this, 'surfaceSwitching', newValue.value);
  }
}

enum DisplayCaptureSurfaceType {
  monitor('monitor'),
  window('window'),
  browser('browser');

  final String value;
  static DisplayCaptureSurfaceType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<DisplayCaptureSurfaceType> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const DisplayCaptureSurfaceType(this.value);
}

enum CursorCaptureConstraint {
  never('never'),
  always('always'),
  motion('motion');

  final String value;
  static CursorCaptureConstraint fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CursorCaptureConstraint> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const CursorCaptureConstraint(this.value);
}
