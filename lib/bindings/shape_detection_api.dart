/// Accelerated Shape Detection in Images
///
/// https://wicg.github.io/shape-detection-api/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library shape_detection_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class FaceDetector {
  external factory FaceDetector([FaceDetectorOptions? faceDetectorOptions]);
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
      Landmark._(locations: locations, type: type.value);
}

extension PropsLandmark on Landmark {
  Iterable<Point2D> get locations => js_util.getProperty(this, 'locations');
  set locations(Iterable<Point2D> newValue) {
    js_util.setProperty(this, 'locations', newValue);
  }

  LandmarkType get type =>
      LandmarkType.fromValue(js_util.getProperty(this, 'type'));
  set type(LandmarkType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
  }
}

enum LandmarkType {
  mouth('mouth'),
  eye('eye'),
  nose('nose');

  final String value;
  static LandmarkType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<LandmarkType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const LandmarkType(this.value);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  The interface of the [Barcode Detection API] allows detection of
/// linear and two dimensional barcodes in images.
@experimental
@JS()
@staticInterop
class BarcodeDetector {
  external factory BarcodeDetector(
      [BarcodeDetectorOptions? barcodeDetectorOptions]);
}

extension PropsBarcodeDetector on BarcodeDetector {
  static Future<Iterable<BarcodeFormat>> getSupportedFormats() =>
      js_util.promiseToFuture(
          js_util.callMethod(BarcodeDetector, 'getSupportedFormats', []));

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
      BarcodeDetectorOptions._(formats: formats.map((e) => e.value));
}

extension PropsBarcodeDetectorOptions on BarcodeDetectorOptions {
  Iterable<BarcodeFormat> get formats =>
      BarcodeFormat.fromValues(js_util.getProperty(this, 'formats'));
  set formats(Iterable<BarcodeFormat> newValue) {
    js_util.setProperty(this, 'formats', newValue.map((e) => e.value));
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
          format: format.value,
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
      BarcodeFormat.fromValue(js_util.getProperty(this, 'format'));
  set format(BarcodeFormat newValue) {
    js_util.setProperty(this, 'format', newValue.value);
  }

  Iterable<Point2D> get cornerPoints =>
      js_util.getProperty(this, 'cornerPoints');
  set cornerPoints(Iterable<Point2D> newValue) {
    js_util.setProperty(this, 'cornerPoints', newValue);
  }
}

enum BarcodeFormat {
  aztec('aztec'),
  code128('code_128'),
  code39('code_39'),
  code93('code_93'),
  codabar('codabar'),
  dataMatrix('data_matrix'),
  ean13('ean_13'),
  ean8('ean_8'),
  itf('itf'),
  pdf417('pdf417'),
  qrCode('qr_code'),
  unknown('unknown'),
  upcA('upc_a'),
  upcE('upc_e');

  final String value;
  static BarcodeFormat fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<BarcodeFormat> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const BarcodeFormat(this.value);
}
