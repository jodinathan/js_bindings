/// DeviceOrientation Event Specification
///
/// https://w3c.github.io/deviceorientation/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library orientation_event;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The provides web developers with information from the physical
/// orientation of the device running the web page.
@experimental
@JS()
@staticInterop
class DeviceOrientationEvent implements Event {
  external DeviceOrientationEvent(String type,
      [DeviceOrientationEventInit? eventInitDict]);
}

extension PropsDeviceOrientationEvent on DeviceOrientationEvent {
  ///  A number representing the motion of the device around the z
  /// axis, express in degrees with values ranging from 0 (inclusive)
  /// to 360 (exclusive).
  ///
  double? get alpha => js_util.getProperty(this, 'alpha');

  ///  A number representing the motion of the device around the x
  /// axis, express in degrees with values ranging from -180
  /// (inclusive) to 180 (exclusive). This represents a front to back
  /// motion of the device.
  ///
  double? get beta => js_util.getProperty(this, 'beta');

  ///  A number representing the motion of the device around the y
  /// axis, express in degrees with values ranging from -90 (inclusive)
  /// to 90 (exclusive). This represents a left to right motion of the
  /// device.
  ///
  double? get gamma => js_util.getProperty(this, 'gamma');

  ///  A boolean that indicates whether or not the device is providing
  /// orientation data absolutely.
  ///
  bool get absolute => js_util.getProperty(this, 'absolute');
  static Future<PermissionState> requestPermission() => js_util.promiseToFuture(
      js_util.callMethod(DeviceOrientationEvent, 'requestPermission', []));
}

@anonymous
@JS()
@staticInterop
class DeviceOrientationEventInit implements EventInit {
  external factory DeviceOrientationEventInit(
      {double? alpha, double? beta, double? gamma, bool absolute = false});
}

extension PropsDeviceOrientationEventInit on DeviceOrientationEventInit {
  double? get alpha => js_util.getProperty(this, 'alpha');
  set alpha(double? newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }

  double? get beta => js_util.getProperty(this, 'beta');
  set beta(double? newValue) {
    js_util.setProperty(this, 'beta', newValue);
  }

  double? get gamma => js_util.getProperty(this, 'gamma');
  set gamma(double? newValue) {
    js_util.setProperty(this, 'gamma', newValue);
  }

