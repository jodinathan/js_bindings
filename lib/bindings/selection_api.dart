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

@JS()
@staticInterop
class Selection {
  external Selection();
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

  Object addRange(Range range) => js_util.callMethod(this, 'addRange', [range]);

  Object removeRange(Range range) =>
      js_util.callMethod(this, 'removeRange', [range]);

  Object removeAllRanges() => js_util.callMethod(this, 'removeAllRanges', []);

  Object empty() => js_util.callMethod(this, 'empty', []);

  Object collapse(Node? node, [int? offset = 0]) =>
      js_util.callMethod(this, 'collapse', [node, offset]);

  Object setPosition(Node? node, [int? offset = 0]) =>
      js_util.callMethod(this, 'setPosition', [node, offset]);

  Object collapseToStart() => js_util.callMethod(this, 'collapseToStart', []);

  Object collapseToEnd() => js_util.callMethod(this, 'collapseToEnd', []);

  Object extend(Node node, [int? offset = 0]) =>
      js_util.callMethod(this, 'extend', [node, offset]);

  Object setBaseAndExtent(
          Node anchorNode, int anchorOffset, Node focusNode, int focusOffset) =>
      js_util.callMethod(this, 'setBaseAndExtent',
          [anchorNode, anchorOffset, focusNode, focusOffset]);

  Object selectAllChildren(Node node) =>
      js_util.callMethod(this, 'selectAllChildren', [node]);

  Object deleteFromDocument() =>
      js_util.callMethod(this, 'deleteFromDocument', []);

  bool containsNode(Node node, [bool? allowPartialContainment = false]) =>
      js_util.callMethod(this, 'containsNode', [node, allowPartialContainment]);

  String mToString() => js_util.callMethod(this, 'toString', []);
}
