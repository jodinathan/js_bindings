/// EPUB Reading Systems 3.3
///
/// https://w3c.github.io/epub-specs/epub33/rs/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library epub_rs_33;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class EpubReadingSystem {
  external factory EpubReadingSystem();
}

extension PropsEpubReadingSystem on EpubReadingSystem {
  bool hasFeature(String feature, [String? version]) =>
      js_util.callMethod(this, 'hasFeature', [feature, version]);
}
