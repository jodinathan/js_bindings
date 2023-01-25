/// EditContext API
///
/// https://w3c.github.io/edit-context/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library edit_context;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class EditContextInit {
  external factory EditContextInit(
      {required String text,
      required int selectionStart,
      required int selectionEnd});
}

extension PropsEditContextInit on EditContextInit {
  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }

  int get selectionStart => js_util.getProperty(this, 'selectionStart');
  set selectionStart(int newValue) {
    js_util.setProperty(this, 'selectionStart', newValue);
  }

  int get selectionEnd => js_util.getProperty(this, 'selectionEnd');
  set selectionEnd(int newValue) {
    js_util.setProperty(this, 'selectionEnd', newValue);
  }
}

@JS()
@staticInterop
class EditContext implements EventTarget {
  external factory EditContext([EditContextInit? options]);
}

extension PropsEditContext on EditContext {
  void updateText(int rangeStart, int rangeEnd, String text) =>
      js_util.callMethod(this, 'updateText', [rangeStart, rangeEnd, text]);

  void updateSelection(int start, int end) =>
      js_util.callMethod(this, 'updateSelection', [start, end]);

  void updateControlBound(DOMRect controlBound) =>
      js_util.callMethod(this, 'updateControlBound', [controlBound]);

  void updateSelectionBound(DOMRect selectionBound) =>
      js_util.callMethod(this, 'updateSelectionBound', [selectionBound]);

  void updateCharacterBounds(
          int rangeStart, Iterable<DOMRect> characterBounds) =>
      js_util.callMethod(
          this, 'updateCharacterBounds', [rangeStart, characterBounds]);

  Iterable<Element> attachedElements() =>
      js_util.callMethod(this, 'attachedElements', []);

  String get text => js_util.getProperty(this, 'text');
  int get selectionStart => js_util.getProperty(this, 'selectionStart');
  int get selectionEnd => js_util.getProperty(this, 'selectionEnd');
  int get compositionRangeStart =>
      js_util.getProperty(this, 'compositionRangeStart');
  int get compositionRangeEnd =>
      js_util.getProperty(this, 'compositionRangeEnd');
  bool get isInComposition => js_util.getProperty(this, 'isInComposition');
  DOMRect get controlBound => js_util.getProperty(this, 'controlBound');
  DOMRect get selectionBound => js_util.getProperty(this, 'selectionBound');
  int get characterBoundsRangeStart =>
      js_util.getProperty(this, 'characterBoundsRangeStart');
  Iterable<DOMRect> characterBounds() =>
      js_util.callMethod(this, 'characterBounds', []);

  EventHandlerNonNull? get ontextupdate =>
      js_util.getProperty(this, 'ontextupdate');
  set ontextupdate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontextupdate', newValue);
  }

  EventHandlerNonNull? get ontextformatupdate =>
      js_util.getProperty(this, 'ontextformatupdate');
  set ontextformatupdate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontextformatupdate', newValue);
  }

  EventHandlerNonNull? get oncharacterboundsupdate =>
      js_util.getProperty(this, 'oncharacterboundsupdate');
  set oncharacterboundsupdate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncharacterboundsupdate', newValue);
  }

  EventHandlerNonNull? get oncompositionstart =>
      js_util.getProperty(this, 'oncompositionstart');
  set oncompositionstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncompositionstart', newValue);
  }

  EventHandlerNonNull? get oncompositionend =>
      js_util.getProperty(this, 'oncompositionend');
  set oncompositionend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncompositionend', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class TextUpdateEventInit {
  external factory TextUpdateEventInit(
      {required int updateRangeStart,
      required int updateRangeEnd,
      required String text,
      required int selectionStart,
      required int selectionEnd,
      required int compositionStart,
      required int compositionEnd});
}

extension PropsTextUpdateEventInit on TextUpdateEventInit {
  int get updateRangeStart => js_util.getProperty(this, 'updateRangeStart');
  set updateRangeStart(int newValue) {
    js_util.setProperty(this, 'updateRangeStart', newValue);
  }

  int get updateRangeEnd => js_util.getProperty(this, 'updateRangeEnd');
  set updateRangeEnd(int newValue) {
    js_util.setProperty(this, 'updateRangeEnd', newValue);
  }

  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }

  int get selectionStart => js_util.getProperty(this, 'selectionStart');
  set selectionStart(int newValue) {
    js_util.setProperty(this, 'selectionStart', newValue);
  }

  int get selectionEnd => js_util.getProperty(this, 'selectionEnd');
  set selectionEnd(int newValue) {
    js_util.setProperty(this, 'selectionEnd', newValue);
  }

  int get compositionStart => js_util.getProperty(this, 'compositionStart');
  set compositionStart(int newValue) {
    js_util.setProperty(this, 'compositionStart', newValue);
  }

  int get compositionEnd => js_util.getProperty(this, 'compositionEnd');
  set compositionEnd(int newValue) {
    js_util.setProperty(this, 'compositionEnd', newValue);
  }
}

@JS()
@staticInterop
class TextUpdateEvent implements Event {
  external factory TextUpdateEvent([TextUpdateEventInit? options]);
}

