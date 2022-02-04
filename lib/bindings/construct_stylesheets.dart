/// Constructable Stylesheet Objects
///
/// https://wicg.github.io/construct-stylesheets/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library construct_stylesheets;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class CSSStyleSheetInit {
  external factory CSSStyleSheetInit(
      {dynamic media,
      String? title = '',
      bool? alternate = false,
      bool? disabled = false});
}

extension PropsCSSStyleSheetInit on CSSStyleSheetInit {
  dynamic get media => js_util.getProperty(this, 'media');
  set media(dynamic newValue) {
    js_util.setProperty(this, 'media', newValue);
  }

  String get title => js_util.getProperty(this, 'title');
  set title(String newValue) {
    js_util.setProperty(this, 'title', newValue);
  }

  bool get alternate => js_util.getProperty(this, 'alternate');
  set alternate(bool newValue) {
    js_util.setProperty(this, 'alternate', newValue);
  }

  bool get disabled => js_util.getProperty(this, 'disabled');
  set disabled(bool newValue) {
    js_util.setProperty(this, 'disabled', newValue);
  }
}
