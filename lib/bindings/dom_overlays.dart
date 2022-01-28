/// WebXR DOM Overlays Module
///
/// https://immersive-web.github.io/dom-overlays/
@JS('window')
@staticInterop
library dom_overlays;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
webxr
dom */

@anonymous
@JS()
@staticInterop
class XRDOMOverlayInit {
  external factory XRDOMOverlayInit({Element root});
}

extension PropsXRDOMOverlayInit on XRDOMOverlayInit {
  external Element get root;
  external set root(Element newValue);
}

enum XRDOMOverlayType { screen, floating, headLocked }

@anonymous
@JS()
@staticInterop
class XRDOMOverlayState {
  external factory XRDOMOverlayState({XRDOMOverlayType type});
}

extension PropsXRDOMOverlayState on XRDOMOverlayState {
  external XRDOMOverlayType get type;
  external set type(XRDOMOverlayType newValue);
}
