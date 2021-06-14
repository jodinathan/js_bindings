/// Fullscreen API Standard
///
/// https://fullscreen.spec.whatwg.org/
@JS('window')
library fullscreen;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';

@JS()
enum FullscreenNavigationUI {
  auto,
  @JS('show')
  valueShow,
  @JS('hide')
  valueHide
}

///
///
///  The dictionary is used to provide configuration options when
/// calling [requestFullscreen()] on an element to place that element
/// into full-screen mode.
@anonymous
@JS()
class FullscreenOptions {
  ///  A string controlling whether or not to keep browser user
  /// interface elements visible while the element is in full-screen
  /// mode. The default, ["auto"], lets the browser make this decision.
  external FullscreenNavigationUI get navigationUI;
  external set navigationUI(FullscreenNavigationUI newValue);

  external factory FullscreenOptions(
      {FullscreenNavigationUI navigationUI = FullscreenNavigationUI.auto});
}
