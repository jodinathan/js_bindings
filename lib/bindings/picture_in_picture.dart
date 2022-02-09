/// Picture-in-Picture
///
/// https://w3c.github.io/picture-in-picture/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library picture_in_picture;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class PictureInPictureWindow implements EventTarget {
  external PictureInPictureWindow();
}

extension PropsPictureInPictureWindow on PictureInPictureWindow {
  int get width => js_util.getProperty(this, 'width');
  int get height => js_util.getProperty(this, 'height');
  EventHandlerNonNull? get onresize => js_util.getProperty(this, 'onresize');
  set onresize(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onresize', newValue);
  }
}

@JS()
@staticInterop
class PictureInPictureEvent implements Event {
  external PictureInPictureEvent(
      String type, PictureInPictureEventInit eventInitDict);
}

extension PropsPictureInPictureEvent on PictureInPictureEvent {
  PictureInPictureWindow get pictureInPictureWindow =>
      js_util.getProperty(this, 'pictureInPictureWindow');
}

@anonymous
@JS()
@staticInterop
class PictureInPictureEventInit implements EventInit {
  external factory PictureInPictureEventInit(
      {required PictureInPictureWindow pictureInPictureWindow});
}

extension PropsPictureInPictureEventInit on PictureInPictureEventInit {
  PictureInPictureWindow get pictureInPictureWindow =>
      js_util.getProperty(this, 'pictureInPictureWindow');
  set pictureInPictureWindow(PictureInPictureWindow newValue) {
    js_util.setProperty(this, 'pictureInPictureWindow', newValue);
  }
}
