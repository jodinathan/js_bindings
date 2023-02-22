/// Multi-Screen Window Placement
///
/// https://w3c.github.io/window-placement/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library window_placement;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class ScreenDetails implements EventTarget {
  external factory ScreenDetails();
}

extension PropsScreenDetails on ScreenDetails {
  Iterable<ScreenDetailed> get screens => js_util.getProperty(this, 'screens');
  ScreenDetailed get currentScreen =>
      js_util.getProperty(this, 'currentScreen');
  EventHandlerNonNull? get onscreenschange =>
      js_util.getProperty(this, 'onscreenschange');
  set onscreenschange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onscreenschange', newValue);
  }

  EventHandlerNonNull? get oncurrentscreenchange =>
      js_util.getProperty(this, 'oncurrentscreenchange');
  set oncurrentscreenchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncurrentscreenchange', newValue);
  }
}

@JS()
@staticInterop
class ScreenDetailed implements Screen {
  external factory ScreenDetailed();
}

extension PropsScreenDetailed on ScreenDetailed {
  int get availLeft => js_util.getProperty(this, 'availLeft');
  int get availTop => js_util.getProperty(this, 'availTop');
  int get left => js_util.getProperty(this, 'left');
  int get top => js_util.getProperty(this, 'top');
  bool get isPrimary => js_util.getProperty(this, 'isPrimary');
  bool get isInternal => js_util.getProperty(this, 'isInternal');
  double get devicePixelRatio => js_util.getProperty(this, 'devicePixelRatio');
  String get label => js_util.getProperty(this, 'label');
}
