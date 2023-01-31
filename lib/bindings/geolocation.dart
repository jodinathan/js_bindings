/// Geolocation API
///
/// https://w3c.github.io/geolocation-api/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library geolocation;

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
  external factory Geolocation();
}

extension PropsGeolocation on Geolocation {
  void getCurrentPosition(PositionCallback successCallback,
          [PositionErrorCallback? errorCallback, PositionOptions? options]) =>
      js_util.callMethod(this, 'getCurrentPosition', [
        allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback),
        options
      ]);

  int watchPosition(PositionCallback successCallback,
          [PositionErrorCallback? errorCallback, PositionOptions? options]) =>
      js_util.callMethod(this, 'watchPosition', [
        allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback),
        options
      ]);

  void clearWatch(int watchId) =>
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
  external factory GeolocationPosition();
}

extension PropsGeolocationPosition on GeolocationPosition {
  GeolocationCoordinates get coords => js_util.getProperty(this, 'coords');
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
  external factory GeolocationCoordinates();
}

extension PropsGeolocationCoordinates on GeolocationCoordinates {
  double get accuracy => js_util.getProperty(this, 'accuracy');
  double get latitude => js_util.getProperty(this, 'latitude');
  double get longitude => js_util.getProperty(this, 'longitude');
  double? get altitude => js_util.getProperty(this, 'altitude');
  double? get altitudeAccuracy => js_util.getProperty(this, 'altitudeAccuracy');
  double? get heading => js_util.getProperty(this, 'heading');
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

  external factory GeolocationPositionError();
}

extension PropsGeolocationPositionError on GeolocationPositionError {
  int get code => js_util.getProperty(this, 'code');
  String get message => js_util.getProperty(this, 'message');
}
