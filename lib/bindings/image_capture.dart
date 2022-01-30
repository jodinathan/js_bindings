/// MediaStream Image Capture
///
/// https://w3c.github.io/mediacapture-image/
@JS('window')
@staticInterop
library image_capture;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: mediacapture_streams
file_a_p_i
html */

///  The interface of the MediaStream Image Capture API provides
/// methods to enable the capture of images or photos from a camera
/// or other photographic device. It provides an interface for
/// capturing images from a photographic device referenced through a
/// valid [MediaStreamTrack].
@experimental
@JS()
@staticInterop
class ImageCapture {
  external ImageCapture(MediaStreamTrack videoTrack);
}

extension PropsImageCapture on ImageCapture {
  ///  Takes a single exposure using the video capture device sourcing
  /// a [MediaStreamTrack] and returns a [Promise] that resolves with a
  /// [Blob] containing the data.
  ///
  /// const blobPromise = imageCaptureObj.takePhoto()
  /// const blobPromise = imageCaptureObj.takePhoto(photoSettings)
  ///
  ///
  ///  This example is extracted from this Simple
  /// Image Capture demo. It shows how to use the Promise returned by
  ///  takePhoto() to copy the returned Blob to an
  ///  <img> element. For simplicity it does not show how to instantiate the
  ///  ImageCapture object.
  ///
  /// var takePhotoButton = document.querySelector('button#takePhoto');
  /// var canvas = document.querySelector('canvas');
  ///
  /// takePhotoButton.onclick = takePhoto;
  ///
  /// function takePhoto() {
  ///  imageCapture.takePhoto().then(function(blob) {
  ///   console.log('Took photo:', blob);
  ///   img.classList.remove('hidden');
  ///   img.src = URL.createObjectURL(blob);
  ///  }).catch(function(error) {
  ///   console.log('takePhoto() error: ', error);
  ///  });
  /// }
  ///
  Future<Blob> takePhoto([PhotoSettings? photoSettings]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'takePhoto', [photoSettings]));

  ///  Returns a [Promise] that resolves with a [PhotoCapabilities]
  /// object containing the ranges of available configuration options.
  ///
  /// const capabilitiesPromise = imageCaptureObj.getPhotoCapabilities()
  ///
  ///
  ///  The following example, extracted from Chrome's
  /// Image Capture / Photo Resolution Sample, uses the results from
  ///  getPhotoCapabilities() to modify the size of an input range. This example
  ///  also shows how the ImageCapture object is created using a
  ///  MediaStreamTrack retrieved from a device's MediaStream.
  ///
  /// const input = document.querySelector('input[type="range"]');
  ///
  /// var imageCapture;
  ///
  /// navigator.mediaDevices.getUserMedia({video: true})
  /// .then(mediaStream => {
  ///  document.querySelector('video').srcObject = mediaStream;
  ///
  ///  const track = mediaStream.getVideoTracks()[0];
  ///  imageCapture = new ImageCapture(track);
  ///
  ///  return imageCapture.getPhotoCapabilities();
  /// })
  /// .then(photoCapabilities => {
  ///  const settings = imageCapture.track.getSettings();
  ///
  ///  input.min = photoCapabilities.imageWidth.min;
  ///  input.max = photoCapabilities.imageWidth.max;
  ///  input.step = photoCapabilities.imageWidth.step;
  ///
  ///  return imageCapture.getPhotoSettings();
  /// })
  /// .then(photoSettings => {
  ///  input.value = photoSettings.imageWidth;
  /// })
  /// .catch(error => console.log('Argh!', error.name || error));
  ///
  Future<PhotoCapabilities> getPhotoCapabilities() => js_util
      .promiseToFuture(js_util.callMethod(this, 'getPhotoCapabilities', []));

  ///  Returns a [Promise] that resolves with a [PhotoSettings] object
  /// containing the current photo configuration settings.
  ///
  /// const settingsPromise = imageCapture.getPhotoSettings()
  ///
  ///
  ///  The following example, extracted from Chrome's
  /// Image Capture / Photo Resolution Sample, uses the results from
  ///  getPhotoSettings() to modify the size of an input range. This example also
  ///  shows how the ImageCapture object is created using a
  ///  MediaStreamTrack retrieved from a device's MediaStream.
  ///
  /// const input = document.querySelector('input[type="range"]');
  ///
  /// var imageCapture;
  ///
  /// navigator.mediaDevices.getUserMedia({video: true})
  /// .then(mediaStream => {
  ///  document.querySelector('video').srcObject = mediaStream;
  ///
  ///  const track = mediaStream.getVideoTracks()[0];
  ///  imageCapture = new ImageCapture(track);
  ///
  ///  return imageCapture.getPhotoCapabilities();
  /// })
  /// .then(photoCapabilities => {
  ///  const settings = imageCapture.track.getSettings();
  ///
  ///  input.min = photoCapabilities.imageWidth.min;
  ///  input.max = photoCapabilities.imageWidth.max;
  ///  input.step = photoCapabilities.imageWidth.step;
  ///
  ///  return imageCapture.getPhotoSettings();
  /// })
  /// .then(photoSettings => {
  ///  input.value = photoSettings.imageWidth;
  /// })
  /// .catch(error => console.log('Argh!', error.name || error));
  ///
  Future<PhotoSettings> getPhotoSettings() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getPhotoSettings', []));

  ///  Takes a snapshot of the live video in a [MediaStreamTrack],
  /// returning an [ImageBitmap], if successful.
  ///
  /// const bitmapPromise = imageCapture.grabFrame()
  ///
  ///
  ///  This example is extracted from this Simple
  /// Image Capture demo. It shows how to use the Promise returned by
  ///  grabFrame() to copy the returned frame to a <canvas>
  ///  element. For simplicity it does not show how to instantiate the
  ///  ImageCapture object.
  ///
  /// var grabFrameButton = document.querySelector('button#grabFrame');
  /// var canvas = document.querySelector('canvas');
  ///
  /// grabFrameButton.onclick = grabFrame;
  ///
  /// function grabFrame() {
  ///  imageCapture.grabFrame()
  ///  .then(function(imageBitmap) {
  ///   console.log('Grabbed frame:', imageBitmap);
  ///   canvas.width = imageBitmap.width;
  ///   canvas.height = imageBitmap.height;
  ///   canvas.getContext('2d').drawImage(imageBitmap, 0, 0);
  ///   canvas.classList.remove('hidden');
  ///  })
  ///  .catch(function(error) {
  ///   console.log('grabFrame() error: ', error);
  ///  });
  /// }
  ///
  Future<ImageBitmap> grabFrame() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'grabFrame', []));

  ///  Returns a reference to the [MediaStreamTrack] passed to the
  /// constructor.
  ///
  MediaStreamTrack get track => js_util.getProperty(this, 'track');
}

