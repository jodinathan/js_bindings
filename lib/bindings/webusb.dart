/// WebUSB API
///
/// https://wicg.github.io/webusb/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webusb;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class USBDeviceFilter {
  external factory USBDeviceFilter(
      {required int vendorId,
      required int productId,
      required int classCode,
      required int subclassCode,
      required int protocolCode,
      required String serialNumber});
}

extension PropsUSBDeviceFilter on USBDeviceFilter {
  int get vendorId => js_util.getProperty(this, 'vendorId');
  set vendorId(int newValue) {
    js_util.setProperty(this, 'vendorId', newValue);
  }

  int get productId => js_util.getProperty(this, 'productId');
  set productId(int newValue) {
    js_util.setProperty(this, 'productId', newValue);
  }

  int get classCode => js_util.getProperty(this, 'classCode');
  set classCode(int newValue) {
    js_util.setProperty(this, 'classCode', newValue);
  }

  int get subclassCode => js_util.getProperty(this, 'subclassCode');
  set subclassCode(int newValue) {
    js_util.setProperty(this, 'subclassCode', newValue);
  }

  int get protocolCode => js_util.getProperty(this, 'protocolCode');
  set protocolCode(int newValue) {
    js_util.setProperty(this, 'protocolCode', newValue);
  }

  String get serialNumber => js_util.getProperty(this, 'serialNumber');
  set serialNumber(String newValue) {
    js_util.setProperty(this, 'serialNumber', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class USBDeviceRequestOptions {
  external factory USBDeviceRequestOptions(
      {required Iterable<USBDeviceFilter> filters});
}

extension PropsUSBDeviceRequestOptions on USBDeviceRequestOptions {
  Iterable<USBDeviceFilter> get filters => js_util.getProperty(this, 'filters');
  set filters(Iterable<USBDeviceFilter> newValue) {
    js_util.setProperty(this, 'filters', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.Secure context: This feature is available only in
/// secure contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebUSB API provides attributes and methods
/// for finding and connecting USB devices from a web page.
/// Use [navigator.usb] to get access to the object.
/// The USB interface inherits from [EventTarget].
///
///
///
///    EventTarget
///
///
///
///
///
///    USB
///
///
@JS('USB')
@staticInterop
class Usb implements EventTarget {
  external Usb();
}

extension PropsUsb on Usb {
  EventHandlerNonNull? get onconnect => js_util.getProperty(this, 'onconnect');
  set onconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onconnect', newValue);
  }

  EventHandlerNonNull? get ondisconnect =>
      js_util.getProperty(this, 'ondisconnect');
  set ondisconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondisconnect', newValue);
  }

  ///  Returns a [Future] that resolves with an array of [USBDevice]
  /// objects for paired attached devices.
  ///
  /// USB.getDevices()
  ///
  ///
  ///  The following example logs the product name and serial number of paired devices to the
  ///  console. For information on pairing devices, see
  ///  USB.requestDevice().
  ///
  /// navigator.usb.getDevices()
  /// .then(devices => {
  ///  console.log("Total devices: " + devices.length);
  ///  devices.forEach(device => {
  ///   console.log("Product name: " + device.productName + ", serial number " + device.serialNumber);
  ///  });
  /// });
  ///
  Future<Iterable<USBDevice>> getDevices() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getDevices', []));

  ///  Returns a [Future] that resolves with an instance of [USBDevice]
  /// if the specified device is found. Calling this function triggers
  /// the user agent's pairing flow.
  ///
  /// USB.requestDevice([filters])
  ///
  ///
  ///  The following example looks for one of two USB devices. Notice that two product IDs are
  ///  specified. Both are passed to requestDevice(). This triggers a user-agent
  ///  flow that prompts the user to select a device for pairing. Only the selected device is
  ///  passed to then().
  ///  The number of filters does not specify the number of devices shown by the user agent.
  ///  For example, if only a USB device with product ID 0xa800 is found, then
  ///  only one device will be listed by the user agent. On the other hand if the user agent
  ///  finds two of the first listed device and one of the second, then all three devices will
  ///  be listed.
  ///
  /// const filters = [
  ///     {vendorId: 0x1209, productId: 0xa800},
  ///     {vendorId: 0x1209, productId: 0xa850}
  ///    ];
  /// navigator.usb.requestDevice({filters: filters})
  /// .then(usbDevice => {
  ///  console.log("Product name: " + usbDevice.productName);
  /// })
  /// .catch(e => {
  ///  console.log("There is no device. " + e);
  /// });
  ///
  Future<USBDevice> requestDevice(USBDeviceRequestOptions options) => js_util
      .promiseToFuture(js_util.callMethod(this, 'requestDevice', [options]));
}

@anonymous
@JS()
@staticInterop
class USBConnectionEventInit implements EventInit {
  external factory USBConnectionEventInit({required USBDevice device});
}

extension PropsUSBConnectionEventInit on USBConnectionEventInit {
  USBDevice get device => js_util.getProperty(this, 'device');
  set device(USBDevice newValue) {
    js_util.setProperty(this, 'device', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebUSB API is the event type passed to
/// [USB.onconnect] and [USB.ondisconnect] when the user agent
/// detects that a new USB device has been connected or disconnected.
@JS()
@staticInterop
class USBConnectionEvent implements Event {
  external USBConnectionEvent(
      String type, USBConnectionEventInit eventInitDict);
}

extension PropsUSBConnectionEvent on USBConnectionEvent {
  /// Returns a [USBDevice] object representing the current device.
  ///
  USBDevice get device => js_util.getProperty(this, 'device');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the WebUSB API provides access to metadata
/// about a paired USB device and methods for controlling it.
@JS()
@staticInterop
class USBDevice {
  external USBDevice();
}

extension PropsUSBDevice on USBDevice {
  ///  One of three properties that declare the USB protocol version
  /// supported by the device. The other two properties are
  /// [USBDevice.usbVersionMinor] and [USBDevice.usbVersionSubminor].
  ///
  int get usbVersionMajor => js_util.getProperty(this, 'usbVersionMajor');

  ///  One of three properties that declare the USB protocol version
  /// supported by the device. The other two properties are
  /// [USBDevice.usbVersionMajor] and [USBDevice.usbVersionSubminor].
  ///
  int get usbVersionMinor => js_util.getProperty(this, 'usbVersionMinor');

  ///  One of three properties that declare the USB protocol version
  /// supported by the device. The other two properties are
  /// [USBDevice.usbVersionMajor] and [USBDevice.usbVersionMinor].
  ///
  int get usbVersionSubminor => js_util.getProperty(this, 'usbVersionSubminor');

  ///  One of three properties that identify USB devices for the
  /// purpose of loading a USB driver that will work with that device.
  /// The other two properties are [USBDevice.deviceSubclass] and
  /// [USBDevice.deviceProtocol].
  ///
  int get deviceClass => js_util.getProperty(this, 'deviceClass');

  ///  One of three properties that identify USB devices for the
  /// purpose of loading a USB driver that will work with that device.
  /// The other two properties are [USBDevice.deviceClass] and
  /// [USBDevice.deviceProtocol].
  ///
  int get deviceSubclass => js_util.getProperty(this, 'deviceSubclass');

  ///  One of three properties that identify USB devices for the
  /// purpose of loading a USB driver that will work with that device.
  /// The other two properties are [USBDevice.deviceClass] and
  /// [USBDevice.deviceSubclass].
  ///
  int get deviceProtocol => js_util.getProperty(this, 'deviceProtocol');

  /// The official usg.org-assigned vendor ID.
  ///
  int get vendorId => js_util.getProperty(this, 'vendorId');

  /// The manufacturer-defined code that identifies a USB device.
  ///
  int get productId => js_util.getProperty(this, 'productId');

  ///  The major version number of the device in a semantic versioning
  /// scheme.
  ///
  int get deviceVersionMajor => js_util.getProperty(this, 'deviceVersionMajor');

  ///  The minor version number of the device in a semantic versioning
  /// scheme.
  ///
  int get deviceVersionMinor => js_util.getProperty(this, 'deviceVersionMinor');

  ///  The patch version number of the device in a semantic versioning
  /// scheme.
  ///
  int get deviceVersionSubminor =>
      js_util.getProperty(this, 'deviceVersionSubminor');

  /// The of the organization that manufactured the USB device.
  ///
  String? get manufacturerName => js_util.getProperty(this, 'manufacturerName');

  /// The manufacturer-defined name that identifies a USB device.
  ///
  String? get productName => js_util.getProperty(this, 'productName');

  ///  The manufacturer-defined serial number for the specific USB
  /// device.
  ///
  String? get serialNumber => js_util.getProperty(this, 'serialNumber');

  ///  A [USBConfiguration] object for the currently selected interface
  /// for a paired USB device.
  ///
  USBConfiguration? get configuration =>
      js_util.getProperty(this, 'configuration');

  ///  An [array] of device-specific interfaces for controlling a
  /// paired USB device.
  ///
  Iterable<USBConfiguration> get configurations =>
      js_util.getProperty(this, 'configurations');

  ///  Indicates whether a session has been started with a paired USB
  /// device.
  ///
  bool get opened => js_util.getProperty(this, 'opened');

  ///  Returns a [Future] that resolves when a device session has
  /// started.
  ///
  /// var promise = USBDevice.open()
  ///
  Future<Object> open() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'open', []));

  ///  Returns a [Future] that resolves when all open interfaces are
  /// released and the device session has ended.
  ///
  /// var promise = USBDevice.close()
  ///
  Future<Object> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));

  ///  Returns a [Future] that resolves when the specified
  /// configuration is selected.
  ///
  /// var promise = USBDevice.selectConfiguration(configurationValue)
  ///
  Future<Object> selectConfiguration(int configurationValue) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'selectConfiguration', [configurationValue]));

  ///  Returns a [Future] that resolves when the requested interface is
  /// claimed for exclusive access.
  ///
  /// var promise = USBDevice.claimInterface(interfaceNumber)
  ///
  ///
  ///  The following example shows claimInterface() in the context of connecting
  ///  to a USB device.
  ///
  /// async function connectDevice(usbDevice) {
  ///  await usbDevice.open();
  ///  if (usbDevice.configuration === null)
  ///   await usbDevice.selectConfiguration(1);
  ///  await usbDevice.claimInterface(0);
  /// }
  ///
  Future<Object> claimInterface(int interfaceNumber) => js_util.promiseToFuture(
      js_util.callMethod(this, 'claimInterface', [interfaceNumber]));

  ///  Returns a [Future] that resolves when a claimed interface is
  /// released from exclusive access.
  ///
  /// var promise = USBDevice.releaseInterface(interfaceNumber)
  ///
  Future<Object> releaseInterface(int interfaceNumber) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'releaseInterface', [interfaceNumber]));

