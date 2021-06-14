/// WebUSB API
///
/// https://wicg.github.io/webusb/
@JS('window')
library webusb;

import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';
import 'permissions.dart';

@anonymous
@JS()
class USBDeviceFilter {
  external int get vendorId;
  external set vendorId(int newValue);
  external int get productId;
  external set productId(int newValue);
  external int get classCode;
  external set classCode(int newValue);
  external int get subclassCode;
  external set subclassCode(int newValue);
  external int get protocolCode;
  external set protocolCode(int newValue);
  external String get serialNumber;
  external set serialNumber(String newValue);

  external factory USBDeviceFilter(
      {int vendorId,
      int productId,
      int classCode,
      int subclassCode,
      int protocolCode,
      String serialNumber});
}

@anonymous
@JS()
class USBDeviceRequestOptions {
  external Iterable<USBDeviceFilter> get filters;
  external set filters(Iterable<USBDeviceFilter> newValue);

  external factory USBDeviceRequestOptions({Iterable<USBDeviceFilter> filters});
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the WebUSB API provides attributes and methods
/// for finding and connecting USB devices from a web page.
@JS()
class USB extends EventTarget {
  external EventHandlerNonNull? get onconnect;
  external set onconnect(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondisconnect;
  external set ondisconnect(EventHandlerNonNull? newValue);

  ///  Returns a [Promise] that resolves with an array of [USBDevice]
  /// objects for paired attached devices.
  /// USB.getDevices()
  /// The following example logs the product name and serial number of paired devices to the
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
  external Iterable<Promise<USBDevice>> getDevices();

  ///  Returns a [Promise] that resolves with an instance of
  /// [USBDevice] if the specified device is found. Calling this
  /// function triggers the user agent's pairing flow.
  /// USB.requestDevice([filters])
  /// The following example looks for one of two USB devices. Notice that two product IDs are
  ///  specified. Both are passed to requestDevice(). This triggers a user-agent
  ///  flow that prompts the user to select a device for pairing. Only the selected device is
  ///  passed to then().
  ///
  /// The number of filters does not specifiy the number of devices shown by the user agent.
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
  external Promise<USBDevice> requestDevice(USBDeviceRequestOptions options);

  external factory USB();
}

@anonymous
@JS()
class USBConnectionEventInit extends EventInit {
  external USBDevice get device;
  external set device(USBDevice newValue);

  external factory USBConnectionEventInit({USBDevice device});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the WebUSB API is the event type passed to
/// [USB.onconnect] and [USB.ondisconnect] when the user agent
/// detects that a new USB device has been connected or disconnected.
@JS()
class USBConnectionEvent extends Event {
  external factory USBConnectionEvent(
      {String type, USBConnectionEventInit eventInitDict});

  /// Returns a [USBDevice] object representing the current device.
  external USBDevice get device;
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the WebUSB API provides access to metadata
/// about a paired USB device and methods for controlling it.
@JS()
class USBDevice {
  ///  One of three properties that declare the USB protocol version
  /// supported by the device. The other two properties are
  /// [USBDevice.usbVersionMinor] and [USBDevice.usbVersionSubminor].
  external int get usbVersionMajor;

  ///  One of three properties that declare the USB protocol version
  /// supported by the device. The other two properties are
  /// [USBDevice.usbVersionMajor] and [USBDevice.usbVersionSubminor].
  external int get usbVersionMinor;

  ///  One of three properties that declare the USB protocol version
  /// supported by the device. The other two properties are
  /// [USBDevice.usbVersionMajor] and [USBDevice.usbVersionMinor].
  external int get usbVersionSubminor;

  ///  One of three properties that identify USB devices for the
  /// purpose of loading a USB driver that will work with that device.
  /// The other two properties are [USBDevice.deviceSubclass] and
  /// [USBDevice.deviceProtocol].
  external int get deviceClass;

  ///  One of three properties that identify USB devices for the
  /// purpose of loading a USB driver that will work with that device.
  /// The other two properties are [USBDevice.deviceClass] and
  /// [USBDevice.deviceProtocol].
  external int get deviceSubclass;

  ///  One of three properties that identify USB devices for the
  /// purpose of loading a USB driver that will work with that device.
  /// The other two properties are [USBDevice.deviceClass] and
  /// [USBDevice.deviceSubclass].
  external int get deviceProtocol;

  /// The official usg.org-assigned vendor ID.
  external int get vendorId;

  /// The manufacturer-defined code that identifies a USB device.
  external int get productId;

