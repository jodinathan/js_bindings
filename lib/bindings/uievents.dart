/// UI Events
///
/// https://w3c.github.io/uievents/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library uievents;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
  Window? get view => js_util.getProperty(this, 'view');
  int get detail => js_util.getProperty(this, 'detail');
  InputDeviceCapabilities? get sourceCapabilities =>
      js_util.getProperty(this, 'sourceCapabilities');
  void initUIEvent(String typeArg,
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
  external factory UIEventInit({Window? view, int? detail = 0});
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
  external factory FocusEvent(String type, [FocusEventInit? eventInitDict]);
}

extension PropsFocusEvent on FocusEvent {
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
/// [WheelEvent], [DragEvent], and [PointerEvent].
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
  int get screenX => js_util.getProperty(this, 'screenX');
  int get screenY => js_util.getProperty(this, 'screenY');
  int get clientX => js_util.getProperty(this, 'clientX');
  int get clientY => js_util.getProperty(this, 'clientY');
  bool get ctrlKey => js_util.getProperty(this, 'ctrlKey');
  bool get shiftKey => js_util.getProperty(this, 'shiftKey');
  bool get altKey => js_util.getProperty(this, 'altKey');
  bool get metaKey => js_util.getProperty(this, 'metaKey');
  int get button => js_util.getProperty(this, 'button');
  int get buttons => js_util.getProperty(this, 'buttons');
  EventTarget? get relatedTarget => js_util.getProperty(this, 'relatedTarget');
  bool getModifierState(String keyArg) =>
      js_util.callMethod(this, 'getModifierState', [keyArg]);

  double get pageX => js_util.getProperty(this, 'pageX');
  double get pageY => js_util.getProperty(this, 'pageY');
  double get x => js_util.getProperty(this, 'x');
  double get y => js_util.getProperty(this, 'y');
  double get offsetX => js_util.getProperty(this, 'offsetX');
  double get offsetY => js_util.getProperty(this, 'offsetY');
  double get movementX => js_util.getProperty(this, 'movementX');
  double get movementY => js_util.getProperty(this, 'movementY');
  void initMouseEvent(String typeArg,
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
      {int? screenX = 0,
      int? screenY = 0,
      int? clientX = 0,
      int? clientY = 0,
      int? button = 0,
      int? buttons = 0,
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
      {bool? ctrlKey = false,
      bool? shiftKey = false,
      bool? altKey = false,
      bool? metaKey = false,
      bool? modifierAltGraph = false,
      bool? modifierCapsLock = false,
      bool? modifierFn = false,
      bool? modifierFnLock = false,
      bool? modifierHyper = false,
      bool? modifierNumLock = false,
      bool? modifierScrollLock = false,
      bool? modifierSuper = false,
      bool? modifierSymbol = false,
      bool? modifierSymbolLock = false});
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
  external factory WheelEvent(String type, [WheelEventInit? eventInitDict]);
  @JS('DOM_DELTA_PIXEL')
  external static int get domDeltaPixel;

  @JS('DOM_DELTA_LINE')
  external static int get domDeltaLine;

  @JS('DOM_DELTA_PAGE')
  external static int get domDeltaPage;
}

extension PropsWheelEvent on WheelEvent {
  double get deltaX => js_util.getProperty(this, 'deltaX');
  double get deltaY => js_util.getProperty(this, 'deltaY');
  double get deltaZ => js_util.getProperty(this, 'deltaZ');
  int get deltaMode => js_util.getProperty(this, 'deltaMode');
}

@anonymous
@JS()
@staticInterop
class WheelEventInit implements MouseEventInit {
  external factory WheelEventInit(
      {double? deltaX = 0.0,
      double? deltaY = 0.0,
      double? deltaZ = 0.0,
      int? deltaMode = 0});
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
  external factory InputEvent(String type, [InputEventInit? eventInitDict]);
}

extension PropsInputEvent on InputEvent {
  String? get data => js_util.getProperty(this, 'data');
  bool get isComposing => js_util.getProperty(this, 'isComposing');
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
      {String? data, bool? isComposing = false, String? inputType = ''});
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
  external factory KeyboardEvent(String type,
      [KeyboardEventInit? eventInitDict]);
  @JS('DOM_KEY_LOCATION_STANDARD')
  external static int get domKeyLocationStandard;

  @JS('DOM_KEY_LOCATION_LEFT')
  external static int get domKeyLocationLeft;

  @JS('DOM_KEY_LOCATION_RIGHT')
  external static int get domKeyLocationRight;

  @JS('DOM_KEY_LOCATION_NUMPAD')
  external static int get domKeyLocationNumpad;
}

extension PropsKeyboardEvent on KeyboardEvent {
  String get key => js_util.getProperty(this, 'key');
  String get code => js_util.getProperty(this, 'code');
  int get location => js_util.getProperty(this, 'location');
  bool get ctrlKey => js_util.getProperty(this, 'ctrlKey');
  bool get shiftKey => js_util.getProperty(this, 'shiftKey');
  bool get altKey => js_util.getProperty(this, 'altKey');
  bool get metaKey => js_util.getProperty(this, 'metaKey');
  bool get repeat => js_util.getProperty(this, 'repeat');
  bool get isComposing => js_util.getProperty(this, 'isComposing');
  bool getModifierState(String keyArg) =>
      js_util.callMethod(this, 'getModifierState', [keyArg]);

  void initKeyboardEvent(String typeArg,
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
      {String? key = '',
      String? code = '',
      int? location = 0,
      bool? repeat = false,
      bool? isComposing = false});
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
  external factory CompositionEvent(String type,
      [CompositionEventInit? eventInitDict]);
}

extension PropsCompositionEvent on CompositionEvent {
  String get data => js_util.getProperty(this, 'data');
  void initCompositionEvent(String typeArg,
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
  external factory CompositionEventInit({String? data = ''});
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
///
///
///
///    Event
///
///
///
///
///
///    MutationEvent
///
///
@Deprecated('Not official in the specs')
@JS()
@staticInterop
class MutationEvent implements Event {
  @JS('MODIFICATION')
  external static int get modification;

  @JS('ADDITION')
  external static int get addition;

  @JS('REMOVAL')
  external static int get removal;

  external factory MutationEvent();
}

extension PropsMutationEvent on MutationEvent {
  Node? get relatedNode => js_util.getProperty(this, 'relatedNode');
  String get prevValue => js_util.getProperty(this, 'prevValue');
  String get newValue => js_util.getProperty(this, 'newValue');
  String get attrName => js_util.getProperty(this, 'attrName');
  int get attrChange => js_util.getProperty(this, 'attrChange');
  void initMutationEvent(String typeArg,
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
