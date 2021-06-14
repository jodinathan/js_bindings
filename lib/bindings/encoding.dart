/// Encoding Standard
///
/// https://encoding.spec.whatwg.org/
@JS('window')
library encoding;

import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';

@JS()
abstract class TextDecoderCommon {
  external String get encoding;
  external bool get fatal;
  external bool get ignoreBOM;
}

@anonymous
@JS()
class TextDecoderOptions {
  external bool get fatal;
  external set fatal(bool newValue);
  external bool get ignoreBOM;
  external set ignoreBOM(bool newValue);

  external factory TextDecoderOptions(
      {bool fatal = false, bool ignoreBOM = false});
}

@anonymous
@JS()
class TextDecodeOptions {
  external bool get stream;
  external set stream(bool newValue);

  external factory TextDecodeOptions({bool stream = false});
}

///
///
///  The [TextDecoder] interface represents a decoder for a specific
/// text encoding, such as [UTF-8], [ISO-8859-2], [KOI8-R], [GBK],
/// etc. A decoder takes a stream of bytes as input and emits a
/// stream of code points.
///  Note: This feature is available in Web Workers
///
@experimental
@JS()
class TextDecoder {
  external factory TextDecoder(
      {String? label = 'utf-8', TextDecoderOptions? options});

  ///  Returns a [DOMString] containing the text decoded with the
  /// method of the specific [TextDecoder] object.
  /// b1 = decoder.decode(buffer, options);
  /// b2 = decoder.decode(buffer);
  /// b3 = decoder.decode();
  ///
  /// This example encodes and decodes the euro symbol, €.
  /// <p>Encoded value: <span id="encoded-value"></span></p>
  /// <p>Decoded value: <span id="decoded-value"></span></p>
  /// ```
  ///
  /// const encoder = new TextEncoder();
  /// const array = encoder.encode('€'); // Uint8Array(3) [226, 130, 172]
  /// document.getElementById('encoded-value').textContent = array;
  ///
  /// const decoder = new TextDecoder();
  /// const str = decoder.decode(array); // String "€"
  /// document.getElementById('decoded-value').textContent = str;
  /// ```
  ///
  external String decode([dynamic? input, TextDecodeOptions? options]);
}

@JS()
abstract class TextEncoderCommon {
  external String get encoding;
}

@anonymous
@JS()
class TextEncoderEncodeIntoResult {
  external int get read;
  external set read(int newValue);
  external int get written;
  external set written(int newValue);

  external factory TextEncoderEncodeIntoResult({int read, int written});
}

///
///
///  [TextEncoder] takes a stream of code points as input and emits a
/// stream of UTF-8 bytes.
///  Note: This feature is available in Web Workers
///
@experimental
@JS()
class TextEncoder {
  external factory TextEncoder();

  ///  Takes a [USVString] as input, and returns a [Uint8Array]
  /// containing UTF-8 encoded text.
  /// b1 = encoder.encode(string);
  ///
  external Uint8List encode([String? input = '']);

  ///  Takes a [USVString] to encode and a destination [Uint8Array] to
  /// put resulting UTF-8 encoded text into, and returns a dictionary
  /// object indicating the progress of the encoding. This is
  /// potentially more performant than the older [encode()] method.
  /// b1 = encoder.encodeInto(string, uint8Array);
  ///
  external TextEncoderEncodeIntoResult encodeInto(
      String source, Uint8List destination);
}

///
///
///  The interface of the Encoding API converts a stream of strings
/// into bytes in the UTF-8 encoding. It is the streaming equivalent
/// of [TextDecoder].
@JS()
class TextDecoderStream {
  external factory TextDecoderStream(
      {String? label = 'utf-8', TextDecoderOptions? options});
}

///
///
///  The interface of the Encoding API converts a stream of strings
/// into bytes in the UTF-8 encoding. It is the streaming equivalent
/// of [TextEncoder].
@JS()
class TextEncoderStream {
  external factory TextEncoderStream();
}
