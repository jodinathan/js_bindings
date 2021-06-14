/// Scroll-linked Animations
///
/// https://drafts.csswg.org/scroll-animations-1/
@JS('window')
library scroll_animations_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'css_typed_om_1.dart';
import 'dom.dart';
import 'web_animations_1.dart';
import 'cssom_1.dart';

@JS()
enum ScrollDirection { block, inline, horizontal, vertical }

@JS()
enum ScrollTimelineAutoKeyword { auto }

@anonymous
@JS()
class ScrollTimelineOptions {
  external Element? get source;
  external set source(Element? newValue);
  external ScrollDirection get orientation;
  external set orientation(ScrollDirection newValue);
  external Iterable<dynamic> get scrollOffsets;
  external set scrollOffsets(Iterable<dynamic> newValue);
  external dynamic get timeRange;
  external set timeRange(dynamic newValue);

  external factory ScrollTimelineOptions(
      {Element? source,
      ScrollDirection orientation = ScrollDirection.block,
      Iterable<dynamic> scrollOffsets = const [],
      dynamic timeRange});
}

@JS()
class ScrollTimeline extends AnimationTimeline {
  external factory ScrollTimeline({ScrollTimelineOptions? options});
  external Element? get source;
  external ScrollDirection get orientation;
  external Iterable<dynamic> get scrollOffsets;
  external dynamic get timeRange;
}

@JS()
enum Edge { start, end }

@anonymous
@JS()
class ElementBasedOffset {
  external Element get target;
  external set target(Element newValue);
  external Edge get edge;
  external set edge(Edge newValue);
  external double get threshold;
  external set threshold(double newValue);

  external factory ElementBasedOffset(
      {Element target, Edge edge = Edge.start, double threshold = 0.0});
}

@JS()
class CSSScrollTimelineRule extends CSSRule {
  external String get name;
  external String get source;
  external String get orientation;
  external String get scrollOffsets;
  external String get timeRange;

  external factory CSSScrollTimelineRule();
}
