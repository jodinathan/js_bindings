/// Compression Streams
///
/// https://wicg.github.io/compression/
@JS('window')
library compression;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

///
///
///  The interface of the Compression Streams API is an API for
/// compressing a stream of data.
@JS()
class CompressionStream {
  external factory CompressionStream({String format});
}

///
///
///  The interface of the Compression Streams API is an API for
/// decompressing a stream of data.
@JS()
class DecompressionStream {
  external factory DecompressionStream({String format});
}
