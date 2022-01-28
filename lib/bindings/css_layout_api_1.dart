/// CSS Layout API Level 1
///
/// https://drafts.css-houdini.org/css-layout-api-1/
@JS('window')
@staticInterop
library css_layout_api_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: cssom_1
html
css_typed_om_1 */

@JS()
@staticInterop
class LayoutChild {
  external factory LayoutChild();
}

extension PropsLayoutChild on LayoutChild {
  external StylePropertyMapReadOnly get styleMap;
  external Promise<IntrinsicSizes> intrinsicSizes();
  external Promise<LayoutFragment> layoutNextFragment(
      LayoutConstraintsOptions constraints, ChildBreakToken breakToken);
}

@JS()
@staticInterop
class LayoutFragment {
  external factory LayoutFragment();
}

extension PropsLayoutFragment on LayoutFragment {
  external double get inlineSize;
  external double get blockSize;
  external double get inlineOffset;
  external set inlineOffset(double newValue);
  external double get blockOffset;
  external set blockOffset(double newValue);
  external dynamic get data;
  external ChildBreakToken? get breakToken;
}

@JS()
@staticInterop
class IntrinsicSizes {
  external factory IntrinsicSizes();
}

extension PropsIntrinsicSizes on IntrinsicSizes {
  external double get minContentSize;
  external double get maxContentSize;
}

@JS()
@staticInterop
class LayoutConstraints {
  external factory LayoutConstraints();
}

extension PropsLayoutConstraints on LayoutConstraints {
  external double get availableInlineSize;
  external double get availableBlockSize;
  external double? get fixedInlineSize;
  external double? get fixedBlockSize;
  external double get percentageInlineSize;
  external double get percentageBlockSize;
  external double? get blockFragmentationOffset;
  external BlockFragmentationType get blockFragmentationType;
  external dynamic get data;
}

@anonymous
@JS()
@staticInterop
class LayoutConstraintsOptions {
  external factory LayoutConstraintsOptions(
      {double availableInlineSize,
      double availableBlockSize,
      double fixedInlineSize,
      double fixedBlockSize,
      double percentageInlineSize,
      double percentageBlockSize,
      double blockFragmentationOffset,
      BlockFragmentationType blockFragmentationType =
          BlockFragmentationType.none,
      dynamic data});
}

extension PropsLayoutConstraintsOptions on LayoutConstraintsOptions {
  external double get availableInlineSize;
  external set availableInlineSize(double newValue);
  external double get availableBlockSize;
  external set availableBlockSize(double newValue);
  external double get fixedInlineSize;
  external set fixedInlineSize(double newValue);
  external double get fixedBlockSize;
  external set fixedBlockSize(double newValue);
  external double get percentageInlineSize;
  external set percentageInlineSize(double newValue);
  external double get percentageBlockSize;
  external set percentageBlockSize(double newValue);
  external double get blockFragmentationOffset;
  external set blockFragmentationOffset(double newValue);
  external BlockFragmentationType get blockFragmentationType;
  external set blockFragmentationType(BlockFragmentationType newValue);
  external dynamic get data;
  external set data(dynamic newValue);
}

enum BlockFragmentationType { none, page, column, region }

@JS()
@staticInterop
class ChildBreakToken {
  external factory ChildBreakToken();
}

extension PropsChildBreakToken on ChildBreakToken {
  external BreakType get breakType;
  external LayoutChild get child;
}

@JS()
@staticInterop
class BreakToken {
  external factory BreakToken();
}

extension PropsBreakToken on BreakToken {
  external Iterable<ChildBreakToken> get childBreakTokens;
  external dynamic get data;
}

@anonymous
@JS()
@staticInterop
class BreakTokenOptions {
  external factory BreakTokenOptions(
      {Iterable<ChildBreakToken> childBreakTokens, dynamic data});
}

extension PropsBreakTokenOptions on BreakTokenOptions {
  external Iterable<ChildBreakToken> get childBreakTokens;
  external set childBreakTokens(Iterable<ChildBreakToken> newValue);
  external dynamic get data;
  external set data(dynamic newValue);
}

enum BreakType { none, line, column, page, region }

@JS()
@staticInterop
class LayoutEdgeSizes {
  external factory LayoutEdgeSizes();
}

extension PropsLayoutEdgeSizes on LayoutEdgeSizes {
  external double get inlineStart;
  external double get inlineEnd;
  external double get blockStart;
  external double get blockEnd;
  external double get inline;
  external double get block;
}

@JS()
@staticInterop
class LayoutEdges {
  external factory LayoutEdges();
}

extension PropsLayoutEdges on LayoutEdges {
  external double get inlineStart;
  external double get inlineEnd;
  external double get blockStart;
  external double get blockEnd;
  external double get inline;
  external double get block;
}

@JS()
@staticInterop
class LayoutWorkletGlobalScope implements WorkletGlobalScope {
  external factory LayoutWorkletGlobalScope();
}

extension PropsLayoutWorkletGlobalScope on LayoutWorkletGlobalScope {
  external Object registerLayout(String name, VoidFunction layoutCtor);
}

@anonymous
@JS()
@staticInterop
class LayoutOptions {
  external factory LayoutOptions(
      {ChildDisplayType childDisplay = ChildDisplayType.block,
      LayoutSizingMode sizing = LayoutSizingMode.blockLike});
}

extension PropsLayoutOptions on LayoutOptions {
  external ChildDisplayType get childDisplay;
  external set childDisplay(ChildDisplayType newValue);
  external LayoutSizingMode get sizing;
  external set sizing(LayoutSizingMode newValue);
}

enum ChildDisplayType { block, normal }

enum LayoutSizingMode { blockLike, manual }

@JS()
@staticInterop
class IntrinsicSizesRequest {
  external factory IntrinsicSizesRequest();
}

@JS()
@staticInterop
class LayoutFragmentRequest {
  external factory LayoutFragmentRequest();
}

@anonymous
@JS()
@staticInterop
class FragmentResultOptions {
  external factory FragmentResultOptions(
      {double inlineSize = 0,
      double blockSize = 0,
      double autoBlockSize = 0,
      Iterable<LayoutFragment> childFragments = const [],
      dynamic data,
      BreakTokenOptions breakToken});
}

extension PropsFragmentResultOptions on FragmentResultOptions {
  external double get inlineSize;
  external set inlineSize(double newValue);
  external double get blockSize;
  external set blockSize(double newValue);
  external double get autoBlockSize;
  external set autoBlockSize(double newValue);
  external Iterable<LayoutFragment> get childFragments;
  external set childFragments(Iterable<LayoutFragment> newValue);
  external dynamic get data;
  external set data(dynamic newValue);
  external BreakTokenOptions get breakToken;
  external set breakToken(BreakTokenOptions newValue);
}

@anonymous
@JS()
@staticInterop
class IntrinsicSizesResultOptions {
  external factory IntrinsicSizesResultOptions(
      {double maxContentSize, double minContentSize});
}

extension PropsIntrinsicSizesResultOptions on IntrinsicSizesResultOptions {
  external double get maxContentSize;
  external set maxContentSize(double newValue);
  external double get minContentSize;
  external set minContentSize(double newValue);
}

@JS()
@staticInterop
class FragmentResult {
  external factory FragmentResult([FragmentResultOptions? options]);
}

extension PropsFragmentResult on FragmentResult {
  external double get inlineSize;
  external double get blockSize;
}
