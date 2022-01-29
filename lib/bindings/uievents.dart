/// UI Events
///
/// https://w3c.github.io/uievents/
@JS('window')
@staticInterop
library uievents;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html
input_device_capabilities */

/// The interface represents simple user interface events.
///   derives from [Event]. Although the [UIEvent.initUIEvent()]
/// method is kept for backward compatibility, you should create a
/// object using the [UIEvent()] constructor.
///  Several interfaces are direct or indirect descendants of this
/// one: [MouseEvent], [TouchEvent], [FocusEvent], [KeyboardEvent],
/// [WheelEvent], [InputEvent], and [CompositionEvent].
///
///
///
///    Event
///
///
///
///
///
///    UIEvent
///
///
@JS()
@staticInterop
class UIEvent implements Event {
  external UIEvent(String type, [UIEventInit? eventInitDict]);
}

extension PropsUIEvent on UIEvent {
  ///  Returns a [WindowProxy] that contains the view that generated
  /// the event.
  ///
  Window? get view => js_util.getProperty(this, 'view');

  ///  Returns a [long] with details about the event, depending on the
  /// event type.
  ///
  int get detail => js_util.getProperty(this, 'detail');
  InputDeviceCapabilities? get sourceCapabilities =>
      js_util.getProperty(this, 'sourceCapabilities');
  Object initUIEvent(String typeArg,
          [bool? bubblesArg = false,
          bool? cancelableArg = false,
          Window? viewArg,
          int? detailArg = 0]) =>
      js_util.callMethod(this, 'initUIEvent',
          [typeArg, bubblesArg, cancelableArg, viewArg, detailArg]);

  int get which => js_util.getProperty(this, 'which');
}

@anonymous
@JS()
@staticInterop
class UIEventInit implements EventInit {
  external factory UIEventInit({Window? view, int detail = 0});
}

extension PropsUIEventInit on UIEventInit {
  Window? get view => js_util.getProperty(this, 'view');
  set view(Window? newValue) {
    js_util.setProperty(this, 'view', newValue);
  }

  int get detail => js_util.getProperty(this, 'detail');
  set detail(int newValue) {
    js_util.setProperty(this, 'detail', newValue);
  }
}

///  The interface represents focus-related events, including
/// [focus], [blur], [focusin], and [focusout].
///
///
///
///    Event
///
///
///
///
///
///    UIEvent
///
///
///
///
///
///    FocusEvent
///
///
@JS()
@staticInterop
class FocusEvent implements UIEvent {
  external FocusEvent(String type, [FocusEventInit? eventInitDict]);
}

extension PropsFocusEvent on FocusEvent {
  ///  Is an [EventTarget] representing a secondary target for this
  /// event. In some cases (such as when tabbing in or out a page),
  /// this property may be set to [null] for security reasons.
  ///
  EventTarget? get relatedTarget => js_util.getProperty(this, 'relatedTarget');
}

@anonymous
@JS()
@staticInterop
class FocusEventInit implements UIEventInit {
  external factory FocusEventInit({EventTarget? relatedTarget});
}

extension PropsFocusEventInit on FocusEventInit {
  EventTarget? get relatedTarget => js_util.getProperty(this, 'relatedTarget');
  set relatedTarget(EventTarget? newValue) {
    js_util.setProperty(this, 'relatedTarget', newValue);
  }
}

///
///   The interface represents events that occur due to the user
/// interacting with a pointing device (such as a mouse).
///   Common events using this interface include [click], [dblclick],
/// [mouseup], [mousedown].
///   derives from [UIEvent], which in turn derives from [Event].
///   Though the [MouseEvent.initMouseEvent()] method is kept for
/// backward compatibility, creating of a object should be done using
/// the [MouseEvent()] constructor.
///
///  Several more specific events are based on , including
/// [WheelEvent] and [DragEvent].
///
///
///
///    Event
///
///
///
///
///
///    UIEvent
///
///
///
///
///
///    MouseEvent
///
///
@JS()
@staticInterop
class MouseEvent implements UIEvent {
  external MouseEvent(String type, [MouseEventInit? eventInitDict]);
}

