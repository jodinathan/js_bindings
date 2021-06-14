/// CSSOM View Module
///
/// https://drafts.csswg.org/cssom-view/
@JS('window')
library cssom_view_1;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';
import 'geometry_1.dart';
import 'uievents.dart';
import 'css_pseudo_4.dart';
import 'screen_orientation.dart';

@JS()
enum ScrollBehavior { auto, smooth }

@anonymous
@JS()
class ScrollOptions {
  external ScrollBehavior get behavior;
  external set behavior(ScrollBehavior newValue);

  external factory ScrollOptions(
      {ScrollBehavior behavior = ScrollBehavior.auto});
}

///
///
///  The dictionary of the CSSOM View spec contains properties
/// specifying where an element should be scrolled to, and whether
/// the scrolling should be smooth.
///
///  A dictionary can be provided as a parameter for the following
/// methods:
///  [Window.scroll()]
///  [Window.scrollBy()]
///  [Window.scrollTo()]
///  [Element.scroll()]
///  [Element.scrollBy()]
///  [Element.scrollTo()]
///
@anonymous
@JS()
class ScrollToOptions extends ScrollOptions {
  ///  Specifies the number of pixels along the X axis to scroll the
  /// window or element.
  external /* double | NaN */ dynamic get left;
  external set left(/* double | NaN */ dynamic newValue);

  ///  Specifies the number of pixels along the Y axis to scroll the
  /// window or element.
  external /* double | NaN */ dynamic get top;
  external set top(/* double | NaN */ dynamic newValue);

  external factory ScrollToOptions(
      {/* double | NaN */ dynamic left, /* double | NaN */ dynamic top});
}

///
///
///  A object stores information on a media query applied to a
/// document, with support for both immediate and event-driven
/// matching against the state of the document. You can create a by
/// calling [matchMedia()] on the [window] object. The resulting
/// object handles sending notifications to listeners when the media
/// query state changes (i.e. when the media query test starts or
/// stops evaluating to [true]).
///
///  This is very useful for adaptive design, since this makes it
/// possible to observe a document to detect when its media queries
/// change, instead of polling the values periodically, and allows
/// you to programmatically make changes to a document based on media
/// query status.
@JS()
class MediaQueryList extends EventTarget {
  /// A [DOMString] representing a serialized media query.
  external String get media;

  ///  A [Boolean] that returns [true] if the [document] currently
  /// matches the media query list, or [false] if not.
  external bool get matches;

  ///  Adds to the [MediaQueryList] a callback which is invoked
  /// whenever the media query status—whether or not the document
  /// matches the media queries in the list—changes. This method exists
  /// primarily for backward compatibility; if possible, you should
  /// instead use [addEventListener()] to watch for the [change] event.
  /// MediaQueryList.addListener(func)
  /// var paragraph = document.querySelector('p');
  /// var mediaQueryList = window.matchMedia('(max-width: 600px)');
  ///
  /// function screenTest(e) {
  ///  if (e.matches) {
  ///   /* the viewport is 600 pixels wide or less */
  ///   paragraph.textContent = 'This is a narrow screen — 600px wide or less.';
  ///   document.body.style.backgroundColor = 'pink';
  ///  } else {
  ///   /* the viewport is more than than 600 pixels wide */
  ///   paragraph.textContent = 'This is a wide screen — more than 600px wide.';
  ///   document.body.style.backgroundColor = 'aquamarine';
  ///  }
  /// }
  ///
  /// mediaQueryList.addListener(screenTest);
  @deprecated
  external Object addListener(EventListener? callback);

  ///  Removes the specified listener callback from the callbacks to be
  /// invoked when the [MediaQueryList] changes media query status,
  /// which happens any time the document switches between matching and
  /// not matching the media queries listed in the [MediaQueryList].
  /// This method has been kept for backward compatibility; if
  /// possible, you should generally use [removeEventListener()] to
  /// remove change notification callbacks (which should have
  /// previously been added using [addEventListener()]).
  /// MediaQueryList.removeListener(func)
  /// var paragraph = document.querySelector('p');
  /// var mediaQueryList = window.matchMedia('(max-width: 600px)');
  ///
  /// function screenTest(e) {
  ///  if (e.matches) {
  ///   /* the viewport is 600 pixels wide or less */
  ///   paragraph.textContent = 'This is a narrow screen — 600px wide or less.';
  ///   document.body.style.backgroundColor = 'pink';
  ///  } else {
  ///   /* the viewport is more than than 600 pixels wide */
  ///   paragraph.textContent = 'This is a wide screen — more than 600px wide.';
  ///   document.body.style.backgroundColor = 'aquamarine';
  ///  }
  /// }
  ///
  /// mediaQueryList.addListener(screenTest);
  ///
  /// // Later on, when it is no longer needed
  /// mediaQueryList.removeListener(screenTest);
  @deprecated
  external Object removeListener(EventListener? callback);
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);

  external factory MediaQueryList();
}

