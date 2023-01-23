/// Window Controls Overlay
///
/// https://wicg.github.io/window-controls-overlay/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library window_controls_overlay;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///
///   The interface of the Window Controls Overlay API exposes
/// information about the geometry
///   of the title bar area in desktop Progressive Web Apps, and an
/// event to know whenever it changes. This interface is accessible
/// from [Navigator.windowControlsOverlay].
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
///    WindowControlsOverlay
///
///
@experimental
@JS()
@staticInterop
class WindowControlsOverlay implements EventTarget {
  external factory WindowControlsOverlay();
}

extension PropsWindowControlsOverlay on WindowControlsOverlay {
  bool get visible => js_util.getProperty(this, 'visible');
  DOMRect getTitlebarAreaRect() =>
      js_util.callMethod(this, 'getTitlebarAreaRect', []);

  EventHandlerNonNull? get ongeometrychange =>
      js_util.getProperty(this, 'ongeometrychange');
  set ongeometrychange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ongeometrychange', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Window Controls Overlay API is passed to
/// [geometrychange] when the size or visibility of a desktop
/// Progress Web App's title bar region changes.
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
///    WindowControlsOverlayGeometryChangeEvent
///
///
@experimental
@JS()
@staticInterop
class WindowControlsOverlayGeometryChangeEvent implements Event {
  external factory WindowControlsOverlayGeometryChangeEvent(
      String type, WindowControlsOverlayGeometryChangeEventInit eventInitDict);
}

extension PropsWindowControlsOverlayGeometryChangeEvent
    on WindowControlsOverlayGeometryChangeEvent {
  DOMRect get titlebarAreaRect => js_util.getProperty(this, 'titlebarAreaRect');
  bool get visible => js_util.getProperty(this, 'visible');
}

@anonymous
@JS()
@staticInterop
class WindowControlsOverlayGeometryChangeEventInit implements EventInit {
  external factory WindowControlsOverlayGeometryChangeEventInit(
      {required DOMRect titlebarAreaRect, bool? visible = false});
}

extension PropsWindowControlsOverlayGeometryChangeEventInit
    on WindowControlsOverlayGeometryChangeEventInit {
  DOMRect get titlebarAreaRect => js_util.getProperty(this, 'titlebarAreaRect');
  set titlebarAreaRect(DOMRect newValue) {
    js_util.setProperty(this, 'titlebarAreaRect', newValue);
  }

  bool get visible => js_util.getProperty(this, 'visible');
  set visible(bool newValue) {
    js_util.setProperty(this, 'visible', newValue);
  }
}