  ///  The major version number of the device in a semantic versioning
  /// scheme.
  external int get deviceVersionMajor;

  ///  The minor version number of the device in a semantic versioning
  /// scheme.
  external int get deviceVersionMinor;

  ///  The patch version number of the device in a semantic versioning
  /// scheme.
  external int get deviceVersionSubminor;

  /// The of the organization that manufactured the USB device.
  external String? get manufacturerName;

  /// The manufacturer-defined name that identifies a USB device.
  external String? get productName;

  ///  The manufacturer-defined serial number for the specific USB
  /// device.
  external String? get serialNumber;

  ///  A [USBConfiguration] object for the currently selected interface
  /// for a paired USB device.
  external USBConfiguration? get configuration;

  ///  An [array] of device-specific interfaces for controlling a
  /// paired USB device.
  external Iterable<USBConfiguration> get configurations;

  ///  Indicates whether a session has been started with a paired USB
  /// device.
  external bool get opened;

  ///  Returns a [Promise] that resolves when a device session has
  /// started.
  /// var promise = USBDevice.open()
  external Promise<Object> open();

  ///  Returns a [Promise] that resolves when all open interfaces are
  /// released and the device session has ended.
  /// var promise = USBDevice.close()
  external Promise<Object> close();

  ///  Returns a [Promise] that resolves when the specified
  /// configuration is selected.
  /// var promise = USBDevice.selectConfiguration(configurationValue)
  external Promise<Object> selectConfiguration(int configurationValue);

  ///  Returns a [Promise] that resolves when the requested interface
  /// is claimed for exclusive access.
  /// var promise = USBDevice.claimInterface(interfaceNumber)
  /// The following example shows claimInterface() in the context of connecting
  ///  to a USB device.
  ///
  /// async function connectDevice(usbDevice) {
  ///  await usbDevice.open();
  ///  if (usbDevice.configuration === null)
  ///   await usbDevice.selectConfiguration(1);
  ///  await usbDevice.claimInterface(0);
  /// }
  external Promise<Object> claimInterface(int interfaceNumber);

  ///  Returns a [Promise] that resolves when a cliamed interface is
  /// released from exclusive access.
  /// var promise = USBDevice.releaseInterface(interfaceNumber)
  external Promise<Object> releaseInterface(int interfaceNumber);

  ///  Returns a [Promise] that resolves when the specified alternative
  /// endpoint is selected.
  /// var promise = USBDevice.selectAlternateInterface(interfaceNumber, alternateSetting)
  external Promise<Object> selectAlternateInterface(
      int interfaceNumber, int alternateSetting);

  ///  Returns a [Promise] that resolves with a [USBTransferInResult]
  /// when a command or status operation has been transmitted to the
  /// USB device.
  /// var promise = USBDevice.controlTransferIn(setup, length)
  external Promise<USBInTransferResult> controlTransferIn(
      USBControlTransferParameters setup, int length);

  ///  Returns a [Promise] that resolves with a [USBTransferOutResult]
  /// when a command or status operation has been transmitted from the
  /// USB device.
  /// var promise = USBDevice.controlTransferOut(setup, data)
  external Promise<USBOutTransferResult> controlTransferOut(
      USBControlTransferParameters setup,
      [dynamic? data]);

  ///  Returns a [Promise] that resolves when a halt condition is
  /// cleared.
  /// var promise = USBDevice.clearHalt(direction, endpointNumber)
  /// The following example shows how to test for and clear a 'stall' condition
  ///  in the result of a data transfer.
  ///  What data can be passed to a USB device and how it is passed is particular and unique
  ///   to each device.
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
  external Promise<Object> clearHalt(
      USBDirection direction, int endpointNumber);

  ///  Returns a [Promise] that resolves with a [USBTransferInResult]
  /// when bulk or interrupt data is received from the USB device.
  /// var promise = USBDevice.transferIn(endpointNumber, length)
  external Promise<USBInTransferResult> transferIn(
      int endpointNumber, int length);

  ///  Returns a [Promise] that resolves with a [USBTransferOutResult]
  /// when bulk or interrupt data is sent to the USB device.
  /// var promise = USBDevice.transferOut(endpointNumber, data)
  external Promise<USBOutTransferResult> transferOut(
      int endpointNumber, dynamic data);

  ///  Returns a [Promise] that resolves with a
  /// [USBIsochronousInTransferResult] when time sensitive information
  /// has been transmitted to the USB device.
  /// var promise = USBDevice.isochronousTransferIn(endpointNumber, packetLengths)
  external Promise<USBIsochronousInTransferResult> isochronousTransferIn(
      int endpointNumber, Iterable<int> packetLengths);

