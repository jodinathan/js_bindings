/// CSS Regions Module Level 1
///
/// https://drafts.csswg.org/css-regions/
@JS('window')
library css_regions_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';

@JS()
class NamedFlowMap {
  external NamedFlow operator [](String index);

  external factory NamedFlowMap();
}

@JS()
class NamedFlow extends EventTarget {
  external String get name;
  external bool get overset;
  external Iterable<Element> getRegions();
  external int get firstEmptyRegionIndex;
  external Iterable<Node> getContent();
  external Iterable<Element> getRegionsByContent(Node node);

  external factory NamedFlow();
}

@JS()
abstract class Region {
  external String get regionOverset;
  external Iterable<Range> getRegionFlowRanges();
}