extension PropsMouseEvent on MouseEvent {
  ///  The X coordinate of the mouse pointer in global (screen)
  /// coordinates.
  ///
  dynamic get screenX => js_util.getProperty(this, 'screenX');

  ///  The Y coordinate of the mouse pointer in global (screen)
  /// coordinates.
  ///
  dynamic get screenY => js_util.getProperty(this, 'screenY');

  ///  The X coordinate of the mouse pointer in local (DOM content)
  /// coordinates.
  ///
  dynamic get clientX => js_util.getProperty(this, 'clientX');

  ///  The Y coordinate of the mouse pointer in local (DOM content)
  /// coordinates.
  ///
  dynamic get clientY => js_util.getProperty(this, 'clientY');

  ///  Returns [true] if the control key was down when the mouse event
  /// was fired.
  ///
  bool get ctrlKey => js_util.getProperty(this, 'ctrlKey');

  ///  Returns [true] if the shift key was down when the mouse event
  /// was fired.
  ///
  bool get shiftKey => js_util.getProperty(this, 'shiftKey');

  ///  Returns [true] if the alt key was down when the mouse event was
  /// fired.
  ///
  bool get altKey => js_util.getProperty(this, 'altKey');

  ///  Returns [true] if the meta key was down when the mouse event was
  /// fired.
  ///
  bool get metaKey => js_util.getProperty(this, 'metaKey');

  ///  The button number that was pressed (if applicable) when the
  /// mouse event was fired.
  ///
  int get button => js_util.getProperty(this, 'button');

  ///  The buttons being depressed (if any) when the mouse event was
  /// fired.
  ///
  int get buttons => js_util.getProperty(this, 'buttons');

  /// The secondary target for the event, if there is one.
  ///
  EventTarget? get relatedTarget => js_util.getProperty(this, 'relatedTarget');

  ///  Returns the current state of the specified modifier key. See
  /// [KeyboardEvent.getModifierState()] for details.
  ///
  /// getModifierState(keyArg)
  ///
  bool getModifierState(String keyArg) =>
      js_util.callMethod(this, 'getModifierState', [keyArg]);

  double get pageX => js_util.getProperty(this, 'pageX');
  double get pageY => js_util.getProperty(this, 'pageY');
  double get x => js_util.getProperty(this, 'x');
  double get y => js_util.getProperty(this, 'y');
  double get offsetX => js_util.getProperty(this, 'offsetX');
  double get offsetY => js_util.getProperty(this, 'offsetY');
  int get movementX => js_util.getProperty(this, 'movementX');
  int get movementY => js_util.getProperty(this, 'movementY');
  Object initMouseEvent(String typeArg,
          [bool? bubblesArg = false,
          bool? cancelableArg = false,
          Window? viewArg,
          int? detailArg = 0,
          int? screenXArg = 0,
          int? screenYArg = 0,
          int? clientXArg = 0,
          int? clientYArg = 0,
          bool? ctrlKeyArg = false,
          bool? altKeyArg = false,
          bool? shiftKeyArg = false,
          bool? metaKeyArg = false,
          int? buttonArg = 0,
          EventTarget? relatedTargetArg]) =>
      js_util.callMethod(this, 'initMouseEvent', [
        typeArg,
        bubblesArg,
        cancelableArg,
        viewArg,
        detailArg,
        screenXArg,
        screenYArg,
        clientXArg,
        clientYArg,
        ctrlKeyArg,
        altKeyArg,
        shiftKeyArg,
        metaKeyArg,
        buttonArg,
        relatedTargetArg
      ]);
}

@anonymous
@JS()
@staticInterop
class MouseEventInit implements EventModifierInit {
  external factory MouseEventInit(
      {int screenX = 0,
      int screenY = 0,
      int clientX = 0,
      int clientY = 0,
      int button = 0,
      int buttons = 0,
      EventTarget? relatedTarget});
}

extension PropsMouseEventInit on MouseEventInit {
  int get screenX => js_util.getProperty(this, 'screenX');
  set screenX(int newValue) {
    js_util.setProperty(this, 'screenX', newValue);
  }

  int get screenY => js_util.getProperty(this, 'screenY');
  set screenY(int newValue) {
    js_util.setProperty(this, 'screenY', newValue);
  }

