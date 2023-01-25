/// Compression Streams
///
/// https://wicg.github.io/compression/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library compression;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the Compression Streams API is an API for
/// compressing a stream of data.
@JS()
@staticInterop
class CompressionStream implements GenericTransformStream {
  external factory CompressionStream(String format);
}

///  The interface of the Compression Streams API is an API for
/// decompressing a stream of data.
@JS()
@staticInterop
class DecompressionStream implements GenericTransformStream {
  external factory DecompressionStream(String format);
}
