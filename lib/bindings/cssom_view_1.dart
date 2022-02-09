/// CSSOM View Module
///
/// https://drafts.csswg.org/cssom-view/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library cssom_view_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

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

@JS()
@staticInterop
class MediaQueryList implements EventTarget {
  external MediaQueryList();
}

extension PropsMediaQueryList on MediaQueryList {
  String get media => js_util.getProperty(this, 'media');
  bool get matches => js_util.getProperty(this, 'matches');
  Object addListener(EventListener? callback) => js_util.callMethod(
      this, 'addListener', [callback == null ? null : allowInterop(callback)]);

  Object removeListener(EventListener? callback) => js_util.callMethod(this,
      'removeListener', [callback == null ? null : allowInterop(callback)]);

  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }
}

@JS()
@staticInterop
class MediaQueryListEvent implements Event {
  external MediaQueryListEvent(String type,
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

@JS()
@staticInterop
class Screen {
  external Screen();
}

extension PropsScreen on Screen {
  int get availWidth => js_util.getProperty(this, 'availWidth');
  int get availHeight => js_util.getProperty(this, 'availHeight');
  int get width => js_util.getProperty(this, 'width');
  int get height => js_util.getProperty(this, 'height');
  int get colorDepth => js_util.getProperty(this, 'colorDepth');
  int get pixelDepth => js_util.getProperty(this, 'pixelDepth');
  ScreenOrientation get orientation => js_util.getProperty(this, 'orientation');
}

@JS()
@staticInterop
class CaretPosition {
  external CaretPosition();
}

extension PropsCaretPosition on CaretPosition {
  Node get offsetNode => js_util.getProperty(this, 'offsetNode');
  int get offset => js_util.getProperty(this, 'offset');
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
