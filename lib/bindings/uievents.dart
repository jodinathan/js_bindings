/// UI Events
///
/// https://w3c.github.io/uievents/
@JS('window')
@staticInterop
library uievents;

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
  external factory UIEvent(String type, [UIEventInit? eventInitDict]);
}

extension PropsUIEvent on UIEvent {
  ///  Returns a [WindowProxy] that contains the view that generated
  /// the event.
  ///
  external Window? get view;

  ///  Returns a [long] with details about the event, depending on the
  /// event type.
  ///
  external int get detail;
  external InputDeviceCapabilities? get sourceCapabilities;
  external Object initUIEvent(String typeArg,
      [bool? bubblesArg = false,
      bool? cancelableArg = false,
      Window? viewArg,
      int? detailArg = 0]);
  external int get which;
}

@anonymous
@JS()
@staticInterop
class UIEventInit implements EventInit {
  external factory UIEventInit({Window? view, int detail = 0});
}

extension PropsUIEventInit on UIEventInit {
  external Window? get view;
  external set view(Window? newValue);
  external int get detail;
  external set detail(int newValue);
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
  external factory FocusEvent(String type, [FocusEventInit? eventInitDict]);
}

extension PropsFocusEvent on FocusEvent {
  ///  Is an [EventTarget] representing a secondary target for this
  /// event. In some cases (such as when tabbing in or out a page),
  /// this property may be set to [null] for security reasons.
  ///
  external EventTarget? get relatedTarget;
}

@anonymous
@JS()
@staticInterop
class FocusEventInit implements UIEventInit {
  external factory FocusEventInit({EventTarget? relatedTarget});
}

extension PropsFocusEventInit on FocusEventInit {
  external EventTarget? get relatedTarget;
  external set relatedTarget(EventTarget? newValue);
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
  external factory MouseEvent(String type, [MouseEventInit? eventInitDict]);
}

extension PropsMouseEvent on MouseEvent {
  ///  The X coordinate of the mouse pointer in global (screen)
  /// coordinates.
  ///
  external dynamic get screenX;

  ///  The Y coordinate of the mouse pointer in global (screen)
  /// coordinates.
  ///
  external dynamic get screenY;

  ///  The X coordinate of the mouse pointer in local (DOM content)
  /// coordinates.
  ///
  external dynamic get clientX;

  ///  The Y coordinate of the mouse pointer in local (DOM content)
  /// coordinates.
  ///
  external dynamic get clientY;

  ///  Returns [true] if the control key was down when the mouse event
  /// was fired.
  ///
  external bool get ctrlKey;

  ///  Returns [true] if the shift key was down when the mouse event
  /// was fired.
  ///
  external bool get shiftKey;

  ///  Returns [true] if the alt key was down when the mouse event was
  /// fired.
  ///
  external bool get altKey;

  ///  Returns [true] if the meta key was down when the mouse event was
  /// fired.
  ///
  external bool get metaKey;

  ///  The button number that was pressed (if applicable) when the
  /// mouse event was fired.
  ///
  external int get button;

  ///  The buttons being depressed (if any) when the mouse event was
  /// fired.
  ///
  external int get buttons;

  /// The secondary target for the event, if there is one.
  ///
  external EventTarget? get relatedTarget;

  ///  Returns the current state of the specified modifier key. See
  /// [KeyboardEvent.getModifierState()] for details.
  ///
  /// getModifierState(keyArg)
  ///
  external bool getModifierState(String keyArg);
  external double get pageX;
  external double get pageY;
  external double get x;
  external double get y;
  external double get offsetX;
  external double get offsetY;
  external int get movementX;
  external int get movementY;
  external Object initMouseEvent(String typeArg,
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
      EventTarget? relatedTargetArg]);
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
  external int get screenX;
  external set screenX(int newValue);
  external int get screenY;
  external set screenY(int newValue);
  external int get clientX;
  external set clientX(int newValue);
  external int get clientY;
  external set clientY(int newValue);
  external int get button;
  external set button(int newValue);
  external int get buttons;
  external set buttons(int newValue);
  external EventTarget? get relatedTarget;
  external set relatedTarget(EventTarget? newValue);
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
  external bool get ctrlKey;
  external set ctrlKey(bool newValue);
  external bool get shiftKey;
  external set shiftKey(bool newValue);
  external bool get altKey;
  external set altKey(bool newValue);
  external bool get metaKey;
  external set metaKey(bool newValue);
  external bool get modifierAltGraph;
  external set modifierAltGraph(bool newValue);
  external bool get modifierCapsLock;
  external set modifierCapsLock(bool newValue);
  external bool get modifierFn;
  external set modifierFn(bool newValue);
  external bool get modifierFnLock;
  external set modifierFnLock(bool newValue);
  external bool get modifierHyper;
  external set modifierHyper(bool newValue);
  external bool get modifierNumLock;
  external set modifierNumLock(bool newValue);
  external bool get modifierScrollLock;
  external set modifierScrollLock(bool newValue);
  external bool get modifierSuper;
  external set modifierSuper(bool newValue);
  external bool get modifierSymbol;
  external set modifierSymbol(bool newValue);
  external bool get modifierSymbolLock;
  external set modifierSymbolLock(bool newValue);
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
  external factory WheelEvent(String type, [WheelEventInit? eventInitDict]);
  external static int get DOM_DELTA_PIXEL;
  external static int get DOM_DELTA_LINE;
  external static int get DOM_DELTA_PAGE;
}

