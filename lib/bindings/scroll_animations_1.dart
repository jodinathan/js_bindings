/// Scroll-linked Animations
///
/// https://drafts.csswg.org/scroll-animations-1/
@JS('window')
@staticInterop
library scroll_animations_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: css_typed_om_1
dom
web_animations_1
cssom_1 */

enum ScrollDirection { block, inline, horizontal, vertical }

enum ScrollTimelineAutoKeyword { auto }

@anonymous
@JS()
@staticInterop
class ScrollTimelineOptions {
  external factory ScrollTimelineOptions(
      {Element? source,
      ScrollDirection orientation = ScrollDirection.block,
      Iterable<dynamic> scrollOffsets = const [],
      dynamic timeRange});
}

extension PropsScrollTimelineOptions on ScrollTimelineOptions {
  external Element? get source;
  external set source(Element? newValue);
  external ScrollDirection get orientation;
  external set orientation(ScrollDirection newValue);
  external Iterable<dynamic> get scrollOffsets;
  external set scrollOffsets(Iterable<dynamic> newValue);
  external dynamic get timeRange;
  external set timeRange(dynamic newValue);
}

@JS()
@staticInterop
class ScrollTimeline implements AnimationTimeline {
  external factory ScrollTimeline([ScrollTimelineOptions? options]);
}

extension PropsScrollTimeline on ScrollTimeline {
  external Element? get source;
  external ScrollDirection get orientation;
  external Iterable<dynamic> get scrollOffsets;
  external dynamic get timeRange;
}

enum Edge { start, end }

@anonymous
@JS()
@staticInterop
class ElementBasedOffset {
  external factory ElementBasedOffset(
      {Element target, Edge edge = Edge.start, double threshold = 0.0});
}

extension PropsElementBasedOffset on ElementBasedOffset {
  external Element get target;
  external set target(Element newValue);
  external Edge get edge;
  external set edge(Edge newValue);
  external double get threshold;
  external set threshold(double newValue);
}

@JS()
@staticInterop
class CSSScrollTimelineRule implements CSSRule {
  external factory CSSScrollTimelineRule();
}

extension PropsCSSScrollTimelineRule on CSSScrollTimelineRule {
  external String get name;
  external String get source;
  external String get orientation;
  external String get scrollOffsets;
  external String get timeRange;
}
