/// The Screen Orientation API
///
/// https://w3c.github.io/screen-orientation/
@JS('window')
@staticInterop
library screen_orientation;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: cssom_view_1
dom
html */

///  The interface of the Screen Orientation API provides information
/// about the current orientation of the document.
///  A instance object can be retrieved using the
/// [screen.orientation] property.
@JS()
@staticInterop
class ScreenOrientation implements EventTarget {
  external ScreenOrientation();
}

extension PropsScreenOrientation on ScreenOrientation {
  ///  Locks the orientation of the containing document to its default
  /// orientation and returns a [Promise].
  ///
  /// screen.orientation.lock(orientation)
  ///
  ///
  ///  This example shows how to lock the screen to the opposite orientation of the current one.
  ///  Note that this example will only work on mobile devices and other devices that support orientation changes.
  ///
  /// <div id="example_container">
  /// <button id="fullscreen_button">Fullscreen</button>
  /// <button id="lock_button">Lock</button>
  /// <button id="unlock_button">Unlock</button>
  /// <textarea id="log" rows="7" cols="85"></textarea>
  /// </div>
  ///
  /// const log = document.getElementById("log");
  ///
  /// // Lock button: Lock the screen to the other orientation (rotated by 90 degrees)
  /// const rotate_btn = document.querySelector('#lock_button');
  /// rotate_btn.addEventListener('click', () => {
  ///  log.textContent+=`Lock pressed \n`;
  ///
  ///  const oppositeOrientation = screen.orientation.type.startsWith("portrait") ? "landscape" : "portrait";
  ///  screen.orientation.lock(oppositeOrientation)
  ///   .then( () => {
  ///    log.textContent = `Locked to ${oppositeOrientation}\n`
  ///    }
  ///   )
  ///   .catch ( error => {
  ///    log.textContent += `${error}\n`;
  ///   });
  /// });
  ///
  /// // Unlock button: Unlock the screen orientation (if locked)
  /// const unlock_btn = document.querySelector('#unlock_button');
  /// unlock_btn.addEventListener('click', () => {
  ///  log.textContent+='Unlock pressed \n';
  ///  screen.orientation.unlock();
  /// } );
  ///
  /// // Full screen button: Set the example to full-screen.
  /// const fullscreen_btn = document.querySelector('#fullscreen_button');
  /// fullscreen_btn.addEventListener('click', () => {
  ///  log.textContent+='Fullscreen pressed \n';
  ///  document.querySelector("#example_container").requestFullscreen();
  /// } );
  ///  To test the example, first press the Fullscreen button.
  ///  Once the example is full screen, press the Lock button to switch the orientation, and Unlock to return to the natural orientation.
  ///
  Promise<Object> lock(OrientationLockType orientation) =>
      js_util.callMethod(this, 'lock', [orientation]);

  ///  Unlocks the orientation of the containing document from its
  /// default orientation.
  ///
  /// screen.orientation.unlock()
  ///
  Object unlock() => js_util.callMethod(this, 'unlock', []);

  ///  Returns the document's current orientation type, one of
  /// "portrait-primary", "portrait-secondary", "landscape-primary", or
  /// "landscape-secondary".
  ///
  OrientationType get type => js_util.getProperty(this, 'type');

  /// Returns the document's current orientation angle.
  ///
  int get angle => js_util.getProperty(this, 'angle');
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }
}

enum OrientationLockType {
  any,
  natural,
  landscape,
  portrait,
  portraitPrimary,
  portraitSecondary,
  landscapePrimary,
  landscapeSecondary
}

enum OrientationType {
  portraitPrimary,
  portraitSecondary,
  landscapePrimary,
  landscapeSecondary
}
