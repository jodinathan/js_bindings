/// Accelerated Shape Detection in Images
///
/// https://wicg.github.io/shape-detection-api/
@JS('window')
library shape_detection_api;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'geometry_1.dart';
import 'image_capture.dart';

@JS()
class FaceDetector {
  external factory FaceDetector([FaceDetectorOptions? faceDetectorOptions]);
  external Iterable<Promise<DetectedFace>> detect(dynamic image);
}

@anonymous
@JS()
class FaceDetectorOptions {
  external int get maxDetectedFaces;
  external set maxDetectedFaces(int newValue);
  external bool get fastMode;
  external set fastMode(bool newValue);

  external factory FaceDetectorOptions({int maxDetectedFaces, bool fastMode});
}

@anonymous
@JS()
class DetectedFace {
  external DOMRectReadOnly get boundingBox;
  external set boundingBox(DOMRectReadOnly newValue);
  external Iterable<Landmark> get landmarks;
  external set landmarks(Iterable<Landmark> newValue);

  external factory DetectedFace(
      {DOMRectReadOnly boundingBox, Iterable<Landmark> landmarks});
}

@anonymous
@JS()
class Landmark {
  external Iterable<Point2D> get locations;
  external set locations(Iterable<Point2D> newValue);
  external LandmarkType get type;
  external set type(LandmarkType newValue);

  external factory Landmark({Iterable<Point2D> locations, LandmarkType type});
}

@JS()
enum LandmarkType { mouth, eye, nose }

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the [Barcode Detection API] allows detection of
/// linear and two dimensional barcodes in images.
@JS()
class BarcodeDetector {
  external factory BarcodeDetector(
      [BarcodeDetectorOptions? barcodeDetectorOptions]);

  ///  Returns a [Promise] which fulfills with an [Array] of supported
  /// barcode format types.
  /// var supportedFormats = BarcodeDetector.getSupportedFormats();
  external static Iterable<Promise<BarcodeFormat>> getSupportedFormats();

  ///  Returns a [Promise] which fulfills with an array of
  /// [detectedBarcode] objects with the following properties:
  ///
  ///   [boundingBox]: A [DOMRectReadOnly], which returns the
  /// dimensions of a rectangle representing the extent of a detected
  /// barcode, aligned with the image.
  ///   [cornerPoints]: The x and y co-ordinates of the four corner
  /// points of the detected barcode relative to the image, starting
  /// with the top left and working clockwise. This may not be square
  /// due to perspective distortions within the image.
  ///   [format]: The detected barcode format. (For a full list of
  /// formats see the [landing page])
  ///  [rawValue]: A [String] decoded from the barcode data.
  ///
  ///
  /// var detectedBarcode = BarcodeDetector.detect(ImageBitmapSource);
  external Iterable<Promise<DetectedBarcode>> detect(dynamic image);
}

@anonymous
@JS()
class BarcodeDetectorOptions {
  external Iterable<BarcodeFormat> get formats;
  external set formats(Iterable<BarcodeFormat> newValue);

  external factory BarcodeDetectorOptions({Iterable<BarcodeFormat> formats});
}

@anonymous
@JS()
class DetectedBarcode {
  external DOMRectReadOnly get boundingBox;
  external set boundingBox(DOMRectReadOnly newValue);
  external String get rawValue;
  external set rawValue(String newValue);
  external BarcodeFormat get format;
  external set format(BarcodeFormat newValue);
  external Iterable<Point2D> get cornerPoints;
  external set cornerPoints(Iterable<Point2D> newValue);

  external factory DetectedBarcode(
      {DOMRectReadOnly boundingBox,
      String rawValue,
      BarcodeFormat format,
      Iterable<Point2D> cornerPoints});
}

@JS()
enum BarcodeFormat {
  aztec,
  @JS('code_128')
  code128,
  @JS('code_39')
  code39,
  @JS('code_93')
  code93,
  codabar,
  @JS('data_matrix')
  dataMatrix,
  @JS('ean_13')
  ean13,
  @JS('ean_8')
  ean8,
  itf,
  pdf417,
  @JS('qr_code')
  qrCode,
  unknown,
  @JS('upc_a')
  upcA,
  @JS('upc_e')
  upcE
}
