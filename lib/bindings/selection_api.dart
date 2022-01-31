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
  external Selection();
}

extension PropsSelection on Selection {
  ///  Returns the [Node] in which the selection begins. Can return
  /// [null] if selection never existed in the document (e.g., an
  /// iframe that was never clicked on).
  ///
  Node? get anchorNode => js_util.getProperty(this, 'anchorNode');

  ///  Returns a number representing the offset of the selection's
  /// anchor within the [anchorNode]. If [anchorNode] is a text node,
  /// this is the number of characters within anchorNode preceding the
  /// anchor. If [anchorNode] is an element, this is the number of
  /// child nodes of the [anchorNode] preceding the anchor.
  ///
  int get anchorOffset => js_util.getProperty(this, 'anchorOffset');

  ///  Returns the [Node] in which the selection ends. Can return
  /// [null] if selection never existed in the document (for example,
  /// in an [iframe] that was never clicked on).
  ///
  Node? get focusNode => js_util.getProperty(this, 'focusNode');

  ///  Returns a number representing the offset of the selection's
  /// anchor within the [focusNode]. If [focusNode] is a text node,
  /// this is the number of characters within [focusNode] preceding the
  /// focus. If [focusNode] is an element, this is the number of child
  /// nodes of the [focusNode] preceding the focus.
  ///
  int get focusOffset => js_util.getProperty(this, 'focusOffset');

  ///  Returns a Boolean indicating whether the selection's start and
  /// end points are at the same position.
  ///
  bool get isCollapsed => js_util.getProperty(this, 'isCollapsed');

  /// Returns the number of ranges in the selection.
  ///
  int get rangeCount => js_util.getProperty(this, 'rangeCount');

  /// Returns a [String] describing the type of the current selection.
  ///
  String get type => js_util.getProperty(this, 'type');

  ///  Returns a [Range] object representing one of the ranges
  /// currently selected.
  ///
  /// range = sel.getRangeAt(index)
  ///
  /// let ranges = [];
  ///
  /// sel = window.getSelection();
  ///
  /// for(let i = 0; i < sel.rangeCount; i++) {
  ///  ranges[i] = sel.getRangeAt(i);
  /// }
  /// /* Each item in the ranges array is now
  ///  * a range object representing one of the
  ///  * ranges in the current selection */
  ///
  Range getRangeAt(

          ///
          ///     The zero-based index of the range to return. A negative
          /// number or a number greater
          ///     than or equal to [Selection.rangeCount] will result in an
          /// error.
          ///
          ///
          int index) =>
      js_util.callMethod(this, 'getRangeAt', [index]);

  /// A [Range] object that will be added to the selection.
  ///
  /// selection.addRange(range);
  ///
  ///
  ///
  ///   Note: Currently only Firefox supports multiple selection ranges, other browsers will not
  ///   add new ranges to the selection if it already contains one.
  ///
  ///
  /// <p>I <strong>insist</strong> that you <strong>try</strong> selecting the <strong>strong words</strong>.</p>
  /// <button>Select strong words</button>
  ///
  /// ```
  ///
  /// let button = document.querySelector('button');
  ///
  /// button.addEventListener('click', function () {
  ///  let selection = window.getSelection();
  ///  let strongs = document.getElementsByTagName('strong');
  ///
  ///  if (selection.rangeCount > 0) {
  ///   selection.removeAllRanges();
  ///  }
  ///
  ///  for (let i = 0; i < strongs.length; i++) {
  ///   let range = document.createRange();
  ///   range.selectNode(strongs[i]);
  ///   selection.addRange(range);
  ///  }
  /// });
  ///
  /// ```
  ///
  Object addRange(

          /// A [Range] object that will be added to the [Selection].
          ///
          Range range) =>
      js_util.callMethod(this, 'addRange', [range]);

  /// Removes a range from the selection.
  ///
  /// sel.removeRange(range)
  ///
  Object removeRange(

          /// A range object that will be removed to the selection.
          ///
          Range range) =>
      js_util.callMethod(this, 'removeRange', [range]);

  /// Removes all ranges from the selection.
  ///
  /// sel.removeAllRanges();
  ///
  Object removeAllRanges() => js_util.callMethod(this, 'removeAllRanges', []);

  Object empty() => js_util.callMethod(this, 'empty', []);

