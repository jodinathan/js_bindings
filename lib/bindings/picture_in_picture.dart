/// Picture-in-Picture
///
/// https://w3c.github.io/picture-in-picture/
@JS('window')
@staticInterop
library picture_in_picture;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
dom */

///  The interface represents an object able to programmatically
/// obtain the [width] and [height] and [resize event] of the
/// floating video window.
///  An object with this interface is obtained using the
/// [HTMLVideoElement.requestPictureInPicture()] promise return
/// value.
@JS()
@staticInterop
class PictureInPictureWindow implements EventTarget {
  external factory PictureInPictureWindow();
}

extension PropsPictureInPictureWindow on PictureInPictureWindow {
  /// Determines the width of the floating video window.
  ///
  external int get width;

  /// Determines the height of the floating video window.
  ///
  external int get height;
  external EventHandlerNonNull? get onresize;
  external set onresize(EventHandlerNonNull? newValue);
}

///  The interface represents picture-in-picture-related events,
/// including [enterpictureinpicture], [leavepictureinpicture] and
/// [resize]
///
///
///
///    Event
///
///
///
///
///
///    PictureInPictureEvent
///
///
@JS()
@staticInterop
class PictureInPictureEvent implements Event {
  external factory PictureInPictureEvent(
      String type, PictureInPictureEventInit eventInitDict);
}

extension PropsPictureInPictureEvent on PictureInPictureEvent {
  external PictureInPictureWindow get pictureInPictureWindow;
}

@anonymous
@JS()
@staticInterop
class PictureInPictureEventInit implements EventInit {
  external factory PictureInPictureEventInit(
      {PictureInPictureWindow pictureInPictureWindow});
}

extension PropsPictureInPictureEventInit on PictureInPictureEventInit {
  external PictureInPictureWindow get pictureInPictureWindow;
  external set pictureInPictureWindow(PictureInPictureWindow newValue);
}
