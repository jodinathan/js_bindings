/// Visual Viewport API
///
/// https://wicg.github.io/visual-viewport/
@JS('window')
@staticInterop
library visual_viewport;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
dom
geometry_1 */

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
@JS()
@staticInterop
class VisualViewport implements EventTarget {
  external VisualViewport();
}

extension PropsVisualViewport on VisualViewport {
  ///  Returns the offset of the left edge of the visual viewport from
  /// the left edge of the layout viewport in CSS pixels.
  ///
  double get offsetLeft => js_util.getProperty(this, 'offsetLeft');

  ///  Returns the offset of the top edge of the visual viewport from
  /// the top edge of the layout viewport in CSS pixels.
  ///
  double get offsetTop => js_util.getProperty(this, 'offsetTop');

  ///  Returns the x coordinate of the visual viewport relative to the
  /// initial containing block origin of the top edge in CSS pixels.
  ///
  double get pageLeft => js_util.getProperty(this, 'pageLeft');

  ///  Returns the y coordinate of the visual viewport relative to the
  /// initial containing block origin of the top edge in CSS pixels.
  ///
  double get pageTop => js_util.getProperty(this, 'pageTop');

  /// Returns the width of the visual viewport in CSS pixels.
  ///
  double get width => js_util.getProperty(this, 'width');

  /// Returns the height of the visual viewport in CSS pixels.
  ///
  double get height => js_util.getProperty(this, 'height');

  ///  Returns the pinch-zoom scaling factor applied to the visual
  /// viewport.
  ///
  double get scale => js_util.getProperty(this, 'scale');
  Iterable<DOMRect> get segments => js_util.getProperty(this, 'segments');
  EventHandlerNonNull? get onresize => js_util.getProperty(this, 'onresize');
  set onresize(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onresize', newValue);
  }

  EventHandlerNonNull? get onscroll => js_util.getProperty(this, 'onscroll');
  set onscroll(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onscroll', newValue);
  }
}
