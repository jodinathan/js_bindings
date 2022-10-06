/// Compute Pressure Level 1
///
/// https://wicg.github.io/compute-pressure/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library compute_pressure;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum PressureState { nominal, fair, serious, critical }

enum PressureFactor { thermal, powerSupply }

enum PressureSource { cpu }

@JS()
@staticInterop
class PressureObserver {
  external factory PressureObserver(PressureUpdateCallback callback,
      [PressureObserverOptions? options]);
}

extension PropsPressureObserver on PressureObserver {
  void observe(PressureSource source) =>
      js_util.callMethod(this, 'observe', [source.name]);

  void unobserve(PressureSource source) =>
      js_util.callMethod(this, 'unobserve', [source.name]);

  void disconnect() => js_util.callMethod(this, 'disconnect', []);

  Iterable<PressureRecord> takeRecords() =>
      js_util.callMethod(this, 'takeRecords', []);

  external static Iterable<PressureSource> get supportedSources;

  static Future<PermissionState> requestPermission() => js_util.promiseToFuture(
      js_util.callMethod(PressureObserver, 'requestPermission', []));
}

@anonymous
@JS()
@staticInterop
class PressureRecord {
  external factory PressureRecord._(
      {required String source,
      required String state,
      required Iterable<String> factors,
      required double time});

  factory PressureRecord(
          {required PressureSource source,
          required PressureState state,
          required Iterable<PressureFactor> factors,
          required double time}) =>
      PressureRecord._(
          source: source.name,
          state: state.name,
          factors: factors.names,
          time: time);
}

extension PropsPressureRecord on PressureRecord {
  PressureSource get source =>
      PressureSource.values.byName(js_util.getProperty(this, 'source'));
  set source(PressureSource newValue) {
    js_util.setProperty(this, 'source', newValue.name);
  }

  PressureState get state =>
      PressureState.values.byName(js_util.getProperty(this, 'state'));
  set state(PressureState newValue) {
    js_util.setProperty(this, 'state', newValue.name);
  }

  Iterable<PressureFactor> get factors =>
      PressureFactor.values.byNames(js_util.getProperty(this, 'factors'));
  set factors(Iterable<PressureFactor> newValue) {
    js_util.setProperty(this, 'factors', newValue.names);
  }

  double get time => js_util.getProperty(this, 'time');
  set time(double newValue) {
    js_util.setProperty(this, 'time', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PressureObserverOptions {
  external factory PressureObserverOptions({required double samplerate});
}

extension PropsPressureObserverOptions on PressureObserverOptions {
  double get samplerate => js_util.getProperty(this, 'samplerate');
  set samplerate(double newValue) {
    js_util.setProperty(this, 'samplerate', newValue);
  }
}
