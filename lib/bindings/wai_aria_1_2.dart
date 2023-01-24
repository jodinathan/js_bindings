/// Accessible Rich Internet Applications (WAI-ARIA) 1.3
///
/// https://w3c.github.io/aria/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library wai_aria_1_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class ARIAMixin {
  external factory ARIAMixin();
}

extension PropsARIAMixin on ARIAMixin {
  String? get role => js_util.getProperty(this, 'role');
  set role(String? newValue) {
    js_util.setProperty(this, 'role', newValue);
  }

  Element? get ariaActiveDescendantElement =>
      js_util.getProperty(this, 'ariaActiveDescendantElement');
  set ariaActiveDescendantElement(Element? newValue) {
    js_util.setProperty(this, 'ariaActiveDescendantElement', newValue);
  }

  String? get ariaAtomic => js_util.getProperty(this, 'ariaAtomic');
  set ariaAtomic(String? newValue) {
    js_util.setProperty(this, 'ariaAtomic', newValue);
  }

  String? get ariaAutoComplete => js_util.getProperty(this, 'ariaAutoComplete');
  set ariaAutoComplete(String? newValue) {
    js_util.setProperty(this, 'ariaAutoComplete', newValue);
  }

  String? get ariaBusy => js_util.getProperty(this, 'ariaBusy');
  set ariaBusy(String? newValue) {
    js_util.setProperty(this, 'ariaBusy', newValue);
  }

  String? get ariaChecked => js_util.getProperty(this, 'ariaChecked');
  set ariaChecked(String? newValue) {
    js_util.setProperty(this, 'ariaChecked', newValue);
  }

  String? get ariaColCount => js_util.getProperty(this, 'ariaColCount');
  set ariaColCount(String? newValue) {
    js_util.setProperty(this, 'ariaColCount', newValue);
  }

  String? get ariaColIndex => js_util.getProperty(this, 'ariaColIndex');
  set ariaColIndex(String? newValue) {
    js_util.setProperty(this, 'ariaColIndex', newValue);
  }

  String? get ariaColIndexText => js_util.getProperty(this, 'ariaColIndexText');
  set ariaColIndexText(String? newValue) {
    js_util.setProperty(this, 'ariaColIndexText', newValue);
  }

  String? get ariaColSpan => js_util.getProperty(this, 'ariaColSpan');
  set ariaColSpan(String? newValue) {
    js_util.setProperty(this, 'ariaColSpan', newValue);
  }

  Iterable<Element> get ariaControlsElements =>
      js_util.getProperty(this, 'ariaControlsElements');
  set ariaControlsElements(Iterable<Element> newValue) {
    js_util.setProperty(this, 'ariaControlsElements', newValue);
  }

  String? get ariaCurrent => js_util.getProperty(this, 'ariaCurrent');
  set ariaCurrent(String? newValue) {
    js_util.setProperty(this, 'ariaCurrent', newValue);
  }

  Iterable<Element> get ariaDescribedByElements =>
      js_util.getProperty(this, 'ariaDescribedByElements');
  set ariaDescribedByElements(Iterable<Element> newValue) {
    js_util.setProperty(this, 'ariaDescribedByElements', newValue);
  }

  String? get ariaDescription => js_util.getProperty(this, 'ariaDescription');
  set ariaDescription(String? newValue) {
    js_util.setProperty(this, 'ariaDescription', newValue);
  }

  Iterable<Element> get ariaDetailsElements =>
      js_util.getProperty(this, 'ariaDetailsElements');
  set ariaDetailsElements(Iterable<Element> newValue) {
    js_util.setProperty(this, 'ariaDetailsElements', newValue);
  }

  String? get ariaDisabled => js_util.getProperty(this, 'ariaDisabled');
  set ariaDisabled(String? newValue) {
    js_util.setProperty(this, 'ariaDisabled', newValue);
  }

  Iterable<Element> get ariaErrorMessageElements =>
      js_util.getProperty(this, 'ariaErrorMessageElements');
  set ariaErrorMessageElements(Iterable<Element> newValue) {
    js_util.setProperty(this, 'ariaErrorMessageElements', newValue);
  }

  String? get ariaExpanded => js_util.getProperty(this, 'ariaExpanded');
  set ariaExpanded(String? newValue) {
    js_util.setProperty(this, 'ariaExpanded', newValue);
  }

  Iterable<Element> get ariaFlowToElements =>
      js_util.getProperty(this, 'ariaFlowToElements');
  set ariaFlowToElements(Iterable<Element> newValue) {
    js_util.setProperty(this, 'ariaFlowToElements', newValue);
  }

  String? get ariaHasPopup => js_util.getProperty(this, 'ariaHasPopup');
  set ariaHasPopup(String? newValue) {
    js_util.setProperty(this, 'ariaHasPopup', newValue);
  }

  String? get ariaHidden => js_util.getProperty(this, 'ariaHidden');
  set ariaHidden(String? newValue) {
    js_util.setProperty(this, 'ariaHidden', newValue);
  }

  String? get ariaInvalid => js_util.getProperty(this, 'ariaInvalid');
  set ariaInvalid(String? newValue) {
    js_util.setProperty(this, 'ariaInvalid', newValue);
  }

  String? get ariaKeyShortcuts => js_util.getProperty(this, 'ariaKeyShortcuts');
  set ariaKeyShortcuts(String? newValue) {
    js_util.setProperty(this, 'ariaKeyShortcuts', newValue);
  }

