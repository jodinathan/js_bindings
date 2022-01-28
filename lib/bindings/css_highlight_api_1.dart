/// CSS Custom Highlight API Module Level 1
///
/// https://drafts.csswg.org/css-highlight-api-1/
@JS('window')
@staticInterop
library css_highlight_api_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
cssom_1 */

@JS()
@staticInterop
class Highlight {
  external factory Highlight([AbstractRange? initialRanges]);
}

extension PropsHighlight on Highlight {
  external int get priority;
  external set priority(int newValue);
}

@JS()
@staticInterop
class HighlightsRegister {
  external factory HighlightsRegister();
}

extension PropsHighlightsRegister on HighlightsRegister {
  external HighlightsRegister add(Highlight value);
}

@JS()
@staticInterop
class HighlightRegistry {
  external factory HighlightRegistry();
}