  ///  Returns a [Future] that resolves when the specified alternative
  /// endpoint is selected.
  ///
  /// var promise = USBDevice.selectAlternateInterface(interfaceNumber, alternateSetting)
  ///
  Future<Object> selectAlternateInterface(
          int interfaceNumber, int alternateSetting) =>
      js_util.promiseToFuture(js_util.callMethod(this,
          'selectAlternateInterface', [interfaceNumber, alternateSetting]));

  ///  Returns a [Future] that resolves with a [USBInTransferResult]
  /// when a command or status operation has been transmitted to the
  /// USB device.
  ///
  /// var promise = USBDevice.controlTransferIn(setup, length)
  ///
  Future<USBInTransferResult> controlTransferIn(
          USBControlTransferParameters setup, int length) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'controlTransferIn', [setup, length]));

  ///  Returns a [Future] that resolves with a [USBOutTransferResult]
  /// when a command or status operation has been transmitted from the
  /// USB device.
  ///
  /// var promise = USBDevice.controlTransferOut(setup, data)
  ///
  Future<USBOutTransferResult> controlTransferOut(
          USBControlTransferParameters setup,
          [dynamic data]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'controlTransferOut', [setup, data]));

  ///  Returns a [Future] that resolves when a halt condition is
  /// cleared.
  ///
  /// var promise = USBDevice.clearHalt(direction, endpointNumber)
  ///
  ///
  ///  The following example shows how to test for and clear a 'stall' condition
  ///  in the result of a data transfer.
  ///
  ///   Note: What data can be passed to a USB device and how it is passed is particular and unique
  ///   to each device.
  ///
  ///
  /// while (true) {
  ///  let result = await data.transferIn(1, 6);
  ///
  ///  if (result.data && result.data.byteLength === 6) {
  ///   console.log('Channel 1: ' + result.data.getUint16(0));
  ///   console.log('Channel 2: ' + result.data.getUint16(2));
  ///   console.log('Channel 5: ' + result.data.getUint16(4));
  ///  }
  ///
  ///  if (result.status === 'stall') {
  ///   console.warn('Endpoint stalled. Clearing.');
  ///   await device.clearHalt('in', 1);
  ///  }
  /// }
  ///
  Future<Object> clearHalt(USBDirection direction, int endpointNumber) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'clearHalt', [direction.name, endpointNumber]));

  ///  Returns a [Future] that resolves with a [USBInTransferResult]
  /// when bulk or interrupt data is received from the USB device.
  ///
  /// var promise = USBDevice.transferIn(endpointNumber, length)
  ///
  Future<USBInTransferResult> transferIn(int endpointNumber, int length) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'transferIn', [endpointNumber, length]));

  ///  Returns a [Future] that resolves with a [USBOutTransferResult]
  /// when bulk or interrupt data is sent to the USB device.
  ///
  /// var promise = USBDevice.transferOut(endpointNumber, data)
  ///
  Future<USBOutTransferResult> transferOut(int endpointNumber, dynamic data) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'transferOut', [endpointNumber, data]));

  ///  Returns a [Future] that resolves with a
  /// [USBIsochronousInTransferResult] when time sensitive information
  /// has been transmitted to the USB device.
  ///
  /// var promise = USBDevice.isochronousTransferIn(endpointNumber, packetLengths)
  ///
  Future<USBIsochronousInTransferResult> isochronousTransferIn(
          int endpointNumber, Iterable<int> packetLengths) =>
      js_util.promiseToFuture(js_util.callMethod(
          this, 'isochronousTransferIn', [endpointNumber, packetLengths]));

  ///  Returns a [Future] that resolves with a
  /// [USBIsochronousOutTransferResult] when time sensitive information
  /// has been transmitted from the USB device.
  ///
  /// var promise = USBDevice.isochronousTransferOut(endpointNumber, data, packetLengths)
  ///
  Future<USBIsochronousOutTransferResult> isochronousTransferOut(
          int endpointNumber, dynamic data, Iterable<int> packetLengths) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'isochronousTransferOut',
          [endpointNumber, data, packetLengths]));

  ///  Returns a [Future] that resolves when the device is reset and
  /// all app operations canceled and their promises rejected.
  ///
  /// var promise = USBDevice.reset()
  ///
  Future<Object> reset() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'reset', []));
}

