/// CSS Layout API Level 1
///
/// https://drafts.css-houdini.org/css-layout-api-1/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library css_layout_api_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class LayoutWorkletGlobalScope implements WorkletGlobalScope {
  external factory LayoutWorkletGlobalScope();
}

extension PropsLayoutWorkletGlobalScope on LayoutWorkletGlobalScope {
  Object registerLayout(String name, VoidFunction layoutCtor) => js_util
      .callMethod(this, 'registerLayout', [name, allowInterop(layoutCtor)]);
}

@anonymous
@JS()
@staticInterop
class LayoutOptions {
  external factory LayoutOptions._({String? childDisplay, String? sizing});

  factory LayoutOptions(
          {ChildDisplayType? childDisplay = ChildDisplayType.block,
          LayoutSizingMode? sizing = LayoutSizingMode.blockLike}) =>
      LayoutOptions._(childDisplay: childDisplay?.name, sizing: sizing?.name);
}

extension PropsLayoutOptions on LayoutOptions {
  ChildDisplayType get childDisplay =>
      ChildDisplayType.values.byName(js_util.getProperty(this, 'childDisplay'));
  set childDisplay(ChildDisplayType newValue) {
    js_util.setProperty(this, 'childDisplay', newValue.name);
  }

  LayoutSizingMode get sizing =>
      LayoutSizingMode.values.byName(js_util.getProperty(this, 'sizing'));
  set sizing(LayoutSizingMode newValue) {
    js_util.setProperty(this, 'sizing', newValue.name);
  }
}

enum ChildDisplayType { block, normal }

enum LayoutSizingMode { blockLike, manual }

@JS()
@staticInterop
class LayoutChild {
  external factory LayoutChild();
}

extension PropsLayoutChild on LayoutChild {
  StylePropertyMapReadOnly get styleMap =>
      js_util.getProperty(this, 'styleMap');
  Future<IntrinsicSizes> intrinsicSizes() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'intrinsicSizes', []));

  Future<LayoutFragment> layoutNextFragment(
          LayoutConstraintsOptions constraints, ChildBreakToken breakToken) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'layoutNextFragment', [constraints, breakToken]));
}

@JS()
@staticInterop
class LayoutFragment {
  external factory LayoutFragment();
}

extension PropsLayoutFragment on LayoutFragment {
  double get inlineSize => js_util.getProperty(this, 'inlineSize');
  double get blockSize => js_util.getProperty(this, 'blockSize');
  double get inlineOffset => js_util.getProperty(this, 'inlineOffset');
  set inlineOffset(double newValue) {
    js_util.setProperty(this, 'inlineOffset', newValue);
  }

  double get blockOffset => js_util.getProperty(this, 'blockOffset');
  set blockOffset(double newValue) {
    js_util.setProperty(this, 'blockOffset', newValue);
  }

  dynamic get data => js_util.getProperty(this, 'data');
  ChildBreakToken? get breakToken => js_util.getProperty(this, 'breakToken');
}

@JS()
@staticInterop
class IntrinsicSizes {
  external factory IntrinsicSizes();
}

extension PropsIntrinsicSizes on IntrinsicSizes {
  double get minContentSize => js_util.getProperty(this, 'minContentSize');
  double get maxContentSize => js_util.getProperty(this, 'maxContentSize');
}

@JS()
@staticInterop
class LayoutConstraints {
  external factory LayoutConstraints();
}

extension PropsLayoutConstraints on LayoutConstraints {
  double get availableInlineSize =>
      js_util.getProperty(this, 'availableInlineSize');
  double get availableBlockSize =>
      js_util.getProperty(this, 'availableBlockSize');
  double? get fixedInlineSize => js_util.getProperty(this, 'fixedInlineSize');
  double? get fixedBlockSize => js_util.getProperty(this, 'fixedBlockSize');
  double get percentageInlineSize =>
      js_util.getProperty(this, 'percentageInlineSize');
  double get percentageBlockSize =>
      js_util.getProperty(this, 'percentageBlockSize');
  double? get blockFragmentationOffset =>
      js_util.getProperty(this, 'blockFragmentationOffset');
  BlockFragmentationType get blockFragmentationType =>
      BlockFragmentationType.values
          .byName(js_util.getProperty(this, 'blockFragmentationType'));
  dynamic get data => js_util.getProperty(this, 'data');
}

