/// Constructable Stylesheet Objects
///
/// https://wicg.github.io/construct-stylesheets/
@JS('window')
@staticInterop
library construct_stylesheets;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: cssom_1
dom */

@anonymous
@JS()
@staticInterop
class CSSStyleSheetInit {
  external factory CSSStyleSheetInit(
      {dynamic media,
      String title = '',
      bool alternate = false,
      bool disabled = false});
}

extension PropsCSSStyleSheetInit on CSSStyleSheetInit {
  external dynamic get media;
  external set media(dynamic newValue);
  external String get title;
  external set title(String newValue);
  external bool get alternate;
  external set alternate(bool newValue);
  external bool get disabled;
  external set disabled(bool newValue);
}