  ///  Returns a [Promise] that resolves with a
  /// [USBIsochronousOutTransferResult] when time sensitive information
  /// has been transmitted from the USB device.
  /// var promise = USBDevice.isochronousTransferOut(endpointNumber, data, packetLengths)
  external Promise<USBIsochronousOutTransferResult> isochronousTransferOut(
      int endpointNumber, dynamic data, Iterable<int> packetLengths);

  ///  Returns a [Promise] that resolves when the device is reset and
  /// all app operations canceled and their promises rejected.
  /// var promise = USBDevice.reset()
  external Promise<Object> reset();

  external factory USBDevice();
}

@JS()
enum USBRequestType {
  standard,
  @JS('class')
  valueClass,
  vendor
}

@JS()
enum USBRecipient {
  device,
  @JS('interface')
  valueInterface,
  endpoint,
  other
}

@JS()
enum USBTransferStatus { ok, stall, babble }

@anonymous
@JS()
class USBControlTransferParameters {
  external USBRequestType get requestType;
  external set requestType(USBRequestType newValue);
  external USBRecipient get recipient;
  external set recipient(USBRecipient newValue);
  external int get request;
  external set request(int newValue);
  external int get value;
  external set value(int newValue);
  external int get index;
  external set index(int newValue);

  external factory USBControlTransferParameters(
      {USBRequestType requestType,
      USBRecipient recipient,
      int request,
      int value,
      int index});
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the WebUSB API provides the result from a call
/// to the [transferIn()] and [controlTransferIn()] methods of the
/// [USBDevice] interface. It represents the result from requesting a
/// transfer of data from the USB device to the USB host.
@experimental
@JS()
class USBInTransferResult {
  external factory USBInTransferResult(
      {USBTransferStatus status, ByteData? data});

  ///  Returns a [DataView] object containing the data received from
  /// the USB device, if any.
  external ByteData? get data;

  /// Returns the status of the transfer request, one of:
  ///
  ///  ["ok"] - The transfer was successful.
  ///   ["stall"] - The device indicated an error by generating a stall
  /// condition on the endpoint. A stall on the control endpoint does
  /// not need to be cleared. A stall on a bulk or interrupt endpoint
  /// must be cleared by calling [clearHalt()] before [transferIn()]
  /// can be called again.
  ///   ["babble"] - The device responded with more data than was
  /// expected.
  ///
  ///
  external USBTransferStatus get status;
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the WebUSB API provides the result from a call
/// to the [transferOut()] and [controlTransferOut()] methods of the
/// [USBDevice] interface. It represents the result from requesting a
/// transfer of data from the USB host to the USB device.
@experimental
@JS()
class USBOutTransferResult {
  external factory USBOutTransferResult(
      {USBTransferStatus status, int? bytesWritten = 0});

  ///  Returns the number of bytes from the transfer request that were
  /// sent to the device.
  external int get bytesWritten;

  /// Returns the status of the transfer request, one of:
  ///
  ///  ["ok"] - The transfer was successful.
  ///   ["stall"] - The device indicated an error by generating a stall
  /// condition on the endpoint. A stall on a bulk or interrupt
  /// endpoint must be cleared by calling [clearHalt()] before
  /// [transferOut()] can be called again.
  ///
  ///
  external USBTransferStatus get status;
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the WebUSB API is part of the response from a
/// call to the [isochronousTransferIn()] method of the [USBDevice]
/// interface. It represents the status of an individual packet from
/// a request to transfer data from the USB device to the USB host
/// over an isochronous endpoint.
@experimental
@JS()
class USBIsochronousInTransferPacket {
  external factory USBIsochronousInTransferPacket(
      {USBTransferStatus status, ByteData? data});

  ///  Returns a [DataView] object containing the data received from
  /// the USB device in this packet, if any.
  external ByteData? get data;

  /// Returns the status of the transfer request, one of:
  ///
  ///  ["ok"] - The transfer was successful.
  ///   ["stall"] - The device indicated an error by generating a stall
  /// condition on the endpoint. A stall on an isochronous endpoint
  /// does not need to be cleared.
  ///   ["babble"] - The device responded with more data than was
  /// expected.
  ///
  ///
  external USBTransferStatus get status;
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the WebUSB API provides the result from a call
/// to the [isochronousTransferIn()] method of the [USBDevice]
/// interface. It represents the result from requesting a transfer of
/// data from the USB device to the USB host.
@experimental
@JS()
class USBIsochronousInTransferResult {
  external factory USBIsochronousInTransferResult(
      {Iterable<USBIsochronousInTransferPacket> packets, ByteData? data});

