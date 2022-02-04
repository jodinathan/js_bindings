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

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
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

  ///
  ///     Returns a [Future] that resolves with an array of
  /// [SerialPort] objects representing serial ports connected to
  ///    the host which the origin has permission to access.
  ///
  ///
  /// var promise = Serial.getPorts();
  ///
  Future<Iterable<SerialPort>> getPorts() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getPorts', []));

  ///  Returns a [Future] that resolves with an instance of
  /// [SerialPort] representing the device chosen by the user or
  /// rejects if no device was selected.
  ///   This method must be called with user activation.
  ///
  /// var promise = Serial.requestPort([options]);
  ///
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

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
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

  ///  Returns a [ReadableStream] for receiving data from the device
  /// connected to the port.
  ///
  ReadableStream get readable => js_util.getProperty(this, 'readable');

  ///  Returns a [WritableStream] for sending data to the device
  /// connected to the port.
  ///
  WritableStream get writable => js_util.getProperty(this, 'writable');

  ///  Returns a [Future] that resolves with an object containing
  /// properties of the port.
  ///
  /// var promise = SerialPort.getInfo();
  ///
  SerialPortInfo getInfo() => js_util.callMethod(this, 'getInfo', []);

  ///  Returns a [Future] that resolves when the port is opened. By
  /// default the port is opened with 8 data bits, 1 stop bit and no
  /// parity checking.
  ///
  /// var promise = SerialPort.open(options);
  ///
  Future<Object> open(

          /// An object with any of the following values:
          ///
          ///    [baudRate]
          ///
          ///      A positive, non-zero value indicating the baud rate at which
          /// serial communication should be established.
          ///
          ///    [bufferSize]Optional
          ///
          ///      An unsigned long integer indicating the size of the read and
          /// write buffers that are to be established. If not passed, defaults
          /// to 255.
          ///
          ///    [dataBits]Optional
          ///
          ///      An integer value of 7 or 8 indicating the number of data
          /// bits per frame. If not passed, defaults to 8.
          ///
          ///    [flowControl]Optional
          ///
          ///      The flow control type, either ["none"] or ["hardware"]. The
          /// default value is ["none:].
          ///
          ///    [parity]Optional
          ///
          ///      The parity mode, either ["none"], ["even"], or ["odd"]. The
          /// default value is ["none"].
          ///
          ///    [stopBits]Optional
          ///
          ///      An integer value of 1 or 2 indicating the number of stop
          /// bits at the end of the frame. If not passed, defaults to 1.
          ///
          ///
          ///
          SerialOptions options) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'open', [options]));

  ///  Sets control signals on the port and returns a [Future] that
  /// resolves when they are set.
  ///
  /// var promise = SerialPort.setSignals(options);
  ///
  Future<Object> setSignals([SerialOutputSignals? signals]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'setSignals', [signals]));

  ///  Returns a [Future] that resolves with an object containing the
  /// current state of the port's control signals.
  ///
  /// var promise = SerialPort.getSignals();
  ///
  Future<SerialInputSignals> getSignals() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getSignals', []));

  /// Returns a [Future] that resolves when the port closes.
  ///
  /// var promise = SerialPort.close();
  ///
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
