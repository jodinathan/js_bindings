/// CSS Regions Module Level 1
///
/// https://drafts.csswg.org/css-regions/
@JS('window')
@staticInterop
library css_regions_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom */

@JS()
@staticInterop
class NamedFlowMap {
  external NamedFlowMap();
}

@JS()
@staticInterop
class NamedFlow implements EventTarget {
  external NamedFlow();
}

extension PropsNamedFlow on NamedFlow {
  String get name => js_util.getProperty(this, 'name');
  bool get overset => js_util.getProperty(this, 'overset');
  Iterable<Element> getRegions() => js_util.callMethod(this, 'getRegions', []);

  int get firstEmptyRegionIndex =>
      js_util.getProperty(this, 'firstEmptyRegionIndex');
  Iterable<Node> getContent() => js_util.callMethod(this, 'getContent', []);

  Iterable<Element> getRegionsByContent(Node node) =>
      js_util.callMethod(this, 'getRegionsByContent', [node]);
}

@JS()
@staticInterop
class Region {
  external Region();
}

extension PropsRegion on Region {
  String get regionOverset => js_util.getProperty(this, 'regionOverset');
  Iterable<Range> getRegionFlowRanges() =>
      js_util.callMethod(this, 'getRegionFlowRanges', []);
}
