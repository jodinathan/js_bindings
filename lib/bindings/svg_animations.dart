/// SVG Animations
///
/// https://svgwg.org/specs/animations/
@JS('window')
library svg_animations;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'svg2.dart';
import 'dom.dart';
import 'html.dart';

///
///
///  The interface, a part of SVG SMIL animation, provides specific
/// contextual information associated with Time events.
///
///
@JS()
class TimeEvent // null -> {} -> Event
    with
        Event {
  ///  Is a [WindowProxy] that identifies the Window from which the
  /// event was generated.
  external Window? get view;

  ///  Is a [long] that specifies some detail information about the
  /// Event, depending on the type of the event. For this event type,
  /// indicates the repeat number for the animation.
  external int get detail;

  ///  The initTimeEvent method is used to initialize the value of a
  /// TimeEvent created through the DocumentEvent interface. This
  /// method may only be called before the TimeEvent has been
  /// dispatched via the dispatchEvent method, though it may be called
  /// multiple times during that phase if necessary.
  external Object initTimeEvent(String typeArg, Window? viewArg, int detailArg);

  external factory TimeEvent();
}

///
///
///  The interface is the base interface for all of the animation
/// element interfaces: [SVGAnimateElement], [SVGSetElement],
/// [SVGAnimateColorElement], [SVGAnimateMotionElement] and
/// [SVGAnimateTransformElement].
///
///
@JS()
class SVGAnimationElement // Element -> {html: {GlobalEventHandlers, DocumentAndElementEventHandlers, HTMLOrSVGElement, SVGElementInstance, ElementCSSInlineStyle}, svg2: {SVGElementInstance}, cssom_1: {ElementCSSInlineStyle}} -> SVGElement
    extends SVGElement with SVGTests {
  ///  An [SVGElement] representing the element which is being
  /// animated. If no target element is being animated (for example,
  /// because the [href] specifies an unknown element) the value
  /// returned is [null].
  external SVGElement? get targetElement;
  external EventHandlerNonNull? get onbegin;
  external set onbegin(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onend;
  external set onend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onrepeat;
  external set onrepeat(EventHandlerNonNull? newValue);

  ///  Returns a float representing the begin time, in seconds, for
  /// this animation element's current interval, if it exists,
  /// regardless of whether the interval has begun yet. If there is no
  /// current interval, then a [DOMException] with code
  /// [INVALID_STATE_ERR] is thrown.
  external double getStartTime();

  ///  Returns a float representing the current time in seconds
  /// relative to time zero for the given time container.
  external double getCurrentTime();

  ///  Returns a float representing the number of seconds for the
  /// simple duration for this animation. If the simple duration is
  /// undefined (e.g., the end time is indefinite), then a
  /// [DOMException] with code [NOT_SUPPORTED_ERR] is raised.
  external double getSimpleDuration();

  ///  Creates a begin instance time for the current time. The new
  /// instance time is added to the begin instance times list. The
  /// behavior of this method is equivalent to [beginElementAt(0)].
  @experimental
  external Object beginElement();

  ///  Creates a begin instance time for the current time plus the
  /// specified offset. The new instance time is added to the begin
  /// instance times list.
  ///
  @experimental
  external Object beginElementAt(double offset);

  ///  Creates an end instance time for the current time. The new
  /// instance time is added to the end instance times list. The
  /// behavior of this method is equivalent to [endElementAt(0)].
  ///
  @experimental
  external Object endElement();

  ///  Creates a end instance time for the current time plus the
  /// specified offset. The new instance time is added to the end
  /// instance times list.
  @experimental
  external Object endElementAt(double offset);

  external factory SVGAnimationElement();
}

///
///
/// The interface corresponds to the [<animate>] element.
///
///
@JS()
class SVGAnimateElement // SVGElement -> {svg2: {SVGTests}} -> SVGAnimationElement
    extends SVGAnimationElement {
  external factory SVGAnimateElement();
}

///
///
/// The interface corresponds to the [<set>] element.
///
///
@JS()
class SVGSetElement // SVGElement -> {svg2: {SVGTests}} -> SVGAnimationElement
    extends SVGAnimationElement {
  external factory SVGSetElement();
}

///
///
/// The interface corresponds to the [<animateMotion>] element.
///
///
@JS()
class SVGAnimateMotionElement // SVGElement -> {svg2: {SVGTests}} -> SVGAnimationElement
    extends SVGAnimationElement {
  external factory SVGAnimateMotionElement();
}

///
///
/// The interface corresponds to the [<mpath>] element.
///
///
@JS()
class SVGMPathElement // Element -> {html: {GlobalEventHandlers, DocumentAndElementEventHandlers, HTMLOrSVGElement, SVGElementInstance, ElementCSSInlineStyle}, svg2: {SVGElementInstance}, cssom_1: {ElementCSSInlineStyle}} -> SVGElement
    extends SVGElement with SVGURIReference {
  external factory SVGMPathElement();
}

///
///
/// The interface corresponds to the [<animateTransform>] element.
///
///
@JS()
class SVGAnimateTransformElement // SVGElement -> {svg2: {SVGTests}} -> SVGAnimationElement
    extends SVGAnimationElement {
  external factory SVGAnimateTransformElement();
}

@JS()
class SVGDiscardElement // SVGElement -> {svg2: {SVGTests}} -> SVGAnimationElement
    extends SVGAnimationElement {
  external factory SVGDiscardElement();
}
