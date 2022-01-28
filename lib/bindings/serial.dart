/// Web Serial API
///
/// https://wicg.github.io/serial/
@JS('window')
@staticInterop
library serial;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
dom
streams */

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
@JS()
@staticInterop
class Serial implements EventTarget {
  external factory Serial();
}

extension PropsSerial on Serial {
  external EventHandlerNonNull? get onconnect;
  external set onconnect(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondisconnect;
  external set ondisconnect(EventHandlerNonNull? newValue);

  ///
  ///     Returns a [Promise] that resolves with an array of
  /// [SerialPort] objects representing serial ports connected to
  ///    the host which the origin has permission to access.
  ///
  ///
  /// var promise = Serial.getPorts();
  ///
  external Iterable<Promise<SerialPort>> getPorts();

  ///  Returns a [Promise] that resolves with an instance of
  /// [SerialPort] representing the device chosen by the user or
  /// rejects if no device was selected.
  ///   This method must be called with user activation.
  ///
  /// var promise = Serial.requestPort([options]);
  ///
  external Promise<SerialPort> requestPort([SerialPortRequestOptions? options]);
}

@anonymous
@JS()
@staticInterop
class SerialPortRequestOptions {
  external factory SerialPortRequestOptions(
      {Iterable<SerialPortFilter> filters});
}

extension PropsSerialPortRequestOptions on SerialPortRequestOptions {
  external Iterable<SerialPortFilter> get filters;
  external set filters(Iterable<SerialPortFilter> newValue);
}

@anonymous
@JS()
@staticInterop
class SerialPortFilter {
  external factory SerialPortFilter({int usbVendorId, int usbProductId});
}

extension PropsSerialPortFilter on SerialPortFilter {
  external int get usbVendorId;
  external set usbVendorId(int newValue);
  external int get usbProductId;
  external set usbProductId(int newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
@JS()
@staticInterop
class SerialPort implements EventTarget {
  external factory SerialPort();
}

extension PropsSerialPort on SerialPort {
  external EventHandlerNonNull? get onconnect;
  external set onconnect(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondisconnect;
  external set ondisconnect(EventHandlerNonNull? newValue);

  ///  Returns a [ReadableStream] for receiving data from the device
  /// connected to the port.
  ///
  external ReadableStream get readable;

  ///  Returns a [WritableStream] for sending data to the device
  /// connected to the port.
  ///
  external WritableStream get writable;

  ///  Returns a [Promise] that resolves with an object containing
  /// properties of the port.
  ///
  /// var promise = SerialPort.getInfo();
  ///
  external SerialPortInfo getInfo();

  ///  Returns a [Promise] that resolves when the port is opened. By
  /// default the port is opened with 8 data bits, 1 stop bit and no
  /// parity checking.
  ///
  /// var promise = SerialPort.open(options);
  ///
  external Promise<Object> open(SerialOptions options);

  ///  Sets control signals on the port and returns a [Promise] that
  /// resolves when they are set.
  ///
  /// var promise = SerialPort.setSignals(options);
  ///
  external Promise<Object> setSignals([SerialOutputSignals? signals]);

  ///  Returns a [Promise] that resolves with an object containing the
  /// current state of the port's control signals.
  ///
  /// var promise = SerialPort.getSignals();
  ///
  external Promise<SerialInputSignals> getSignals();

  /// Returns a [Promise] that resolves when the port closes.
  ///
  /// var promise = SerialPort.close();
  ///
  external Promise<Object> close();
}

@anonymous
@JS()
@staticInterop
class SerialPortInfo {
  external factory SerialPortInfo({int usbVendorId, int usbProductId});
}

extension PropsSerialPortInfo on SerialPortInfo {
  external int get usbVendorId;
  external set usbVendorId(int newValue);
  external int get usbProductId;
  external set usbProductId(int newValue);
}

@anonymous
@JS()
@staticInterop
class SerialOptions {
  external factory SerialOptions(
      {int baudRate,
      int dataBits = 8,
      int stopBits = 1,
      ParityType parity = ParityType.none,
      int bufferSize = 255,
      FlowControlType flowControl = FlowControlType.none});
}

extension PropsSerialOptions on SerialOptions {
  external int get baudRate;
  external set baudRate(int newValue);
  external int get dataBits;
  external set dataBits(int newValue);
  external int get stopBits;
  external set stopBits(int newValue);
  external ParityType get parity;
  external set parity(ParityType newValue);
  external int get bufferSize;
  external set bufferSize(int newValue);
  external FlowControlType get flowControl;
  external set flowControl(FlowControlType newValue);
}

enum ParityType { none, even, odd }

enum FlowControlType { none, hardware }

@anonymous
@JS()
@staticInterop
class SerialOutputSignals {
  external factory SerialOutputSignals(
      {bool dataTerminalReady, bool requestToSend, bool mBreak});
}

extension PropsSerialOutputSignals on SerialOutputSignals {
  external bool get dataTerminalReady;
  external set dataTerminalReady(bool newValue);
  external bool get requestToSend;
  external set requestToSend(bool newValue);
  @JS('break')
  @staticInterop
  external bool get mBreak;
  external set mBreak(bool newValue);
}

@anonymous
@JS()
@staticInterop
class SerialInputSignals {
  external factory SerialInputSignals(
      {bool dataCarrierDetect,
      bool clearToSend,
      bool ringIndicator,
      bool dataSetReady});
}

extension PropsSerialInputSignals on SerialInputSignals {
  external bool get dataCarrierDetect;
  external set dataCarrierDetect(bool newValue);
  external bool get clearToSend;
  external set clearToSend(bool newValue);
  external bool get ringIndicator;
  external set ringIndicator(bool newValue);
  external bool get dataSetReady;
  external set dataSetReady(bool newValue);
}
