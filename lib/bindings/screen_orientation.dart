/// The Screen Orientation API
///
/// https://w3c.github.io/screen-orientation/
@JS('window')
library screen_orientation;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'cssom_view_1.dart';
import 'dom.dart';
import 'html.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Screen Orientation API provides information
/// about the current orientation of the document.
///
///  A instance object can be retrieved using the
/// [screen.orientation] property.
@JS()
class ScreenOrientation // null -> {} -> EventTarget
    with
        EventTarget {
  ///  Locks the orientation of the containing document to its default
  /// orientation and returns a [Promise].
  /// screen.orientation.lock(orientation)
  external Promise<Object> lock(OrientationLockType orientation);

  ///  Unlocks the orientation of the containing document from its
  /// default orientation.
  /// screen.orientation.unlock()
  external Object unlock();

  ///  Returns the document's current orientation type, one of
  /// "portrait-primary", "portrait-secondary", "landscape-primary", or
  /// "landscape-secondary".
  external OrientationType get type;

  /// Returns the document's current orientation angle.
  external int get angle;
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);

  external factory ScreenOrientation();
}

@JS()
enum OrientationLockType {
  any,
  natural,
  landscape,
  portrait,
  @JS('portrait-primary')
  portraitPrimary,
  @JS('portrait-secondary')
  portraitSecondary,
  @JS('landscape-primary')
  landscapePrimary,
  @JS('landscape-secondary')
  landscapeSecondary
}

@JS()
enum OrientationType {
  @JS('portrait-primary')
  portraitPrimary,
  @JS('portrait-secondary')
  portraitSecondary,
  @JS('landscape-primary')
  landscapePrimary,
  @JS('landscape-secondary')
  landscapeSecondary
}
