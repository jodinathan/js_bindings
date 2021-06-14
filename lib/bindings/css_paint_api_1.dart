/// CSS Painting API Level 1
///
/// https://drafts.css-houdini.org/css-paint-api-1/
@JS('window')
library css_paint_api_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'cssom_1.dart';
import 'html.dart';

@JS()
class PaintWorkletGlobalScope extends WorkletGlobalScope {
  external Object registerPaint(String name, VoidFunction paintCtor);
  external /* double | NaN */ dynamic get devicePixelRatio;

  external factory PaintWorkletGlobalScope();
}

@anonymous
@JS()
class PaintRenderingContext2DSettings {
  external bool get alpha;
  external set alpha(bool newValue);

  external factory PaintRenderingContext2DSettings({bool alpha = true});
}

@JS()
class PaintRenderingContext2D {
  external factory PaintRenderingContext2D();
}

@JS()
class PaintSize {
  external double get width;
  external double get height;

  external factory PaintSize();
}
