/// Compute Pressure Level 1
///
/// https://wicg.github.io/compute-pressure/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library compute_pressure;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum PressureState {
  nominal('nominal'),
  fair('fair'),
  serious('serious'),
  critical('critical');

  final String value;
  static PressureState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<PressureState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const PressureState(this.value);
}

enum PressureFactor {
  thermal('thermal'),
  powerSupply('power-supply');

  final String value;
  static PressureFactor fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<PressureFactor> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const PressureFactor(this.value);
}

enum PressureSource {
  cpu('cpu');

  final String value;
  static PressureSource fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<PressureSource> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const PressureSource(this.value);
}

@JS()
@staticInterop
class PressureObserver {
  external factory PressureObserver(PressureUpdateCallback callback,
      [PressureObserverOptions? options]);
  external static Future<PermissionState> requestPermission();
}

extension PropsPressureObserver on PressureObserver {
  void observe(PressureSource source) =>
      js_util.callMethod(this, 'observe', [source.value]);

  void unobserve(PressureSource source) =>
      js_util.callMethod(this, 'unobserve', [source.value]);

  void disconnect() => js_util.callMethod(this, 'disconnect', []);

  Iterable<PressureRecord> takeRecords() =>
      js_util.callMethod(this, 'takeRecords', []);

  external static Iterable<PressureSource> get supportedSources;
}

@anonymous
@JS()
@staticInterop
class PressureRecord {
  external factory PressureRecord._(
      {String? source, String? state, Iterable<String>? factors, double? time});

  factory PressureRecord(
          {PressureSource? source,
          PressureState? state,
          Iterable<PressureFactor>? factors,
          double? time}) =>
      PressureRecord._(
          source: source?.value,
          state: state?.value,
          factors: factors?.map((e) => e.value),
          time: time);
}

extension PropsPressureRecord on PressureRecord {
  PressureSource get source =>
      PressureSource.fromValue(js_util.getProperty(this, 'source'));
  set source(PressureSource newValue) {
    js_util.setProperty(this, 'source', newValue.value);
  }

  PressureState get state =>
      PressureState.fromValue(js_util.getProperty(this, 'state'));
  set state(PressureState newValue) {
    js_util.setProperty(this, 'state', newValue.value);
  }

  Iterable<PressureFactor> get factors =>
      PressureFactor.fromValues(js_util.getProperty(this, 'factors'));
  set factors(Iterable<PressureFactor> newValue) {
    js_util.setProperty(this, 'factors', newValue.map((e) => e.value));
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
  external factory PressureObserverOptions({double? samplerate});
}

extension PropsPressureObserverOptions on PressureObserverOptions {
  double get samplerate => js_util.getProperty(this, 'samplerate');
  set samplerate(double newValue) {
    js_util.setProperty(this, 'samplerate', newValue);
  }
}
