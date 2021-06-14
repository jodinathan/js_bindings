/// Font Metrics API Level 1
///
/// https://drafts.css-houdini.org/font-metrics-api-1/
@JS('window')
library font_metrics_api_1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'css_typed_om_1.dart';

@JS()
class FontMetrics {
  external double get width;
  external Iterable<double> get advances;
  external double get boundingBoxLeft;
  external double get boundingBoxRight;
  external double get height;
  external double get emHeightAscent;
  external double get emHeightDescent;
  external double get boundingBoxAscent;
  external double get boundingBoxDescent;
  external double get fontBoundingBoxAscent;
  external double get fontBoundingBoxDescent;
  external Baseline get dominantBaseline;
  external Iterable<Baseline> get baselines;
  external Iterable<Font> get fonts;

  external factory FontMetrics();
}

@JS()
class Baseline {
  external String get name;
  external double get value;

  external factory Baseline();
}

@JS()
class Font {
  external String get name;
  external int get glyphsRendered;

  external factory Font();
}
