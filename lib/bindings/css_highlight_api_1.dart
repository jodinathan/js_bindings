/// CSS Custom Highlight API Module Level 1
///
/// https://drafts.csswg.org/css-highlight-api-1/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_highlight_api_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum HighlightType {
  highlight('highlight'),
  spellingError('spelling-error'),
  grammarError('grammar-error');

  final String value;
  static HighlightType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const HighlightType(this.value);
}

@JS()
@staticInterop
class Highlight {
  external factory Highlight(
      [AbstractRange? initialRanges1,
      AbstractRange? initialRanges2,
      AbstractRange? initialRanges3]);
}

extension PropsHighlight on Highlight {
  int get priority => js_util.getProperty(this, 'priority');
  set priority(int newValue) {
    js_util.setProperty(this, 'priority', newValue);
  }

  HighlightType get type =>
      HighlightType.fromValue(js_util.getProperty(this, 'type'));
  set type(HighlightType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
  }
}

@JS()
@staticInterop
class HighlightRegistry extends JsMap<Highlight, String> {
  external factory HighlightRegistry();
}
