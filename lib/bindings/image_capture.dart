/// MediaStream Image Capture
///
/// https://w3c.github.io/mediacapture-image/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library image_capture;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class ImageCapture {
  external ImageCapture(MediaStreamTrack videoTrack);
}

extension PropsImageCapture on ImageCapture {
  Future<Blob> takePhoto([PhotoSettings? photoSettings]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'takePhoto', [photoSettings]));

  Future<PhotoCapabilities> getPhotoCapabilities() => js_util
      .promiseToFuture(js_util.callMethod(this, 'getPhotoCapabilities', []));

  Future<PhotoSettings> getPhotoSettings() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getPhotoSettings', []));

  Future<ImageBitmap> grabFrame() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'grabFrame', []));

  MediaStreamTrack get track => js_util.getProperty(this, 'track');
}

@anonymous
@JS()
@staticInterop
class PhotoCapabilities {
  external factory PhotoCapabilities._(
      {required String redEyeReduction,
      required MediaSettingsRange imageHeight,
      required MediaSettingsRange imageWidth,
      required Iterable<String> fillLightMode});

  factory PhotoCapabilities(
          {required RedEyeReduction redEyeReduction,
          required MediaSettingsRange imageHeight,
          required MediaSettingsRange imageWidth,
          required Iterable<FillLightMode> fillLightMode}) =>
      PhotoCapabilities._(
          redEyeReduction: redEyeReduction.name,
          imageHeight: imageHeight,
          imageWidth: imageWidth,
          fillLightMode: fillLightMode.names);
}

extension PropsPhotoCapabilities on PhotoCapabilities {
  RedEyeReduction get redEyeReduction => RedEyeReduction.values
      .byName(js_util.getProperty(this, 'redEyeReduction'));
  set redEyeReduction(RedEyeReduction newValue) {
    js_util.setProperty(this, 'redEyeReduction', newValue.name);
  }

  MediaSettingsRange get imageHeight =>
      js_util.getProperty(this, 'imageHeight');
  set imageHeight(MediaSettingsRange newValue) {
    js_util.setProperty(this, 'imageHeight', newValue);
  }

  MediaSettingsRange get imageWidth => js_util.getProperty(this, 'imageWidth');
  set imageWidth(MediaSettingsRange newValue) {
    js_util.setProperty(this, 'imageWidth', newValue);
  }

  Iterable<FillLightMode> get fillLightMode =>
      FillLightMode.values.byNames(js_util.getProperty(this, 'fillLightMode'));
  set fillLightMode(Iterable<FillLightMode> newValue) {
    js_util.setProperty(this, 'fillLightMode', newValue.names);
  }
}

@anonymous
@JS()
@staticInterop
class PhotoSettings {
  external factory PhotoSettings._(
      {required String fillLightMode,
      required double imageHeight,
      required double imageWidth,
      required bool redEyeReduction});

  factory PhotoSettings(
          {required FillLightMode fillLightMode,
          required double imageHeight,
          required double imageWidth,
          required bool redEyeReduction}) =>
      PhotoSettings._(
          fillLightMode: fillLightMode.name,
          imageHeight: imageHeight,
          imageWidth: imageWidth,
          redEyeReduction: redEyeReduction);
}

extension PropsPhotoSettings on PhotoSettings {
  FillLightMode get fillLightMode =>
      FillLightMode.values.byName(js_util.getProperty(this, 'fillLightMode'));
  set fillLightMode(FillLightMode newValue) {
    js_util.setProperty(this, 'fillLightMode', newValue.name);
  }

  double get imageHeight => js_util.getProperty(this, 'imageHeight');
  set imageHeight(double newValue) {
    js_util.setProperty(this, 'imageHeight', newValue);
  }

  double get imageWidth => js_util.getProperty(this, 'imageWidth');
  set imageWidth(double newValue) {
    js_util.setProperty(this, 'imageWidth', newValue);
  }

  bool get redEyeReduction => js_util.getProperty(this, 'redEyeReduction');
  set redEyeReduction(bool newValue) {
    js_util.setProperty(this, 'redEyeReduction', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MediaSettingsRange {
  external factory MediaSettingsRange(
      {required double max, required double min, required double step});
}

extension PropsMediaSettingsRange on MediaSettingsRange {
  double get max => js_util.getProperty(this, 'max');
  set max(double newValue) {
    js_util.setProperty(this, 'max', newValue);
  }

  double get min => js_util.getProperty(this, 'min');
  set min(double newValue) {
    js_util.setProperty(this, 'min', newValue);
  }

  double get step => js_util.getProperty(this, 'step');
  set step(double newValue) {
    js_util.setProperty(this, 'step', newValue);
  }
}

enum RedEyeReduction { never, always, controllable }

enum FillLightMode { auto, off, flash }

@anonymous
@JS()
@staticInterop
class ConstrainPoint2DParameters {
  external factory ConstrainPoint2DParameters(
      {required Iterable<Point2D> exact, required Iterable<Point2D> ideal});
}

extension PropsConstrainPoint2DParameters on ConstrainPoint2DParameters {
  Iterable<Point2D> get exact => js_util.getProperty(this, 'exact');
  set exact(Iterable<Point2D> newValue) {
    js_util.setProperty(this, 'exact', newValue);
  }

  Iterable<Point2D> get ideal => js_util.getProperty(this, 'ideal');
  set ideal(Iterable<Point2D> newValue) {
    js_util.setProperty(this, 'ideal', newValue);
  }
}

enum MeteringMode { none, manual, singleShot, continuous }

@anonymous
@JS()
@staticInterop
class Point2D {
  external factory Point2D({double? x = 0.0, double? y = 0.0});
}

extension PropsPoint2D on Point2D {
  double get x => js_util.getProperty(this, 'x');
  set x(double newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  double get y => js_util.getProperty(this, 'y');
  set y(double newValue) {
    js_util.setProperty(this, 'y', newValue);
  }
}
