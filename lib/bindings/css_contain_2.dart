/// CSS Containment Module Level 2
///
/// https://drafts.csswg.org/css-contain-2/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_contain_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the CSS Containment Module Level 2 is the event
/// object for the [contentvisibilityautostatechanged] event, which
/// fires on any element with [content-visibility: auto] set on it
/// when it starts or stops being relevant to the user and skipping
/// its contents.
///  This means that the user agent skips an element's rendering
/// (including layout and painting) until it is needed, making page
/// rendering much faster.
///  The [contentvisibilityautostatechanged] event provides a way for
/// an app's code to start or stop rendering processes (e.g. drawing
/// on a [<canvas>]) when they are not needed, thereby conserving
/// processing power. It should be noted that, even when hidden from
/// view, element contents will remain semantically relevant (e.g. to
/// assistive technology users), so this signal should not be used to
/// skip significant semantic DOM updates.
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
///    ContentVisibilityAutoStateChangedEvent
///
///
@experimental
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
