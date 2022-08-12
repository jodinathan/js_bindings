/// Screen Capture
///
/// https://w3c.github.io/mediacapture-screen-share/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library screen_capture;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum SelfCapturePreferenceEnum { include, exclude }

enum SystemAudioPreferenceEnum { include, exclude }

enum SurfaceSwitchingPreferenceEnum { include, exclude }

@anonymous
@JS()
@staticInterop
class DisplayMediaStreamConstraints {
  external factory DisplayMediaStreamConstraints._(
      {dynamic video = true,
      dynamic audio = false,
      String? selfBrowserSurface,
      String? systemAudio,
      String? surfaceSwitching});

  factory DisplayMediaStreamConstraints(
          {dynamic video = true,
          dynamic audio = false,
          SelfCapturePreferenceEnum? selfBrowserSurface,
          SystemAudioPreferenceEnum? systemAudio,
          SurfaceSwitchingPreferenceEnum? surfaceSwitching}) =>
      DisplayMediaStreamConstraints._(
          video: video,
          audio: audio,
          selfBrowserSurface: selfBrowserSurface?.name,
          systemAudio: systemAudio?.name,
          surfaceSwitching: surfaceSwitching?.name);
}

extension PropsDisplayMediaStreamConstraints on DisplayMediaStreamConstraints {
  dynamic get video => js_util.getProperty(this, 'video');
  set video(dynamic newValue) {
    js_util.setProperty(this, 'video', newValue);
  }

  dynamic get audio => js_util.getProperty(this, 'audio');
  set audio(dynamic newValue) {
    js_util.setProperty(this, 'audio', newValue);
  }

  SelfCapturePreferenceEnum get selfBrowserSurface =>
      SelfCapturePreferenceEnum.values
          .byName(js_util.getProperty(this, 'selfBrowserSurface'));
  set selfBrowserSurface(SelfCapturePreferenceEnum newValue) {
    js_util.setProperty(this, 'selfBrowserSurface', newValue.name);
  }

  SystemAudioPreferenceEnum get systemAudio => SystemAudioPreferenceEnum.values
      .byName(js_util.getProperty(this, 'systemAudio'));
  set systemAudio(SystemAudioPreferenceEnum newValue) {
    js_util.setProperty(this, 'systemAudio', newValue.name);
  }

  SurfaceSwitchingPreferenceEnum get surfaceSwitching =>
      SurfaceSwitchingPreferenceEnum.values
          .byName(js_util.getProperty(this, 'surfaceSwitching'));
  set surfaceSwitching(SurfaceSwitchingPreferenceEnum newValue) {
    js_util.setProperty(this, 'surfaceSwitching', newValue.name);
  }
}

enum DisplayCaptureSurfaceType { monitor, window, browser }

enum CursorCaptureConstraint { never, always, motion }
