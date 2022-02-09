/// SVG Animations
///
/// https://svgwg.org/specs/animations/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library svg_animations;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class TimeEvent implements Event {
  external TimeEvent();
}

extension PropsTimeEvent on TimeEvent {
  Window? get view => js_util.getProperty(this, 'view');
  int get detail => js_util.getProperty(this, 'detail');
  Object initTimeEvent(String typeArg, Window? viewArg, int detailArg) =>
      js_util.callMethod(this, 'initTimeEvent', [typeArg, viewArg, detailArg]);
}

@JS()
@staticInterop
class SVGAnimationElement implements SVGElement, SVGTests {
  external SVGAnimationElement();
}

extension PropsSVGAnimationElement on SVGAnimationElement {
  SVGElement? get targetElement => js_util.getProperty(this, 'targetElement');
  EventHandlerNonNull? get onbegin => js_util.getProperty(this, 'onbegin');
  set onbegin(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onbegin', newValue);
  }

  EventHandlerNonNull? get onend => js_util.getProperty(this, 'onend');
  set onend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onend', newValue);
  }

  EventHandlerNonNull? get onrepeat => js_util.getProperty(this, 'onrepeat');
  set onrepeat(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onrepeat', newValue);
  }

  double getStartTime() => js_util.callMethod(this, 'getStartTime', []);

  double getCurrentTime() => js_util.callMethod(this, 'getCurrentTime', []);

  double getSimpleDuration() =>
      js_util.callMethod(this, 'getSimpleDuration', []);

  Object beginElement() => js_util.callMethod(this, 'beginElement', []);

  Object beginElementAt(double offset) =>
      js_util.callMethod(this, 'beginElementAt', [offset]);

  Object endElement() => js_util.callMethod(this, 'endElement', []);

  Object endElementAt(double offset) =>
      js_util.callMethod(this, 'endElementAt', [offset]);
}

@JS()
@staticInterop
class SVGAnimateElement implements SVGAnimationElement {
  external SVGAnimateElement();
}

@JS()
@staticInterop
class SVGSetElement implements SVGAnimationElement {
  external SVGSetElement();
}

@JS()
@staticInterop
class SVGAnimateMotionElement implements SVGAnimationElement {
  external SVGAnimateMotionElement();
}

@JS()
@staticInterop
class SVGMPathElement implements SVGElement, SVGURIReference {
  external SVGMPathElement();
}

@JS()
@staticInterop
class SVGAnimateTransformElement implements SVGAnimationElement {
  external SVGAnimateTransformElement();
}

@JS()
@staticInterop
class SVGDiscardElement implements SVGAnimationElement {
  external SVGDiscardElement();
}
