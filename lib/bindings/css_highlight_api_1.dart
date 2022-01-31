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

@JS()
@staticInterop
class Highlight {
  external Highlight([AbstractRange? initialRanges]);
}

extension PropsHighlight on Highlight {
  int get priority => js_util.getProperty(this, 'priority');
  set priority(int newValue) {
    js_util.setProperty(this, 'priority', newValue);
  }
}

@JS()
@staticInterop
class HighlightsRegister {
  external HighlightsRegister();
}

extension PropsHighlightsRegister on HighlightsRegister {
  Highlight operator [](int index) => js_util.getProperty(this, index);
  operator []=(int index, Highlight value) {
    js_util.setProperty(this, index, value);
  }

  HighlightsRegister add(Highlight value) =>
      js_util.callMethod(this, 'add', [value]);
}

@JS()
@staticInterop
class HighlightRegistry {
  external HighlightRegistry();
}

extension PropsHighlightRegistry on HighlightRegistry {
  Highlight operator [](String index) => js_util.getProperty(this, index);
  operator []=(String index, Highlight value) {
    js_util.setProperty(this, index, value);
  }
}
