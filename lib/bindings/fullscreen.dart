/// Fullscreen API Standard
///
/// https://fullscreen.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library fullscreen;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum FullscreenNavigationUI { auto, valueShow, valueHide }

@anonymous
@JS()
@staticInterop
class FullscreenOptions {
  external factory FullscreenOptions._({String? navigationUI});

  factory FullscreenOptions(
          {FullscreenNavigationUI? navigationUI =
              FullscreenNavigationUI.auto}) =>
      FullscreenOptions._(navigationUI: navigationUI?.name);
}

extension PropsFullscreenOptions on FullscreenOptions {
  FullscreenNavigationUI get navigationUI => FullscreenNavigationUI.values
      .byName(js_util.getProperty(this, 'navigationUI'));
  set navigationUI(FullscreenNavigationUI newValue) {
    js_util.setProperty(this, 'navigationUI', newValue.name);
  }
}