enum USBRequestType { standard, valueClass, vendor }

enum USBRecipient { device, valueInterface, endpoint, other }

enum USBTransferStatus { ok, stall, babble }

@anonymous
@JS()
@staticInterop
class USBControlTransferParameters {
  external factory USBControlTransferParameters._(
      {required String requestType,
      required String recipient,
      required int request,
      required int value,
      required int index});

  factory USBControlTransferParameters(
          {required USBRequestType requestType,
          required USBRecipient recipient,
          required int request,
          required int value,
          required int index}) =>
      USBControlTransferParameters._(
          requestType: requestType.name,
          recipient: recipient.name,
          request: request,
          value: value,
          index: index);
}

extension PropsUSBControlTransferParameters on USBControlTransferParameters {
  USBRequestType get requestType =>
      USBRequestType.values.byName(js_util.getProperty(this, 'requestType'));
  set requestType(USBRequestType newValue) {
    js_util.setProperty(this, 'requestType', newValue.name);
  }

  USBRecipient get recipient =>
      USBRecipient.values.byName(js_util.getProperty(this, 'recipient'));
  set recipient(USBRecipient newValue) {
    js_util.setProperty(this, 'recipient', newValue.name);
  }

  int get request => js_util.getProperty(this, 'request');
  set request(int newValue) {
    js_util.setProperty(this, 'request', newValue);
  }

