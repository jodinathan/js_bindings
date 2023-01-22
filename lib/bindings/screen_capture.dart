/// Screen Capture
///
/// https://w3c.github.io/mediacapture-screen-share/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library screen_capture;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

enum CaptureStartFocusBehavior {
  focusCapturedSurface('focus-captured-surface'),
  noFocusChange('no-focus-change');

  final String value;
  static CaptureStartFocusBehavior fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const CaptureStartFocusBehavior(this.value);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface provides methods that can be used to further
/// manipulate a capture session separate from its initiation via
/// [MediaDevices.getDisplayMedia()].
///  A object is associated with a capture session by passing it into
/// a [getDisplayMedia()] call as the value of the options object's
/// [controller] property.
@experimental
@JS()
@staticInterop
class CaptureController {
  external factory CaptureController();
}

extension PropsCaptureController on CaptureController {
  void setFocusBehavior(CaptureStartFocusBehavior focusBehavior) =>
      js_util.callMethod(this, 'setFocusBehavior', [focusBehavior.value]);
}

enum SelfCapturePreferenceEnum {
  include('include'),
  exclude('exclude');

  final String value;
  static SelfCapturePreferenceEnum fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const SelfCapturePreferenceEnum(this.value);
}

enum SystemAudioPreferenceEnum {
  include('include'),
  exclude('exclude');

  final String value;
  static SystemAudioPreferenceEnum fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const SystemAudioPreferenceEnum(this.value);
}

enum SurfaceSwitchingPreferenceEnum {
  include('include'),
  exclude('exclude');

  final String value;
  static SurfaceSwitchingPreferenceEnum fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const SurfaceSwitchingPreferenceEnum(this.value);
}

@anonymous
@JS()
@staticInterop
class DisplayMediaStreamOptions {
  external factory DisplayMediaStreamOptions._(
      {dynamic video = true,
      dynamic audio = false,
      CaptureController? controller,
      String? selfBrowserSurface,
      String? systemAudio,
      String? surfaceSwitching});

  factory DisplayMediaStreamOptions(
          {dynamic video = true,
          dynamic audio = false,
          CaptureController? controller,
          SelfCapturePreferenceEnum? selfBrowserSurface,
          SystemAudioPreferenceEnum? systemAudio,
          SurfaceSwitchingPreferenceEnum? surfaceSwitching}) =>
      DisplayMediaStreamOptions._(
          video: video,
          audio: audio,
          controller: controller,
          selfBrowserSurface: selfBrowserSurface?.value,
          systemAudio: systemAudio?.value,
          surfaceSwitching: surfaceSwitching?.value);
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

  CaptureController get controller => js_util.getProperty(this, 'controller');
  set controller(CaptureController newValue) {
    js_util.setProperty(this, 'controller', newValue);
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
  const DisplayCaptureSurfaceType(this.value);
}

enum CursorCaptureConstraint {
  never('never'),
  always('always'),
  motion('motion');

  final String value;
  static CursorCaptureConstraint fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const CursorCaptureConstraint(this.value);
}
