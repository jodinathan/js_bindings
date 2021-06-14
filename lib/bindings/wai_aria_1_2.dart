/// Accessible Rich Internet Applications (WAI-ARIA) 1.3
///
/// https://w3c.github.io/aria/
@JS('window')
library wai_aria_1_2;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

@JS()
mixin AccessibilityRole {
  external String get role;
  external set role(String newValue);
}

@JS()
mixin AriaAttributes {
  external String get ariaAtomic;
  external set ariaAtomic(String newValue);
  external String get ariaAutoComplete;
  external set ariaAutoComplete(String newValue);
  external String get ariaBusy;
  external set ariaBusy(String newValue);
  external String get ariaChecked;
  external set ariaChecked(String newValue);
  external String get ariaColCount;
  external set ariaColCount(String newValue);
  external String get ariaColIndex;
  external set ariaColIndex(String newValue);
  external String get ariaColSpan;
  external set ariaColSpan(String newValue);
  external String get ariaCurrent;
  external set ariaCurrent(String newValue);
  external String get ariaDescription;
  external set ariaDescription(String newValue);
  external String get ariaDisabled;
  external set ariaDisabled(String newValue);
  external String get ariaExpanded;
  external set ariaExpanded(String newValue);
  external String get ariaHasPopup;
  external set ariaHasPopup(String newValue);
  external String get ariaHidden;
  external set ariaHidden(String newValue);
  external String get ariaInvalid;
  external set ariaInvalid(String newValue);
  external String get ariaKeyShortcuts;
  external set ariaKeyShortcuts(String newValue);
  external String get ariaLabel;
  external set ariaLabel(String newValue);
  external String get ariaLevel;
  external set ariaLevel(String newValue);
  external String get ariaLive;
  external set ariaLive(String newValue);
  external String get ariaModal;
  external set ariaModal(String newValue);
  external String get ariaMultiLine;
  external set ariaMultiLine(String newValue);
  external String get ariaMultiSelectable;
  external set ariaMultiSelectable(String newValue);
  external String get ariaOrientation;
  external set ariaOrientation(String newValue);
  external String get ariaPlaceholder;
  external set ariaPlaceholder(String newValue);
  external String get ariaPosInSet;
  external set ariaPosInSet(String newValue);
  external String get ariaPressed;
  external set ariaPressed(String newValue);
  external String get ariaReadOnly;
  external set ariaReadOnly(String newValue);
  external String get ariaRequired;
  external set ariaRequired(String newValue);
  external String get ariaRoleDescription;
  external set ariaRoleDescription(String newValue);
  external String get ariaRowCount;
  external set ariaRowCount(String newValue);
  external String get ariaRowIndex;
  external set ariaRowIndex(String newValue);
  external String get ariaRowSpan;
  external set ariaRowSpan(String newValue);
  external String get ariaSelected;
  external set ariaSelected(String newValue);
  external String get ariaSetSize;
  external set ariaSetSize(String newValue);
  external String get ariaSort;
  external set ariaSort(String newValue);
  external String get ariaValueMax;
  external set ariaValueMax(String newValue);
  external String get ariaValueMin;
  external set ariaValueMin(String newValue);
  external String get ariaValueNow;
  external set ariaValueNow(String newValue);
  external String get ariaValueText;
  external set ariaValueText(String newValue);
}

@JS()
mixin ARIAMixin {
  external String? get role;
  external set role(String? newValue);
  external String get ariaAtomic;
  external set ariaAtomic(String newValue);
  external String get ariaAutoComplete;
  external set ariaAutoComplete(String newValue);
  external String get ariaBusy;
  external set ariaBusy(String newValue);
  external String get ariaChecked;
  external set ariaChecked(String newValue);
  external String get ariaColCount;
  external set ariaColCount(String newValue);
  external String get ariaColIndex;
  external set ariaColIndex(String newValue);
  external String get ariaColIndexText;
  external set ariaColIndexText(String newValue);
  external String get ariaColSpan;
  external set ariaColSpan(String newValue);
  external String get ariaCurrent;
  external set ariaCurrent(String newValue);
  external String get ariaDescription;
  external set ariaDescription(String newValue);
  external String get ariaDisabled;
  external set ariaDisabled(String newValue);
  external String get ariaExpanded;
  external set ariaExpanded(String newValue);
  external String get ariaHasPopup;
  external set ariaHasPopup(String newValue);
  external String get ariaHidden;
  external set ariaHidden(String newValue);
  external String get ariaInvalid;
  external set ariaInvalid(String newValue);
  external String get ariaKeyShortcuts;
  external set ariaKeyShortcuts(String newValue);
  external String get ariaLabel;
  external set ariaLabel(String newValue);
  external String get ariaLevel;
  external set ariaLevel(String newValue);
  external String get ariaLive;
  external set ariaLive(String newValue);
  external String get ariaModal;
  external set ariaModal(String newValue);
  external String get ariaMultiLine;
  external set ariaMultiLine(String newValue);
  external String get ariaMultiSelectable;
  external set ariaMultiSelectable(String newValue);
  external String get ariaOrientation;
  external set ariaOrientation(String newValue);
  external String get ariaPlaceholder;
  external set ariaPlaceholder(String newValue);
  external String get ariaPosInSet;
  external set ariaPosInSet(String newValue);
  external String get ariaPressed;
  external set ariaPressed(String newValue);
  external String get ariaReadOnly;
  external set ariaReadOnly(String newValue);
  external String get ariaRequired;
  external set ariaRequired(String newValue);
  external String get ariaRoleDescription;
  external set ariaRoleDescription(String newValue);
  external String get ariaRowCount;
  external set ariaRowCount(String newValue);
  external String get ariaRowIndex;
  external set ariaRowIndex(String newValue);
  external String get ariaRowIndexText;
  external set ariaRowIndexText(String newValue);
  external String get ariaRowSpan;
  external set ariaRowSpan(String newValue);
  external String get ariaSelected;
  external set ariaSelected(String newValue);
  external String get ariaSetSize;
  external set ariaSetSize(String newValue);
  external String get ariaSort;
  external set ariaSort(String newValue);
  external String get ariaValueMax;
  external set ariaValueMax(String newValue);
  external String get ariaValueMin;
  external set ariaValueMin(String newValue);
  external String get ariaValueNow;
  external set ariaValueNow(String newValue);
  external String get ariaValueText;
  external set ariaValueText(String newValue);
}
