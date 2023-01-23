/// Compute Pressure Level 1
///
/// https://w3c.github.io/compute-pressure/

// ignore_for_file: unused_import

@JS('window')
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
}

extension PropsPressureObserver on PressureObserver {
  Future<void> observe(PressureSource source) => js_util
      .promiseToFuture(js_util.callMethod(this, 'observe', [source.value]));

  void unobserve(PressureSource source) =>
      js_util.callMethod(this, 'unobserve', [source.value]);

  void disconnect() => js_util.callMethod(this, 'disconnect', []);

  Iterable<PressureRecord> takeRecords() =>
      js_util.callMethod(this, 'takeRecords', []);

  external static Iterable<PressureSource> get supportedSources;
}

@JS()
@staticInterop
class PressureRecord {
  external factory PressureRecord();
}

extension PropsPressureRecord on PressureRecord {
  PressureSource get source =>
      PressureSource.fromValue(js_util.getProperty(this, 'source'));
  PressureState get state =>
      PressureState.fromValue(js_util.getProperty(this, 'state'));
  Iterable<PressureFactor> get factors =>
      PressureFactor.fromValues(js_util.getProperty(this, 'factors'));
  double get time => js_util.getProperty(this, 'time');
}

@anonymous
@JS()
@staticInterop
class PressureObserverOptions {
  external factory PressureObserverOptions({double? sampleRate = 1.0});
}

extension PropsPressureObserverOptions on PressureObserverOptions {
  double get sampleRate => js_util.getProperty(this, 'sampleRate');
  set sampleRate(double newValue) {
    js_util.setProperty(this, 'sampleRate', newValue);
  }
}
