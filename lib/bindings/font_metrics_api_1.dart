/// Font Metrics API Level 1
///
/// https://drafts.css-houdini.org/font-metrics-api-1/
@JS('window')
@staticInterop
library font_metrics_api_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
css_typed_om_1 */

@JS()
@staticInterop
class FontMetrics {
  external FontMetrics();
}

extension PropsFontMetrics on FontMetrics {
  double get width => js_util.getProperty(this, 'width');
  Iterable<double> get advances => js_util.getProperty(this, 'advances');
  double get boundingBoxLeft => js_util.getProperty(this, 'boundingBoxLeft');
  double get boundingBoxRight => js_util.getProperty(this, 'boundingBoxRight');
  double get height => js_util.getProperty(this, 'height');
  double get emHeightAscent => js_util.getProperty(this, 'emHeightAscent');
  double get emHeightDescent => js_util.getProperty(this, 'emHeightDescent');
  double get boundingBoxAscent =>
      js_util.getProperty(this, 'boundingBoxAscent');
  double get boundingBoxDescent =>
      js_util.getProperty(this, 'boundingBoxDescent');
  double get fontBoundingBoxAscent =>
      js_util.getProperty(this, 'fontBoundingBoxAscent');
  double get fontBoundingBoxDescent =>
      js_util.getProperty(this, 'fontBoundingBoxDescent');
  Baseline get dominantBaseline =>
      js_util.getProperty(this, 'dominantBaseline');
  Iterable<Baseline> get baselines => js_util.getProperty(this, 'baselines');
  Iterable<Font> get fonts => js_util.getProperty(this, 'fonts');
}

@JS()
@staticInterop
class Baseline {
  external Baseline();
}

extension PropsBaseline on Baseline {
  String get name => js_util.getProperty(this, 'name');
  double get value => js_util.getProperty(this, 'value');
}

@JS()
@staticInterop
class Font {
  external Font();
}

extension PropsFont on Font {
  String get name => js_util.getProperty(this, 'name');
  int get glyphsRendered => js_util.getProperty(this, 'glyphsRendered');
}