extension PropsWheelEvent on WheelEvent {
  /// Returns a [double] representing the horizontal scroll amount.
  ///
  external double get deltaX;

  /// Returns a [double] representing the vertical scroll amount.
  ///
  external double get deltaY;

  ///  Returns a [double] representing the scroll amount for the
  /// z-axis.
  ///
  external double get deltaZ;

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
  external int get deltaMode;
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
  external double get deltaX;
  external set deltaX(double newValue);
  external double get deltaY;
  external set deltaY(double newValue);
  external double get deltaZ;
  external set deltaZ(double newValue);
  external int get deltaMode;
  external set deltaMode(int newValue);
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
  external factory InputEvent(String type, [InputEventInit? eventInitDict]);
}

extension PropsInputEvent on InputEvent {
  ///  Returns a [DOMString] with the inserted characters. This may be
  /// an empty string if the change doesn't insert text (such as when
  /// deleting characters, for example).
  ///
  external String? get data;

  ///  Returns a [Boolean] value indicating if the event is fired after
  /// [compositionstart] and before [compositionend].
  ///
  external bool get isComposing;

  ///  Returns the type of change for editable content such as, for
  /// example, inserting, deleting, or formatting text. See the
  /// property page for a complete list of input types.
  ///
  external String get inputType;
  external DataTransfer? get dataTransfer;
  external Iterable<StaticRange> getTargetRanges();
}

@anonymous
@JS()
@staticInterop
class InputEventInit implements UIEventInit {
  external factory InputEventInit(
      {String? data, bool isComposing = false, String inputType = ''});
}

extension PropsInputEventInit on InputEventInit {
  external String? get data;
  external set data(String? newValue);
  external bool get isComposing;
  external set isComposing(bool newValue);
  external String get inputType;
  external set inputType(String newValue);
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
  external factory KeyboardEvent(String type,
      [KeyboardEventInit? eventInitDict]);
  external static int get DOM_KEY_LOCATION_STANDARD;
  external static int get DOM_KEY_LOCATION_LEFT;
  external static int get DOM_KEY_LOCATION_RIGHT;
  external static int get DOM_KEY_LOCATION_NUMPAD;
}

extension PropsKeyboardEvent on KeyboardEvent {
  ///  Returns a [DOMString] representing the key value of the key
  /// represented by the event.
  ///
  external String get key;

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
  external String get code;

  ///  Returns a [Number] representing the location of the key on the
  /// keyboard or other input device. A list of the constants
  /// identifying the locations is shown above in Keyboard locations.
  ///
  external int get location;

  ///  Returns a boolean value that is [true] if the Ctrl key was
  /// active when the key event was generated.
  ///
  external bool get ctrlKey;

  ///  Returns a boolean value that is [true] if the Shift key was
  /// active when the key event was generated.
  ///
  external bool get shiftKey;

  ///  Returns a boolean value that is [true] if the Alt (Option or ⌥
  /// on OS X) key was active when the key event was generated.
  ///
  external bool get altKey;

  ///  Returns a boolean value that is [true] if the Meta key (on Mac
  /// keyboards, the ⌘ Command key; on Windows keyboards, the Windows
  /// key (⊞)) was active when the key event was generated.
  ///
  external bool get metaKey;

  ///  Returns a boolean value that is [true] if the key is being held
  /// down such that it is automatically repeating.
  ///
  external bool get repeat;

  ///  Returns a boolean value that is [true] if the event is fired
  /// between after [compositionstart] and before [compositionend].
  ///
  external bool get isComposing;

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
  external bool getModifierState(String keyArg);
  external Object initKeyboardEvent(String typeArg,
      [bool? bubblesArg = false,
      bool? cancelableArg = false,
      Window? viewArg,
      String? keyArg = '',
      int? locationArg = 0,
      bool? ctrlKey = false,
      bool? altKey = false,
      bool? shiftKey = false,
      bool? metaKey = false]);
  external int get charCode;
  external int get keyCode;
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
  external String get key;
  external set key(String newValue);
  external String get code;
  external set code(String newValue);
  external int get location;
  external set location(int newValue);
  external bool get repeat;
  external set repeat(bool newValue);
  external bool get isComposing;
  external set isComposing(bool newValue);
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
  external factory CompositionEvent(String type,
      [CompositionEventInit? eventInitDict]);
}

extension PropsCompositionEvent on CompositionEvent {
  ///  Returns the characters generated by the input method that raised
  /// the event; its varies depending on the type of event that
  /// generated the [CompositionEvent] object.
  ///
  external String get data;
  external Object initCompositionEvent(String typeArg,
      [bool? bubblesArg = false,
      bool? cancelableArg = false,
      Window? viewArg,
      String? dataArg = '']);
}

@anonymous
@JS()
@staticInterop
class CompositionEventInit implements UIEventInit {
  external factory CompositionEventInit({String data = ''});
}

extension PropsCompositionEventInit on CompositionEventInit {
  external String get data;
  external set data(String newValue);
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
  external factory MutationEvent();
}

extension PropsMutationEvent on MutationEvent {
  external Node? get relatedNode;
  external String get prevValue;
  external String get newValue;
  external String get attrName;
  external int get attrChange;
  external Object initMutationEvent(String typeArg,
      [bool? bubblesArg = false,
      bool? cancelableArg = false,
      Node? relatedNodeArg,
      String? prevValueArg = '',
      String? newValueArg = '',
      String? attrNameArg = '',
      int? attrChangeArg = 0]);
}
