/// Encoding Standard
///
/// https://encoding.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library encoding;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class TextDecoderCommon {
  external TextDecoderCommon();
}

extension PropsTextDecoderCommon on TextDecoderCommon {
  String get encoding => js_util.getProperty(this, 'encoding');
  bool get fatal => js_util.getProperty(this, 'fatal');
  bool get ignoreBOM => js_util.getProperty(this, 'ignoreBOM');
}

@anonymous
@JS()
@staticInterop
class TextDecoderOptions {
  external factory TextDecoderOptions(
      {bool? fatal = false, bool? ignoreBOM = false});
}

extension PropsTextDecoderOptions on TextDecoderOptions {
  bool get fatal => js_util.getProperty(this, 'fatal');
  set fatal(bool newValue) {
    js_util.setProperty(this, 'fatal', newValue);
  }

  bool get ignoreBOM => js_util.getProperty(this, 'ignoreBOM');
  set ignoreBOM(bool newValue) {
    js_util.setProperty(this, 'ignoreBOM', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class TextDecodeOptions {
  external factory TextDecodeOptions({bool? stream = false});
}

extension PropsTextDecodeOptions on TextDecodeOptions {
  bool get stream => js_util.getProperty(this, 'stream');
  set stream(bool newValue) {
    js_util.setProperty(this, 'stream', newValue);
  }
}

@JS()
@staticInterop
class TextDecoder implements TextDecoderCommon {
  external TextDecoder([String? label = 'utf-8', TextDecoderOptions? options]);
}

extension PropsTextDecoder on TextDecoder {
  String decode([dynamic input, TextDecodeOptions? options]) =>
      js_util.callMethod(this, 'decode', [input, options]);
}

@JS()
@staticInterop
class TextEncoderCommon {
  external TextEncoderCommon();
}

extension PropsTextEncoderCommon on TextEncoderCommon {
  String get encoding => js_util.getProperty(this, 'encoding');
}

@anonymous
@JS()
@staticInterop
class TextEncoderEncodeIntoResult {
  external factory TextEncoderEncodeIntoResult(
      {required int read, required int written});
}

extension PropsTextEncoderEncodeIntoResult on TextEncoderEncodeIntoResult {
  int get read => js_util.getProperty(this, 'read');
  set read(int newValue) {
    js_util.setProperty(this, 'read', newValue);
  }

  int get written => js_util.getProperty(this, 'written');
  set written(int newValue) {
    js_util.setProperty(this, 'written', newValue);
  }
}

@JS()
@staticInterop
class TextEncoder implements TextEncoderCommon {
  external TextEncoder();
}

extension PropsTextEncoder on TextEncoder {
  Uint8List encode([String? input = '']) =>
      js_util.callMethod(this, 'encode', [input]);

  TextEncoderEncodeIntoResult encodeInto(
          String source, Uint8List destination) =>
      js_util.callMethod(this, 'encodeInto', [source, destination]);
}

@JS()
@staticInterop
class TextDecoderStream implements TextDecoderCommon, GenericTransformStream {
  external TextDecoderStream(
      [String? label = 'utf-8', TextDecoderOptions? options]);
}

@JS()
@staticInterop
class TextEncoderStream implements TextEncoderCommon, GenericTransformStream {
  external TextEncoderStream();
}
