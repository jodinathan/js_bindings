/// Resize Observer
///
/// https://drafts.csswg.org/resize-observer/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library resize_observer_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

enum ResizeObserverBoxOptions { borderBox, contentBox, devicePixelContentBox }

@anonymous
@JS()
@staticInterop
class ResizeObserverOptions {
  external factory ResizeObserverOptions._({String? box});

  factory ResizeObserverOptions(
          {ResizeObserverBoxOptions? box =
              ResizeObserverBoxOptions.contentBox}) =>
      ResizeObserverOptions._(box: box?.name);
}

extension PropsResizeObserverOptions on ResizeObserverOptions {
  ResizeObserverBoxOptions get box =>
      ResizeObserverBoxOptions.values.byName(js_util.getProperty(this, 'box'));
  set box(ResizeObserverBoxOptions newValue) {
    js_util.setProperty(this, 'box', newValue.name);
  }
}

///  The interface reports changes to the dimensions of an
/// [Element]'s content or border box, or the bounding box of an
/// [SVGElement].
///
///   Note: The content box is the box in which content can be
/// placed, meaning the border box minus the padding and border
/// width. The border box encompasses the content, padding, and
/// border. See The box model for further explanation.
///
///   avoids infinite callback loops and cyclic dependencies that are
/// often created when resizing via a callback function. It does this
/// by only processing elements deeper in the DOM in subsequent
/// frames. Implementations should, if they follow the specification,
/// invoke resize events before paint and after layout.
@experimental
@JS()
@staticInterop
class ResizeObserver {
  external factory ResizeObserver(ResizeObserverCallback callback);
}

extension PropsResizeObserver on ResizeObserver {
  Object observe(Element target, [ResizeObserverOptions? options]) =>
      js_util.callMethod(this, 'observe', [target, options]);

  Object unobserve(Element target) =>
      js_util.callMethod(this, 'unobserve', [target]);

  Object disconnect() => js_util.callMethod(this, 'disconnect', []);
}

///  The interface represents the object passed to the
/// [ResizeObserver()] constructor's callback function, which allows
/// you to access the new dimensions of the [Element] or [SVGElement]
/// being observed.
@JS()
@staticInterop
class ResizeObserverEntry {
  external factory ResizeObserverEntry();
}

extension PropsResizeObserverEntry on ResizeObserverEntry {
  Element get target => js_util.getProperty(this, 'target');
  DOMRectReadOnly get contentRect => js_util.getProperty(this, 'contentRect');
  Iterable<ResizeObserverSize> get borderBoxSize =>
      js_util.getProperty(this, 'borderBoxSize');
  Iterable<ResizeObserverSize> get contentBoxSize =>
      js_util.getProperty(this, 'contentBoxSize');
  Iterable<ResizeObserverSize> get devicePixelContentBoxSize =>
      js_util.getProperty(this, 'devicePixelContentBoxSize');
}

///  The interface of the [Resize Observer API] is used by the
/// [ResizeObserverEntry] interface to access the box sizing
/// properties of the element being observed.
///
///   Note: In multi-column layout, which is a fragmented context,
/// the sizing returned by will be the size of the first column.
///
@JS()
@staticInterop
class ResizeObserverSize {
  external factory ResizeObserverSize();
}

extension PropsResizeObserverSize on ResizeObserverSize {
  /* double | NaN */ dynamic get inlineSize =>
      js_util.getProperty(this, 'inlineSize');
  /* double | NaN */ dynamic get blockSize =>
      js_util.getProperty(this, 'blockSize');
}
