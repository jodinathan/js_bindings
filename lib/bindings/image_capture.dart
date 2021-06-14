/// MediaStream Image Capture
///
/// https://w3c.github.io/mediacapture-image/
@JS('window')
library image_capture;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'mediacapture_streams.dart';
import 'file_a_p_i.dart';
import 'html.dart';

///
///
///  The interface of the MediaStream Image Capture API provides
/// methods to enable the capture of images or photos from a camera
/// or other photographic device. It provides an interface for
/// capturing images from a photographic device referenced through a
/// valid [MediaStreamTrack].
@experimental
@JS()
class ImageCapture {
  external factory ImageCapture({MediaStreamTrack videoTrack});

  ///  Takes a single exposure using the video capture device sourcing
  /// a [MediaStreamTrack] and returns a [Promise] that resolves with a
  /// [Blob] containing the data.
  /// const blobPromise = imageCaptureObj.takePhoto()
  /// const blobPromise = imageCaptureObj.takePhoto(photoSettings)
  ///
  /// This example is extracted from this Simple
  ///   Image Capture demo. It shows how to use the Promise returned by
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
  external Promise<Blob> takePhoto([PhotoSettings? photoSettings]);

  ///  Returns a [Promise] that resolves with a [PhotoCapabilities]
  /// object containing the ranges of available configuration options.
  /// const capabilitiesPromise = imageCaptureObj.getPhotoCapabilities()
  /// The following example, extracted from Chrome's
  ///   Image Capture / Photo Resolution Sample, uses the results from
  ///  getPhotoCapabilities() to modify the size of an input range. This example
  ///  also shows how the ImageCapture object is created using a
  ///  MediaStreamTrack retrieved from a device's MediaStream.
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
  external Promise<PhotoCapabilities> getPhotoCapabilities();

  ///  Returns a [Promise] that resolves with a [PhotoSettings] object
  /// containing the current photo configuration settings.
  /// const settingsPromise = imageCapture.getPhotoSettings()
  /// The following example, extracted from Chrome's
  ///   Image Capture / Photo Resolution Sample, uses the results from
  ///  getPhotoSettings() to modify the size of an input range. This example also
  ///  shows how the ImageCapture object is created using a
  ///  MediaStreamTrack retrieved from a device's MediaStream.
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
  external Promise<PhotoSettings> getPhotoSettings();

  ///  Takes a snapshot of the live video in a [MediaStreamTrack],
  /// returning an [ImageBitmap], if successful.
  /// const bitmapPromise = imageCapture.grabFrame()
  ///
  /// This example is extracted from this Simple
  ///   Image Capture demo. It shows how to use the Promise returned by
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
  external Promise<ImageBitmap> grabFrame();

  ///  Returns a reference to the [MediaStreamTrack] passed to the
  /// constructor.
  external MediaStreamTrack get track;
}

///
///
///  The interface of the MediaStream Image Capture API provides
/// available configuration options for an attached photographic
/// device. A object is retrieved by calling
/// [ImageCapture.getPhotoCapabilities()].
@experimental
@anonymous
@JS()
class PhotoCapabilities {
  ///  Returns one of ["never"], ["always"], or ["controllable"]. The
  /// ["controllable"] value means the device's red-eye reduction is
  /// controllable by the user.
  external RedEyeReduction get redEyeReduction;
  external set redEyeReduction(RedEyeReduction newValue);

  ///  Returns a [MediaSettingsRange] object indicating the image
  /// height range supported by the user agent.
  external MediaSettingsRange get imageHeight;
  external set imageHeight(MediaSettingsRange newValue);

  ///  Returns a [MediaSettingsRange] object indicating the image width
  /// range supported by the user agent.
  external MediaSettingsRange get imageWidth;
  external set imageWidth(MediaSettingsRange newValue);

  ///  Returns an array of available fill light options. Options may
  /// include [auto], [off], or [flash].
  external Iterable<FillLightMode> get fillLightMode;
  external set fillLightMode(Iterable<FillLightMode> newValue);

  external factory PhotoCapabilities(
      {RedEyeReduction redEyeReduction,
      MediaSettingsRange imageHeight,
      MediaSettingsRange imageWidth,
      Iterable<FillLightMode> fillLightMode});
}

@anonymous
@JS()
class PhotoSettings {
  external FillLightMode get fillLightMode;
  external set fillLightMode(FillLightMode newValue);
  external double get imageHeight;
  external set imageHeight(double newValue);
  external double get imageWidth;
  external set imageWidth(double newValue);
  external bool get redEyeReduction;
  external set redEyeReduction(bool newValue);

  external factory PhotoSettings(
      {FillLightMode fillLightMode,
      double imageHeight,
      double imageWidth,
      bool redEyeReduction});
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the MediaStream Image Capture API provides the
/// possible range and value size of [PhotoCapabilities.imageHeight]
/// and [PhotoCapabilities.imageWidth]. A [PhotoCapabilities] object
/// can be retrieved by calling [ImageCapture.PhotoCapabilities()].
@anonymous
@JS()
class MediaSettingsRange {
  /// Returns the maximum value of this settings.
  external double get max;
  external set max(double newValue);

  /// Returns the minimum value of this setting.
  external double get min;
  external set min(double newValue);

  ///  Returns the minimum difference between consecutive values of
  /// this setting.
  external double get step;
  external set step(double newValue);

  external factory MediaSettingsRange({double max, double min, double step});
}

@JS()
enum RedEyeReduction { never, always, controllable }

@JS()
enum FillLightMode { auto, off, flash }

@anonymous
@JS()
class ConstrainPoint2DParameters {
  external Iterable<Point2D> get exact;
  external set exact(Iterable<Point2D> newValue);
  external Iterable<Point2D> get ideal;
  external set ideal(Iterable<Point2D> newValue);

  external factory ConstrainPoint2DParameters(
      {Iterable<Point2D> exact, Iterable<Point2D> ideal});
}

@JS()
enum MeteringMode {
  none,
  manual,
  @JS('single-shot')
  singleShot,
  continuous
}

@anonymous
@JS()
class Point2D {
  external double get x;
  external set x(double newValue);
  external double get y;
  external set y(double newValue);

  external factory Point2D({double x = 0.0, double y = 0.0});
}
