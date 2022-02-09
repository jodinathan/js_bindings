/// Compute Pressure API
///
/// https://wicg.github.io/compute-pressure/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library compute_pressure;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum ComputePressureTarget { cpu }

@JS()
@staticInterop
class ComputePressureObserver {
  external ComputePressureObserver(ComputePressureUpdateCallback callback);
}

extension PropsComputePressureObserver on ComputePressureObserver {
  Object observe(ComputePressureTarget target,
          [ComputePressureObserverOptions? options]) =>
      js_util.callMethod(this, 'observe', [target.name, options]);

  Object unobserve(ComputePressureTarget target) =>
      js_util.callMethod(this, 'unobserve', [target.name]);

  Object disconnect() => js_util.callMethod(this, 'disconnect', []);

  Iterable<ComputePressureEntry> takeRecords() =>
      js_util.callMethod(this, 'takeRecords', []);

  external static Iterable<String> get supportedTargetTypes;
}

@anonymous
@JS()
@staticInterop
class ComputePressureEntry {
  external factory ComputePressureEntry(
      {required double cpuSpeed,
      required double cpuUtilization,
      required ComputePressureObserverOptions options});
}

extension PropsComputePressureEntry on ComputePressureEntry {
  double get cpuSpeed => js_util.getProperty(this, 'cpuSpeed');
  set cpuSpeed(double newValue) {
    js_util.setProperty(this, 'cpuSpeed', newValue);
  }

  double get cpuUtilization => js_util.getProperty(this, 'cpuUtilization');
  set cpuUtilization(double newValue) {
    js_util.setProperty(this, 'cpuUtilization', newValue);
  }

  ComputePressureObserverOptions get options =>
      js_util.getProperty(this, 'options');
  set options(ComputePressureObserverOptions newValue) {
    js_util.setProperty(this, 'options', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ComputePressureObserverOptions {
  external factory ComputePressureObserverOptions(
      {Iterable<double>? cpuUtilizationThresholds = const [],
      Iterable<double>? cpuSpeedThresholds = const []});
}

extension PropsComputePressureObserverOptions
    on ComputePressureObserverOptions {
  Iterable<double> get cpuUtilizationThresholds =>
      js_util.getProperty(this, 'cpuUtilizationThresholds');
  set cpuUtilizationThresholds(Iterable<double> newValue) {
    js_util.setProperty(this, 'cpuUtilizationThresholds', newValue);
  }

  Iterable<double> get cpuSpeedThresholds =>
      js_util.getProperty(this, 'cpuSpeedThresholds');
  set cpuSpeedThresholds(Iterable<double> newValue) {
    js_util.setProperty(this, 'cpuSpeedThresholds', newValue);
  }
}
