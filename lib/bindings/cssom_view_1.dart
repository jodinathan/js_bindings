/// CSSOM View Module
///
/// https://drafts.csswg.org/cssom-view-1/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library cssom_view_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

enum ScrollBehavior {
  auto('auto'),
  smooth('smooth');

  final String value;
  static ScrollBehavior fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const ScrollBehavior(this.value);
}

@anonymous
@JS()
@staticInterop
class ScrollOptions {
  external factory ScrollOptions._({String? behavior});

  factory ScrollOptions({ScrollBehavior? behavior = ScrollBehavior.auto}) =>
      ScrollOptions._(behavior: behavior?.value);
}

extension PropsScrollOptions on ScrollOptions {
  ScrollBehavior get behavior =>
      ScrollBehavior.fromValue(js_util.getProperty(this, 'behavior'));
  set behavior(ScrollBehavior newValue) {
    js_util.setProperty(this, 'behavior', newValue.value);
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
///    MediaQueryList
///
///
@JS()
@staticInterop
class MediaQueryList implements EventTarget {
  external factory MediaQueryList();
}

extension PropsMediaQueryList on MediaQueryList {
  String get media => js_util.getProperty(this, 'media');
  bool get matches => js_util.getProperty(this, 'matches');
  void addListener(EventListener? callback) => js_util.callMethod(
      this, 'addListener', [callback == null ? null : allowInterop(callback)]);

  void removeListener(EventListener? callback) => js_util.callMethod(this,
      'removeListener', [callback == null ? null : allowInterop(callback)]);

  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }
}

///  The object stores information on the changes that have happened
/// to a [MediaQueryList] object — instances are available as the
/// event object on a function referenced by a [change] event.
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
///    MediaQueryListEvent
///
///
@JS()
@staticInterop
class MediaQueryListEvent implements Event {
  external factory MediaQueryListEvent(String type,
      [MediaQueryListEventInit? eventInitDict]);
}

extension PropsMediaQueryListEvent on MediaQueryListEvent {
  String get media => js_util.getProperty(this, 'media');
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
  external factory Screen();
}

extension PropsScreen on Screen {
  int get availWidth => js_util.getProperty(this, 'availWidth');
  int get availHeight => js_util.getProperty(this, 'availHeight');
  int get width => js_util.getProperty(this, 'width');
  int get height => js_util.getProperty(this, 'height');
  int get colorDepth => js_util.getProperty(this, 'colorDepth');
  int get pixelDepth => js_util.getProperty(this, 'pixelDepth');
  bool get isExtended => js_util.getProperty(this, 'isExtended');
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }

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
  external factory CaretPosition();
}

extension PropsCaretPosition on CaretPosition {
  Node get offsetNode => js_util.getProperty(this, 'offsetNode');
  int get offset => js_util.getProperty(this, 'offset');
  DOMRect? getClientRect() => js_util.callMethod(this, 'getClientRect', []);
}

enum ScrollLogicalPosition {
  start('start'),
  center('center'),
  end('end'),
  nearest('nearest');

  final String value;
  static ScrollLogicalPosition fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const ScrollLogicalPosition(this.value);
}

@anonymous
@JS()
@staticInterop
class ScrollIntoViewOptions implements ScrollOptions {
  external factory ScrollIntoViewOptions._({String? block, String? inline});

  factory ScrollIntoViewOptions(
          {ScrollLogicalPosition? block = ScrollLogicalPosition.start,
          ScrollLogicalPosition? inline = ScrollLogicalPosition.nearest}) =>
      ScrollIntoViewOptions._(block: block?.value, inline: inline?.value);
}

extension PropsScrollIntoViewOptions on ScrollIntoViewOptions {
  ScrollLogicalPosition get block =>
      ScrollLogicalPosition.fromValue(js_util.getProperty(this, 'block'));
  set block(ScrollLogicalPosition newValue) {
    js_util.setProperty(this, 'block', newValue.value);
  }

