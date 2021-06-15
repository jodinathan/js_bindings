/// CSS Custom Highlight API Module Level 1
///
/// https://drafts.csswg.org/css-highlight-api-1/
@JS('window')
library css_highlight_api_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'cssom_1.dart';

@JS()
class Highlight {
  external factory Highlight([AbstractRange? initialRanges]);
  external int get priority;
  external set priority(int newValue);
}

@JS()
class HighlightsRegister {
  external Highlight operator [](int index);
  external HighlightsRegister add(Highlight value);

  external factory HighlightsRegister();
}

@JS()
class HighlightRegistry {
  external Highlight operator [](String index);

  external factory HighlightRegistry();
}
