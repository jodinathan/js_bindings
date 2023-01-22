/// CSS Counter Styles Level 3
///
/// https://drafts.csswg.org/css-counter-styles-3/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_counter_styles_3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

/// The interface represents an [@counter-style] at-rule.
///
///
///
///    CSSRule
///
///
///
///
///
///
///
///    CSSCounterStyleRule
///
///
@JS()
@staticInterop
class CSSCounterStyleRule implements CSSRule {
  external factory CSSCounterStyleRule();
}

extension PropsCSSCounterStyleRule on CSSCounterStyleRule {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get system => js_util.getProperty(this, 'system');
  set system(String newValue) {
    js_util.setProperty(this, 'system', newValue);
  }

  String get symbols => js_util.getProperty(this, 'symbols');
  set symbols(String newValue) {
    js_util.setProperty(this, 'symbols', newValue);
  }

  String get additiveSymbols => js_util.getProperty(this, 'additiveSymbols');
  set additiveSymbols(String newValue) {
    js_util.setProperty(this, 'additiveSymbols', newValue);
  }

  String get negative => js_util.getProperty(this, 'negative');
  set negative(String newValue) {
    js_util.setProperty(this, 'negative', newValue);
  }

  String get prefix => js_util.getProperty(this, 'prefix');
  set prefix(String newValue) {
    js_util.setProperty(this, 'prefix', newValue);
  }

  String get suffix => js_util.getProperty(this, 'suffix');
  set suffix(String newValue) {
    js_util.setProperty(this, 'suffix', newValue);
  }

  String get range => js_util.getProperty(this, 'range');
  set range(String newValue) {
    js_util.setProperty(this, 'range', newValue);
  }

  String get pad => js_util.getProperty(this, 'pad');
  set pad(String newValue) {
    js_util.setProperty(this, 'pad', newValue);
  }

  String get speakAs => js_util.getProperty(this, 'speakAs');
  set speakAs(String newValue) {
    js_util.setProperty(this, 'speakAs', newValue);
  }

  String get fallback => js_util.getProperty(this, 'fallback');
  set fallback(String newValue) {
    js_util.setProperty(this, 'fallback', newValue);
  }
}