  int get value => js_util.getProperty(this, 'value');
  set value(int newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  int get index => js_util.getProperty(this, 'index');
  set index(int newValue) {
    js_util.setProperty(this, 'index', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebUSB API provides the result from a call
/// to the [transferIn()] and [controlTransferIn()] methods of the
/// [USBDevice] interface. It represents the result from requesting a
/// transfer of data from the USB device to the USB host.
@experimental
@JS()
@staticInterop
class USBInTransferResult {
  external USBInTransferResult._(String status, [ByteData? data]);

  factory USBInTransferResult(USBTransferStatus status, [ByteData? data]) =>
      USBInTransferResult._(status.name, data);
}

extension PropsUSBInTransferResult on USBInTransferResult {
  ///  Returns a [DataView] object containing the data received from
  /// the USB device, if any.
  ///
  ByteData? get data => js_util.getProperty(this, 'data');

  /// Returns the status of the transfer request, one of:
  ///
  ///    ["ok"] - The transfer was successful.
  ///     ["stall"] - The device indicated an error by generating a
  /// stall condition on the endpoint. A stall on the control endpoint
  /// does not need to be cleared. A stall on a bulk or interrupt
  /// endpoint must be cleared by calling [clearHalt()] before
  /// [transferIn()] can be called again.
  ///     ["babble"] - The device responded with more data than was
  /// expected.
  ///
  ///
  USBTransferStatus get status =>
      USBTransferStatus.values.byName(js_util.getProperty(this, 'status'));
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebUSB API provides the result from a call
/// to the [transferOut()] and [controlTransferOut()] methods of the
/// [USBDevice] interface. It represents the result from requesting a
/// transfer of data from the USB host to the USB device.
@experimental
@JS()
@staticInterop
class USBOutTransferResult {
  external USBOutTransferResult._(String status, [int? bytesWritten = 0]);

  factory USBOutTransferResult(USBTransferStatus status,
          [int? bytesWritten = 0]) =>
      USBOutTransferResult._(status.name, bytesWritten);
}

extension PropsUSBOutTransferResult on USBOutTransferResult {
  ///  Returns the number of bytes from the transfer request that were
  /// sent to the device.
  ///
  int get bytesWritten => js_util.getProperty(this, 'bytesWritten');

  /// Returns the status of the transfer request, one of:
  ///
  ///    ["ok"] - The transfer was successful.
  ///     ["stall"] - The device indicated an error by generating a
  /// stall condition on the endpoint. A stall on a bulk or interrupt
  /// endpoint must be cleared by calling [clearHalt()] before
  /// [transferOut()] can be called again.
  ///
  ///
  USBTransferStatus get status =>
      USBTransferStatus.values.byName(js_util.getProperty(this, 'status'));
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebUSB API is part of the response from a
/// call to the [isochronousTransferIn()] method of the [USBDevice]
/// interface. It represents the status of an individual packet from
/// a request to transfer data from the USB device to the USB host
/// over an isochronous endpoint.
@experimental
@JS()
@staticInterop
class USBIsochronousInTransferPacket {
  external USBIsochronousInTransferPacket._(String status, [ByteData? data]);

  factory USBIsochronousInTransferPacket(USBTransferStatus status,
          [ByteData? data]) =>
      USBIsochronousInTransferPacket._(status.name, data);
}

extension PropsUSBIsochronousInTransferPacket
    on USBIsochronousInTransferPacket {
  ///  Returns a [DataView] object containing the data received from
  /// the USB device in this packet, if any.
  ///
  ByteData? get data => js_util.getProperty(this, 'data');

  /// Returns the status of the transfer request, one of:
  ///
  ///    ["ok"] - The transfer was successful.
  ///     ["stall"] - The device indicated an error by generating a
  /// stall condition on the endpoint. A stall on an isochronous
  /// endpoint does not need to be cleared.
  ///     ["babble"] - The device responded with more data than was
  /// expected.
  ///
  ///
  USBTransferStatus get status =>
      USBTransferStatus.values.byName(js_util.getProperty(this, 'status'));
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebUSB API provides the result from a call
/// to the [isochronousTransferIn()] method of the [USBDevice]
/// interface. It represents the result from requesting a transfer of
/// data from the USB device to the USB host.
@experimental
@JS()
@staticInterop
class USBIsochronousInTransferResult {
  external USBIsochronousInTransferResult(
      Iterable<USBIsochronousInTransferPacket> packets,
      [ByteData? data]);
}

extension PropsUSBIsochronousInTransferResult
    on USBIsochronousInTransferResult {
  ///  Returns a [DataView] object containing the data received from
  /// the device. This is the combined data from all packets. See the
  /// individual [DataView] objects in the [packets] array for the
  /// portion of this buffer containing data from each packet.
  ///
  ByteData? get data => js_util.getProperty(this, 'data');

  ///  Returns an array of [USBIsochronousInTransferPacket] objects
  /// containing the result of each request to receive a packet from
  /// the device.
  ///
  Iterable<USBIsochronousInTransferPacket> get packets =>
      js_util.getProperty(this, 'packets');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebUSB API is part of the response from a
/// call to the [isochronousTransferOut()] method of the [USBDevice]
/// interface. It represents the status of an individual packet from
/// a request to transfer data from the USB host to the USB device
/// over an isochronous endpoint.
@experimental
@JS()
@staticInterop
class USBIsochronousOutTransferPacket {
  external USBIsochronousOutTransferPacket._(String status,
      [int? bytesWritten = 0]);

  factory USBIsochronousOutTransferPacket(USBTransferStatus status,
          [int? bytesWritten = 0]) =>
      USBIsochronousOutTransferPacket._(status.name, bytesWritten);
}

extension PropsUSBIsochronousOutTransferPacket
    on USBIsochronousOutTransferPacket {
  ///  Returns the number of bytes from the packet that were sent to
  /// the device.
  ///
  int get bytesWritten => js_util.getProperty(this, 'bytesWritten');

  /// Returns the status of the transfer request, one of:
  ///
  ///    ["ok"] - The transfer was successful.
  ///     ["stall"] - The device indicated an error by generating a
  /// stall condition on the endpoint. A stall on an isochronous
  /// endpoint does not need to be cleared.
  ///
  ///
  USBTransferStatus get status =>
      USBTransferStatus.values.byName(js_util.getProperty(this, 'status'));
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebUSB API provides the result from a call
/// to the [isochronousTransferOut()] method of the [USBDevice]
/// interface. It represents the result from requesting a transfer of
/// data from the USB host to the USB device.
@experimental
@JS()
@staticInterop
class USBIsochronousOutTransferResult {
  external USBIsochronousOutTransferResult(
      Iterable<USBIsochronousOutTransferPacket> packets);
}

extension PropsUSBIsochronousOutTransferResult
    on USBIsochronousOutTransferResult {
  ///  Returns an array of [USBIsochronousOutTransferPacket] objects
  /// containing the result of each request to send a packet to the
  /// device.
  ///
  Iterable<USBIsochronousOutTransferPacket> get packets =>
      js_util.getProperty(this, 'packets');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebUSB API provides information about a
/// particular configuration of a USB device and the interfaces that
/// it supports.
@JS()
@staticInterop
class USBConfiguration {
  external USBConfiguration(USBDevice device, int configurationValue);
}

extension PropsUSBConfiguration on USBConfiguration {
  ///  Returns the configuration value of this configuration. This is
  /// equal to the [bConfigurationValue] field of the configuration
  /// descriptor provided by the device defining this configuration.
  ///
  int get configurationValue => js_util.getProperty(this, 'configurationValue');

  ///  Returns the name provided by the device to describe this
  /// configuration. This is equal to the value of the string
  /// descriptor with the index provided in the [iConfiguration] field
  /// of the configuration descriptor defining this configuration.
  ///
  String? get configurationName =>
      js_util.getProperty(this, 'configurationName');

  ///  Returns an array containing instances of the [USBInterface]
  /// describing each interface supported by this configuration.
  ///
  Iterable<USBInterface> get interfaces =>
      js_util.getProperty(this, 'interfaces');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebUSB API provides information about an
/// interface provided by the USB device. An interface represents a
/// feature of the device which implements a particular protocol and
/// may contain endpoints for bidirectional communication.
@experimental
@JS()
@staticInterop
class USBInterface {
  external USBInterface(USBConfiguration configuration, int interfaceNumber);
}

extension PropsUSBInterface on USBInterface {
  ///  Returns the interface number of this interface. This is equal to
  /// the [bInterfaceNumber] field of the interface descriptor defining
  /// this interface.
  ///
  int get interfaceNumber => js_util.getProperty(this, 'interfaceNumber');

  ///  Returns the currently selected alternative configuration of this
  /// interface. By default this is the [USBAlternateInterface] from
  /// [alternates] with [alternateSetting] equal to [0]. It can be
  /// changed by calling [USBDevice.selectAlternateInterface()] with
  /// any other value found in [alternates].
  ///
  USBAlternateInterface get alternate => js_util.getProperty(this, 'alternate');

  ///  Returns an array containing instances of the
  /// [USBAlternateInterface] interface describing each of the
  /// alternative configurations possible for this interface.
  ///
  Iterable<USBAlternateInterface> get alternates =>
      js_util.getProperty(this, 'alternates');

  ///  Returns whether or not this interface has been claimed by the
  /// current page by calling [USBDevice.claimInterface()].
  ///
  bool get claimed => js_util.getProperty(this, 'claimed');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebUSB API provides information about a
/// particular configuration of an interface provided by the USB
/// device. An interface includes one or more alternate settings
/// which can configure a set of endpoints based on the operating
/// mode of the device.
@experimental
@JS()
@staticInterop
class USBAlternateInterface {
  external USBAlternateInterface(
      USBInterface deviceInterface, int alternateSetting);
}

extension PropsUSBAlternateInterface on USBAlternateInterface {
  ///  Returns the alternate setting number of this interface. This is
  /// equal to the [bAlternateSetting] field of the interface
  /// descriptor defining this interface.
  ///
  int get alternateSetting => js_util.getProperty(this, 'alternateSetting');

  ///  Returns the class of this interface. This is equal to the
  /// [bInterfaceClass] field of the interface descriptor defining this
  /// interface. Standardized values for this field are defined by the
  /// USB Implementers Forum. A value of [0xFF] indicates a
  /// vendor-defined interface.
  ///
  int get interfaceClass => js_util.getProperty(this, 'interfaceClass');

  ///  Returns the subclass of this interface. This is equal to the
  /// [bInterfaceSubClass] field of the interface descriptor defining
  /// this interface. The meaning of this value depends on the
  /// [interfaceClass] field.
  ///
  int get interfaceSubclass => js_util.getProperty(this, 'interfaceSubclass');

  ///  Returns the protocol supported by this interface. This is equal
  /// to the [bInterfaceProtocol] field of the interface descriptor
  /// defining this interface. The meaning of this value depends on the
  /// [interfaceClass] and [interfaceSubclass] fields.
  ///
  int get interfaceProtocol => js_util.getProperty(this, 'interfaceProtocol');

  ///  Returns the name of the interface, if one is provided by the
  /// device. This is the value of the string descriptor with the index
  /// specified by the [iInterface] field of the interface descriptor
  /// defining this interface.
  ///
  String? get interfaceName => js_util.getProperty(this, 'interfaceName');

  ///  Returns an array containing instances of the [USBEndpoint]
  /// interface describing each of the endpoints that are part of this
  /// interface.
  ///
  Iterable<USBEndpoint> get endpoints => js_util.getProperty(this, 'endpoints');
}

enum USBDirection { valueIn, out }

enum USBEndpointType { bulk, interrupt, isochronous }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebUSB API provides information about an
/// endpoint provided by the USB device. An endpoint represents a
/// unidirectional data stream into or out of a device.
@JS()
@staticInterop
class USBEndpoint {
  external USBEndpoint._(
      USBAlternateInterface alternate, int endpointNumber, String direction);

  factory USBEndpoint(USBAlternateInterface alternate, int endpointNumber,
          USBDirection direction) =>
      USBEndpoint._(alternate, endpointNumber, direction.name);
}

extension PropsUSBEndpoint on USBEndpoint {
  ///  Returns this endpoint's "endpoint number" which is a value from
  /// 1 to 15 extracted from the [bEndpointAddress] field of the
  /// endpoint descriptor defining this endpoint. This value is used to
  /// identify the endpoint when calling methods on [USBDevice].
  ///
  int get endpointNumber => js_util.getProperty(this, 'endpointNumber');

  ///  Returns the direction in which this endpoint transfers data, one
  /// of:
  ///
  ///    ["in"] - Data is transferred from device to host.
  ///
  ///
  ///    ["out"] - Data is transferred from host to device.
  ///
  ///
  USBDirection get direction =>
      USBDirection.values.byName(js_util.getProperty(this, 'direction'));

  /// Returns the type of this endpoint, one of:
  ///
  ///     ["bulk"] - Provides reliable data transfer for large
  /// payloads. Data sent through a bulk endpoint is guaranteed to be
  /// delivered or generate an error but may be preempted by other data
  /// traffic.
  ///
  ///
  ///     ["interrupt"] - Provides reliable data transfer for small
  /// payloads. Data sent through an interrupt endpoint is guaranteed
  /// to be delivered or generate an error and is also given dedicated
  /// bus time for transmission.
  ///
  ///
  ///     ["isochronous"] - Provides unreliable data transfer for
  /// payloads that must be delivered periodically. They are given
  /// dedicated bus time but if a deadline is missed the data is
  /// dropped.
  ///
  ///
  USBEndpointType get type =>
      USBEndpointType.values.byName(js_util.getProperty(this, 'type'));

  ///  Returns the size of the packets that data sent through this
  /// endpoint will be divided into.
  ///
  int get packetSize => js_util.getProperty(this, 'packetSize');
}

@anonymous
@JS()
@staticInterop
class USBPermissionDescriptor implements PermissionDescriptor {
  external factory USBPermissionDescriptor(
      {required Iterable<USBDeviceFilter> filters});
}

extension PropsUSBPermissionDescriptor on USBPermissionDescriptor {
  Iterable<USBDeviceFilter> get filters => js_util.getProperty(this, 'filters');
  set filters(Iterable<USBDeviceFilter> newValue) {
    js_util.setProperty(this, 'filters', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AllowedUSBDevice {
  external factory AllowedUSBDevice(
      {required int vendorId,
      required int productId,
      required String serialNumber});
}

extension PropsAllowedUSBDevice on AllowedUSBDevice {
  int get vendorId => js_util.getProperty(this, 'vendorId');
  set vendorId(int newValue) {
    js_util.setProperty(this, 'vendorId', newValue);
  }

  int get productId => js_util.getProperty(this, 'productId');
  set productId(int newValue) {
    js_util.setProperty(this, 'productId', newValue);
  }

  String get serialNumber => js_util.getProperty(this, 'serialNumber');
  set serialNumber(String newValue) {
    js_util.setProperty(this, 'serialNumber', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class USBPermissionStorage {
  external factory USBPermissionStorage(
      {Iterable<AllowedUSBDevice>? allowedDevices = const []});
}

extension PropsUSBPermissionStorage on USBPermissionStorage {
  Iterable<AllowedUSBDevice> get allowedDevices =>
      js_util.getProperty(this, 'allowedDevices');
  set allowedDevices(Iterable<AllowedUSBDevice> newValue) {
    js_util.setProperty(this, 'allowedDevices', newValue);
  }
}

@JS()
@staticInterop
class USBPermissionResult implements PermissionStatus {
  external USBPermissionResult();
}

extension PropsUSBPermissionResult on USBPermissionResult {
  Iterable<USBDevice> get devices => js_util.getProperty(this, 'devices');
  set devices(Iterable<USBDevice> newValue) {
    js_util.setProperty(this, 'devices', newValue);
  }
}
