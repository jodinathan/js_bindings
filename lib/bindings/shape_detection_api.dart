/// Accelerated Shape Detection in Images
///
/// https://wicg.github.io/shape-detection-api/
@JS('window')
@staticInterop
library shape_detection_api;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
geometry_1
image_capture */

@JS()
@staticInterop
class FaceDetector {
  external factory FaceDetector([FaceDetectorOptions? faceDetectorOptions]);
}

extension PropsFaceDetector on FaceDetector {
  external Iterable<Promise<DetectedFace>> detect(dynamic image);
}

@anonymous
@JS()
@staticInterop
class FaceDetectorOptions {
  external factory FaceDetectorOptions({int maxDetectedFaces, bool fastMode});
}

extension PropsFaceDetectorOptions on FaceDetectorOptions {
  external int get maxDetectedFaces;
  external set maxDetectedFaces(int newValue);
  external bool get fastMode;
  external set fastMode(bool newValue);
}

@anonymous
@JS()
@staticInterop
class DetectedFace {
  external factory DetectedFace(
      {DOMRectReadOnly boundingBox, Iterable<Landmark> landmarks});
}

extension PropsDetectedFace on DetectedFace {
  external DOMRectReadOnly get boundingBox;
  external set boundingBox(DOMRectReadOnly newValue);
  external Iterable<Landmark> get landmarks;
  external set landmarks(Iterable<Landmark> newValue);
}

@anonymous
@JS()
@staticInterop
class Landmark {
  external factory Landmark({Iterable<Point2D> locations, LandmarkType type});
}

extension PropsLandmark on Landmark {
  external Iterable<Point2D> get locations;
  external set locations(Iterable<Point2D> newValue);
  external LandmarkType get type;
  external set type(LandmarkType newValue);
}

enum LandmarkType { mouth, eye, nose }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [Barcode Detection API] allows detection of
/// linear and two dimensional barcodes in images.
@JS()
@staticInterop
class BarcodeDetector {
  external factory BarcodeDetector(
      [BarcodeDetectorOptions? barcodeDetectorOptions]);
}

extension PropsBarcodeDetector on BarcodeDetector {
  ///  Returns a [Promise] which fulfills with an [Array] of supported
  /// barcode format types.
  ///
  /// var supportedFormats = BarcodeDetector.getSupportedFormats();
  ///
  external static Iterable<Promise<BarcodeFormat>> getSupportedFormats();

  ///  Returns a [Promise] which fulfills with an array of
  /// [detectedBarcode] objects with the following properties:
  ///
  ///     [boundingBox]: A [DOMRectReadOnly], which returns the
  /// dimensions of a rectangle representing the extent of a detected
  /// barcode, aligned with the image.
  ///     [cornerPoints]: The x and y co-ordinates of the four corner
  /// points of the detected barcode relative to the image, starting
  /// with the top left and working clockwise. This may not be square
  /// due to perspective distortions within the image.
  ///     [format]: The detected barcode format. (For a full list of
  /// formats see the [landing page])
  ///    [rawValue]: A [String] decoded from the barcode data.
  ///
  ///
  /// var detectedBarcode = BarcodeDetector.detect(ImageBitmapSource);
  ///
  external Iterable<Promise<DetectedBarcode>> detect(dynamic image);
}

@anonymous
@JS()
@staticInterop
class BarcodeDetectorOptions {
  external factory BarcodeDetectorOptions({Iterable<BarcodeFormat> formats});
}

extension PropsBarcodeDetectorOptions on BarcodeDetectorOptions {
  external Iterable<BarcodeFormat> get formats;
  external set formats(Iterable<BarcodeFormat> newValue);
}

@anonymous
@JS()
@staticInterop
class DetectedBarcode {
  external factory DetectedBarcode(
      {DOMRectReadOnly boundingBox,
      String rawValue,
      BarcodeFormat format,
      Iterable<Point2D> cornerPoints});
}

extension PropsDetectedBarcode on DetectedBarcode {
  external DOMRectReadOnly get boundingBox;
  external set boundingBox(DOMRectReadOnly newValue);
  external String get rawValue;
  external set rawValue(String newValue);
  external BarcodeFormat get format;
  external set format(BarcodeFormat newValue);
  external Iterable<Point2D> get cornerPoints;
  external set cornerPoints(Iterable<Point2D> newValue);
}

enum BarcodeFormat {
  aztec,
  code128,
  code39,
  code93,
  codabar,
  dataMatrix,
  ean13,
  ean8,
  itf,
  pdf417,
  qrCode,
  unknown,
  upcA,
  upcE
}
