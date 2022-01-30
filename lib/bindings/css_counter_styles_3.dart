/// CSS Counter Styles Level 3
///
/// https://drafts.csswg.org/css-counter-styles/
@JS('window')
@staticInterop
library css_counter_styles_3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: cssom_1 */

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
///    CSSCounterStyleRule
///
///
@JS()
@staticInterop
class CSSCounterStyleRule implements CSSRule {
  external CSSCounterStyleRule();
}

extension PropsCSSCounterStyleRule on CSSCounterStyleRule {
  ///  Is a [String] object that contains the serialization of the
  /// [<custom-ident>] defined as the for the associated rule.
  ///
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  ///  Is a [String] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  ///
  String get system => js_util.getProperty(this, 'system');
  set system(String newValue) {
    js_util.setProperty(this, 'system', newValue);
  }

  ///  Is a [String] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  ///
  String get symbols => js_util.getProperty(this, 'symbols');
  set symbols(String newValue) {
    js_util.setProperty(this, 'symbols', newValue);
  }

  ///  Is a [String] object that contains the serialization of the
  /// [additive-symbols] descriptor defined for the associated rule. If
  /// the descriptor was not specified in the associated rule, the
  /// attribute returns an empty string.
  ///
  String get additiveSymbols => js_util.getProperty(this, 'additiveSymbols');
  set additiveSymbols(String newValue) {
    js_util.setProperty(this, 'additiveSymbols', newValue);
  }

  ///  Is a [String] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  ///
  String get negative => js_util.getProperty(this, 'negative');
  set negative(String newValue) {
    js_util.setProperty(this, 'negative', newValue);
  }

  ///  Is a [String] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  ///
  String get prefix => js_util.getProperty(this, 'prefix');
  set prefix(String newValue) {
    js_util.setProperty(this, 'prefix', newValue);
  }

  ///  Is a [String] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  ///
  String get suffix => js_util.getProperty(this, 'suffix');
  set suffix(String newValue) {
    js_util.setProperty(this, 'suffix', newValue);
  }

  ///  Is a [String] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  ///
  String get range => js_util.getProperty(this, 'range');
  set range(String newValue) {
    js_util.setProperty(this, 'range', newValue);
  }

  ///  Is a [String] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  ///
  String get pad => js_util.getProperty(this, 'pad');
  set pad(String newValue) {
    js_util.setProperty(this, 'pad', newValue);
  }

  ///  Is a [String] object that contains the serialization of the
  /// [speak-as] descriptor defined for the associated rule. If the
  /// descriptor was not specified in the associated rule, the
  /// attribute returns an empty string.
  ///
  String get speakAs => js_util.getProperty(this, 'speakAs');
  set speakAs(String newValue) {
    js_util.setProperty(this, 'speakAs', newValue);
  }

  ///  Is a [String] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  ///
  String get fallback => js_util.getProperty(this, 'fallback');
  set fallback(String newValue) {
    js_util.setProperty(this, 'fallback', newValue);
  }
}
