/// Web Serial API
///
/// https://wicg.github.io/serial/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library serial;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class Serial implements EventTarget {
  external Serial();
}

extension PropsSerial on Serial {
  EventHandlerNonNull? get onconnect => js_util.getProperty(this, 'onconnect');
  set onconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onconnect', newValue);
  }

  EventHandlerNonNull? get ondisconnect =>
      js_util.getProperty(this, 'ondisconnect');
  set ondisconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondisconnect', newValue);
  }

  Future<Iterable<SerialPort>> getPorts() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getPorts', []));

  Future<SerialPort> requestPort([SerialPortRequestOptions? options]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'requestPort', [options]));
}

@anonymous
@JS()
@staticInterop
class SerialPortRequestOptions {
  external factory SerialPortRequestOptions(
      {required Iterable<SerialPortFilter> filters});
}

extension PropsSerialPortRequestOptions on SerialPortRequestOptions {
  Iterable<SerialPortFilter> get filters =>
      js_util.getProperty(this, 'filters');
  set filters(Iterable<SerialPortFilter> newValue) {
    js_util.setProperty(this, 'filters', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class SerialPortFilter {
  external factory SerialPortFilter(
      {required int usbVendorId, required int usbProductId});
}

extension PropsSerialPortFilter on SerialPortFilter {
  int get usbVendorId => js_util.getProperty(this, 'usbVendorId');
  set usbVendorId(int newValue) {
    js_util.setProperty(this, 'usbVendorId', newValue);
  }

  int get usbProductId => js_util.getProperty(this, 'usbProductId');
  set usbProductId(int newValue) {
    js_util.setProperty(this, 'usbProductId', newValue);
  }
}

@JS()
@staticInterop
class SerialPort implements EventTarget {
  external SerialPort();
}

extension PropsSerialPort on SerialPort {
  EventHandlerNonNull? get onconnect => js_util.getProperty(this, 'onconnect');
  set onconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onconnect', newValue);
  }

  EventHandlerNonNull? get ondisconnect =>
      js_util.getProperty(this, 'ondisconnect');
  set ondisconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondisconnect', newValue);
  }

  ReadableStream get readable => js_util.getProperty(this, 'readable');
  WritableStream get writable => js_util.getProperty(this, 'writable');
  SerialPortInfo getInfo() => js_util.callMethod(this, 'getInfo', []);

  Future<Object> open(SerialOptions options) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'open', [options]));

  Future<Object> setSignals([SerialOutputSignals? signals]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'setSignals', [signals]));

  Future<SerialInputSignals> getSignals() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getSignals', []));

  Future<Object> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));
}

@anonymous
@JS()
@staticInterop
class SerialPortInfo {
  external factory SerialPortInfo(
      {required int usbVendorId, required int usbProductId});
}

extension PropsSerialPortInfo on SerialPortInfo {
  int get usbVendorId => js_util.getProperty(this, 'usbVendorId');
  set usbVendorId(int newValue) {
    js_util.setProperty(this, 'usbVendorId', newValue);
  }

  int get usbProductId => js_util.getProperty(this, 'usbProductId');
  set usbProductId(int newValue) {
    js_util.setProperty(this, 'usbProductId', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class SerialOptions {
  external factory SerialOptions._(
      {required int baudRate,
      int? dataBits = 8,
      int? stopBits = 1,
      String? parity,
      int? bufferSize = 255,
      String? flowControl});

  factory SerialOptions(
          {required int baudRate,
          int? dataBits = 8,
          int? stopBits = 1,
          ParityType? parity = ParityType.none,
          int? bufferSize = 255,
          FlowControlType? flowControl = FlowControlType.none}) =>
      SerialOptions._(
          baudRate: baudRate,
          dataBits: dataBits,
          stopBits: stopBits,
          parity: parity?.name,
          bufferSize: bufferSize,
          flowControl: flowControl?.name);
}

extension PropsSerialOptions on SerialOptions {
  int get baudRate => js_util.getProperty(this, 'baudRate');
  set baudRate(int newValue) {
    js_util.setProperty(this, 'baudRate', newValue);
  }

  int get dataBits => js_util.getProperty(this, 'dataBits');
  set dataBits(int newValue) {
    js_util.setProperty(this, 'dataBits', newValue);
  }

  int get stopBits => js_util.getProperty(this, 'stopBits');
  set stopBits(int newValue) {
    js_util.setProperty(this, 'stopBits', newValue);
  }

  ParityType get parity =>
      ParityType.values.byName(js_util.getProperty(this, 'parity'));
  set parity(ParityType newValue) {
    js_util.setProperty(this, 'parity', newValue.name);
  }

  int get bufferSize => js_util.getProperty(this, 'bufferSize');
  set bufferSize(int newValue) {
    js_util.setProperty(this, 'bufferSize', newValue);
  }

  FlowControlType get flowControl =>
      FlowControlType.values.byName(js_util.getProperty(this, 'flowControl'));
  set flowControl(FlowControlType newValue) {
    js_util.setProperty(this, 'flowControl', newValue.name);
  }
}

enum ParityType { none, even, odd }

enum FlowControlType { none, hardware }

@anonymous
@JS()
@staticInterop
class SerialOutputSignals {
  external factory SerialOutputSignals(
      {required bool dataTerminalReady,
      required bool requestToSend,
      required bool mBreak});
}

extension PropsSerialOutputSignals on SerialOutputSignals {
  bool get dataTerminalReady => js_util.getProperty(this, 'dataTerminalReady');
  set dataTerminalReady(bool newValue) {
    js_util.setProperty(this, 'dataTerminalReady', newValue);
  }

  bool get requestToSend => js_util.getProperty(this, 'requestToSend');
  set requestToSend(bool newValue) {
    js_util.setProperty(this, 'requestToSend', newValue);
  }

  @JS('break')
  @staticInterop
  bool get mBreak => js_util.getProperty(this, 'break');
  set mBreak(bool newValue) {
    js_util.setProperty(this, 'break', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class SerialInputSignals {
  external factory SerialInputSignals(
      {required bool dataCarrierDetect,
      required bool clearToSend,
      required bool ringIndicator,
      required bool dataSetReady});
}

extension PropsSerialInputSignals on SerialInputSignals {
  bool get dataCarrierDetect => js_util.getProperty(this, 'dataCarrierDetect');
  set dataCarrierDetect(bool newValue) {
    js_util.setProperty(this, 'dataCarrierDetect', newValue);
  }

  bool get clearToSend => js_util.getProperty(this, 'clearToSend');
  set clearToSend(bool newValue) {
    js_util.setProperty(this, 'clearToSend', newValue);
  }

  bool get ringIndicator => js_util.getProperty(this, 'ringIndicator');
  set ringIndicator(bool newValue) {
    js_util.setProperty(this, 'ringIndicator', newValue);
  }

  bool get dataSetReady => js_util.getProperty(this, 'dataSetReady');
  set dataSetReady(bool newValue) {
    js_util.setProperty(this, 'dataSetReady', newValue);
  }
}
