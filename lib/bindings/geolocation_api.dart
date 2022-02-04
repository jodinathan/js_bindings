/// Geolocation API
///
/// https://w3c.github.io/geolocation-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library geolocation_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface represents an object able to programmatically
/// obtain the position of the device. It gives Web content access to
/// the location of the device. This allows a Web site or app to
/// offer customized results based on the user's location.
///  An object with this interface is obtained using the
/// [navigator.geolocation] property implemented by the [Navigator]
/// object.
///
///   Note: For security reasons, when a web page tries to access
/// location information, the user is notified and asked to grant
/// permission. Be aware that each browser has its own policies and
/// methods for requesting this permission.
///
@JS()
@staticInterop
class Geolocation {
  external Geolocation();
}

extension PropsGeolocation on Geolocation {
  ///  Determines the device's current location and gives back a
  /// [GeolocationPosition] object with the data.
  ///
  /// navigator.geolocation.getCurrentPosition(success, error, [options])
  ///
  Object getCurrentPosition(PositionCallback successCallback,
          [PositionErrorCallback? errorCallback,

          /// An optional object including the following parameters:
          ///
          ///    [maximumAge]
          ///
          ///       : Is a positive [int] value indicating the maximum age in
          /// milliseconds of a possible cached position that is acceptable to
          /// return. If set to [0], it means that the device cannot use a
          /// cached position and must attempt to retrieve the real current
          /// position. If set to [Infinity] the device must return a cached
          /// position regardless of its age. Default: 0.
          ///
          ///
          ///
          ///     [timeout]
          ///      : Is a positive [int] value representing the maximum length
          /// of time (in milliseconds) the device is allowed to take in order
          /// to return a position. The default value is [Infinity], meaning
          /// that [getCurrentPosition()] won't return until the position is
          /// available.
          ///
          ///    [enableHighAccuracy]
          ///
          ///       : Is a boolean value that indicates the application would
          /// like to receive the best possible results. If [true] and if the
          /// device is able to provide a more accurate position, it will do
          /// so. Note that this can result in slower response times or
          /// increased power consumption (with a GPS chip on a mobile device
          /// for example). On the other hand, if [false], the device can take
          /// the liberty to save resources by responding more quickly and/or
          /// using less power. Default: [false].
          ///
          ///
          ///
          ///
          PositionOptions? options]) =>
      js_util.callMethod(this, 'getCurrentPosition', [
        allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback),
        options
      ]);

  ///  Returns a [int] value representing the newly established
  /// callback function to be invoked whenever the device location
  /// changes.
  ///
  /// navigator.geolocation.watchPosition(success)
  /// navigator.geolocation.watchPosition(success, error)
  /// navigator.geolocation.watchPosition(success, error, options)
  ///
  int watchPosition(PositionCallback successCallback,
          [PositionErrorCallback? errorCallback,

          ///
          ///     An optional object that provides configuration options for
          /// the location watch.
          ///     See [Geolocation.getCurrentPosition()] for more details on
          /// possible options.
          ///
          ///
          PositionOptions? options]) =>
      js_util.callMethod(this, 'watchPosition', [
        allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback),
        options
      ]);

  ///  Removes the particular handler previously installed using
  /// [watchPosition()].
  ///
  /// navigator.geolocation.clearWatch(id);
  ///
  /// var id, target, option;
  ///
  /// function success(pos) {
  ///  var crd = pos.coords;
  ///
  ///  if (target.latitude === crd.latitude && target.longitude === crd.longitude) {
  ///   console.log('Congratulation, you reach the target');
  ///   navigator.geolocation.clearWatch(id);
  ///  }
  /// };
  ///
  /// function error(err) {
  ///  console.warn('ERROR(' + err.code + '): ' + err.message);
  /// };
  ///
  /// target = {
  ///  latitude : 0,
  ///  longitude: 0,
  /// }
  ///
  /// options = {
  ///  enableHighAccuracy: false,
  ///  timeout: 5000,
  ///  maximumAge: 0
  /// };
  ///
  /// id = navigator.geolocation.watchPosition(success, error, options);
  ///
  Object clearWatch(int watchId) =>
      js_util.callMethod(this, 'clearWatch', [watchId]);
}

@anonymous
@JS()
@staticInterop
class PositionOptions {
  external factory PositionOptions(
      {bool? enableHighAccuracy = false,
      int? timeout = 0xFFFFFFFF,
      int? maximumAge = 0});
}

