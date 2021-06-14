/// Selection API
///
/// https://w3c.github.io/selection-api/
@JS('window')
library selection_api;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  A [Selection] object represents the range of text selected by
/// the user or the current position of the caret. To obtain a object
/// for examination or manipulation, call [window.getSelection()].
///
///  A user may make a selection from left to right (in document
/// order) or right to left (reverse of document order). The anchor
/// is where the user began the selection and the focus is where the
/// user ends the selection. If you make a selection with a desktop
/// mouse, the anchor is placed where you pressed the mouse button,
/// and the focus is placed where you released the mouse button.
///  Anchor and focus should not be confused with the start and end
/// positions of a selection. The anchor can be placed before the
/// focus or vice-versa, depending on the direction you made your
/// selection.
///
@experimental
@JS()
class Selection {
  ///  Returns the [Node] in which the selection begins. Can return
  /// [null] if selection never existed in the document (e.g., an
  /// iframe that was never clicked on).
  external Node? get anchorNode;

  ///  Returns a number representing the offset of the selection's
  /// anchor within the [anchorNode]. If [anchorNode] is a text node,
  /// this is the number of characters within anchorNode preceding the
  /// anchor. If [anchorNode] is an element, this is the number of
  /// child nodes of the [anchorNode] preceding the anchor.
  external int get anchorOffset;

  ///  Returns the [Node] in which the selection ends. Can return
  /// [null] if selection never existed in the document (for example,
  /// in an [iframe] that was never clicked on).
  external Node? get focusNode;

  ///  Returns a number representing the offset of the selection's
  /// anchor within the [focusNode]. If [focusNode] is a text node,
  /// this is the number of characters within [focusNode] preceding the
  /// focus. If [focusNode] is an element, this is the number of child
  /// nodes of the [focusNode] preceding the focus.
  external int get focusOffset;

  ///  Returns a Boolean indicating whether the selection's start and
  /// end points are at the same position.
  external bool get isCollapsed;

  /// Returns the number of ranges in the selection.
  external int get rangeCount;

  ///  Returns a [DOMString] describing the type of the current
  /// selection.
  external String get type;

  ///  Returns a [Range] object representing one of the ranges
  /// currently selected.
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
  external Range getRangeAt(int index);

  /// A [Range] object that will be added to the selection.
  /// selection.addRange(range);
  ///
  ///  Currently only Firefox supports multiple selection ranges, other browsers will not
  ///   add new ranges to the selection if it already contains one.
  ///
  /// <p>I <strong>insist</strong> that you <strong>try</strong> selecting the <strong>strong words</strong>.</p>
  /// <button>Select strong words</button>
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
  /// ```
  ///
  external Object addRange(Range range);

  /// Removes a range from the selection.
  /// sel.removeRange(range)
  ///
  external Object removeRange(Range range);

  /// Removes all ranges from the selection.
  /// sel.removeAllRanges();
  ///
  external Object removeAllRanges();
  external Object empty();

  /// Collapses the current selection to a single point.
  /// sel.collapse(node, offset);
  ///
  external Object collapse(Node? node, [int? offset = 0]);
  external Object setPosition(Node? node, [int? offset = 0]);

  ///  Collapses the selection to the start of the first range in the
  /// selection.
  /// sel.collapseToStart()
  ///
  external Object collapseToStart();

  ///  Collapses the selection to the end of the last range in the
  /// selection.
  /// sel.collapseToEnd()
  ///
  external Object collapseToEnd();

  /// Moves the focus of the selection to a specified point.
  /// sel.extend(node, offset)
  ///
  external Object extend(Node node, [int? offset = 0]);

  ///  Sets the selection to be a range including all or parts of two
  /// specified DOM nodes, and any content located between them.
  /// sel.setBaseAndExtent(anchorNode,anchorOffset,focusNode,focusOffset)
  ///
  external Object setBaseAndExtent(
      Node anchorNode, int anchorOffset, Node focusNode, int focusOffset);

  /// Adds all the children of the specified node to the selection.
  /// sel.selectAllChildren(parentNode)
  ///
  external Object selectAllChildren(Node node);

  /// Deletes the selection's content from the document.
  /// sel.deleteFromDocument()
  ///
  /// This example lets you delete selected text by clicking a button. Upon clicking the
  ///  button, the
  ///  Window.getSelection() method gets the selected text, and the
  ///  deleteFromDocument() method removes it.
  /// <p>Try highlighting some of the text in this paragraph. Once you do, you can remove the selected content by clicking the button below.</p>
  /// <button>Delete selected text</button>
  /// ```
  ///
  /// let button = document.querySelector('button');
  /// button.addEventListener('click', deleteSelection);
  ///
  /// function deleteSelection() {
  ///  let selection = window.getSelection();
  ///  selection.deleteFromDocument();
  /// }
  /// ```
  ///
  external Object deleteFromDocument();

  /// Indicates if a certain node is part of the selection.
  /// sel.containsNode(node, partialContainment)
  ///
  external bool containsNode(Node node,
      [bool? allowPartialContainment = false]);
  @override
  external String toString();

  external factory Selection();
}
