/// HEVC (H.265) WebCodecs Registration
///
/// https://w3c.github.io/webcodecs/hevc_codec_registration.html

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webcodecs_hevc_codec_registration;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class HevcEncoderConfig {
  external factory HevcEncoderConfig._({String? format});

  factory HevcEncoderConfig(
          {HevcBitstreamFormat? format = HevcBitstreamFormat.hevc}) =>
      HevcEncoderConfig._(format: format?.value);
}

extension PropsHevcEncoderConfig on HevcEncoderConfig {
  HevcBitstreamFormat get format =>
      HevcBitstreamFormat.fromValue(js_util.getProperty(this, 'format'));
  set format(HevcBitstreamFormat newValue) {
    js_util.setProperty(this, 'format', newValue.value);
  }
}

enum HevcBitstreamFormat {
  annexb('annexb'),
  hevc('hevc');

  final String value;
  static HevcBitstreamFormat fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<HevcBitstreamFormat> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const HevcBitstreamFormat(this.value);
}
