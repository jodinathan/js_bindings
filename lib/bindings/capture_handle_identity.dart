/// Capture Handle - Bootstrapping Collaboration when Screensharing
///
/// https://w3c.github.io/mediacapture-handle/identity/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library capture_handle_identity;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class CaptureHandleConfig {
  external factory CaptureHandleConfig._(
      {bool? exposeOrigin, String? handle, Iterable<String>? permittedOrigins});

  factory CaptureHandleConfig(
          {bool? exposeOrigin,
          String? handle,
          Iterable<String>? permittedOrigins}) =>
      CaptureHandleConfig._(
          exposeOrigin: exposeOrigin ?? false,
          handle: handle ?? '',
          permittedOrigins: permittedOrigins ?? const []);
}

extension PropsCaptureHandleConfig on CaptureHandleConfig {
  bool get exposeOrigin => js_util.getProperty(this, 'exposeOrigin');
  set exposeOrigin(bool newValue) {
    js_util.setProperty(this, 'exposeOrigin', newValue);
  }

  String get handle => js_util.getProperty(this, 'handle');
  set handle(String newValue) {
    js_util.setProperty(this, 'handle', newValue);
  }

  Iterable<String> get permittedOrigins =>
      js_util.getProperty(this, 'permittedOrigins');
  set permittedOrigins(Iterable<String> newValue) {
    js_util.setProperty(this, 'permittedOrigins', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class CaptureHandle {
  external factory CaptureHandle({String? origin, String? handle});
}

extension PropsCaptureHandle on CaptureHandle {
  String get origin => js_util.getProperty(this, 'origin');
  set origin(String newValue) {
    js_util.setProperty(this, 'origin', newValue);
  }

  String get handle => js_util.getProperty(this, 'handle');
  set handle(String newValue) {
    js_util.setProperty(this, 'handle', newValue);
  }
}
