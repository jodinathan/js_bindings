/// EyeDropper API
///
/// https://wicg.github.io/eyedropper-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library eyedropper_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class ColorSelectionResult {
  external factory ColorSelectionResult({required String sRGBHex});
}

extension PropsColorSelectionResult on ColorSelectionResult {
  String get sRGBHex => js_util.getProperty(this, 'sRGBHex');
  set sRGBHex(String newValue) {
    js_util.setProperty(this, 'sRGBHex', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ColorSelectionOptions {
  external factory ColorSelectionOptions({required AbortSignal signal});
}

extension PropsColorSelectionOptions on ColorSelectionOptions {
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  The interface represents an instance of an eyedropper tool that
/// can be opened and used by the user to select colors from the
/// screen.
@JS()
@staticInterop
class EyeDropper {
  external factory EyeDropper();
}

extension PropsEyeDropper on EyeDropper {
  Future<ColorSelectionResult> open([ColorSelectionOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'open', [options]));
}