  ///  Returns a [DataView] object containing the data received from
  /// the device. This is the combined data from all packets. See the
  /// individual [DataView] objects in the [packets] array for the
  /// portion of this buffer containing data from each packet.
  external ByteData? get data;

  ///  Returns an array of [USBIsochronousInTransferPacket] objects
  /// containing the result of each request to receive a packet from
  /// the device.
  external Iterable<USBIsochronousInTransferPacket> get packets;
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the WebUSB API is part of the response from a
/// call to the [isochronousTransferOut()] method of the [USBDevice]
/// interface. It represents the status of an individual packet from
/// a request to transfer data from the USB host to the USB device
/// over an isochronous endpoint.
@experimental
@JS()
class USBIsochronousOutTransferPacket {
  external factory USBIsochronousOutTransferPacket(
      {USBTransferStatus status, int? bytesWritten = 0});

  ///  Returns the number of bytes from the packet that were sent to
  /// the device.
  external int get bytesWritten;

  /// Returns the status of the transfer request, one of:
  ///
  ///  ["ok"] - The transfer was successful.
  ///   ["stall"] - The device indicated an error by generating a stall
  /// condition on the endpoint. A stall on an isochronous endpoint
  /// does not need to be cleared.
  ///
  ///
  external USBTransferStatus get status;
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the WebUSB API provides the result from a call
/// to the [isochronousTransferOut()] method of the [USBDevice]
/// interface. It represents the result from requesting a transfer of
/// data from the USB host to the USB device.
@experimental
@JS()
class USBIsochronousOutTransferResult {
  external factory USBIsochronousOutTransferResult(
      {Iterable<USBIsochronousOutTransferPacket> packets});

  ///  Returns an array of [USBIsochronousOutTransferPacket] objects
  /// containing the result of each request to send a packet to the
  /// device.
  external Iterable<USBIsochronousOutTransferPacket> get packets;
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the WebUSB API provides information about a
/// particular configuration of a USB device and the interfaces that
/// it supports.
@JS()
class USBConfiguration {
  external factory USBConfiguration({USBDevice device, int configurationValue});

  ///  Returns the configuration value of this configuration. This is
  /// equal to the [bConfigurationValue] field of the configuration
  /// descriptor provided by the device defining this configuration.
  external int get configurationValue;

  ///  Returns the name provided by the device to describe this
  /// configuration. This is equal to the value of the string
  /// descriptor with the index provided in the [iConfiguration] field
  /// of the configuration descriptor defining this configuration.
  external String? get configurationName;

  ///  Returns an array containing instances of the [USBInterface]
  /// describing each interface supported by this configuration.
  external Iterable<USBInterface> get interfaces;
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the WebUSB API provides information about an
/// interface provided by the USB device. An interface represents a
/// feature of the device which implements a particular protocol and
/// may contain endpoints for bidirectional communication.
@experimental
@JS()
class USBInterface {
  external factory USBInterface(
      {USBConfiguration configuration, int interfaceNumber});

  ///  Returns the interface number of this interface. This is equal to
  /// the [bInterfaceNumber] field of the interface descriptor defining
  /// this interface.
  external int get interfaceNumber;

  ///  Returns the currently selected alternative configuration of this
  /// interface. By default this is the [USBAlternateInterface] from
  /// [alternates] with [alternateSetting] equal to [0]. It can be
  /// changed by calling [USBDevice.selectAlternateInterface()] with
  /// any other value found in [alternates].
  external USBAlternateInterface get alternate;

  ///  Returns an array containing instances of the
  /// [USBAlternateInterface] interface describing each of the
  /// alternative configurations possible for this interface.
  external Iterable<USBAlternateInterface> get alternates;

  ///  Returns whether or not this interface has been claimed by the
  /// current page by calling [USBDevice.claimInterface()].
  external bool get claimed;
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the WebUSB API provides information about a
/// particular configuration of an interface provided by the USB
/// device. An interface includes one or more alternate settings
/// which can configure a set of endpoints based on the operating
/// mode of the device.
@experimental
@JS()
class USBAlternateInterface {
  external factory USBAlternateInterface(
      {USBInterface deviceInterface, int alternateSetting});

