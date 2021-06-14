/// CSS Properties and Values API Level 1
///
/// https://drafts.css-houdini.org/css-properties-values-api-1/
@JS('window')
library css_properties_values_api_1;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'cssom_1.dart';

@anonymous
@JS()
class PropertyDefinition {
  external String get name;
  external set name(String newValue);
  external String get syntax;
  external set syntax(String newValue);
  external bool get inherits;
  external set inherits(bool newValue);
  external String get initialValue;
  external set initialValue(String newValue);

  external factory PropertyDefinition(
      {String name, String syntax = '*', bool inherits, String initialValue});
}

///
///
///  The interface of the CSS_Properties_and_Values_API represents a
/// single CSS [@property] rule.
///
///
@experimental
@JS()
class CSSPropertyRule extends CSSRule {
  /// Returns the name of the custom property.
  external String get name;

  /// Returns the literal syntax of the custom property.
  external String get syntax;

  /// Returns the inherit flag of the custom property.
  external bool get inherits;
  external String? get initialValue;

  external factory CSSPropertyRule();
}
