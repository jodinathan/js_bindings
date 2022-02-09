/// Geolocation API
///
/// https://w3c.github.io/geolocation-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library geolocation;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class Geolocation {
  external Geolocation();
}

extension PropsGeolocation on Geolocation {
  Object getCurrentPosition(PositionCallback successCallback,
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

@JS()
@staticInterop
class GeolocationPosition {
  external GeolocationPosition();
}

extension PropsGeolocationPosition on GeolocationPosition {
  GeolocationCoordinates get coords => js_util.getProperty(this, 'coords');
  int get timestamp => js_util.getProperty(this, 'timestamp');
}

@JS()
@staticInterop
class GeolocationCoordinates {
  external GeolocationCoordinates();
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
  int get code => js_util.getProperty(this, 'code');
  String get message => js_util.getProperty(this, 'message');
}