  int get clientX => js_util.getProperty(this, 'clientX');
  set clientX(int newValue) {
    js_util.setProperty(this, 'clientX', newValue);
  }

  int get clientY => js_util.getProperty(this, 'clientY');
  set clientY(int newValue) {
    js_util.setProperty(this, 'clientY', newValue);
  }

  int get button => js_util.getProperty(this, 'button');
  set button(int newValue) {
    js_util.setProperty(this, 'button', newValue);
  }

  int get buttons => js_util.getProperty(this, 'buttons');
  set buttons(int newValue) {
    js_util.setProperty(this, 'buttons', newValue);
  }

  EventTarget? get relatedTarget => js_util.getProperty(this, 'relatedTarget');
  set relatedTarget(EventTarget? newValue) {
    js_util.setProperty(this, 'relatedTarget', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class EventModifierInit implements UIEventInit {
  external factory EventModifierInit(
      {bool ctrlKey = false,
      bool shiftKey = false,
      bool altKey = false,
      bool metaKey = false,
      bool modifierAltGraph = false,
      bool modifierCapsLock = false,
      bool modifierFn = false,
      bool modifierFnLock = false,
      bool modifierHyper = false,
      bool modifierNumLock = false,
      bool modifierScrollLock = false,
      bool modifierSuper = false,
      bool modifierSymbol = false,
      bool modifierSymbolLock = false});
}

extension PropsEventModifierInit on EventModifierInit {
  bool get ctrlKey => js_util.getProperty(this, 'ctrlKey');
  set ctrlKey(bool newValue) {
    js_util.setProperty(this, 'ctrlKey', newValue);
  }

  bool get shiftKey => js_util.getProperty(this, 'shiftKey');
  set shiftKey(bool newValue) {
    js_util.setProperty(this, 'shiftKey', newValue);
  }

  bool get altKey => js_util.getProperty(this, 'altKey');
  set altKey(bool newValue) {
    js_util.setProperty(this, 'altKey', newValue);
  }

  bool get metaKey => js_util.getProperty(this, 'metaKey');
  set metaKey(bool newValue) {
    js_util.setProperty(this, 'metaKey', newValue);
  }

  bool get modifierAltGraph => js_util.getProperty(this, 'modifierAltGraph');
  set modifierAltGraph(bool newValue) {
    js_util.setProperty(this, 'modifierAltGraph', newValue);
  }

  bool get modifierCapsLock => js_util.getProperty(this, 'modifierCapsLock');
  set modifierCapsLock(bool newValue) {
    js_util.setProperty(this, 'modifierCapsLock', newValue);
  }

  bool get modifierFn => js_util.getProperty(this, 'modifierFn');
  set modifierFn(bool newValue) {
    js_util.setProperty(this, 'modifierFn', newValue);
  }

  bool get modifierFnLock => js_util.getProperty(this, 'modifierFnLock');
  set modifierFnLock(bool newValue) {
    js_util.setProperty(this, 'modifierFnLock', newValue);
  }

  bool get modifierHyper => js_util.getProperty(this, 'modifierHyper');
  set modifierHyper(bool newValue) {
    js_util.setProperty(this, 'modifierHyper', newValue);
  }

  bool get modifierNumLock => js_util.getProperty(this, 'modifierNumLock');
  set modifierNumLock(bool newValue) {
    js_util.setProperty(this, 'modifierNumLock', newValue);
  }

  bool get modifierScrollLock =>
      js_util.getProperty(this, 'modifierScrollLock');
  set modifierScrollLock(bool newValue) {
    js_util.setProperty(this, 'modifierScrollLock', newValue);
  }

  bool get modifierSuper => js_util.getProperty(this, 'modifierSuper');
  set modifierSuper(bool newValue) {
    js_util.setProperty(this, 'modifierSuper', newValue);
  }

  bool get modifierSymbol => js_util.getProperty(this, 'modifierSymbol');
  set modifierSymbol(bool newValue) {
    js_util.setProperty(this, 'modifierSymbol', newValue);
  }

  bool get modifierSymbolLock =>
      js_util.getProperty(this, 'modifierSymbolLock');
  set modifierSymbolLock(bool newValue) {
    js_util.setProperty(this, 'modifierSymbolLock', newValue);
  }
}

///  The interface represents events that occur due to the user
/// moving a mouse wheel or similar input device.
///
///   Note: This is the standard wheel event interface to use. Old
/// versions of browsers implemented the non-standard and
/// non-cross-browser-compatible [MouseWheelEvent] and
/// [MouseScrollEvent] interfaces. Use this interface and avoid the
/// non-standard ones.
///   Note: Do not confuse the [wheel] event with the [scroll] event.
/// The default action of a [wheel] event is implementation-defined.
/// Thus, a [wheel] event doesn't necessarily dispatch a [scroll]
/// event. Even when it does, that doesn't mean that the [delta*]
/// values in the [wheel] event necessarily reflect the content's
/// scrolling direction. Therefore, do not rely on [delta*]
/// properties to get the content's scrolling direction. Instead,
/// detect value changes to [scrollLeft] and [scrollTop] of the
/// target in the [scroll] event.
///
///
///
///
///    Event
///
///
///
///
///
///    UIEvent
///
///
///
///
///
///    MouseEvent
///
///
///
///
///
///    WheelEvent
///
///
@JS()
@staticInterop
class WheelEvent implements MouseEvent {
  external WheelEvent(String type, [WheelEventInit? eventInitDict]);
  external static int get DOM_DELTA_PIXEL;
  external static int get DOM_DELTA_LINE;
  external static int get DOM_DELTA_PAGE;
}

extension PropsWheelEvent on WheelEvent {
  /// Returns a [double] representing the horizontal scroll amount.
  ///
  double get deltaX => js_util.getProperty(this, 'deltaX');

  /// Returns a [double] representing the vertical scroll amount.
  ///
  double get deltaY => js_util.getProperty(this, 'deltaY');

  ///  Returns a [double] representing the scroll amount for the
  /// z-axis.
  ///
  double get deltaZ => js_util.getProperty(this, 'deltaZ');

  ///  Returns an [unsigned long] representing the unit of the [delta*]
  /// values' scroll amount. Permitted values are:
  ///
  ///
  ///
  ///      Constant
  ///      Value
  ///      Description
  ///
  ///
  ///
  ///
  ///      [WheelEvent.DOM_DELTA_PIXEL]
  ///      [0x00]
  ///      The [delta*] values are specified in pixels.
  ///
  ///
  ///      [WheelEvent.DOM_DELTA_LINE]
  ///      [0x01]
  ///       The [delta*] values are specified in lines. Each mouse
  /// click scrolls a line of content, where the method used to
  /// calculate line height is browser dependent.
  ///
  ///
  ///      [WheelEvent.DOM_DELTA_PAGE]
  ///      [0x02]
  ///       The [delta*] values are specified in pages. Each mouse
  /// click scrolls a page of content.
  ///
  ///
  ///
  ///
  int get deltaMode => js_util.getProperty(this, 'deltaMode');
}

@anonymous
@JS()
@staticInterop
class WheelEventInit implements MouseEventInit {
  external factory WheelEventInit(
      {double deltaX = 0.0,
      double deltaY = 0.0,
      double deltaZ = 0.0,
      int deltaMode = 0});
}

extension PropsWheelEventInit on WheelEventInit {
  double get deltaX => js_util.getProperty(this, 'deltaX');
  set deltaX(double newValue) {
    js_util.setProperty(this, 'deltaX', newValue);
  }

  double get deltaY => js_util.getProperty(this, 'deltaY');
  set deltaY(double newValue) {
    js_util.setProperty(this, 'deltaY', newValue);
  }

  double get deltaZ => js_util.getProperty(this, 'deltaZ');
  set deltaZ(double newValue) {
    js_util.setProperty(this, 'deltaZ', newValue);
  }

  int get deltaMode => js_util.getProperty(this, 'deltaMode');
  set deltaMode(int newValue) {
    js_util.setProperty(this, 'deltaMode', newValue);
  }
}

///  The interface represents an event notifying the user of editable
/// content changes.
///
///
///
///    Event
///
///
///
///
///
///    UIEvent
///
///
///
///
///
///    InputEvent
///
///
@JS()
@staticInterop
class InputEvent implements UIEvent {
  external InputEvent(String type, [InputEventInit? eventInitDict]);
}

extension PropsInputEvent on InputEvent {
  ///  Returns a [DOMString] with the inserted characters. This may be
  /// an empty string if the change doesn't insert text (such as when
  /// deleting characters, for example).
  ///
  String? get data => js_util.getProperty(this, 'data');

  ///  Returns a [Boolean] value indicating if the event is fired after
  /// [compositionstart] and before [compositionend].
  ///
  bool get isComposing => js_util.getProperty(this, 'isComposing');

  ///  Returns the type of change for editable content such as, for
  /// example, inserting, deleting, or formatting text. See the
  /// property page for a complete list of input types.
  ///
  String get inputType => js_util.getProperty(this, 'inputType');
  DataTransfer? get dataTransfer => js_util.getProperty(this, 'dataTransfer');
  Iterable<StaticRange> getTargetRanges() =>
      js_util.callMethod(this, 'getTargetRanges', []);
}

@anonymous
@JS()
@staticInterop
class InputEventInit implements UIEventInit {
  external factory InputEventInit(
      {String? data, bool isComposing = false, String inputType = ''});
}

extension PropsInputEventInit on InputEventInit {
  String? get data => js_util.getProperty(this, 'data');
  set data(String? newValue) {
    js_util.setProperty(this, 'data', newValue);
  }

  bool get isComposing => js_util.getProperty(this, 'isComposing');
  set isComposing(bool newValue) {
    js_util.setProperty(this, 'isComposing', newValue);
  }

  String get inputType => js_util.getProperty(this, 'inputType');
  set inputType(String newValue) {
    js_util.setProperty(this, 'inputType', newValue);
  }
}

///   objects describe a user interaction with the keyboard; each
/// event describes a single interaction between the user and a key
/// (or combination of a key with modifier keys) on the keyboard. The
/// event type ([keydown], [keypress], or [keyup]) identifies what
/// kind of keyboard activity occurred.
///
///   Note: events just indicate what interaction the user had with a
/// key on the keyboard at a low level, providing no contextual
/// meaning to that interaction. When you need to handle text input,
/// use the [input] event instead. Keyboard events may not be fired
/// if the user is using an alternate means of entering text, such as
/// a handwriting system on a tablet or graphics tablet.
///
///
///
///
///    Event
///
///
///
///
///
///    UIEvent
///
///
///
///
///
///    KeyboardEvent
///
///
@JS()
@staticInterop
class KeyboardEvent implements UIEvent {
  external KeyboardEvent(String type, [KeyboardEventInit? eventInitDict]);
  external static int get DOM_KEY_LOCATION_STANDARD;
  external static int get DOM_KEY_LOCATION_LEFT;
  external static int get DOM_KEY_LOCATION_RIGHT;
  external static int get DOM_KEY_LOCATION_NUMPAD;
}

extension PropsKeyboardEvent on KeyboardEvent {
  ///  Returns a [DOMString] representing the key value of the key
  /// represented by the event.
  ///
  String get key => js_util.getProperty(this, 'key');

  ///  Returns a [DOMString] with the code value of the physical key
  /// represented by the event.
  ///
  ///     Warning: This ignores the user's keyboard layout, so that if
  /// the user presses the key at the "Y" position in a QWERTY keyboard
  /// layout (near the middle of the row above the home row), this will
  /// always return "KeyY", even if the user has a QWERTZ keyboard
  /// (which would mean the user expects a "Z" and all the other
  /// properties would indicate a "Z") or a Dvorak keyboard layout
  /// (where the user would expect an "F"). If you want to display the
  /// correct keystrokes to the user, you can use
  /// [Keyboard.getLayoutMap()].
  ///
  ///
  String get code => js_util.getProperty(this, 'code');

  ///  Returns a [Number] representing the location of the key on the
  /// keyboard or other input device. A list of the constants
  /// identifying the locations is shown above in Keyboard locations.
  ///
  int get location => js_util.getProperty(this, 'location');

  ///  Returns a boolean value that is [true] if the Ctrl key was
  /// active when the key event was generated.
  ///
  bool get ctrlKey => js_util.getProperty(this, 'ctrlKey');

  ///  Returns a boolean value that is [true] if the Shift key was
  /// active when the key event was generated.
  ///
  bool get shiftKey => js_util.getProperty(this, 'shiftKey');

  ///  Returns a boolean value that is [true] if the Alt (Option or ⌥
  /// on OS X) key was active when the key event was generated.
  ///
  bool get altKey => js_util.getProperty(this, 'altKey');

  ///  Returns a boolean value that is [true] if the Meta key (on Mac
  /// keyboards, the ⌘ Command key; on Windows keyboards, the Windows
  /// key (⊞)) was active when the key event was generated.
  ///
  bool get metaKey => js_util.getProperty(this, 'metaKey');

  ///  Returns a boolean value that is [true] if the key is being held
  /// down such that it is automatically repeating.
  ///
  bool get repeat => js_util.getProperty(this, 'repeat');

  ///  Returns a boolean value that is [true] if the event is fired
  /// between after [compositionstart] and before [compositionend].
  ///
  bool get isComposing => js_util.getProperty(this, 'isComposing');

  ///  Returns a boolean value indicating if a modifier key such as
  /// Alt, Shift, Ctrl, or Meta, was pressed when the event was
  /// created.
  ///
  /// var active = event.getModifierState(keyArg);
  ///
  /// // Ignore if following modifier is active.
  /// if (event.getModifierState("Fn") ||
  ///   event.getModifierState("Hyper") ||
  ///   event.getModifierState("OS") ||
  ///   event.getModifierState("Super") ||
  ///   event.getModifierState("Win") /* hack for IE */) {
  ///  return;
  /// }
  ///
  /// // Also ignore if two or more modifiers except Shift are active.
  /// if (event.getModifierState("Control") +
  ///   event.getModifierState("Alt") +
  ///   event.getModifierState("Meta") > 1) {
  ///  return;
  /// }
  ///
  /// // Handle shortcut key with standard modifier
  /// if (event.getModifierState("Accel")) {
  ///  switch (event.key.toLowerCase()) {
  ///   case "c":
  ///    if (event.getModifierState("Shift")) {
  ///     // Handle Accel + Shift + C
  ///     event.preventDefault(); // consume the key event
  ///    }
  ///    break;
  ///   case "k":
  ///    if (!event.getModifierState("Shift")) {
  ///     // Handle Accel + K
  ///     event.preventDefault(); // consume the key event
  ///    }
  ///    break;
  ///  }
  ///  return;
  /// }
  ///
  /// // Do something different for arrow keys if ScrollLock is locked.
  /// if ((event.getModifierState("ScrollLock") ||
  ///     event.getModifierState("Scroll") /* hack for IE */) &&
  ///   !event.getModifierState("Control") &&
  ///   !event.getModifierState("Alt") &&
  ///   !event.getModifierState("Meta")) {
  ///  switch (event.key) {
  ///   case "ArrowDown":
  ///   case "Down": // hack for IE and old Gecko
  ///    event.preventDefault(); // consume the key event
  ///    break;
  ///   case "ArrowLeft":
  ///   case "Left": // hack for IE and old Gecko
  ///    // Do something different if ScrollLock is locked.
  ///    event.preventDefault(); // consume the key event
  ///    break;
  ///   case "ArrowRight":
  ///   case "Right": // hack for IE and old Gecko
  ///    // Do something different if ScrollLock is locked.
  ///    event.preventDefault(); // consume the key event
  ///    break;
  ///   case "ArrowUp":
  ///   case "Up": // hack for IE and old Gecko
  ///    // Do something different if ScrollLock is locked.
  ///    event.preventDefault(); // consume the key event
  ///    break;
  ///  }
  /// }
  ///
  ///   Note: Although this example uses .getModifierState() with "Alt",
  ///   "Control", "Meta" and "Shift", using
  ///   event.altKey, event.ctrlKey, event.metaKey and
  ///   event.shiftKey may be more preferable.
  ///
  ///
  bool getModifierState(String keyArg) =>
      js_util.callMethod(this, 'getModifierState', [keyArg]);

  Object initKeyboardEvent(String typeArg,
          [bool? bubblesArg = false,
          bool? cancelableArg = false,
          Window? viewArg,
          String? keyArg = '',
          int? locationArg = 0,
          bool? ctrlKey = false,
          bool? altKey = false,
          bool? shiftKey = false,
          bool? metaKey = false]) =>
      js_util.callMethod(this, 'initKeyboardEvent', [
        typeArg,
        bubblesArg,
        cancelableArg,
        viewArg,
        keyArg,
        locationArg,
        ctrlKey,
        altKey,
        shiftKey,
        metaKey
      ]);

  int get charCode => js_util.getProperty(this, 'charCode');
  int get keyCode => js_util.getProperty(this, 'keyCode');
}

@anonymous
@JS()
@staticInterop
class KeyboardEventInit implements EventModifierInit {
  external factory KeyboardEventInit(
      {String key = '',
      String code = '',
      int location = 0,
      bool repeat = false,
      bool isComposing = false});
}

extension PropsKeyboardEventInit on KeyboardEventInit {
  String get key => js_util.getProperty(this, 'key');
  set key(String newValue) {
    js_util.setProperty(this, 'key', newValue);
  }

  String get code => js_util.getProperty(this, 'code');
  set code(String newValue) {
    js_util.setProperty(this, 'code', newValue);
  }

  int get location => js_util.getProperty(this, 'location');
  set location(int newValue) {
    js_util.setProperty(this, 'location', newValue);
  }

  bool get repeat => js_util.getProperty(this, 'repeat');
  set repeat(bool newValue) {
    js_util.setProperty(this, 'repeat', newValue);
  }

  bool get isComposing => js_util.getProperty(this, 'isComposing');
  set isComposing(bool newValue) {
    js_util.setProperty(this, 'isComposing', newValue);
  }
}

///  The DOM represents events that occur due to the user indirectly
/// entering text.
///
///
///
///    Event
///
///
///
///
///
///    UIEvent
///
///
///
///
///
///    CompositionEvent
///
///
@JS()
@staticInterop
class CompositionEvent implements UIEvent {
  external CompositionEvent(String type, [CompositionEventInit? eventInitDict]);
}

extension PropsCompositionEvent on CompositionEvent {
  ///  Returns the characters generated by the input method that raised
  /// the event; its varies depending on the type of event that
  /// generated the [CompositionEvent] object.
  ///
  String get data => js_util.getProperty(this, 'data');
  Object initCompositionEvent(String typeArg,
          [bool? bubblesArg = false,
          bool? cancelableArg = false,
          Window? viewArg,
          String? dataArg = '']) =>
      js_util.callMethod(this, 'initCompositionEvent',
          [typeArg, bubblesArg, cancelableArg, viewArg, dataArg]);
}

@anonymous
@JS()
@staticInterop
class CompositionEventInit implements UIEventInit {
  external factory CompositionEventInit({String data = ''});
}

extension PropsCompositionEventInit on CompositionEventInit {
  String get data => js_util.getProperty(this, 'data');
  set data(String newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
}

///  Deprecated: This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///   Note: Mutation Events (W3C DOM Level 3 Events) have been
/// deprecated in favor of Mutation Observers (W3C DOM4).
///
///  The interface provides event properties that are specific to
/// modifications to the Document Object Model (DOM) hierarchy and
/// nodes.
@deprecated
@JS()
@staticInterop
class MutationEvent implements Event {
  external static int get MODIFICATION;
  external static int get ADDITION;
  external static int get REMOVAL;
  external MutationEvent();
}

extension PropsMutationEvent on MutationEvent {
  Node? get relatedNode => js_util.getProperty(this, 'relatedNode');
  String get prevValue => js_util.getProperty(this, 'prevValue');
  String get newValue => js_util.getProperty(this, 'newValue');
  String get attrName => js_util.getProperty(this, 'attrName');
  int get attrChange => js_util.getProperty(this, 'attrChange');
  Object initMutationEvent(String typeArg,
          [bool? bubblesArg = false,
          bool? cancelableArg = false,
          Node? relatedNodeArg,
          String? prevValueArg = '',
          String? newValueArg = '',
          String? attrNameArg = '',
          int? attrChangeArg = 0]) =>
      js_util.callMethod(this, 'initMutationEvent', [
        typeArg,
        bubblesArg,
        cancelableArg,
        relatedNodeArg,
        prevValueArg,
        newValueArg,
        attrNameArg,
        attrChangeArg
      ]);
}
