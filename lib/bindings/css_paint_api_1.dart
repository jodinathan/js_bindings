/// CSS Painting API Level 1
///
/// https://drafts.css-houdini.org/css-paint-api-1/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library css_paint_api_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class PaintWorkletGlobalScope implements WorkletGlobalScope {
  external factory PaintWorkletGlobalScope();
}

extension PropsPaintWorkletGlobalScope on PaintWorkletGlobalScope {
  void registerPaint(String name, VoidFunction paintCtor) => js_util
      .callMethod(this, 'registerPaint', [name, allowInterop(paintCtor)]);

/* double | NaN */ dynamic get devicePixelRatio =>
      js_util.getProperty(this, 'devicePixelRatio');
}

@anonymous
@JS()
@staticInterop
class PaintRenderingContext2DSettings {
  external factory PaintRenderingContext2DSettings._({bool? alpha});

  factory PaintRenderingContext2DSettings({bool? alpha}) =>
      PaintRenderingContext2DSettings._(alpha: alpha ?? true);
}

extension PropsPaintRenderingContext2DSettings
    on PaintRenderingContext2DSettings {
  bool get alpha => js_util.getProperty(this, 'alpha');
  set alpha(bool newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }
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
  double get width => js_util.getProperty(this, 'width');
  double get height => js_util.getProperty(this, 'height');
}