@anonymous
@JS()
@staticInterop
class PhotoCapabilities {
  external factory PhotoCapabilities(
      {RedEyeReduction redEyeReduction,
      MediaSettingsRange imageHeight,
      MediaSettingsRange imageWidth,
      Iterable<FillLightMode> fillLightMode});
}

extension PropsPhotoCapabilities on PhotoCapabilities {
  RedEyeReduction get redEyeReduction =>
      js_util.getProperty(this, 'redEyeReduction');
  set redEyeReduction(RedEyeReduction newValue) {
    js_util.setProperty(this, 'redEyeReduction', newValue);
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
      js_util.getProperty(this, 'fillLightMode');
  set fillLightMode(Iterable<FillLightMode> newValue) {
    js_util.setProperty(this, 'fillLightMode', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PhotoSettings {
  external factory PhotoSettings(
      {FillLightMode fillLightMode,
      double imageHeight,
      double imageWidth,
      bool redEyeReduction});
}

extension PropsPhotoSettings on PhotoSettings {
  FillLightMode get fillLightMode => js_util.getProperty(this, 'fillLightMode');
  set fillLightMode(FillLightMode newValue) {
    js_util.setProperty(this, 'fillLightMode', newValue);
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
  external factory MediaSettingsRange({double max, double min, double step});
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
      {Iterable<Point2D> exact, Iterable<Point2D> ideal});
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
  external factory Point2D({double x = 0.0, double? y = 0.0});
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
