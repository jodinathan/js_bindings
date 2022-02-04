/// CSSOM View Module
///
/// https://drafts.csswg.org/cssom-view/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library cssom_view_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

enum ScrollBehavior { auto, smooth }

@anonymous
@JS()
@staticInterop
class ScrollOptions {
  external factory ScrollOptions._({String? behavior});

  factory ScrollOptions({ScrollBehavior? behavior = ScrollBehavior.auto}) =>
      ScrollOptions._(behavior: behavior?.name);
}

extension PropsScrollOptions on ScrollOptions {
  ScrollBehavior get behavior =>
      ScrollBehavior.values.byName(js_util.getProperty(this, 'behavior'));
  set behavior(ScrollBehavior newValue) {
    js_util.setProperty(this, 'behavior', newValue.name);
  }
}

@anonymous
@JS()
@staticInterop
class ScrollToOptions implements ScrollOptions {
  external factory ScrollToOptions(
      {/* double | NaN */ dynamic left, /* double | NaN */ dynamic top});
}

extension PropsScrollToOptions on ScrollToOptions {
  /* double | NaN */ dynamic get left => js_util.getProperty(this, 'left');
  set left(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'left', newValue);
  }

  /* double | NaN */ dynamic get top => js_util.getProperty(this, 'top');
  set top(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'top', newValue);
  }
}

///  A object stores information on a media query applied to a
/// document, with support for both immediate and event-driven
/// matching against the state of the document.
///  You can create a by calling [matchMedia()] on the [window]
/// object. The resulting object handles sending notifications to
/// listeners when the media query state changes (i.e. when the media
/// query test starts or stops evaluating to [true]).
///  This is very useful for adaptive design, since this makes it
/// possible to observe a document to detect when its media queries
/// change, instead of polling the values periodically, and allows
/// you to programmatically make changes to a document based on media
/// query status.
@JS()
@staticInterop
class MediaQueryList implements EventTarget {
  external MediaQueryList();
}

extension PropsMediaQueryList on MediaQueryList {
  /// A [String] representing a serialized media query.
  ///
  String get media => js_util.getProperty(this, 'media');

  ///  A boolean value that returns [true] if the [document] currently
  /// matches the media query list, or [false] if not.
  ///
  bool get matches => js_util.getProperty(this, 'matches');

  ///  Adds to the [MediaQueryList] a callback which is invoked
  /// whenever the media query status—whether or not the document
  /// matches the media queries in the list—changes. This method exists
  /// primarily for backward compatibility; if possible, you should
  /// instead use [addEventListener()] to watch for the [change] event.
  ///
  /// MediaQueryList.addListener(func)
  ///
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
  @Deprecated('Not official in the specs')
  Object addListener(EventListener? callback) => js_util.callMethod(
      this, 'addListener', [callback == null ? null : allowInterop(callback)]);

  ///  Removes the specified listener callback from the callbacks to be
  /// invoked when the [MediaQueryList] changes media query status,
  /// which happens any time the document switches between matching and
  /// not matching the media queries listed in the [MediaQueryList].
  /// This method has been kept for backward compatibility; if
  /// possible, you should generally use [removeEventListener()] to
  /// remove change notification callbacks (which should have
  /// previously been added using [addEventListener()]).
  ///
  /// MediaQueryList.removeListener(func)
  ///
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
  ///
  @Deprecated('Not official in the specs')
  Object removeListener(EventListener? callback) => js_util.callMethod(this,
      'removeListener', [callback == null ? null : allowInterop(callback)]);

  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }
}

///  The object stores information on the changes that have happened
/// to a [MediaQueryList] object — instances are available as the
/// event object on a function referenced by a
/// [MediaQueryList.onchange] property or
/// [MediaQueryList.addListener()] call.
@JS()
@staticInterop
class MediaQueryListEvent implements Event {
  external MediaQueryListEvent(String type,
      [MediaQueryListEventInit? eventInitDict]);
}

extension PropsMediaQueryListEvent on MediaQueryListEvent {
  /// A [String] representing a serialized media query.
  ///
  String get media => js_util.getProperty(this, 'media');

  ///  A boolean value that is [true] if the [document] currently
  /// matches the media query list, or [false] if not.
  ///
  bool get matches => js_util.getProperty(this, 'matches');
}

@anonymous
@JS()
@staticInterop
class MediaQueryListEventInit implements EventInit {
  external factory MediaQueryListEventInit(
      {String? media = '', bool? matches = false});
}

extension PropsMediaQueryListEventInit on MediaQueryListEventInit {
  String get media => js_util.getProperty(this, 'media');
  set media(String newValue) {
    js_util.setProperty(this, 'media', newValue);
  }

  bool get matches => js_util.getProperty(this, 'matches');
  set matches(bool newValue) {
    js_util.setProperty(this, 'matches', newValue);
  }
}

///  The interface represents a screen, usually the one on which the
/// current window is being rendered, and is obtained using
/// [window.screen].
///  Note that browsers determine which screen to report as current
/// by detecting which screen has the center of the browser window.
@JS()
@staticInterop
class Screen {
  external Screen();
}

extension PropsScreen on Screen {
  ///  Returns the amount of horizontal space in pixels available to
  /// the window.
  ///
  int get availWidth => js_util.getProperty(this, 'availWidth');

