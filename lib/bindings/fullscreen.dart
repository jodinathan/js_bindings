/// Fullscreen API Standard
///
/// https://fullscreen.spec.whatwg.org/
@JS('window')
@staticInterop
library fullscreen;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html */

enum FullscreenNavigationUI { auto, valueShow, valueHide }

@anonymous
@JS()
@staticInterop
class FullscreenOptions {
  external factory FullscreenOptions(
      {FullscreenNavigationUI navigationUI = FullscreenNavigationUI.auto});
}

extension PropsFullscreenOptions on FullscreenOptions {
  FullscreenNavigationUI get navigationUI =>
      js_util.getProperty(this, 'navigationUI');
  set navigationUI(FullscreenNavigationUI newValue) {
    js_util.setProperty(this, 'navigationUI', newValue);
  }
}