  ScrollLogicalPosition get inline =>
      ScrollLogicalPosition.fromValue(js_util.getProperty(this, 'inline'));
  set inline(ScrollLogicalPosition newValue) {
    js_util.setProperty(this, 'inline', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class CheckVisibilityOptions {
  external factory CheckVisibilityOptions(
      {bool? checkOpacity = false, bool? checkVisibilityCSS = false});
}

extension PropsCheckVisibilityOptions on CheckVisibilityOptions {
  bool get checkOpacity => js_util.getProperty(this, 'checkOpacity');
  set checkOpacity(bool newValue) {
    js_util.setProperty(this, 'checkOpacity', newValue);
  }

  bool get checkVisibilityCSS =>
      js_util.getProperty(this, 'checkVisibilityCSS');
  set checkVisibilityCSS(bool newValue) {
    js_util.setProperty(this, 'checkVisibilityCSS', newValue);
  }
}

enum CSSBoxType {
  margin('margin'),
  border('border'),
  padding('padding'),
  content('content');

  final String value;
  static CSSBoxType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const CSSBoxType(this.value);
}

@anonymous
@JS()
@staticInterop
class BoxQuadOptions {
  external factory BoxQuadOptions._({String? box, dynamic relativeTo});

  factory BoxQuadOptions(
          {CSSBoxType? box = CSSBoxType.border, dynamic relativeTo}) =>
      BoxQuadOptions._(box: box?.value, relativeTo: relativeTo);
}

extension PropsBoxQuadOptions on BoxQuadOptions {
  CSSBoxType get box => CSSBoxType.fromValue(js_util.getProperty(this, 'box'));
  set box(CSSBoxType newValue) {
    js_util.setProperty(this, 'box', newValue.value);
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
      ConvertCoordinateOptions._(fromBox: fromBox?.value, toBox: toBox?.value);
}

extension PropsConvertCoordinateOptions on ConvertCoordinateOptions {
  CSSBoxType get fromBox =>
      CSSBoxType.fromValue(js_util.getProperty(this, 'fromBox'));
  set fromBox(CSSBoxType newValue) {
    js_util.setProperty(this, 'fromBox', newValue.value);
  }

  CSSBoxType get toBox =>
      CSSBoxType.fromValue(js_util.getProperty(this, 'toBox'));
  set toBox(CSSBoxType newValue) {
    js_util.setProperty(this, 'toBox', newValue.value);
  }
}

@JS()
@staticInterop
class GeometryUtils {
  external factory GeometryUtils();
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

///  The interface of the Visual Viewport API represents the visual
/// viewport for a given window. For a page containing iframes, each
/// iframe, as well as the containing page, will have a unique window
/// object. Each window on a page will have a unique representing the
/// properties associated with that window.
///  You can get a window's visual viewport using
/// [Window.visualViewport].
///
///   Note: Only the top-level window has a visual viewport that's
/// distinct from the layout viewport. Therefore, it's generally only
/// the object of the top-level window that's useful. For an
/// [<iframe>], visual viewport metrics like [VisualViewport.width]
/// always correspond to layout viewport metrics like
/// [document.documentElement.clientWidth].
///
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
///    VisualViewport
///
///
@JS()
@staticInterop
class VisualViewport implements EventTarget {
  external factory VisualViewport();
}

extension PropsVisualViewport on VisualViewport {
  double get offsetLeft => js_util.getProperty(this, 'offsetLeft');
  double get offsetTop => js_util.getProperty(this, 'offsetTop');
  double get pageLeft => js_util.getProperty(this, 'pageLeft');
  double get pageTop => js_util.getProperty(this, 'pageTop');
  double get width => js_util.getProperty(this, 'width');
  double get height => js_util.getProperty(this, 'height');
  double get scale => js_util.getProperty(this, 'scale');
  EventHandlerNonNull? get onresize => js_util.getProperty(this, 'onresize');
  set onresize(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onresize', newValue);
  }

  EventHandlerNonNull? get onscroll => js_util.getProperty(this, 'onscroll');
  set onscroll(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onscroll', newValue);
  }

  EventHandlerNonNull? get onscrollend =>
      js_util.getProperty(this, 'onscrollend');
  set onscrollend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onscrollend', newValue);
  }
}
