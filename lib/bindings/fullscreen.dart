/// Fullscreen API Standard
///
/// https://fullscreen.spec.whatwg.org/
@JS('window')
@staticInterop
library fullscreen;

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
  external FullscreenNavigationUI get navigationUI;
  external set navigationUI(FullscreenNavigationUI newValue);
}
