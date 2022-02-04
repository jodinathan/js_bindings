/// Accelerated Shape Detection in Images
///
/// https://wicg.github.io/shape-detection-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library shape_detection_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class FaceDetector {
  external FaceDetector([FaceDetectorOptions? faceDetectorOptions]);
}

extension PropsFaceDetector on FaceDetector {
  Future<Iterable<DetectedFace>> detect(dynamic image) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'detect', [image]));
}

@anonymous
@JS()
@staticInterop
class FaceDetectorOptions {
  external factory FaceDetectorOptions(
      {required int maxDetectedFaces, required bool fastMode});
}

extension PropsFaceDetectorOptions on FaceDetectorOptions {
  int get maxDetectedFaces => js_util.getProperty(this, 'maxDetectedFaces');
  set maxDetectedFaces(int newValue) {
    js_util.setProperty(this, 'maxDetectedFaces', newValue);
  }

  bool get fastMode => js_util.getProperty(this, 'fastMode');
  set fastMode(bool newValue) {
    js_util.setProperty(this, 'fastMode', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class DetectedFace {
  external factory DetectedFace(
      {required DOMRectReadOnly boundingBox,
      required Iterable<Landmark> landmarks});
}

extension PropsDetectedFace on DetectedFace {
  DOMRectReadOnly get boundingBox => js_util.getProperty(this, 'boundingBox');
  set boundingBox(DOMRectReadOnly newValue) {
    js_util.setProperty(this, 'boundingBox', newValue);
  }

  Iterable<Landmark> get landmarks => js_util.getProperty(this, 'landmarks');
  set landmarks(Iterable<Landmark> newValue) {
    js_util.setProperty(this, 'landmarks', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class Landmark {
  external factory Landmark._(
      {required Iterable<Point2D> locations, required String type});

  factory Landmark(
          {required Iterable<Point2D> locations, required LandmarkType type}) =>
      Landmark._(locations: locations, type: type.name);
}

extension PropsLandmark on Landmark {
  Iterable<Point2D> get locations => js_util.getProperty(this, 'locations');
  set locations(Iterable<Point2D> newValue) {
    js_util.setProperty(this, 'locations', newValue);
  }

  LandmarkType get type =>
      LandmarkType.values.byName(js_util.getProperty(this, 'type'));
  set type(LandmarkType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }
}

enum LandmarkType { mouth, eye, nose }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [Barcode Detection API] allows detection of
/// linear and two dimensional barcodes in images.
@JS()
@staticInterop
class BarcodeDetector {
  external BarcodeDetector([BarcodeDetectorOptions? barcodeDetectorOptions]);
}

extension PropsBarcodeDetector on BarcodeDetector {
  ///  Returns a [Future] which fulfills with an [Array] of supported
  /// barcode format types.
  ///
  /// var supportedFormats = BarcodeDetector.getSupportedFormats();
  ///
  static Future<Iterable<BarcodeFormat>> getSupportedFormats() =>
      js_util.promiseToFuture(
          js_util.callMethod(BarcodeDetector, 'getSupportedFormats', []));

  ///  Returns a [Future] which fulfills with an array of
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
  Future<Iterable<DetectedBarcode>> detect(dynamic image) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'detect', [image]));
}

@anonymous
@JS()
@staticInterop
class BarcodeDetectorOptions {
  external factory BarcodeDetectorOptions._(
      {required Iterable<String> formats});

  factory BarcodeDetectorOptions({required Iterable<BarcodeFormat> formats}) =>
      BarcodeDetectorOptions._(formats: formats.names);
}

extension PropsBarcodeDetectorOptions on BarcodeDetectorOptions {
  Iterable<BarcodeFormat> get formats =>
      BarcodeFormat.values.byNames(js_util.getProperty(this, 'formats'));
  set formats(Iterable<BarcodeFormat> newValue) {
    js_util.setProperty(this, 'formats', newValue.names);
  }
}

@anonymous
@JS()
@staticInterop
class DetectedBarcode {
  external factory DetectedBarcode._(
      {required DOMRectReadOnly boundingBox,
      required String rawValue,
      required String format,
      required Iterable<Point2D> cornerPoints});

  factory DetectedBarcode(
          {required DOMRectReadOnly boundingBox,
          required String rawValue,
          required BarcodeFormat format,
          required Iterable<Point2D> cornerPoints}) =>
      DetectedBarcode._(
          boundingBox: boundingBox,
          rawValue: rawValue,
          format: format.name,
          cornerPoints: cornerPoints);
}

extension PropsDetectedBarcode on DetectedBarcode {
  DOMRectReadOnly get boundingBox => js_util.getProperty(this, 'boundingBox');
  set boundingBox(DOMRectReadOnly newValue) {
    js_util.setProperty(this, 'boundingBox', newValue);
  }

  String get rawValue => js_util.getProperty(this, 'rawValue');
  set rawValue(String newValue) {
    js_util.setProperty(this, 'rawValue', newValue);
  }

  BarcodeFormat get format =>
      BarcodeFormat.values.byName(js_util.getProperty(this, 'format'));
  set format(BarcodeFormat newValue) {
    js_util.setProperty(this, 'format', newValue.name);
  }

  Iterable<Point2D> get cornerPoints =>
      js_util.getProperty(this, 'cornerPoints');
  set cornerPoints(Iterable<Point2D> newValue) {
    js_util.setProperty(this, 'cornerPoints', newValue);
  }
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
