/// CSS Layout API Level 1
///
/// https://drafts.css-houdini.org/css-layout-api-1/
@JS('window')
library css_layout_api_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'cssom_1.dart';
import 'html.dart';
import 'css_typed_om_1.dart';

@JS()
class LayoutChild {
  external StylePropertyMapReadOnly get styleMap;
  external Promise<IntrinsicSizes> intrinsicSizes();
  external Promise<LayoutFragment> layoutNextFragment(
      LayoutConstraintsOptions constraints, ChildBreakToken breakToken);

  external factory LayoutChild();
}

@JS()
class LayoutFragment {
  external double get inlineSize;
  external double get blockSize;
  external double get inlineOffset;
  external set inlineOffset(double newValue);
  external double get blockOffset;
  external set blockOffset(double newValue);
  external dynamic get data;
  external ChildBreakToken? get breakToken;

  external factory LayoutFragment();
}

@JS()
class IntrinsicSizes {
  external double get minContentSize;
  external double get maxContentSize;

  external factory IntrinsicSizes();
}

@JS()
class LayoutConstraints {
  external double get availableInlineSize;
  external double get availableBlockSize;
  external double? get fixedInlineSize;
  external double? get fixedBlockSize;
  external double get percentageInlineSize;
  external double get percentageBlockSize;
  external double? get blockFragmentationOffset;
  external BlockFragmentationType get blockFragmentationType;
  external dynamic get data;

  external factory LayoutConstraints();
}

@anonymous
@JS()
class LayoutConstraintsOptions {
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

@JS()
enum BlockFragmentationType { none, page, column, region }

@JS()
class ChildBreakToken {
  external BreakType get breakType;
  external LayoutChild get child;

  external factory ChildBreakToken();
}

@JS()
class BreakToken {
  external Iterable<ChildBreakToken> get childBreakTokens;
  external dynamic get data;

  external factory BreakToken();
}

@anonymous
@JS()
class BreakTokenOptions {
  external Iterable<ChildBreakToken> get childBreakTokens;
  external set childBreakTokens(Iterable<ChildBreakToken> newValue);
  external dynamic get data;
  external set data(dynamic newValue);

  external factory BreakTokenOptions(
      {Iterable<ChildBreakToken> childBreakTokens, dynamic data});
}

@JS()
enum BreakType { none, line, column, page, region }

@JS()
class LayoutEdgeSizes {
  external double get inlineStart;
  external double get inlineEnd;
  external double get blockStart;
  external double get blockEnd;
  external double get inline;
  external double get block;

  external factory LayoutEdgeSizes();
}

@JS()
class LayoutEdges {
  external double get inlineStart;
  external double get inlineEnd;
  external double get blockStart;
  external double get blockEnd;
  external double get inline;
  external double get block;

  external factory LayoutEdges();
}

@JS()
class LayoutWorkletGlobalScope extends WorkletGlobalScope {
  external Object registerLayout(String name, VoidFunction layoutCtor);

  external factory LayoutWorkletGlobalScope();
}

@anonymous
@JS()
class LayoutOptions {
  external ChildDisplayType get childDisplay;
  external set childDisplay(ChildDisplayType newValue);
  external LayoutSizingMode get sizing;
  external set sizing(LayoutSizingMode newValue);

  external factory LayoutOptions(
      {ChildDisplayType childDisplay = ChildDisplayType.block,
      LayoutSizingMode sizing = LayoutSizingMode.blockLike});
}

@JS()
enum ChildDisplayType { block, normal }

@JS()
enum LayoutSizingMode {
  @JS('block-like')
  blockLike,
  manual
}

@JS()
class IntrinsicSizesRequest {
  external factory IntrinsicSizesRequest();
}

@JS()
class LayoutFragmentRequest {
  external factory LayoutFragmentRequest();
}

@anonymous
@JS()
class FragmentResultOptions {
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

  external factory FragmentResultOptions(
      {double inlineSize = 0,
      double blockSize = 0,
      double autoBlockSize = 0,
      Iterable<LayoutFragment> childFragments = const [],
      dynamic data,
      BreakTokenOptions breakToken});
}

@anonymous
@JS()
class IntrinsicSizesResultOptions {
  external double get maxContentSize;
  external set maxContentSize(double newValue);
  external double get minContentSize;
  external set minContentSize(double newValue);

  external factory IntrinsicSizesResultOptions(
      {double maxContentSize, double minContentSize});
}

@JS()
class FragmentResult {
  external factory FragmentResult({FragmentResultOptions? options});
  external double get inlineSize;
  external double get blockSize;
}
