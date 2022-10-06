/// CSS Containment Module Level 2
///
/// https://drafts.csswg.org/css-contain-2/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_contain_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class ContentVisibilityAutoStateChangedEvent implements Event {
  external factory ContentVisibilityAutoStateChangedEvent(String type,
      [ContentVisibilityAutoStateChangedEventInit? eventInitDict]);
}

extension PropsContentVisibilityAutoStateChangedEvent
    on ContentVisibilityAutoStateChangedEvent {
  bool get skipped => js_util.getProperty(this, 'skipped');
}

@anonymous
@JS()
@staticInterop
class ContentVisibilityAutoStateChangedEventInit implements EventInit {
  external factory ContentVisibilityAutoStateChangedEventInit(
      {bool? skipped = false});
}

extension PropsContentVisibilityAutoStateChangedEventInit
    on ContentVisibilityAutoStateChangedEventInit {
  bool get skipped => js_util.getProperty(this, 'skipped');
  set skipped(bool newValue) {
    js_util.setProperty(this, 'skipped', newValue);
  }
}
