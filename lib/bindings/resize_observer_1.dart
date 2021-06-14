/// Resize Observer
///
/// https://drafts.csswg.org/resize-observer/
@JS('window')
library resize_observer_1;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'geometry_1.dart';

@JS()
enum ResizeObserverBoxOptions {
  @JS('border-box')
  borderBox,
  @JS('content-box')
  contentBox,
  @JS('device-pixel-content-box')
  devicePixelContentBox
}

@anonymous
@JS()
class ResizeObserverOptions {
  external ResizeObserverBoxOptions get box;
  external set box(ResizeObserverBoxOptions newValue);

  external factory ResizeObserverOptions(
      {ResizeObserverBoxOptions box = ResizeObserverBoxOptions.contentBox});
}

///
///
///  The interface reports changes to the dimensions of an
/// [Element]'s content or border box, or the bounding box of an
/// [SVGElement].
///  Note: The content box is the box in which content can be placed,
/// meaning the border box minus the padding and border width. The
/// border box encompasses the content, padding, and border. See The
/// box model for further explanation.
///   avoids infinite callback loops and cyclic dependencies that are
/// often created when resizing via a callback function. It does this
/// by only processing elements deeper in the DOM in subsequent
/// frames. Implementations should, if they follow the specification,
/// invoke resize events before paint and after layout.
@experimental
@JS()
class ResizeObserver {
  external factory ResizeObserver({ResizeObserverCallback callback});

  /// Initiates the observing of a specified [Element].
  /// resizeObserver.observe(target, options);
  external Object observe(Element target, [ResizeObserverOptions? options]);

  /// Ends the observing of a specified [Element].
  /// void unobserve(target);
  external Object unobserve(Element target);

  ///  Unobserves all observed [Element] targets of a particular
  /// observer.
  /// resizeObserver.disconnect();
  external Object disconnect();
}

///
///
///  The interface represents the object passed to the
/// [ResizeObserver()] constructor's callback function, which allows
/// you to access the new dimensions of the [Element] or [SVGElement]
/// being observed.
@JS()
class ResizeObserverEntry {
  /// A reference to the [Element] or [SVGElement] being observed.
  external Element get target;

  ///  A [DOMRectReadOnly] object containing the new size of the
  /// observed element when the callback is run. Note that this is
  /// better supported than the above two properties, but it is left
  /// over from an earlier implementation of the Resize Observer API,
  /// is still included in the spec for web compat reasons, and may be
  /// deprecated in future versions.
  external DOMRectReadOnly get contentRect;

  ///  An object containing the new border box size of the observed
  /// element when the callback is run.
  external Iterable<ResizeObserverSize> get borderBoxSize;

  ///  An object containing the new content box size of the observed
  /// element when the callback is run.
  external Iterable<ResizeObserverSize> get contentBoxSize;

  ///  An object containing the new content box size in device pixels
  /// of the observed element when the callback is run.
  external Iterable<ResizeObserverSize> get devicePixelContentBoxSize;

  external factory ResizeObserverEntry();
}

///
///
///  The interface of the [Resize Observer API] is used by the
/// [ResizeObserverEntry] interface to access the box sizing
/// properties of the element being observed.
///  Note:
///   In multi-column layout, which is a fragmented context, the
/// sizing returned by will be the size of the first column.
///
@JS()
class ResizeObserverSize {
  ///  The length of the observed element's border box in the inline
  /// dimension. For boxes with a horizontal [writing-mode], this is
  /// the horizontal dimension, or width; if the writing-mode is
  /// vertical, this is the vertical dimension, or height.
  ///
  external /* double | NaN */ dynamic get inlineSize;

  ///  The length of the observed element's border box in the block
  /// dimension. For boxes with a horizontal [writing-mode], this is
  /// the vertical dimension, or height; if the writing-mode is
  /// vertical, this is the horizontal dimension, or width.
  ///
  external /* double | NaN */ dynamic get blockSize;

  external factory ResizeObserverSize();
}

@JS()
class ResizeObservation {
  external Element get target;
  external ResizeObserverBoxOptions get observedBox;
  external Iterable<ResizeObserverSize> get lastReportedSizes;

  external factory ResizeObservation();
}
