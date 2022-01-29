/// CSS Properties and Values API Level 1
///
/// https://drafts.css-houdini.org/css-properties-values-api-1/
@JS('window')
@staticInterop
library css_properties_values_api_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: cssom_1 */

@anonymous
@JS()
@staticInterop
class PropertyDefinition {
  external factory PropertyDefinition(
      {String name, String syntax = '*', bool inherits, String initialValue});
}

extension PropsPropertyDefinition on PropertyDefinition {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get syntax => js_util.getProperty(this, 'syntax');
  set syntax(String newValue) {
    js_util.setProperty(this, 'syntax', newValue);
  }

  bool get inherits => js_util.getProperty(this, 'inherits');
  set inherits(bool newValue) {
    js_util.setProperty(this, 'inherits', newValue);
  }

  String get initialValue => js_util.getProperty(this, 'initialValue');
  set initialValue(String newValue) {
    js_util.setProperty(this, 'initialValue', newValue);
  }
}

///  The interface of the CSS_Properties_and_Values_API represents a
/// single CSS [@property] rule.
///
///
///
///    CSSRule
///
///
///
///
///
///    CSSPropertyRule
///
///
@experimental
@JS()
@staticInterop
class CSSPropertyRule implements CSSRule {
  external CSSPropertyRule();
}

extension PropsCSSPropertyRule on CSSPropertyRule {
  /// Returns the name of the custom property.
  ///
  String get name => js_util.getProperty(this, 'name');

  /// Returns the literal syntax of the custom property.
  ///
  String get syntax => js_util.getProperty(this, 'syntax');

  /// Returns the inherit flag of the custom property.
  ///
  bool get inherits => js_util.getProperty(this, 'inherits');
  String? get initialValue => js_util.getProperty(this, 'initialValue');
}