extension PropsTextUpdateEvent on TextUpdateEvent {
  int get updateRangeStart => js_util.getProperty(this, 'updateRangeStart');
  int get updateRangeEnd => js_util.getProperty(this, 'updateRangeEnd');
  String get text => js_util.getProperty(this, 'text');
  int get selectionStart => js_util.getProperty(this, 'selectionStart');
  int get selectionEnd => js_util.getProperty(this, 'selectionEnd');
  int get compositionStart => js_util.getProperty(this, 'compositionStart');
  int get compositionEnd => js_util.getProperty(this, 'compositionEnd');
}

@anonymous
@JS()
@staticInterop
class TextFormatInit {
  external factory TextFormatInit(
      {required int rangeStart,
      required int rangeEnd,
      required String textColor,
      required String backgroundColor,
      required String underlineStyle,
      required String underlineThickness,
      required String underlineColor});
}

extension PropsTextFormatInit on TextFormatInit {
  int get rangeStart => js_util.getProperty(this, 'rangeStart');
  set rangeStart(int newValue) {
    js_util.setProperty(this, 'rangeStart', newValue);
  }

  int get rangeEnd => js_util.getProperty(this, 'rangeEnd');
  set rangeEnd(int newValue) {
    js_util.setProperty(this, 'rangeEnd', newValue);
  }

  String get textColor => js_util.getProperty(this, 'textColor');
  set textColor(String newValue) {
    js_util.setProperty(this, 'textColor', newValue);
  }

  String get backgroundColor => js_util.getProperty(this, 'backgroundColor');
  set backgroundColor(String newValue) {
    js_util.setProperty(this, 'backgroundColor', newValue);
  }

  String get underlineStyle => js_util.getProperty(this, 'underlineStyle');
  set underlineStyle(String newValue) {
    js_util.setProperty(this, 'underlineStyle', newValue);
  }

  String get underlineThickness =>
      js_util.getProperty(this, 'underlineThickness');
  set underlineThickness(String newValue) {
    js_util.setProperty(this, 'underlineThickness', newValue);
  }

  String get underlineColor => js_util.getProperty(this, 'underlineColor');
  set underlineColor(String newValue) {
    js_util.setProperty(this, 'underlineColor', newValue);
  }
}

@JS()
@staticInterop
class TextFormat {
  external factory TextFormat([TextFormatInit? options]);
}

extension PropsTextFormat on TextFormat {
  int get rangeStart => js_util.getProperty(this, 'rangeStart');
  set rangeStart(int newValue) {
    js_util.setProperty(this, 'rangeStart', newValue);
  }

  int get rangeEnd => js_util.getProperty(this, 'rangeEnd');
  set rangeEnd(int newValue) {
    js_util.setProperty(this, 'rangeEnd', newValue);
  }

  String get textColor => js_util.getProperty(this, 'textColor');
  set textColor(String newValue) {
    js_util.setProperty(this, 'textColor', newValue);
  }

  String get backgroundColor => js_util.getProperty(this, 'backgroundColor');
  set backgroundColor(String newValue) {
    js_util.setProperty(this, 'backgroundColor', newValue);
  }

  String get underlineStyle => js_util.getProperty(this, 'underlineStyle');
  set underlineStyle(String newValue) {
    js_util.setProperty(this, 'underlineStyle', newValue);
  }

  String get underlineThickness =>
      js_util.getProperty(this, 'underlineThickness');
  set underlineThickness(String newValue) {
    js_util.setProperty(this, 'underlineThickness', newValue);
  }

  String get underlineColor => js_util.getProperty(this, 'underlineColor');
  set underlineColor(String newValue) {
    js_util.setProperty(this, 'underlineColor', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class TextFormatUpdateEventInit {
  external factory TextFormatUpdateEventInit(
      {required Iterable<TextFormat> textFormats});
}

extension PropsTextFormatUpdateEventInit on TextFormatUpdateEventInit {
  Iterable<TextFormat> get textFormats =>
      js_util.getProperty(this, 'textFormats');
  set textFormats(Iterable<TextFormat> newValue) {
    js_util.setProperty(this, 'textFormats', newValue);
  }
}

@JS()
@staticInterop
class TextFormatUpdateEvent implements Event {
  external factory TextFormatUpdateEvent([TextFormatUpdateEventInit? options]);
}

extension PropsTextFormatUpdateEvent on TextFormatUpdateEvent {
  Iterable<TextFormat> getTextFormats() =>
      js_util.callMethod(this, 'getTextFormats', []);
}

@anonymous
@JS()
@staticInterop
class CharacterBoundsUpdateEventInit {
  external factory CharacterBoundsUpdateEventInit(
      {required int rangeStart, required int rangeEnd});
}

extension PropsCharacterBoundsUpdateEventInit
    on CharacterBoundsUpdateEventInit {
  int get rangeStart => js_util.getProperty(this, 'rangeStart');
  set rangeStart(int newValue) {
    js_util.setProperty(this, 'rangeStart', newValue);
  }

  int get rangeEnd => js_util.getProperty(this, 'rangeEnd');
  set rangeEnd(int newValue) {
    js_util.setProperty(this, 'rangeEnd', newValue);
  }
}

@JS()
@staticInterop
class CharacterBoundsUpdateEvent implements Event {
  external factory CharacterBoundsUpdateEvent(
      [CharacterBoundsUpdateEventInit? options]);
}

extension PropsCharacterBoundsUpdateEvent on CharacterBoundsUpdateEvent {
  int get rangeStart => js_util.getProperty(this, 'rangeStart');
  int get rangeEnd => js_util.getProperty(this, 'rangeEnd');
}
