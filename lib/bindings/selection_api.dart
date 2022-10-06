/// Selection API
///
/// https://w3c.github.io/selection-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library selection_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  A object represents the range of text selected by the user or
/// the current position of the caret. To obtain a object for
/// examination or manipulation, call [window.getSelection()].
///  A user may make a selection from left to right (in document
/// order) or right to left (reverse of document order). The anchor
/// is where the user began the selection and the focus is where the
/// user ends the selection. If you make a selection with a desktop
/// mouse, the anchor is placed where you pressed the mouse button,
/// and the focus is placed where you released the mouse button.
///
///   Note: Anchor and focus should not be confused with the start
/// and end positions of a selection. The anchor can be placed before
/// the focus or vice-versa, depending on the direction you made your
/// selection.
///
@JS()
@staticInterop
class Selection {
  external factory Selection();
}

extension PropsSelection on Selection {
  Node? get anchorNode => js_util.getProperty(this, 'anchorNode');
  int get anchorOffset => js_util.getProperty(this, 'anchorOffset');
  Node? get focusNode => js_util.getProperty(this, 'focusNode');
  int get focusOffset => js_util.getProperty(this, 'focusOffset');
  bool get isCollapsed => js_util.getProperty(this, 'isCollapsed');
  int get rangeCount => js_util.getProperty(this, 'rangeCount');
  String get type => js_util.getProperty(this, 'type');
  Range getRangeAt(int index) =>
      js_util.callMethod(this, 'getRangeAt', [index]);

  void addRange(Range range) => js_util.callMethod(this, 'addRange', [range]);

  void removeRange(Range range) =>
      js_util.callMethod(this, 'removeRange', [range]);

  void removeAllRanges() => js_util.callMethod(this, 'removeAllRanges', []);

  void empty() => js_util.callMethod(this, 'empty', []);

  void collapse(Node? node, [int? offset = 0]) =>
      js_util.callMethod(this, 'collapse', [node, offset]);

  void setPosition(Node? node, [int? offset = 0]) =>
      js_util.callMethod(this, 'setPosition', [node, offset]);

  void collapseToStart() => js_util.callMethod(this, 'collapseToStart', []);

  void collapseToEnd() => js_util.callMethod(this, 'collapseToEnd', []);

  void extend(Node node, [int? offset = 0]) =>
      js_util.callMethod(this, 'extend', [node, offset]);

  void setBaseAndExtent(
          Node anchorNode, int anchorOffset, Node focusNode, int focusOffset) =>
      js_util.callMethod(this, 'setBaseAndExtent',
          [anchorNode, anchorOffset, focusNode, focusOffset]);

  void selectAllChildren(Node node) =>
      js_util.callMethod(this, 'selectAllChildren', [node]);

  void modify([String? alter, String? direction, String? granularity]) =>
      js_util.callMethod(this, 'modify', [alter, direction, granularity]);

  void deleteFromDocument() =>
      js_util.callMethod(this, 'deleteFromDocument', []);

  bool containsNode(Node node, [bool? allowPartialContainment = false]) =>
      js_util.callMethod(this, 'containsNode', [node, allowPartialContainment]);

  String mToString() => js_util.callMethod(this, 'toString', []);
}
