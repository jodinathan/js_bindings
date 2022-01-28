/// Encoding Standard
///
/// https://encoding.spec.whatwg.org/
@JS('window')
@staticInterop
library encoding;

import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: encoding
streams */

@JS()
@staticInterop
class TextDecoderCommon {
  external factory TextDecoderCommon();
}

extension PropsTextDecoderCommon on TextDecoderCommon {
  external String get encoding;
  external bool get fatal;
  external bool get ignoreBOM;
}

@anonymous
@JS()
@staticInterop
class TextDecoderOptions {
  external factory TextDecoderOptions(
      {bool fatal = false, bool ignoreBOM = false});
}

extension PropsTextDecoderOptions on TextDecoderOptions {
  external bool get fatal;
  external set fatal(bool newValue);
  external bool get ignoreBOM;
  external set ignoreBOM(bool newValue);
}

@anonymous
@JS()
@staticInterop
class TextDecodeOptions {
  external factory TextDecodeOptions({bool stream = false});
}

extension PropsTextDecodeOptions on TextDecodeOptions {
  external bool get stream;
  external set stream(bool newValue);
}

///  The interface represents a decoder for a specific text encoding,
/// such as [UTF-8], [ISO-8859-2], [KOI8-R], [GBK], etc. A decoder
/// takes a stream of bytes as input and emits a stream of code
/// points.
///  Note: This feature is available in Web Workers
///
@experimental
@JS()
@staticInterop
class TextDecoder implements TextDecoderCommon {
  external factory TextDecoder(
      [String? label = 'utf-8', TextDecoderOptions? options]);
}

extension PropsTextDecoder on TextDecoder {
  ///  Returns a [DOMString] containing the text decoded with the
  /// method of the specific [TextDecoder] object.
  ///
  /// b1 = decoder.decode(buffer, options);
  /// b2 = decoder.decode(buffer);
  /// b3 = decoder.decode();
  ///
  /// This example encodes and decodes the euro symbol, €.
  /// <p>Encoded value: <span id="encoded-value"></span></p>
  /// <p>Decoded value: <span id="decoded-value"></span></p>
  ///
  /// ```
  ///
  /// const encoder = new TextEncoder();
  /// const array = encoder.encode('€'); // Uint8Array(3) [226, 130, 172]
  /// document.getElementById('encoded-value').textContent = array;
  ///
  /// const decoder = new TextDecoder();
  /// const str = decoder.decode(array); // String "€"
  /// document.getElementById('decoded-value').textContent = str;
  ///
  /// ```
  ///
  external String decode([dynamic input, TextDecodeOptions? options]);
}

@JS()
@staticInterop
class TextEncoderCommon {
  external factory TextEncoderCommon();
}

extension PropsTextEncoderCommon on TextEncoderCommon {
  external String get encoding;
}

@anonymous
@JS()
@staticInterop
class TextEncoderEncodeIntoResult {
  external factory TextEncoderEncodeIntoResult({int read, int written});
}

extension PropsTextEncoderEncodeIntoResult on TextEncoderEncodeIntoResult {
  external int get read;
  external set read(int newValue);
  external int get written;
  external set written(int newValue);
}

///  The interface takes a stream of code points as input and emits a
/// stream of UTF-8 bytes.
///  Note: This feature is available in Web Workers
///
@experimental
@JS()
@staticInterop
class TextEncoder implements TextEncoderCommon {
  external factory TextEncoder();
}

extension PropsTextEncoder on TextEncoder {
  ///  Takes a [USVString] as input, and returns a [Uint8Array]
  /// containing UTF-8 encoded text.
  ///
  /// b1 = encoder.encode(string);
  ///
  external Uint8List encode([String? input = '']);

  ///  Takes a [USVString] to encode and a destination [Uint8Array] to
  /// put resulting UTF-8 encoded text into, and returns a dictionary
  /// object indicating the progress of the encoding. This is
  /// potentially more performant than the older [encode()] method.
  ///
  /// b1 = encoder.encodeInto(string, uint8Array);
  ///
  external TextEncoderEncodeIntoResult encodeInto(
      String source, Uint8List destination);
}

///  The interface of the Encoding API converts a stream of strings
/// into bytes in the UTF-8 encoding. It is the streaming equivalent
/// of [TextDecoder].
@JS()
@staticInterop
class TextDecoderStream implements TextDecoderCommon, GenericTransformStream {
  external factory TextDecoderStream(
      [String? label = 'utf-8', TextDecoderOptions? options]);
}

///  The interface of the Encoding API converts a stream of strings
/// into bytes in the UTF-8 encoding. It is the streaming equivalent
/// of [TextEncoder].
@JS()
@staticInterop
class TextEncoderStream implements TextEncoderCommon, GenericTransformStream {
  external factory TextEncoderStream();
}
