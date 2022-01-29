/// CSS Custom Highlight API Module Level 1
///
/// https://drafts.csswg.org/css-highlight-api-1/
@JS('window')
@staticInterop
library css_highlight_api_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
cssom_1 */

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
  HighlightsRegister add(Highlight value) =>
      js_util.callMethod(this, 'add', [value]);
}

@JS()
@staticInterop
class HighlightRegistry {
  external HighlightRegistry();
}
