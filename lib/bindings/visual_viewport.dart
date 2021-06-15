/// Visual Viewport API
///
/// https://wicg.github.io/visual-viewport/
@JS('window')
library visual_viewport;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';
import 'geometry_1.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Visual Viewport API represents the visual
/// viewport for a given window. For a page containing iframes, each
/// iframe, as well as the containing page, will have a unique window
/// object. Each window on a page will have a unique representing the
/// properties associated with that window.
///
///  You can get a window's visual viewport using
/// [Window.visualViewport].
///  Note: Only the top-level window has a visual viewport that's
/// distinct from the layout viewport. Therefore, it's generally only
/// the object of the top-level window that's useful. For an
/// [<iframe>], visual viewport metrics like [VisualViewport.width]
/// always correspond to layout viewport metrics like
/// [document.documentElement.clientWidth].
///
@experimental
@JS()
class VisualViewport // null -> {} -> EventTarget
    with
        EventTarget {
  ///  Returns the offset of the left edge of the visual viewport from
  /// the left edge of the layout viewport in CSS pixels.
  external double get offsetLeft;

  ///  Returns the offset of the top edge of the visual viewport from
  /// the top edge of the layout viewport in CSS pixels.
  external double get offsetTop;

  ///  Returns the x coordinate of the visual viewport relative to the
  /// initial containing block origin of the top edge in CSS pixels.
  external double get pageLeft;

  ///  Returns the y coordinate of the visual viewport relative to the
  /// initial containing block origin of the top edge in CSS pixels.
  external double get pageTop;

  /// Returns the width of the visual viewport in CSS pixels.
  external double get width;

  /// Returns the height of the visual viewport in CSS pixels.
  external double get height;

  ///  Returns the pinch-zoom scaling factor applied to the visual
  /// viewport.
  external double get scale;
  external Iterable<DOMRect> get segments;
  external EventHandlerNonNull? get onresize;
  external set onresize(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onscroll;
  external set onscroll(EventHandlerNonNull? newValue);

  external factory VisualViewport();
}
