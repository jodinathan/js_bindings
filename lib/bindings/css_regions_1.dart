/// CSS Regions Module Level 1
///
/// https://drafts.csswg.org/css-regions/
@JS('window')
@staticInterop
library css_regions_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom */

@JS()
@staticInterop
class NamedFlowMap {
  external factory NamedFlowMap();
}

@JS()
@staticInterop
class NamedFlow implements EventTarget {
  external factory NamedFlow();
}

extension PropsNamedFlow on NamedFlow {
  external String get name;
  external bool get overset;
  external Iterable<Element> getRegions();
  external int get firstEmptyRegionIndex;
  external Iterable<Node> getContent();
  external Iterable<Element> getRegionsByContent(Node node);
}

@JS()
@staticInterop
class Region {
  external factory Region();
}

extension PropsRegion on Region {
  external String get regionOverset;
  external Iterable<Range> getRegionFlowRanges();
}
