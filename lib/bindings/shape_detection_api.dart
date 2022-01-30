/// Accelerated Shape Detection in Images
///
/// https://wicg.github.io/shape-detection-api/
@JS('window')
@staticInterop
library shape_detection_api;

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
  external factory FaceDetectorOptions({int maxDetectedFaces, bool fastMode});
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
      {DOMRectReadOnly boundingBox, Iterable<Landmark> landmarks});
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
  external factory Landmark({Iterable<Point2D> locations, LandmarkType type});
}

extension PropsLandmark on Landmark {
  Iterable<Point2D> get locations => js_util.getProperty(this, 'locations');
  set locations(Iterable<Point2D> newValue) {
    js_util.setProperty(this, 'locations', newValue);
  }

  LandmarkType get type => js_util.getProperty(this, 'type');
  set type(LandmarkType newValue) {
    js_util.setProperty(this, 'type', newValue);
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
  external factory BarcodeDetectorOptions({Iterable<BarcodeFormat> formats});
}

extension PropsBarcodeDetectorOptions on BarcodeDetectorOptions {
  Iterable<BarcodeFormat> get formats => js_util.getProperty(this, 'formats');
  set formats(Iterable<BarcodeFormat> newValue) {
    js_util.setProperty(this, 'formats', newValue);
  }
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
  DOMRectReadOnly get boundingBox => js_util.getProperty(this, 'boundingBox');
  set boundingBox(DOMRectReadOnly newValue) {
    js_util.setProperty(this, 'boundingBox', newValue);
  }

  String get rawValue => js_util.getProperty(this, 'rawValue');
  set rawValue(String newValue) {
    js_util.setProperty(this, 'rawValue', newValue);
  }

  BarcodeFormat get format => js_util.getProperty(this, 'format');
  set format(BarcodeFormat newValue) {
    js_util.setProperty(this, 'format', newValue);
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
