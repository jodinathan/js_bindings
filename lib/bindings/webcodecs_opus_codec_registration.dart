/// Opus WebCodecs Registration
///
/// https://w3c.github.io/webcodecs/opus_codec_registration.html

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webcodecs_opus_codec_registration;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class OpusEncoderConfig {
  external factory OpusEncoderConfig._(
      {String? format,
      int? frameDuration = 20000,
      int? complexity,
      int? packetlossperc = 0,
      bool? useinbandfec = false,
      bool? usedtx = false});

  factory OpusEncoderConfig(
          {OpusBitstreamFormat? format = OpusBitstreamFormat.opus,
          int? frameDuration = 20000,
          int? complexity,
          int? packetlossperc = 0,
          bool? useinbandfec = false,
          bool? usedtx = false}) =>
      OpusEncoderConfig._(
          format: format?.value,
          frameDuration: frameDuration,
          complexity: complexity,
          packetlossperc: packetlossperc,
          useinbandfec: useinbandfec,
          usedtx: usedtx);
}

extension PropsOpusEncoderConfig on OpusEncoderConfig {
  OpusBitstreamFormat get format =>
      OpusBitstreamFormat.fromValue(js_util.getProperty(this, 'format'));
  set format(OpusBitstreamFormat newValue) {
    js_util.setProperty(this, 'format', newValue.value);
  }

  int get frameDuration => js_util.getProperty(this, 'frameDuration');
  set frameDuration(int newValue) {
    js_util.setProperty(this, 'frameDuration', newValue);
  }

  int get complexity => js_util.getProperty(this, 'complexity');
  set complexity(int newValue) {
    js_util.setProperty(this, 'complexity', newValue);
  }

  int get packetlossperc => js_util.getProperty(this, 'packetlossperc');
  set packetlossperc(int newValue) {
    js_util.setProperty(this, 'packetlossperc', newValue);
  }

  bool get useinbandfec => js_util.getProperty(this, 'useinbandfec');
  set useinbandfec(bool newValue) {
    js_util.setProperty(this, 'useinbandfec', newValue);
  }

  bool get usedtx => js_util.getProperty(this, 'usedtx');
  set usedtx(bool newValue) {
    js_util.setProperty(this, 'usedtx', newValue);
  }
}

enum OpusBitstreamFormat {
  opus('opus'),
  ogg('ogg');

  final String value;
  static OpusBitstreamFormat fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<OpusBitstreamFormat> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const OpusBitstreamFormat(this.value);
}
