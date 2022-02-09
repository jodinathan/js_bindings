/// Compression Streams
///
/// https://wicg.github.io/compression/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library compression;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class CompressionStream implements GenericTransformStream {
  external CompressionStream(String format);
}

@JS()
@staticInterop
class DecompressionStream implements GenericTransformStream {
  external DecompressionStream(String format);
}
