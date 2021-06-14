/// Accelerated Text Detection in Images
///
/// https://wicg.github.io/shape-detection-api/text.html
@JS('window')
library text_detection_api;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'geometry_1.dart';
import 'image_capture.dart';

@JS()
class TextDetector {
  external factory TextDetector();
  external Iterable<Promise<DetectedText>> detect(dynamic image);
}

@anonymous
@JS()
class DetectedText {
  external DOMRectReadOnly get boundingBox;
  external set boundingBox(DOMRectReadOnly newValue);
  external String get rawValue;
  external set rawValue(String newValue);
  external Iterable<Point2D> get cornerPoints;
  external set cornerPoints(Iterable<Point2D> newValue);

  external factory DetectedText(
      {DOMRectReadOnly boundingBox,
      String rawValue,
      Iterable<Point2D> cornerPoints});
}
