/// Geolocation API
///
/// https://w3c.github.io/geolocation-api/
@JS('window')
@staticInterop
library geolocation_a_p_i;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html */

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
  external factory Geolocation();
}

extension PropsGeolocation on Geolocation {
  ///  Determines the device's current location and gives back a
  /// [GeolocationPosition] object with the data.
  ///
  /// navigator.geolocation.getCurrentPosition(success, error, [options])
  ///
  external Object getCurrentPosition(PositionCallback successCallback,
      [PositionErrorCallback? errorCallback, PositionOptions? options]);

  ///  Returns a [long] value representing the newly established
  /// callback function to be invoked whenever the device location
  /// changes.
  ///
  /// navigator.geolocation.watchPosition(success)
  /// navigator.geolocation.watchPosition(success, error)
  /// navigator.geolocation.watchPosition(success, error, options)
  ///
  external int watchPosition(PositionCallback successCallback,
      [PositionErrorCallback? errorCallback, PositionOptions? options]);

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
  external Object clearWatch(int watchId);
}

@anonymous
@JS()
@staticInterop
class PositionOptions {
  external factory PositionOptions(
      {bool enableHighAccuracy = false,
      int timeout = 0xFFFFFFFF,
      int maximumAge = 0});
}

extension PropsPositionOptions on PositionOptions {
  external bool get enableHighAccuracy;
  external set enableHighAccuracy(bool newValue);
  external int get timeout;
  external set timeout(int newValue);
  external int get maximumAge;
  external set maximumAge(int newValue);
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
  external factory GeolocationPosition();
}

extension PropsGeolocationPosition on GeolocationPosition {
  ///  Returns a [GeolocationCoordinates] object defining the current
  /// location.
  ///
  external GeolocationCoordinates get coords;

  ///  Returns a [DOMTimeStamp] representing the time at which the
  /// location was retrieved.
  ///
  external int get timestamp;
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface represents the position and altitude of the device
/// on Earth, as well as the accuracy with which these properties are
/// calculated.
@JS()
@staticInterop
class GeolocationCoordinates {
  external factory GeolocationCoordinates();
}

extension PropsGeolocationCoordinates on GeolocationCoordinates {
  ///  Returns a [double] representing the accuracy of the [latitude]
  /// and [longitude] properties, expressed in meters.
  ///
  external double get accuracy;

  ///  Returns a [double] representing the position's latitude in
  /// decimal degrees.
  ///
  external double get latitude;

  ///  Returns a [double] representing the position's longitude in
  /// decimal degrees.
  ///
  external double get longitude;

  ///  Returns a [double] representing the position's altitude in
  /// meters, relative to sea level. This value can be [null] if the
  /// implementation cannot provide the data.
  ///
  external double? get altitude;

  ///  Returns a [double] representing the accuracy of the [altitude]
  /// expressed in meters. This value can be [null].
  ///
  external double? get altitudeAccuracy;

  ///  Returns a [double] representing the direction towards which the
  /// device is facing. This value, specified in degrees, indicates how
  /// far off from heading true north the device is. [0] degrees
  /// represents true north, and the direction is determined clockwise
  /// (which means that east is [90] degrees and west is [270]
  /// degrees). If [speed] is [0], is [NaN]. If the device is unable to
  /// provide information, this value is [null].
  ///
  external double? get heading;

  ///  Returns a [double] representing the velocity of the device in
  /// meters per second. This value can be [null].
  ///
  external double? get speed;
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface represents the reason of an error occurring when
/// using the geolocating device.
@JS()
@staticInterop
class GeolocationPositionError {
  external static int get PERMISSION_DENIED;
  external static int get POSITION_UNAVAILABLE;
  external static int get TIMEOUT;
  external factory GeolocationPositionError();
}

extension PropsGeolocationPositionError on GeolocationPositionError {
  ///  Returns an [unsigned short] representing the error code. The
  /// following values are possible:
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
  external int get code;

  ///  Returns a human-readable [DOMString] describing the details of
  /// the error. Specifications note that this is primarily intended
  /// for debugging use and not to be shown directly in a user
  /// interface.
  ///
  external String get message;
}
