/// Accelerated Text Detection in Images
///
/// https://wicg.github.io/shape-detection-api/text.html
@JS('window')
@staticInterop
library text_detection_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
geometry_1
image_capture */

@JS()
@staticInterop
class TextDetector {
  external TextDetector();
}

extension PropsTextDetector on TextDetector {
  Iterable<Promise<DetectedText>> detect(dynamic image) =>
      js_util.callMethod(this, 'detect', [image]);
}

@anonymous
@JS()
@staticInterop
class DetectedText {
  external factory DetectedText(
      {DOMRectReadOnly boundingBox,
      String rawValue,
      Iterable<Point2D> cornerPoints});
}

extension PropsDetectedText on DetectedText {
  DOMRectReadOnly get boundingBox => js_util.getProperty(this, 'boundingBox');
  set boundingBox(DOMRectReadOnly newValue) {
    js_util.setProperty(this, 'boundingBox', newValue);
  }

  String get rawValue => js_util.getProperty(this, 'rawValue');
  set rawValue(String newValue) {
    js_util.setProperty(this, 'rawValue', newValue);
  }

  Iterable<Point2D> get cornerPoints =>
      js_util.getProperty(this, 'cornerPoints');
  set cornerPoints(Iterable<Point2D> newValue) {
    js_util.setProperty(this, 'cornerPoints', newValue);
  }
}
