/// Web Serial API
///
/// https://wicg.github.io/serial/
@JS('window')
library serial;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';
import 'streams.dart';

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
@JS()
class Serial extends EventTarget {
  external EventHandlerNonNull? get onconnect;
  external set onconnect(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondisconnect;
  external set ondisconnect(EventHandlerNonNull? newValue);

  ///  Returns a [Promise] that resolves with an array of [SerialPort]
  /// objects representing serial ports connected to
  ///   the host which the origin has permission to access.
  ///
  /// var promise = Serial.getPorts();
  external Iterable<Promise<SerialPort>> getPorts();

  ///  Returns a [Promise] that resolves with an instance of
  /// [SerialPort] representing the device chosen by the user or
  /// rejects if no device was selected.
  ///   This method must be called with user activation.
  ///
  /// var promise = Serial.requestPort([options]);
  external Promise<SerialPort> requestPort([SerialPortRequestOptions? options]);

  external factory Serial();
}

@anonymous
@JS()
class SerialPortRequestOptions {
  external Iterable<SerialPortFilter> get filters;
  external set filters(Iterable<SerialPortFilter> newValue);

  external factory SerialPortRequestOptions(
      {Iterable<SerialPortFilter> filters});
}

@anonymous
@JS()
class SerialPortFilter {
  external int get usbVendorId;
  external set usbVendorId(int newValue);
  external int get usbProductId;
  external set usbProductId(int newValue);

  external factory SerialPortFilter({int usbVendorId, int usbProductId});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
@JS()
class SerialPort extends EventTarget {
  external EventHandlerNonNull? get onconnect;
  external set onconnect(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondisconnect;
  external set ondisconnect(EventHandlerNonNull? newValue);

  ///  Returns a [ReadableStream] for receiving data from the device
  /// connected to the port.
  external ReadableStream get readable;

  ///  Returns a [WritableStream] for sending data to the device
  /// connected to the port.
  external WritableStream get writable;

  ///  Returns a [Promise] that resolves with an object containing
  /// properties of the port.
  /// var promise = SerialPort.getInfo();
  external SerialPortInfo getInfo();

  ///  Returns a [Promise] that resolves when the port is opened. By
  /// default the port is opened with 8 data bits, 1 stop bit and no
  /// parity checking.
  /// var promise = SerialPort.open(options);
  external Promise<Object> open(SerialOptions options);

  ///  Sets control signals on the port and returns a [Promise] that
  /// resolves when they are set.
  /// var promise = SerialPort.setSignals(options);
  external Promise<Object> setSignals([SerialOutputSignals? signals]);

  ///  Returns a [Promise] that resolves with an object containing the
  /// current state of the port's control signals.
  /// var promise = SerialPort.getSignals();
  external Promise<SerialInputSignals> getSignals();

  /// Returns a [Promise] that resolves when the port closes.
  /// var promise = SerialPort.close();
  external Promise<Object> close();

  external factory SerialPort();
}

@anonymous
@JS()
class SerialPortInfo {
  external int get usbVendorId;
  external set usbVendorId(int newValue);
  external int get usbProductId;
  external set usbProductId(int newValue);

  external factory SerialPortInfo({int usbVendorId, int usbProductId});
}

@anonymous
@JS()
class SerialOptions {
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

  external factory SerialOptions(
      {int baudRate,
      int dataBits = 8,
      int stopBits = 1,
      ParityType parity = ParityType.none,
      int bufferSize = 255,
      FlowControlType flowControl = FlowControlType.none});
}

@JS()
enum ParityType { none, even, odd }

@JS()
enum FlowControlType { none, hardware }

@anonymous
@JS()
class SerialOutputSignals {
  external bool get dataTerminalReady;
  external set dataTerminalReady(bool newValue);
  external bool get requestToSend;
  external set requestToSend(bool newValue);
  @JS('break')
  external bool get mBreak;
  external set mBreak(bool newValue);

  external factory SerialOutputSignals(
      {bool dataTerminalReady, bool requestToSend, bool mBreak});
}

@anonymous
@JS()
class SerialInputSignals {
  external bool get dataCarrierDetect;
  external set dataCarrierDetect(bool newValue);
  external bool get clearToSend;
  external set clearToSend(bool newValue);
  external bool get ringIndicator;
  external set ringIndicator(bool newValue);
  external bool get dataSetReady;
  external set dataSetReady(bool newValue);

  external factory SerialInputSignals(
      {bool dataCarrierDetect,
      bool clearToSend,
      bool ringIndicator,
      bool dataSetReady});
}