enum BlockFragmentationType { none, page, column, region }

@anonymous
@JS()
@staticInterop
class LayoutConstraintsOptions {
  external factory LayoutConstraintsOptions._(
      {required double availableInlineSize,
      required double availableBlockSize,
      required double fixedInlineSize,
      required double fixedBlockSize,
      required double percentageInlineSize,
      required double percentageBlockSize,
      required double blockFragmentationOffset,
      String? blockFragmentationType,
      dynamic data});

  factory LayoutConstraintsOptions(
          {required double availableInlineSize,
          required double availableBlockSize,
          required double fixedInlineSize,
          required double fixedBlockSize,
          required double percentageInlineSize,
          required double percentageBlockSize,
          required double blockFragmentationOffset,
          BlockFragmentationType? blockFragmentationType =
              BlockFragmentationType.none,
          dynamic data}) =>
      LayoutConstraintsOptions._(
          availableInlineSize: availableInlineSize,
          availableBlockSize: availableBlockSize,
          fixedInlineSize: fixedInlineSize,
          fixedBlockSize: fixedBlockSize,
          percentageInlineSize: percentageInlineSize,
          percentageBlockSize: percentageBlockSize,
          blockFragmentationOffset: blockFragmentationOffset,
          blockFragmentationType: blockFragmentationType?.name,
          data: data);
}

extension PropsLayoutConstraintsOptions on LayoutConstraintsOptions {
  double get availableInlineSize =>
      js_util.getProperty(this, 'availableInlineSize');
  set availableInlineSize(double newValue) {
    js_util.setProperty(this, 'availableInlineSize', newValue);
  }

  double get availableBlockSize =>
      js_util.getProperty(this, 'availableBlockSize');
  set availableBlockSize(double newValue) {
    js_util.setProperty(this, 'availableBlockSize', newValue);
  }

  double get fixedInlineSize => js_util.getProperty(this, 'fixedInlineSize');
  set fixedInlineSize(double newValue) {
    js_util.setProperty(this, 'fixedInlineSize', newValue);
  }

  double get fixedBlockSize => js_util.getProperty(this, 'fixedBlockSize');
  set fixedBlockSize(double newValue) {
    js_util.setProperty(this, 'fixedBlockSize', newValue);
  }

  double get percentageInlineSize =>
      js_util.getProperty(this, 'percentageInlineSize');
  set percentageInlineSize(double newValue) {
    js_util.setProperty(this, 'percentageInlineSize', newValue);
  }

  double get percentageBlockSize =>
      js_util.getProperty(this, 'percentageBlockSize');
  set percentageBlockSize(double newValue) {
    js_util.setProperty(this, 'percentageBlockSize', newValue);
  }

  double get blockFragmentationOffset =>
      js_util.getProperty(this, 'blockFragmentationOffset');
  set blockFragmentationOffset(double newValue) {
    js_util.setProperty(this, 'blockFragmentationOffset', newValue);
  }

  BlockFragmentationType get blockFragmentationType =>
      BlockFragmentationType.values
          .byName(js_util.getProperty(this, 'blockFragmentationType'));
  set blockFragmentationType(BlockFragmentationType newValue) {
    js_util.setProperty(this, 'blockFragmentationType', newValue.name);
  }

  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
}

@JS()
@staticInterop
class ChildBreakToken {
  external factory ChildBreakToken();
}

extension PropsChildBreakToken on ChildBreakToken {
  BreakType get breakType =>
      BreakType.values.byName(js_util.getProperty(this, 'breakType'));
  LayoutChild get child => js_util.getProperty(this, 'child');
}

