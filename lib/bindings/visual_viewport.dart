/// Visual Viewport API
///
/// https://wicg.github.io/visual-viewport/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library visual_viewport;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class VisualViewport implements EventTarget {
  external VisualViewport();
}

extension PropsVisualViewport on VisualViewport {
  double get offsetLeft => js_util.getProperty(this, 'offsetLeft');
  double get offsetTop => js_util.getProperty(this, 'offsetTop');
  double get pageLeft => js_util.getProperty(this, 'pageLeft');
  double get pageTop => js_util.getProperty(this, 'pageTop');
  double get width => js_util.getProperty(this, 'width');
  double get height => js_util.getProperty(this, 'height');
  double get scale => js_util.getProperty(this, 'scale');
  Iterable<DOMRect> get segments => js_util.getProperty(this, 'segments');
  EventHandlerNonNull? get onresize => js_util.getProperty(this, 'onresize');
  set onresize(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onresize', newValue);
  }

  EventHandlerNonNull? get onscroll => js_util.getProperty(this, 'onscroll');
  set onscroll(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onscroll', newValue);
  }
}