  ///  Returns the alternate setting number of this interface. This is
  /// equal to the [bAlternateSetting] field of the interface
  /// descriptor defining this interface.
  external int get alternateSetting;

  ///  Returns the class of this interface. This is equal to the
  /// [bInterfaceClass] field of the interface descriptor defining this
  /// interface. Standardized values for this field are defined by the
  /// USB Implementers Forum. A value of [0xFF] indicates a
  /// vendor-defined interface.
  external int get interfaceClass;

  ///  Returns the subclass of this interface. This is equal to the
  /// [bInterfaceSubClass] field of the interface descriptor defining
  /// this interface. The meaning of this value depends on the
  /// [interfaceClass] field.
  external int get interfaceSubclass;

  ///  Returns the protocol supported by this interface. This is equal
  /// to the [bInterfaceProtocol] field of the interface descriptor
  /// defining this interface. The meaning of this value depends on the
  /// [interfaceClass] and [interfaceSubclass] fields.
  external int get interfaceProtocol;

  ///  Returns the name of the interface, if one is provided by the
  /// device. This is the value of the string descriptor with the index
  /// specified by the [iInterface] field of the interface descriptor
  /// defining this interface.
  external String? get interfaceName;

  ///  Returns an array containing instances of the [USBEndpoint]
  /// interface describing each of the endpoints that are part of this
  /// interface.
  external Iterable<USBEndpoint> get endpoints;
}

@JS()
enum USBDirection {
  @JS('in')
  valueIn,
  out
}

@JS()
enum USBEndpointType { bulk, interrupt, isochronous }

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///  The interface of the WebUSB API provides information about an
/// endpoint provided by the USB device. An endpoint represents a
/// unidirectional data stream into or out of a device.
@JS()
class USBEndpoint {
  external factory USBEndpoint(
      {USBAlternateInterface alternate,
      int endpointNumber,
      USBDirection direction});

  ///  Returns this endpoint's "endpoint number" which is a value from
  /// 1 to 15 extracted from the [bEndpointAddress] field of the
  /// endpoint descriptor defining this endpoint. This value is used to
  /// identify the endpoint when calling methods on [USBDevice].
  external int get endpointNumber;

  ///  Returns the direction in which this endpoint transfers data, one
  /// of:
  ///
  ///  ["in"] - Data is transferred from device to host.
  ///
  ///
  ///
  ///  ["out"] - Data is transferred from host to device.
  ///
  ///
  external USBDirection get direction;

  /// Returns the type of this endpoint, one of:
  ///
  ///   ["bulk"] - Provides reliable data transfer for large payloads.
  /// Data sent through a bulk endpoint is guaranteed to be delivered
  /// or generate an error but may be preempted by other data traffic.
  ///
  ///
  ///
  ///   ["interrupt"] - Provides reliable data transfer for small
  /// payloads. Data sent through an interrupt endpoint is guaranteed
  /// to be delivered or generate an error and is also given dedicated
  /// bus time for transmission.
  ///
  ///
  ///
  ///   ["isochronous"] - Provides unreliable data transfer for
  /// payloads that must be delivered periodically. They are given
  /// dedicated bus time but if a deadline is missed the data is
  /// dropped.
  ///
  ///
  external USBEndpointType get type;

  ///  Returns the size of the packets that data sent through this
  /// endpoint will be divided into.
  external int get packetSize;
}

@anonymous
@JS()
class USBPermissionDescriptor extends PermissionDescriptor {
  external Iterable<USBDeviceFilter> get filters;
  external set filters(Iterable<USBDeviceFilter> newValue);

  external factory USBPermissionDescriptor({Iterable<USBDeviceFilter> filters});
}

@anonymous
@JS()
class AllowedUSBDevice {
  external int get vendorId;
  external set vendorId(int newValue);
  external int get productId;
  external set productId(int newValue);
  external String get serialNumber;
  external set serialNumber(String newValue);

  external factory AllowedUSBDevice(
      {int vendorId, int productId, String serialNumber});
}

@anonymous
@JS()
class USBPermissionStorage {
  external Iterable<AllowedUSBDevice> get allowedDevices;
  external set allowedDevices(Iterable<AllowedUSBDevice> newValue);

  external factory USBPermissionStorage(
      {Iterable<AllowedUSBDevice> allowedDevices = const []});
}

@JS()
class USBPermissionResult extends PermissionStatus {
  external Iterable<USBDevice> get devices;
  external set devices(Iterable<USBDevice> newValue);

  external factory USBPermissionResult();
}
