/// AAC WebCodecs Registration
///
/// https://w3c.github.io/webcodecs/aac_codec_registration.html

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webcodecs_aac_codec_registration;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class AacEncoderConfig {
  external factory AacEncoderConfig._({String? format});

  factory AacEncoderConfig(
          {AacBitstreamFormat? format = AacBitstreamFormat.aac}) =>
      AacEncoderConfig._(format: format?.value);
}

extension PropsAacEncoderConfig on AacEncoderConfig {
  AacBitstreamFormat get format =>
      AacBitstreamFormat.fromValue(js_util.getProperty(this, 'format'));
  set format(AacBitstreamFormat newValue) {
    js_util.setProperty(this, 'format', newValue.value);
  }
}

enum AacBitstreamFormat {
  aac('aac'),
  adts('adts');

  final String value;
  static AacBitstreamFormat fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const AacBitstreamFormat(this.value);
}
