/// Ink API
///
/// https://wicg.github.io/ink-enhancement/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ink_enhancement;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class Ink {
  external factory Ink();
}

extension PropsInk on Ink {
  Future<InkPresenter> requestPresenter([InkPresenterParam? param]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'requestPresenter', [param]));
}

@anonymous
@JS()
@staticInterop
class InkPresenterParam {
  external factory InkPresenterParam({Element? presentationArea});
}

extension PropsInkPresenterParam on InkPresenterParam {
  Element? get presentationArea =>
      js_util.getProperty(this, 'presentationArea');
  set presentationArea(Element? newValue) {
    js_util.setProperty(this, 'presentationArea', newValue);
  }
}

@JS()
@staticInterop
class InkPresenter {
  external factory InkPresenter();
}

extension PropsInkPresenter on InkPresenter {
  Element? get presentationArea =>
      js_util.getProperty(this, 'presentationArea');
  int get expectedImprovement =>
      js_util.getProperty(this, 'expectedImprovement');
  Object updateInkTrailStartPoint(PointerEvent event, InkTrailStyle style) =>
      js_util.callMethod(this, 'updateInkTrailStartPoint', [event, style]);
}

@anonymous
@JS()
@staticInterop
class InkTrailStyle {
  external factory InkTrailStyle(
      {required String color, /* double | NaN */ dynamic diameter});
}

extension PropsInkTrailStyle on InkTrailStyle {
  String get color => js_util.getProperty(this, 'color');
  set color(String newValue) {
    js_util.setProperty(this, 'color', newValue);
  }

  /* double | NaN */ dynamic get diameter =>
      js_util.getProperty(this, 'diameter');
  set diameter(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'diameter', newValue);
  }
}
