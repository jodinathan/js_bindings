/// SVG Animations
///
/// https://svgwg.org/specs/animations/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library svg_animations;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface, a part of SVG SMIL animation, provides specific
/// contextual information associated with Time events.
///
///
///
///    Event
///
///
///
///
///
///
///
///    TimeEvent
///
///
@JS()
@staticInterop
class TimeEvent implements Event {
  external factory TimeEvent();
}

extension PropsTimeEvent on TimeEvent {
  Window? get view => js_util.getProperty(this, 'view');
  int get detail => js_util.getProperty(this, 'detail');
  void initTimeEvent(String typeArg, Window? viewArg, int detailArg) =>
      js_util.callMethod(this, 'initTimeEvent', [typeArg, viewArg, detailArg]);
}

///  The interface is the base interface for all of the animation
/// element interfaces: [SVGAnimateElement], [SVGSetElement],
/// [SVGAnimateColorElement], [SVGAnimateMotionElement] and
/// [SVGAnimateTransformElement].
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    Node
///
///
///
///
///
///
///
///    Element
///
///
///
///
///
///
///
///    SVGElement
///
///
///
///
///
///
///
///    SVGAnimationElement
///
///
@JS()
@staticInterop
class SVGAnimationElement implements SVGElement, SVGTests {
  external factory SVGAnimationElement();
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

  void beginElement() => js_util.callMethod(this, 'beginElement', []);

  void beginElementAt(double offset) =>
      js_util.callMethod(this, 'beginElementAt', [offset]);

  void endElement() => js_util.callMethod(this, 'endElement', []);

  void endElementAt(double offset) =>
      js_util.callMethod(this, 'endElementAt', [offset]);
}

/// The interface corresponds to the [<animate>] element.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    Node
///
///
///
///
///
///
///
///    Element
///
///
///
///
///
///
///
///    SVGElement
///
///
///
///
///
///
///
///    SVGAnimationElement
///
///
///
///
///
///
///
///    SVGAnimateElement
///
///
@JS()
@staticInterop
class SVGAnimateElement implements SVGAnimationElement {
  external factory SVGAnimateElement();
}

/// The interface corresponds to the [<set>] element.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    Node
///
///
///
///
///
///
///
///    Element
///
///
///
///
///
///
///
///    SVGElement
///
///
///
///
///
///
///
///    SVGAnimationElement
///
///
///
///
///
///
///
///    SVGSetElement
///
///
@JS()
@staticInterop
class SVGSetElement implements SVGAnimationElement {
  external factory SVGSetElement();
}

/// The interface corresponds to the [<animateMotion>] element.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    Node
///
///
///
///
///
///
///
///    Element
///
///
///
///
///
///
///
///    SVGElement
///
///
///
///
///
///
///
///    SVGAnimationElement
///
///
///
///
///
///
///
///    SVGAnimateMotionElement
///
///
@JS()
@staticInterop
class SVGAnimateMotionElement implements SVGAnimationElement {
  external factory SVGAnimateMotionElement();
}

/// The interface corresponds to the [<mpath>] element.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    Node
///
///
///
///
///
///
///
///    Element
///
///
///
///
///
///
///
///    SVGElement
///
///
///
///
///
///
///
///    SVGMPathElement
///
///
@JS()
@staticInterop
class SVGMPathElement implements SVGElement, SVGURIReference {
  external factory SVGMPathElement();
}

/// The interface corresponds to the [<animateTransform>] element.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    Node
///
///
///
///
///
///
///
///    Element
///
///
///
///
///
///
///
///    SVGElement
///
///
///
///
///
///
///
///    SVGAnimationElement
///
///
///
///
///
///
///
///    SVGAnimateTransformElement
///
///
@JS()
@staticInterop
class SVGAnimateTransformElement implements SVGAnimationElement {
  external factory SVGAnimateTransformElement();
}

@JS()
@staticInterop
class SVGDiscardElement implements SVGAnimationElement {
  external factory SVGDiscardElement();
}
