/// Scroll-linked Animations
///
/// https://drafts.csswg.org/scroll-animations-1/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library scroll_animations_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum ScrollDirection { block, inline, horizontal, vertical }

enum ScrollTimelineAutoKeyword { auto }

@anonymous
@JS()
@staticInterop
class ScrollTimelineOptions {
  external factory ScrollTimelineOptions(
      {Element? source,
      ScrollDirection orientation = ScrollDirection.block,
      Iterable<dynamic>? scrollOffsets = const [],
      dynamic timeRange});
}

extension PropsScrollTimelineOptions on ScrollTimelineOptions {
  Element? get source => js_util.getProperty(this, 'source');
  set source(Element? newValue) {
    js_util.setProperty(this, 'source', newValue);
  }

  ScrollDirection get orientation => js_util.getProperty(this, 'orientation');
  set orientation(ScrollDirection newValue) {
    js_util.setProperty(this, 'orientation', newValue);
  }

  Iterable<dynamic> get scrollOffsets =>
      js_util.getProperty(this, 'scrollOffsets');
  set scrollOffsets(Iterable<dynamic> newValue) {
    js_util.setProperty(this, 'scrollOffsets', newValue);
  }

  dynamic get timeRange => js_util.getProperty(this, 'timeRange');
  set timeRange(dynamic newValue) {
    js_util.setProperty(this, 'timeRange', newValue);
  }
}

@JS()
@staticInterop
class ScrollTimeline implements AnimationTimeline {
  external ScrollTimeline([ScrollTimelineOptions? options]);
}

extension PropsScrollTimeline on ScrollTimeline {
  Element? get source => js_util.getProperty(this, 'source');
  ScrollDirection get orientation => js_util.getProperty(this, 'orientation');
  Iterable<dynamic> get scrollOffsets =>
      js_util.getProperty(this, 'scrollOffsets');
  dynamic get timeRange => js_util.getProperty(this, 'timeRange');
}

enum Edge { start, end }

@anonymous
@JS()
@staticInterop
class ElementBasedOffset {
  external factory ElementBasedOffset(
      {Element target, Edge edge = Edge.start, double? threshold = 0.0});
}

extension PropsElementBasedOffset on ElementBasedOffset {
  Element get target => js_util.getProperty(this, 'target');
  set target(Element newValue) {
    js_util.setProperty(this, 'target', newValue);
  }

  Edge get edge => js_util.getProperty(this, 'edge');
  set edge(Edge newValue) {
    js_util.setProperty(this, 'edge', newValue);
  }

  double get threshold => js_util.getProperty(this, 'threshold');
  set threshold(double newValue) {
    js_util.setProperty(this, 'threshold', newValue);
  }
}

@JS()
@staticInterop
class CSSScrollTimelineRule implements CSSRule {
  external CSSScrollTimelineRule();
}

extension PropsCSSScrollTimelineRule on CSSScrollTimelineRule {
  String get name => js_util.getProperty(this, 'name');
  String get source => js_util.getProperty(this, 'source');
  String get orientation => js_util.getProperty(this, 'orientation');
  String get scrollOffsets => js_util.getProperty(this, 'scrollOffsets');
  String get timeRange => js_util.getProperty(this, 'timeRange');
}
