/// CSS Counter Styles Level 3
///
/// https://drafts.csswg.org/css-counter-styles/
@JS('window')
library css_counter_styles_3;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'cssom_1.dart';

///
///
/// The interface represents an [@counter-style] at-rule.
@JS()
class CSSCounterStyleRule // null -> {} -> CSSRule
    with
        CSSRule {
  ///  Is a [DOMString] object that contains the serialization of the
  /// [<counter-style-name>] defined for the associated rule.
  external String get name;
  external set name(String newValue);

  ///  Is a [DOMString] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  external String get system;
  external set system(String newValue);

  ///  Is a [DOMString] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  external String get symbols;
  external set symbols(String newValue);

  ///  Is a [DOMString] object that contains the serialization of the
  /// [additive-symbols] descriptor defined for the associated rule. If
  /// the descriptor was not specified in the associated rule, the
  /// attribute returns an empty string.
  external String get additiveSymbols;
  external set additiveSymbols(String newValue);

  ///  Is a [DOMString] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  external String get negative;
  external set negative(String newValue);

  ///  Is a [DOMString] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  external String get prefix;
  external set prefix(String newValue);

  ///  Is a [DOMString] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  external String get suffix;
  external set suffix(String newValue);

  ///  Is a [DOMString] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  external String get range;
  external set range(String newValue);

  ///  Is a [DOMString] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  external String get pad;
  external set pad(String newValue);

  ///  Is a [DOMString] object that contains the serialization of the
  /// [speak-as] descriptor defined for the associated rule. If the
  /// descriptor was not specified in the associated rule, the
  /// attribute returns an empty string.
  external String get speakAs;
  external set speakAs(String newValue);

  ///  Is a [DOMString] object that contains the serialization of the
  /// descriptor defined for the associated rule. If the descriptor was
  /// not specified in the associated rule, the attribute returns an
  /// empty string.
  external String get fallback;
  external set fallback(String newValue);

  external factory CSSCounterStyleRule();
}