///
///
///  The object stores information on the changes that have happened
/// to a [MediaQueryList] object — instances are available as the
/// event object on a function referenced by a
/// [MediaQueryList.onchange] property or
/// [MediaQueryList.addListener()] call.
@JS()
class MediaQueryListEvent extends Event {
  external factory MediaQueryListEvent(
      {String type, MediaQueryListEventInit? eventInitDict});

  /// A [DOMString] representing a serialized media query.
  external String get media;

  ///  A [Boolean] that returns [true] if the [document] currently
  /// matches the media query list, or [false] if not.
  external bool get matches;
}

@anonymous
@JS()
class MediaQueryListEventInit extends EventInit {
  external String get media;
  external set media(String newValue);
  external bool get matches;
  external set matches(bool newValue);

  external factory MediaQueryListEventInit(
      {String media = '', bool matches = false});
}

///
///
///  The interface represents a screen, usually the one on which the
/// current window is being rendered, and is obtained using
/// [window.screen].
///
///  Note that browsers determine which screen to report as current
/// by detecting which screen has the center of the browser window.
@JS()
class Screen {
  ///  Returns the amount of horizontal space in pixels available to
  /// the window.
  external int get availWidth;

  ///  Specifies the height of the screen, in pixels, minus permanent
  /// or semipermanent user interface features displayed by the
  /// operating system, such as the Taskbar on Windows.
  external int get availHeight;

  /// Returns the width of the screen.
  external int get width;

  /// Returns the height of the screen in pixels.
  external int get height;

  /// Returns the color depth of the screen.
  external int get colorDepth;

  /// Gets the bit depth of the screen.
  external int get pixelDepth;
  external ScreenOrientation get orientation;

  external factory Screen();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///
///
///  The interface represents the caret position, an indicator for
/// the text insertion point. You can get a using the
/// [Document.caretPositionFromPoint()] method.
@experimental
@JS()
class CaretPosition {
  ///  Returns a [Node] containing the found node at the caret's
  /// position.
  external Node get offsetNode;

  ///  Returns a [long] representing the character offset in the caret
  /// position node.
  external int get offset;

  ///
  external DOMRect? getClientRect();

  external factory CaretPosition();
}

@JS()
enum ScrollLogicalPosition { start, center, end, nearest }

@anonymous
@JS()
class ScrollIntoViewOptions extends ScrollOptions {
  external ScrollLogicalPosition get block;
  external set block(ScrollLogicalPosition newValue);
  external ScrollLogicalPosition get inline;
  external set inline(ScrollLogicalPosition newValue);

  external factory ScrollIntoViewOptions(
      {ScrollLogicalPosition block = ScrollLogicalPosition.start,
      ScrollLogicalPosition inline = ScrollLogicalPosition.nearest});
}

@JS()
enum CSSBoxType { margin, border, padding, content }

@anonymous
@JS()
class BoxQuadOptions {
  external CSSBoxType get box;
  external set box(CSSBoxType newValue);
  external dynamic get relativeTo;
  external set relativeTo(dynamic newValue);

  external factory BoxQuadOptions(
      {CSSBoxType box = CSSBoxType.border, dynamic relativeTo});
}

@anonymous
@JS()
class ConvertCoordinateOptions {
  external CSSBoxType get fromBox;
  external set fromBox(CSSBoxType newValue);
  external CSSBoxType get toBox;
  external set toBox(CSSBoxType newValue);

  external factory ConvertCoordinateOptions(
      {CSSBoxType fromBox = CSSBoxType.border,
      CSSBoxType toBox = CSSBoxType.border});
}

@JS()
mixin GeometryUtils {
  external Iterable<DOMQuad> getBoxQuads([BoxQuadOptions? options]);
  external DOMQuad convertQuadFromNode(DOMQuadInit quad, dynamic from,
      [ConvertCoordinateOptions? options]);
  external DOMQuad convertRectFromNode(DOMRectReadOnly rect, dynamic from,
      [ConvertCoordinateOptions? options]);
  external DOMPoint convertPointFromNode(DOMPointInit point, dynamic from,
      [ConvertCoordinateOptions? options]);
}
