/// FLAC WebCodecs Registration
///
/// https://w3c.github.io/webcodecs/flac_codec_registration.html

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webcodecs_flac_codec_registration;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class FlacEncoderConfig {
  external factory FlacEncoderConfig(
      {int? blockSize = 0, int? compressLevel = 5});
}

extension PropsFlacEncoderConfig on FlacEncoderConfig {
  int get blockSize => js_util.getProperty(this, 'blockSize');
  set blockSize(int newValue) {
    js_util.setProperty(this, 'blockSize', newValue);
  }

  int get compressLevel => js_util.getProperty(this, 'compressLevel');
  set compressLevel(int newValue) {
    js_util.setProperty(this, 'compressLevel', newValue);
  }
}
