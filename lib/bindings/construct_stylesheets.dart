/// Constructable Stylesheet Objects
///
/// https://wicg.github.io/construct-stylesheets/
@JS('window')
library construct_stylesheets;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'cssom_1.dart';
import 'dom.dart';

@anonymous
@JS()
class CSSStyleSheetInit {
  external dynamic get media;
  external set media(dynamic newValue);
  external String get title;
  external set title(String newValue);
  external bool get alternate;
  external set alternate(bool newValue);
  external bool get disabled;
  external set disabled(bool newValue);

  external factory CSSStyleSheetInit(
      {dynamic media,
      String title = '',
      bool alternate = false,
      bool disabled = false});
}
