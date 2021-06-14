/// WebXR DOM Overlays Module
///
/// https://immersive-web.github.io/dom-overlays/
@JS('window')
library dom_overlays;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'webxr.dart';
import 'dom.dart';

@anonymous
@JS()
class XRDOMOverlayInit {
  external Element get root;
  external set root(Element newValue);

  external factory XRDOMOverlayInit({Element root});
}

@JS()
enum XRDOMOverlayType {
  screen,
  floating,
  @JS('head-locked')
  headLocked
}

@anonymous
@JS()
class XRDOMOverlayState {
  external XRDOMOverlayType get type;
  external set type(XRDOMOverlayType newValue);

  external factory XRDOMOverlayState({XRDOMOverlayType type});
}
