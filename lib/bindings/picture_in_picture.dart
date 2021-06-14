/// Picture-in-Picture
///
/// https://w3c.github.io/picture-in-picture/
@JS('window')
library picture_in_picture;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';

///
///
///  The [PictureInPictureWindow] interface represents an object able
/// to programmatically obtain the [width] and [height] and [resize
/// event] of the floating video window.
///
///  An object with this interface is obtained using the
/// [HTMLVideoElement.requestPictureInPicture()] promise return
/// value.
@JS()
class PictureInPictureWindow extends EventTarget {
  /// Determines the width of the floating video window.
  external int get width;

  /// Determines the height of the floating video window.
  external int get height;
  external EventHandlerNonNull? get onresize;
  external set onresize(EventHandlerNonNull? newValue);

  external factory PictureInPictureWindow();
}

///
///
///  The interface represents picture-in-picture-related events,
/// including [enterpictureinpicture], [leavepictureinpicture] and
/// [resize]
///
///
@JS()
class PictureInPictureEvent extends Event {
  external factory PictureInPictureEvent(
      {String type, PictureInPictureEventInit eventInitDict});
  external PictureInPictureWindow get pictureInPictureWindow;
}

@anonymous
@JS()
class PictureInPictureEventInit extends EventInit {
  external PictureInPictureWindow get pictureInPictureWindow;
  external set pictureInPictureWindow(PictureInPictureWindow newValue);

  external factory PictureInPictureEventInit(
      {PictureInPictureWindow pictureInPictureWindow});
}
