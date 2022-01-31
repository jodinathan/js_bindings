/// WebXR DOM Overlays Module
///
/// https://immersive-web.github.io/dom-overlays/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library dom_overlays;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class XRDOMOverlayInit {
  external factory XRDOMOverlayInit({Element root});
}

extension PropsXRDOMOverlayInit on XRDOMOverlayInit {
  Element get root => js_util.getProperty(this, 'root');
  set root(Element newValue) {
    js_util.setProperty(this, 'root', newValue);
  }
}

enum XRDOMOverlayType { screen, floating, headLocked }

@anonymous
@JS()
@staticInterop
class XRDOMOverlayState {
  external factory XRDOMOverlayState({XRDOMOverlayType type});
}

extension PropsXRDOMOverlayState on XRDOMOverlayState {
  XRDOMOverlayType get type => js_util.getProperty(this, 'type');
  set type(XRDOMOverlayType newValue) {
    js_util.setProperty(this, 'type', newValue);
  }
}