  /// Collapses the current selection to a single point.
  ///
  /// sel.collapse(node, offset);
  ///
  Object collapse(

          ///
          ///     The caret location will be within this node. This value can
          /// also be set to
          ///    [null] — if [null] is specified, the method will behave like
          ///     [Selection.removeAllRanges()], i.e. all ranges will be
          /// removed from the
          ///    selection.
          ///
          ///
          Node? node,
          [

          ///
          ///     The offset in [node] to which the selection will be
          /// collapsed. If not
          ///    specified, the default value [0] is used.
          ///
          ///
          int? offset = 0]) =>
      js_util.callMethod(this, 'collapse', [node, offset]);

  Object setPosition(Node? node, [int? offset = 0]) =>
      js_util.callMethod(this, 'setPosition', [node, offset]);

  ///  Collapses the selection to the start of the first range in the
  /// selection.
  ///
  /// sel.collapseToStart()
  ///
  Object collapseToStart() => js_util.callMethod(this, 'collapseToStart', []);

  ///  Collapses the selection to the end of the last range in the
  /// selection.
  ///
  /// sel.collapseToEnd()
  ///
  Object collapseToEnd() => js_util.callMethod(this, 'collapseToEnd', []);

  /// Moves the focus of the selection to a specified point.
  ///
  /// sel.extend(node, offset)
  ///
  Object extend(

          /// The node within which the focus will be moved.
          ///
          Node node,
          [

          ///
          ///     The offset position within [node] where the focus will be
          /// moved to. If
          ///    not specified, the default value [0] is used.
          ///
          ///
          int? offset = 0]) =>
      js_util.callMethod(this, 'extend', [node, offset]);

  ///  Sets the selection to be a range including all or parts of two
  /// specified DOM nodes, and any content located between them.
  ///
  /// sel.setBaseAndExtent(anchorNode,anchorOffset,focusNode,focusOffset)
  ///
  Object setBaseAndExtent(

          /// The node at the start of the selection.
          ///
          Node anchorNode,

          ///
          ///     The number of child nodes from the start of the anchor node
          /// that should be excluded
          ///     from the selection. So for example, if the value is 0 the
          /// whole node is included. If
          ///     the value is 1, the whole node minus the first child node is
          /// included. And so on.
          ///
          ///
          int anchorOffset,

          /// The node at the end of the selection.
          ///
          Node focusNode,

          ///
          ///     The number of child nodes from the start of the focus node
          /// that should be included
          ///     in the selection. So for example, if the value is 0 the whole
          /// node is excluded. If the
          ///    value is 1, the first child node is included. And so on.
          ///
          ///
          int focusOffset) =>
      js_util.callMethod(this, 'setBaseAndExtent',
          [anchorNode, anchorOffset, focusNode, focusOffset]);

  /// Adds all the children of the specified node to the selection.
  ///
  /// sel.selectAllChildren(parentNode)
  ///
  Object selectAllChildren(Node node) =>
      js_util.callMethod(this, 'selectAllChildren', [node]);

  /// Deletes the selection's content from the document.
  ///
  /// sel.deleteFromDocument()
  ///
  ///
  ///  This example lets you delete selected text by clicking a button. Upon clicking the
  ///  button, the
  ///  Window.getSelection() method gets the selected text, and the
  ///  deleteFromDocument() method removes it.
  ///
  /// <p>Try highlighting some of the text in this paragraph. Once you do, you can remove the selected content by clicking the button below.</p>
  /// <button>Delete selected text</button>
  ///
  /// ```
  ///
  /// let button = document.querySelector('button');
  /// button.addEventListener('click', deleteSelection);
  ///
  /// function deleteSelection() {
  ///  let selection = window.getSelection();
  ///  selection.deleteFromDocument();
  /// }
  ///
  /// ```
  ///
  Object deleteFromDocument() =>
      js_util.callMethod(this, 'deleteFromDocument', []);

  /// Indicates if a certain node is part of the selection.
  ///
  /// sel.containsNode(node, partialContainment)
  ///
  bool containsNode(

          /// The node that is being looked for in the selection.
          ///
          Node node,
          [bool? allowPartialContainment = false]) =>
      js_util.callMethod(this, 'containsNode', [node, allowPartialContainment]);

  String mToString() => js_util.callMethod(this, 'toString', []);
}
