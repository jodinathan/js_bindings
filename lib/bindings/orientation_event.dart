/// DeviceOrientation Event Specification
///
/// https://w3c.github.io/deviceorientation/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library orientation_event;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///
///
///   The object provides web developers with information from the
/// physical orientation of the device running the web page.
///
///
///
///
///    Event
///
///
///
///
///
///
///
///    DeviceOrientationEvent
///
///
@JS()
@staticInterop
class DeviceOrientationEvent implements Event {
  external factory DeviceOrientationEvent(String type,
      [DeviceOrientationEventInit? eventInitDict]);
}

extension PropsDeviceOrientationEvent on DeviceOrientationEvent {
  double? get alpha => js_util.getProperty(this, 'alpha');
  double? get beta => js_util.getProperty(this, 'beta');
  double? get gamma => js_util.getProperty(this, 'gamma');
  bool get absolute => js_util.getProperty(this, 'absolute');
  static Future<PermissionState> requestPermission() => js_util.promiseToFuture(
      js_util.callMethod(DeviceOrientationEvent, 'requestPermission', []));
}

@anonymous
@JS()
@staticInterop
class DeviceOrientationEventInit implements EventInit {
  external factory DeviceOrientationEventInit(
      {double? alpha, double? beta, double? gamma, bool? absolute = false});
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
/// contexts (HTTPS), in some or all supporting browsers.
///  The object provides information about the amount of acceleration
/// the device is experiencing along all three axes.
@JS()
@staticInterop
class DeviceMotionEventAcceleration {
  external factory DeviceMotionEventAcceleration();
}

extension PropsDeviceMotionEventAcceleration on DeviceMotionEventAcceleration {
  double? get x => js_util.getProperty(this, 'x');
  double? get y => js_util.getProperty(this, 'y');
  double? get z => js_util.getProperty(this, 'z');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  A object provides information about the rate at which the device
/// is rotating around all three axes.
@JS()
@staticInterop
class DeviceMotionEventRotationRate {
  external factory DeviceMotionEventRotationRate();
}

extension PropsDeviceMotionEventRotationRate on DeviceMotionEventRotationRate {
  double? get alpha => js_util.getProperty(this, 'alpha');
  double? get beta => js_util.getProperty(this, 'beta');
  double? get gamma => js_util.getProperty(this, 'gamma');
}

///  The interface provides web developers with information about the
/// speed of changes for the device's position and orientation.
///
///   Warning: Currently, Firefox and Chrome do not handle the
/// coordinates the same way. Take care about this while using them.
///
///
///
///
///    Event
///
///
///
///
///
///
///
///    DeviceMotionEvent
///
///
@JS()
@staticInterop
class DeviceMotionEvent implements Event {
  external factory DeviceMotionEvent(String type,
      [DeviceMotionEventInit? eventInitDict]);
}

extension PropsDeviceMotionEvent on DeviceMotionEvent {
  DeviceMotionEventAcceleration? get acceleration =>
      js_util.getProperty(this, 'acceleration');
  DeviceMotionEventAcceleration? get accelerationIncludingGravity =>
      js_util.getProperty(this, 'accelerationIncludingGravity');
  DeviceMotionEventRotationRate? get rotationRate =>
      js_util.getProperty(this, 'rotationRate');
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
      {required DeviceMotionEventAccelerationInit acceleration,
      required DeviceMotionEventAccelerationInit accelerationIncludingGravity,
      required DeviceMotionEventRotationRateInit rotationRate,
      double? interval = 0});
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
