/// AVC (H.264) WebCodecs Registration
///
/// https://w3c.github.io/webcodecs/avc_codec_registration.html

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webcodecs_avc_codec_registration;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class AvcEncoderConfig {
  external factory AvcEncoderConfig._({String? format});

  factory AvcEncoderConfig(
          {AvcBitstreamFormat? format = AvcBitstreamFormat.avc}) =>
      AvcEncoderConfig._(format: format?.value);
}

extension PropsAvcEncoderConfig on AvcEncoderConfig {
  AvcBitstreamFormat get format =>
      AvcBitstreamFormat.fromValue(js_util.getProperty(this, 'format'));
  set format(AvcBitstreamFormat newValue) {
    js_util.setProperty(this, 'format', newValue.value);
  }
}

enum AvcBitstreamFormat {
  annexb('annexb'),
  avc('avc');

  final String value;
  static AvcBitstreamFormat fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<AvcBitstreamFormat> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const AvcBitstreamFormat(this.value);
}
