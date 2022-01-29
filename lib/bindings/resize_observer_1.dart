/// Resize Observer
///
/// https://drafts.csswg.org/resize-observer/
@JS('window')
@staticInterop
library resize_observer_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
geometry_1 */

enum ResizeObserverBoxOptions { borderBox, contentBox, devicePixelContentBox }

@anonymous
@JS()
@staticInterop
class ResizeObserverOptions {
  external factory ResizeObserverOptions(
      {ResizeObserverBoxOptions box = ResizeObserverBoxOptions.contentBox});
}

extension PropsResizeObserverOptions on ResizeObserverOptions {
  ResizeObserverBoxOptions get box => js_util.getProperty(this, 'box');
  set box(ResizeObserverBoxOptions newValue) {
    js_util.setProperty(this, 'box', newValue);
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
  external ResizeObserver(ResizeObserverCallback callback);
}

extension PropsResizeObserver on ResizeObserver {
  /// Initiates the observing of a specified [Element].
  ///
  /// resizeObserver.observe(target, options);
  ///
  Object observe(Element target, [ResizeObserverOptions? options]) =>
      js_util.callMethod(this, 'observe', [target, options]);

  /// Ends the observing of a specified [Element].
  ///
  /// void unobserve(target);
  ///
  Object unobserve(Element target) =>
      js_util.callMethod(this, 'unobserve', [target]);

  ///  Unobserves all observed [Element] targets of a particular
  /// observer.
  ///
  /// resizeObserver.disconnect();
  ///
  Object disconnect() => js_util.callMethod(this, 'disconnect', []);
}

///  The interface represents the object passed to the
/// [ResizeObserver()] constructor's callback function, which allows
/// you to access the new dimensions of the [Element] or [SVGElement]
/// being observed.
@JS()
@staticInterop
class ResizeObserverEntry {
  external ResizeObserverEntry();
}

extension PropsResizeObserverEntry on ResizeObserverEntry {
  /// A reference to the [Element] or [SVGElement] being observed.
  ///
  Element get target => js_util.getProperty(this, 'target');

  ///  A [DOMRectReadOnly] object containing the new size of the
  /// observed element when the callback is run. Note that this is
  /// better supported than the above two properties, but it is left
  /// over from an earlier implementation of the Resize Observer API,
  /// is still included in the spec for web compat reasons, and may be
  /// deprecated in future versions.
  ///
  DOMRectReadOnly get contentRect => js_util.getProperty(this, 'contentRect');

  ///  An object containing the new border box size of the observed
  /// element when the callback is run.
  ///
  Iterable<ResizeObserverSize> get borderBoxSize =>
      js_util.getProperty(this, 'borderBoxSize');

  ///  An object containing the new content box size of the observed
  /// element when the callback is run.
  ///
  Iterable<ResizeObserverSize> get contentBoxSize =>
      js_util.getProperty(this, 'contentBoxSize');

  ///  An object containing the new content box size in device pixels
  /// of the observed element when the callback is run.
  ///
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
  external ResizeObserverSize();
}

extension PropsResizeObserverSize on ResizeObserverSize {
  ///  The length of the observed element's border box in the inline
  /// dimension. For boxes with a horizontal [writing-mode], this is
  /// the horizontal dimension, or width; if the writing-mode is
  /// vertical, this is the vertical dimension, or height.
  ///
  /* double | NaN */ dynamic get inlineSize =>
      js_util.getProperty(this, 'inlineSize');

  ///  The length of the observed element's border box in the block
  /// dimension. For boxes with a horizontal [writing-mode], this is
  /// the vertical dimension, or height; if the writing-mode is
  /// vertical, this is the horizontal dimension, or width.
  ///
  /* double | NaN */ dynamic get blockSize =>
      js_util.getProperty(this, 'blockSize');
}

@JS()
@staticInterop
class ResizeObservation {
  external ResizeObservation();
}

extension PropsResizeObservation on ResizeObservation {
  Element get target => js_util.getProperty(this, 'target');
  ResizeObserverBoxOptions get observedBox =>
      js_util.getProperty(this, 'observedBox');
  Iterable<ResizeObserverSize> get lastReportedSizes =>
      js_util.getProperty(this, 'lastReportedSizes');
}
