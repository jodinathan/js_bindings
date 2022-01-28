/// Accelerated Text Detection in Images
///
/// https://wicg.github.io/shape-detection-api/text.html
@JS('window')
@staticInterop
library text_detection_api;

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
  external factory TextDetector();
}

extension PropsTextDetector on TextDetector {
  external Iterable<Promise<DetectedText>> detect(dynamic image);
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
  external DOMRectReadOnly get boundingBox;
  external set boundingBox(DOMRectReadOnly newValue);
  external String get rawValue;
  external set rawValue(String newValue);
  external Iterable<Point2D> get cornerPoints;
  external set cornerPoints(Iterable<Point2D> newValue);
}