  ///  Specifies the height of the screen, in pixels, minus permanent
  /// or semipermanent user interface features displayed by the
  /// operating system, such as the Taskbar on Windows.
  ///
  int get availHeight => js_util.getProperty(this, 'availHeight');

  /// Returns the width of the screen.
  ///
  int get width => js_util.getProperty(this, 'width');

  /// Returns the height of the screen in pixels.
  ///
  int get height => js_util.getProperty(this, 'height');

  /// Returns the color depth of the screen.
  ///
  int get colorDepth => js_util.getProperty(this, 'colorDepth');

  /// Gets the bit depth of the screen.
  ///
  int get pixelDepth => js_util.getProperty(this, 'pixelDepth');
  ScreenOrientation get orientation => js_util.getProperty(this, 'orientation');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface represents the caret position, an indicator for
/// the text insertion point. You can get a using the
/// [Document.caretPositionFromPoint()] method.
@experimental
@JS()
@staticInterop
class CaretPosition {
  external CaretPosition();
}

extension PropsCaretPosition on CaretPosition {
  ///  Returns a [Node] containing the found node at the caret's
  /// position.
  ///
  Node get offsetNode => js_util.getProperty(this, 'offsetNode');

  ///  Returns a [int] representing the character offset in the caret
  /// position node.
  ///
  int get offset => js_util.getProperty(this, 'offset');

  /// Returns the client rectangle for the caret range.
  ///
  DOMRect? getClientRect() => js_util.callMethod(this, 'getClientRect', []);
}

enum ScrollLogicalPosition { start, center, end, nearest }

@anonymous
@JS()
@staticInterop
class ScrollIntoViewOptions implements ScrollOptions {
  external factory ScrollIntoViewOptions._({String? block, String? inline});

  factory ScrollIntoViewOptions(
          {ScrollLogicalPosition? block = ScrollLogicalPosition.start,
          ScrollLogicalPosition? inline = ScrollLogicalPosition.nearest}) =>
      ScrollIntoViewOptions._(block: block?.name, inline: inline?.name);
}

extension PropsScrollIntoViewOptions on ScrollIntoViewOptions {
  ScrollLogicalPosition get block =>
      ScrollLogicalPosition.values.byName(js_util.getProperty(this, 'block'));
  set block(ScrollLogicalPosition newValue) {
    js_util.setProperty(this, 'block', newValue.name);
  }

  ScrollLogicalPosition get inline =>
      ScrollLogicalPosition.values.byName(js_util.getProperty(this, 'inline'));
  set inline(ScrollLogicalPosition newValue) {
    js_util.setProperty(this, 'inline', newValue.name);
  }
}

enum CSSBoxType { margin, border, padding, content }

@anonymous
@JS()
@staticInterop
class BoxQuadOptions {
  external factory BoxQuadOptions._({String? box, dynamic relativeTo});

  factory BoxQuadOptions(
          {CSSBoxType? box = CSSBoxType.border, dynamic relativeTo}) =>
      BoxQuadOptions._(box: box?.name, relativeTo: relativeTo);
}

extension PropsBoxQuadOptions on BoxQuadOptions {
  CSSBoxType get box =>
      CSSBoxType.values.byName(js_util.getProperty(this, 'box'));
  set box(CSSBoxType newValue) {
    js_util.setProperty(this, 'box', newValue.name);
  }

  dynamic get relativeTo => js_util.getProperty(this, 'relativeTo');
  set relativeTo(dynamic newValue) {
    js_util.setProperty(this, 'relativeTo', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ConvertCoordinateOptions {
  external factory ConvertCoordinateOptions._({String? fromBox, String? toBox});

  factory ConvertCoordinateOptions(
          {CSSBoxType? fromBox = CSSBoxType.border,
          CSSBoxType? toBox = CSSBoxType.border}) =>
      ConvertCoordinateOptions._(fromBox: fromBox?.name, toBox: toBox?.name);
}

extension PropsConvertCoordinateOptions on ConvertCoordinateOptions {
  CSSBoxType get fromBox =>
      CSSBoxType.values.byName(js_util.getProperty(this, 'fromBox'));
  set fromBox(CSSBoxType newValue) {
    js_util.setProperty(this, 'fromBox', newValue.name);
  }

  CSSBoxType get toBox =>
      CSSBoxType.values.byName(js_util.getProperty(this, 'toBox'));
  set toBox(CSSBoxType newValue) {
    js_util.setProperty(this, 'toBox', newValue.name);
  }
}

@JS()
@staticInterop
class GeometryUtils {
  external GeometryUtils();
}

extension PropsGeometryUtils on GeometryUtils {
  Iterable<DOMQuad> getBoxQuads([BoxQuadOptions? options]) =>
      js_util.callMethod(this, 'getBoxQuads', [options]);

  DOMQuad convertQuadFromNode(DOMQuadInit quad, dynamic from,
          [ConvertCoordinateOptions? options]) =>
      js_util.callMethod(this, 'convertQuadFromNode', [quad, from, options]);

  DOMQuad convertRectFromNode(DOMRectReadOnly rect, dynamic from,
          [ConvertCoordinateOptions? options]) =>
      js_util.callMethod(this, 'convertRectFromNode', [rect, from, options]);

  DOMPoint convertPointFromNode(DOMPointInit point, dynamic from,
          [ConvertCoordinateOptions? options]) =>
      js_util.callMethod(this, 'convertPointFromNode', [point, from, options]);
}
