/// CSS Painting API Level 1
///
/// https://drafts.css-houdini.org/css-paint-api-1/
@JS('window')
@staticInterop
library css_paint_api_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
cssom_1 */

@JS()
@staticInterop
class PaintWorkletGlobalScope implements WorkletGlobalScope {
  external factory PaintWorkletGlobalScope();
}

extension PropsPaintWorkletGlobalScope on PaintWorkletGlobalScope {
  external Object registerPaint(String name, VoidFunction paintCtor);
  external /* double | NaN */ dynamic get devicePixelRatio;
}

@anonymous
@JS()
@staticInterop
class PaintRenderingContext2DSettings {
  external factory PaintRenderingContext2DSettings({bool alpha = true});
}

extension PropsPaintRenderingContext2DSettings
    on PaintRenderingContext2DSettings {
  external bool get alpha;
  external set alpha(bool newValue);
}

@JS()
@staticInterop
class PaintRenderingContext2D
    implements
        CanvasState,
        CanvasTransform,
        CanvasCompositing,
        CanvasImageSmoothing,
        CanvasFillStrokeStyles,
        CanvasShadowStyles,
        CanvasRect,
        CanvasDrawPath,
        CanvasDrawImage,
        CanvasPathDrawingStyles,
        CanvasPath {
  external factory PaintRenderingContext2D();
}

@JS()
@staticInterop
class PaintSize {
  external factory PaintSize();
}

extension PropsPaintSize on PaintSize {
  external double get width;
  external double get height;
}