  bool get absolute => js_util.getProperty(this, 'absolute');
  set absolute(bool newValue) {
    js_util.setProperty(this, 'absolute', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  A object provides information about the amount of acceleration
/// the device is experiencing along all three axes.
@experimental
@JS()
@staticInterop
class DeviceMotionEventAcceleration {
  external DeviceMotionEventAcceleration();
}

extension PropsDeviceMotionEventAcceleration on DeviceMotionEventAcceleration {
  /// The amount of acceleration along the X axis. Read only.
  ///
  double? get x => js_util.getProperty(this, 'x');

  /// The amount of acceleration along the Y axis. Read only.
  ///
  double? get y => js_util.getProperty(this, 'y');

  /// The amount of acceleration along the Z axis. Read only.
  ///
  double? get z => js_util.getProperty(this, 'z');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
/// Experimental: This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  A object provides information about the rate at which the device
/// is rotating around all three axes.
@experimental
@JS()
@staticInterop
class DeviceMotionEventRotationRate {
  external DeviceMotionEventRotationRate();
}

extension PropsDeviceMotionEventRotationRate on DeviceMotionEventRotationRate {
  /// The amount of rotation around the Z axis, in degrees per second.
  ///
  double? get alpha => js_util.getProperty(this, 'alpha');

  /// The amount of rotation around the X axis, in degrees per second.
  ///
  double? get beta => js_util.getProperty(this, 'beta');

  /// The amount of rotation around the Y axis, in degrees per second.
  ///
  double? get gamma => js_util.getProperty(this, 'gamma');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The provides web developers with information about the speed of
/// changes for the device's position and orientation.
///
///   Warning: Currently, Firefox and Chrome do not handle the
/// coordinates the same way. Take care about this while using them.
///
@experimental
@JS()
@staticInterop
class DeviceMotionEvent implements Event {
  external DeviceMotionEvent(String type,
      [DeviceMotionEventInit? eventInitDict]);
}

extension PropsDeviceMotionEvent on DeviceMotionEvent {
  ///  An object giving the acceleration of the device on the three
  /// axis X, Y and Z. Acceleration is expressed in m/s².
  ///
  DeviceMotionEventAcceleration? get acceleration =>
      js_util.getProperty(this, 'acceleration');

  ///  An object giving the acceleration of the device on the three
  /// axis X, Y and Z with the effect of gravity. Acceleration is
  /// expressed in m/s².
  ///
  DeviceMotionEventAcceleration? get accelerationIncludingGravity =>
      js_util.getProperty(this, 'accelerationIncludingGravity');

  ///  An object giving the rate of change of the device's orientation
  /// on the three orientation axis alpha, beta and gamma. Rotation
  /// rate is expressed in degrees per seconds.
  ///
  DeviceMotionEventRotationRate? get rotationRate =>
      js_util.getProperty(this, 'rotationRate');

  ///  A number representing the interval of time, in milliseconds, at
  /// which data is obtained from the device.
  ///
  double get interval => js_util.getProperty(this, 'interval');
  static Future<PermissionState> requestPermission() => js_util.promiseToFuture(
      js_util.callMethod(DeviceMotionEvent, 'requestPermission', []));
}

@anonymous
@JS()
@staticInterop
class DeviceMotionEventAccelerationInit {
  external factory DeviceMotionEventAccelerationInit(
      {double? x, double? y, double? z});
}

extension PropsDeviceMotionEventAccelerationInit
    on DeviceMotionEventAccelerationInit {
  double? get x => js_util.getProperty(this, 'x');
  set x(double? newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  double? get y => js_util.getProperty(this, 'y');
  set y(double? newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

  double? get z => js_util.getProperty(this, 'z');
  set z(double? newValue) {
    js_util.setProperty(this, 'z', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class DeviceMotionEventRotationRateInit {
  external factory DeviceMotionEventRotationRateInit(
      {double? alpha, double? beta, double? gamma});
}

extension PropsDeviceMotionEventRotationRateInit
    on DeviceMotionEventRotationRateInit {
  double? get alpha => js_util.getProperty(this, 'alpha');
  set alpha(double? newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }

  double? get beta => js_util.getProperty(this, 'beta');
  set beta(double? newValue) {
    js_util.setProperty(this, 'beta', newValue);
  }

  double? get gamma => js_util.getProperty(this, 'gamma');
  set gamma(double? newValue) {
    js_util.setProperty(this, 'gamma', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class DeviceMotionEventInit implements EventInit {
  external factory DeviceMotionEventInit(
      {DeviceMotionEventAccelerationInit acceleration,
      DeviceMotionEventAccelerationInit accelerationIncludingGravity,
      DeviceMotionEventRotationRateInit rotationRate,
      double interval = 0});
}

extension PropsDeviceMotionEventInit on DeviceMotionEventInit {
  DeviceMotionEventAccelerationInit get acceleration =>
      js_util.getProperty(this, 'acceleration');
  set acceleration(DeviceMotionEventAccelerationInit newValue) {
    js_util.setProperty(this, 'acceleration', newValue);
  }

  DeviceMotionEventAccelerationInit get accelerationIncludingGravity =>
      js_util.getProperty(this, 'accelerationIncludingGravity');
  set accelerationIncludingGravity(DeviceMotionEventAccelerationInit newValue) {
    js_util.setProperty(this, 'accelerationIncludingGravity', newValue);
  }

  DeviceMotionEventRotationRateInit get rotationRate =>
      js_util.getProperty(this, 'rotationRate');
  set rotationRate(DeviceMotionEventRotationRateInit newValue) {
    js_util.setProperty(this, 'rotationRate', newValue);
  }

  double get interval => js_util.getProperty(this, 'interval');
  set interval(double newValue) {
    js_util.setProperty(this, 'interval', newValue);
  }
}