  String? get ariaLabel => js_util.getProperty(this, 'ariaLabel');
  set ariaLabel(String? newValue) {
    js_util.setProperty(this, 'ariaLabel', newValue);
  }

  Iterable<Element> get ariaLabelledByElements =>
      js_util.getProperty(this, 'ariaLabelledByElements');
  set ariaLabelledByElements(Iterable<Element> newValue) {
    js_util.setProperty(this, 'ariaLabelledByElements', newValue);
  }

  String? get ariaLevel => js_util.getProperty(this, 'ariaLevel');
  set ariaLevel(String? newValue) {
    js_util.setProperty(this, 'ariaLevel', newValue);
  }

  String? get ariaLive => js_util.getProperty(this, 'ariaLive');
  set ariaLive(String? newValue) {
    js_util.setProperty(this, 'ariaLive', newValue);
  }

  String? get ariaModal => js_util.getProperty(this, 'ariaModal');
  set ariaModal(String? newValue) {
    js_util.setProperty(this, 'ariaModal', newValue);
  }

  String? get ariaMultiLine => js_util.getProperty(this, 'ariaMultiLine');
  set ariaMultiLine(String? newValue) {
    js_util.setProperty(this, 'ariaMultiLine', newValue);
  }

  String? get ariaMultiSelectable =>
      js_util.getProperty(this, 'ariaMultiSelectable');
  set ariaMultiSelectable(String? newValue) {
    js_util.setProperty(this, 'ariaMultiSelectable', newValue);
  }

  String? get ariaOrientation => js_util.getProperty(this, 'ariaOrientation');
  set ariaOrientation(String? newValue) {
    js_util.setProperty(this, 'ariaOrientation', newValue);
  }

  Iterable<Element> get ariaOwnsElements =>
      js_util.getProperty(this, 'ariaOwnsElements');
  set ariaOwnsElements(Iterable<Element> newValue) {
    js_util.setProperty(this, 'ariaOwnsElements', newValue);
  }

  String? get ariaPlaceholder => js_util.getProperty(this, 'ariaPlaceholder');
  set ariaPlaceholder(String? newValue) {
    js_util.setProperty(this, 'ariaPlaceholder', newValue);
  }

  String? get ariaPosInSet => js_util.getProperty(this, 'ariaPosInSet');
  set ariaPosInSet(String? newValue) {
    js_util.setProperty(this, 'ariaPosInSet', newValue);
  }

  String? get ariaPressed => js_util.getProperty(this, 'ariaPressed');
  set ariaPressed(String? newValue) {
    js_util.setProperty(this, 'ariaPressed', newValue);
  }

  String? get ariaReadOnly => js_util.getProperty(this, 'ariaReadOnly');
  set ariaReadOnly(String? newValue) {
    js_util.setProperty(this, 'ariaReadOnly', newValue);
  }

  String? get ariaRequired => js_util.getProperty(this, 'ariaRequired');
  set ariaRequired(String? newValue) {
    js_util.setProperty(this, 'ariaRequired', newValue);
  }

  String? get ariaRoleDescription =>
      js_util.getProperty(this, 'ariaRoleDescription');
  set ariaRoleDescription(String? newValue) {
    js_util.setProperty(this, 'ariaRoleDescription', newValue);
  }

  String? get ariaRowCount => js_util.getProperty(this, 'ariaRowCount');
  set ariaRowCount(String? newValue) {
    js_util.setProperty(this, 'ariaRowCount', newValue);
  }

  String? get ariaRowIndex => js_util.getProperty(this, 'ariaRowIndex');
  set ariaRowIndex(String? newValue) {
    js_util.setProperty(this, 'ariaRowIndex', newValue);
  }

  String? get ariaRowIndexText => js_util.getProperty(this, 'ariaRowIndexText');
  set ariaRowIndexText(String? newValue) {
    js_util.setProperty(this, 'ariaRowIndexText', newValue);
  }

  String? get ariaRowSpan => js_util.getProperty(this, 'ariaRowSpan');
  set ariaRowSpan(String? newValue) {
    js_util.setProperty(this, 'ariaRowSpan', newValue);
  }

  String? get ariaSelected => js_util.getProperty(this, 'ariaSelected');
  set ariaSelected(String? newValue) {
    js_util.setProperty(this, 'ariaSelected', newValue);
  }

  String? get ariaSetSize => js_util.getProperty(this, 'ariaSetSize');
  set ariaSetSize(String? newValue) {
    js_util.setProperty(this, 'ariaSetSize', newValue);
  }

  String? get ariaSort => js_util.getProperty(this, 'ariaSort');
  set ariaSort(String? newValue) {
    js_util.setProperty(this, 'ariaSort', newValue);
  }

  String? get ariaValueMax => js_util.getProperty(this, 'ariaValueMax');
  set ariaValueMax(String? newValue) {
    js_util.setProperty(this, 'ariaValueMax', newValue);
  }

  String? get ariaValueMin => js_util.getProperty(this, 'ariaValueMin');
  set ariaValueMin(String? newValue) {
    js_util.setProperty(this, 'ariaValueMin', newValue);
  }

  String? get ariaValueNow => js_util.getProperty(this, 'ariaValueNow');
  set ariaValueNow(String? newValue) {
    js_util.setProperty(this, 'ariaValueNow', newValue);
  }

  String? get ariaValueText => js_util.getProperty(this, 'ariaValueText');
  set ariaValueText(String? newValue) {
    js_util.setProperty(this, 'ariaValueText', newValue);
  }
}
