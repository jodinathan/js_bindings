/// MediaStream Image Capture
///
/// https://w3c.github.io/mediacapture-image/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library image_capture;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the MediaStream Image Capture API provides
/// methods to enable the capture of images or photos from a camera
/// or other photographic device. It provides an interface for
/// capturing images from a photographic device referenced through a
/// valid [MediaStreamTrack].
@experimental
@JS()
@staticInterop
class ImageCapture {
  external factory ImageCapture(MediaStreamTrack videoTrack);
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
      {String? redEyeReduction,
      MediaSettingsRange? imageHeight,
      MediaSettingsRange? imageWidth,
      Iterable<String>? fillLightMode});

  factory PhotoCapabilities(
          {RedEyeReduction? redEyeReduction,
          MediaSettingsRange? imageHeight,
          MediaSettingsRange? imageWidth,
          Iterable<FillLightMode>? fillLightMode}) =>
      PhotoCapabilities._(
          redEyeReduction: redEyeReduction?.value ?? undefined,
          imageHeight: imageHeight ?? undefined,
          imageWidth: imageWidth ?? undefined,
          fillLightMode: fillLightMode?.map((e) => e.value) ?? undefined);
}

extension PropsPhotoCapabilities on PhotoCapabilities {
  RedEyeReduction get redEyeReduction =>
      RedEyeReduction.fromValue(js_util.getProperty(this, 'redEyeReduction'));
  set redEyeReduction(RedEyeReduction newValue) {
    js_util.setProperty(this, 'redEyeReduction', newValue.value);
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
      FillLightMode.fromValues(js_util.getProperty(this, 'fillLightMode'));
  set fillLightMode(Iterable<FillLightMode> newValue) {
    js_util.setProperty(this, 'fillLightMode', newValue.map((e) => e.value));
  }
}

@anonymous
@JS()
@staticInterop
class PhotoSettings {
  external factory PhotoSettings._(
      {String? fillLightMode,
      double? imageHeight,
      double? imageWidth,
      bool? redEyeReduction});

  factory PhotoSettings(
          {FillLightMode? fillLightMode,
          double? imageHeight,
          double? imageWidth,
          bool? redEyeReduction}) =>
      PhotoSettings._(
          fillLightMode: fillLightMode?.value ?? undefined,
          imageHeight: imageHeight ?? undefined,
          imageWidth: imageWidth ?? undefined,
          redEyeReduction: redEyeReduction ?? undefined);
}

extension PropsPhotoSettings on PhotoSettings {
  FillLightMode get fillLightMode =>
      FillLightMode.fromValue(js_util.getProperty(this, 'fillLightMode'));
  set fillLightMode(FillLightMode newValue) {
    js_util.setProperty(this, 'fillLightMode', newValue.value);
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
  external factory MediaSettingsRange({double? max, double? min, double? step});
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

enum RedEyeReduction {
  never('never'),
  always('always'),
  controllable('controllable');

  final String value;
  static RedEyeReduction fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RedEyeReduction> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RedEyeReduction(this.value);
}

enum FillLightMode {
  auto('auto'),
  off('off'),
  flash('flash');

  final String value;
  static FillLightMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<FillLightMode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const FillLightMode(this.value);
}

@anonymous
@JS()
@staticInterop
class ConstrainPoint2DParameters {
  external factory ConstrainPoint2DParameters(
      {Iterable<Point2D>? exact, Iterable<Point2D>? ideal});
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

enum MeteringMode {
  none('none'),
  manual('manual'),
  singleShot('single-shot'),
  continuous('continuous');

  final String value;
  static MeteringMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MeteringMode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MeteringMode(this.value);
}

@anonymous
@JS()
@staticInterop
class Point2D {
  external factory Point2D._({double? x, double? y});

  factory Point2D({double? x, double? y}) =>
      Point2D._(x: x ?? 0.0, y: y ?? 0.0);
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