@JS()
@staticInterop
class BreakToken {
  external factory BreakToken();
}

extension PropsBreakToken on BreakToken {
  Iterable<ChildBreakToken> get childBreakTokens =>
      js_util.getProperty(this, 'childBreakTokens');
  dynamic get data => js_util.getProperty(this, 'data');
}

@anonymous
@JS()
@staticInterop
class BreakTokenOptions {
  external factory BreakTokenOptions(
      {required Iterable<ChildBreakToken> childBreakTokens, dynamic data});
}

extension PropsBreakTokenOptions on BreakTokenOptions {
  Iterable<ChildBreakToken> get childBreakTokens =>
      js_util.getProperty(this, 'childBreakTokens');
  set childBreakTokens(Iterable<ChildBreakToken> newValue) {
    js_util.setProperty(this, 'childBreakTokens', newValue);
  }

  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
}

enum BreakType { none, line, column, page, region }

@JS()
@staticInterop
class LayoutEdges {
  external factory LayoutEdges();
}

extension PropsLayoutEdges on LayoutEdges {
  double get inlineStart => js_util.getProperty(this, 'inlineStart');
  double get inlineEnd => js_util.getProperty(this, 'inlineEnd');
  double get blockStart => js_util.getProperty(this, 'blockStart');
  double get blockEnd => js_util.getProperty(this, 'blockEnd');
  double get inline => js_util.getProperty(this, 'inline');
  double get block => js_util.getProperty(this, 'block');
}

@anonymous
@JS()
@staticInterop
class FragmentResultOptions {
  external factory FragmentResultOptions(
      {double? inlineSize = 0,
      double? blockSize = 0,
      double? autoBlockSize = 0,
      Iterable<LayoutFragment>? childFragments = const [],
      dynamic data,
      BreakTokenOptions? breakToken});
}

extension PropsFragmentResultOptions on FragmentResultOptions {
  double get inlineSize => js_util.getProperty(this, 'inlineSize');
  set inlineSize(double newValue) {
    js_util.setProperty(this, 'inlineSize', newValue);
  }

  double get blockSize => js_util.getProperty(this, 'blockSize');
  set blockSize(double newValue) {
    js_util.setProperty(this, 'blockSize', newValue);
  }

  double get autoBlockSize => js_util.getProperty(this, 'autoBlockSize');
  set autoBlockSize(double newValue) {
    js_util.setProperty(this, 'autoBlockSize', newValue);
  }

  Iterable<LayoutFragment> get childFragments =>
      js_util.getProperty(this, 'childFragments');
  set childFragments(Iterable<LayoutFragment> newValue) {
    js_util.setProperty(this, 'childFragments', newValue);
  }

  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }

  BreakTokenOptions get breakToken => js_util.getProperty(this, 'breakToken');
  set breakToken(BreakTokenOptions newValue) {
    js_util.setProperty(this, 'breakToken', newValue);
  }
}

@JS()
@staticInterop
class FragmentResult {
  external factory FragmentResult([FragmentResultOptions? options]);
}

extension PropsFragmentResult on FragmentResult {
  double get inlineSize => js_util.getProperty(this, 'inlineSize');
  double get blockSize => js_util.getProperty(this, 'blockSize');
}

@anonymous
@JS()
@staticInterop
class IntrinsicSizesResultOptions {
  external factory IntrinsicSizesResultOptions(
      {required double maxContentSize, required double minContentSize});
}

extension PropsIntrinsicSizesResultOptions on IntrinsicSizesResultOptions {
  double get maxContentSize => js_util.getProperty(this, 'maxContentSize');
  set maxContentSize(double newValue) {
    js_util.setProperty(this, 'maxContentSize', newValue);
  }

  double get minContentSize => js_util.getProperty(this, 'minContentSize');
  set minContentSize(double newValue) {
    js_util.setProperty(this, 'minContentSize', newValue);
  }
}
