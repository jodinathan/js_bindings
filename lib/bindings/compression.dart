/// Compression Streams
///
/// https://wicg.github.io/compression/
@JS('window')
@staticInterop
library compression;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: streams */

///  The interface of the Compression Streams API is an API for
/// compressing a stream of data.
@JS()
@staticInterop
class CompressionStream implements GenericTransformStream {
  external CompressionStream(String format);
}

///  The interface of the Compression Streams API is an API for
/// decompressing a stream of data.
@JS()
@staticInterop
class DecompressionStream implements GenericTransformStream {
  external DecompressionStream(String format);
}
