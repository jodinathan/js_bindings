/// CSS Properties and Values API Level 1
///
/// https://drafts.css-houdini.org/css-properties-values-api-1/
@JS('window')
@staticInterop
library css_properties_values_api_1;

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
  external String get name;
  external set name(String newValue);
  external String get syntax;
  external set syntax(String newValue);
  external bool get inherits;
  external set inherits(bool newValue);
  external String get initialValue;
  external set initialValue(String newValue);
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
  external factory CSSPropertyRule();
}

extension PropsCSSPropertyRule on CSSPropertyRule {
  /// Returns the name of the custom property.
  ///
  external String get name;

  /// Returns the literal syntax of the custom property.
  ///
  external String get syntax;

  /// Returns the inherit flag of the custom property.
  ///
  external bool get inherits;
  external String? get initialValue;
}