extension PropsPositionOptions on PositionOptions {
  bool get enableHighAccuracy =>
      js_util.getProperty(this, 'enableHighAccuracy');
  set enableHighAccuracy(bool newValue) {
    js_util.setProperty(this, 'enableHighAccuracy', newValue);
  }

  int get timeout => js_util.getProperty(this, 'timeout');
  set timeout(int newValue) {
    js_util.setProperty(this, 'timeout', newValue);
  }

  int get maximumAge => js_util.getProperty(this, 'maximumAge');
  set maximumAge(int newValue) {
    js_util.setProperty(this, 'maximumAge', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface represents the position of the concerned device at
/// a given time. The position, represented by a
/// [GeolocationCoordinates] object, comprehends the 2D position of
/// the device, on a spheroid representing the Earth, but also its
/// altitude and its speed.
@JS()
@staticInterop
class GeolocationPosition {
  external GeolocationPosition();
}

extension PropsGeolocationPosition on GeolocationPosition {
  ///  Returns a [GeolocationCoordinates] object defining the current
  /// location.
  ///
  GeolocationCoordinates get coords => js_util.getProperty(this, 'coords');

  ///  Returns a [int] representing the time at which the location was
  /// retrieved.
  ///
  int get timestamp => js_util.getProperty(this, 'timestamp');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface represents the position and altitude of the device
/// on Earth, as well as the accuracy with which these properties are
/// calculated.
@JS()
@staticInterop
class GeolocationCoordinates {
  external GeolocationCoordinates();
}

extension PropsGeolocationCoordinates on GeolocationCoordinates {
  ///  Returns a [double] representing the accuracy of the [latitude]
  /// and [longitude] properties, expressed in meters.
  ///
  double get accuracy => js_util.getProperty(this, 'accuracy');

  ///  Returns a [double] representing the position's latitude in
  /// decimal degrees.
  ///
  double get latitude => js_util.getProperty(this, 'latitude');

  ///  Returns a [double] representing the position's longitude in
  /// decimal degrees.
  ///
  double get longitude => js_util.getProperty(this, 'longitude');

  ///  Returns a [double] representing the position's altitude in
  /// meters, relative to sea level. This value can be [null] if the
  /// implementation cannot provide the data.
  ///
  double? get altitude => js_util.getProperty(this, 'altitude');

  ///  Returns a [double] representing the accuracy of the [altitude]
  /// expressed in meters. This value can be [null].
  ///
  double? get altitudeAccuracy => js_util.getProperty(this, 'altitudeAccuracy');

  ///  Returns a [double] representing the direction towards which the
  /// device is facing. This value, specified in degrees, indicates how
  /// far off from heading true north the device is. [0] degrees
  /// represents true north, and the direction is determined clockwise
  /// (which means that east is [90] degrees and west is [270]
  /// degrees). If [speed] is [0], is [Object]. If the device is unable
  /// to provide information, this value is [null].
  ///
  double? get heading => js_util.getProperty(this, 'heading');

  ///  Returns a [double] representing the velocity of the device in
  /// meters per second. This value can be [null].
  ///
  double? get speed => js_util.getProperty(this, 'speed');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface represents the reason of an error occurring when
/// using the geolocating device.
@JS()
@staticInterop
class GeolocationPositionError {
  @JS('PERMISSION_DENIED')
  external static int get permissionDenied;

  @JS('POSITION_UNAVAILABLE')
  external static int get positionUnavailable;

  @JS('TIMEOUT')
  external static int get timeout;

  external GeolocationPositionError();
}

extension PropsGeolocationPositionError on GeolocationPositionError {
  ///  Returns an [int] representing the error code. The following
  /// values are possible:
  ///
  ///
  ///
  ///      Value
  ///      Associated constant
  ///      Description
  ///
  ///
  ///
  ///
  ///      [1]
  ///      [PERMISSION_DENIED]
  ///       The acquisition of the geolocation information failed
  /// because the page didn't have the permission to do it.
  ///
  ///
  ///      [2]
  ///      [POSITION_UNAVAILABLE]
  ///       The acquisition of the geolocation failed because at least
  /// one internal source of position returned an internal error.
  ///
  ///
  ///      [3]
  ///      [TIMEOUT]
  ///       The time allowed to acquire the geolocation was reached
  /// before the information was obtained.
  ///
  ///
  ///
  ///
  int get code => js_util.getProperty(this, 'code');

  ///  Returns a human-readable [String] describing the details of the
  /// error. Specifications note that this is primarily intended for
  /// debugging use and not to be shown directly in a user interface.
  ///
  String get message => js_util.getProperty(this, 'message');
}
