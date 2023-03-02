/// WebUSB API
///
/// https://wicg.github.io/webusb/

// ignore_for_file: unused_import

@JS('self')
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
      {int? vendorId,
      int? productId,
      int? classCode,
      int? subclassCode,
      int? protocolCode,
      String? serialNumber});
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
  external factory Usb();
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

  Future<Iterable<USBDevice>> getDevices() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getDevices', []));

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
///
///
///
///    Event
///
///
///
///
///
///    USBConnectionEvent
///
///
@JS()
@staticInterop
class USBConnectionEvent implements Event {
  external factory USBConnectionEvent(
      String type, USBConnectionEventInit eventInitDict);
}

extension PropsUSBConnectionEvent on USBConnectionEvent {
  USBDevice get device => js_util.getProperty(this, 'device');
}

enum USBTransferStatus {
  ok('ok'),
  stall('stall'),
  babble('babble');

  final String value;
  static USBTransferStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<USBTransferStatus> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const USBTransferStatus(this.value);
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
  external factory USBInTransferResult._(String status, [ByteData? data]);

  factory USBInTransferResult(USBTransferStatus status, [ByteData? data]) =>
      USBInTransferResult._(status.value, data ?? undefined);
}

extension PropsUSBInTransferResult on USBInTransferResult {
  ByteData? get data => js_util.getProperty(this, 'data');
  USBTransferStatus get status =>
      USBTransferStatus.fromValue(js_util.getProperty(this, 'status'));
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
  external factory USBOutTransferResult._(String status,
      [int? bytesWritten = 0]);

  factory USBOutTransferResult(USBTransferStatus status,
          [int? bytesWritten = 0]) =>
      USBOutTransferResult._(status.value, bytesWritten ?? 0);
}

extension PropsUSBOutTransferResult on USBOutTransferResult {
  int get bytesWritten => js_util.getProperty(this, 'bytesWritten');
  USBTransferStatus get status =>
      USBTransferStatus.fromValue(js_util.getProperty(this, 'status'));
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
  external factory USBIsochronousInTransferPacket._(String status,
      [ByteData? data]);

  factory USBIsochronousInTransferPacket(USBTransferStatus status,
          [ByteData? data]) =>
      USBIsochronousInTransferPacket._(status.value, data ?? undefined);
}

extension PropsUSBIsochronousInTransferPacket
    on USBIsochronousInTransferPacket {
  ByteData? get data => js_util.getProperty(this, 'data');
  USBTransferStatus get status =>
      USBTransferStatus.fromValue(js_util.getProperty(this, 'status'));
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
  external factory USBIsochronousInTransferResult._(
      Iterable<USBIsochronousInTransferPacket> packets,
      [ByteData? data]);

  factory USBIsochronousInTransferResult(
          Iterable<USBIsochronousInTransferPacket> packets,
          [ByteData? data]) =>
      USBIsochronousInTransferResult._(packets, data ?? undefined);
}

extension PropsUSBIsochronousInTransferResult
    on USBIsochronousInTransferResult {
  ByteData? get data => js_util.getProperty(this, 'data');
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
  external factory USBIsochronousOutTransferPacket._(String status,
      [int? bytesWritten = 0]);

  factory USBIsochronousOutTransferPacket(USBTransferStatus status,
          [int? bytesWritten = 0]) =>
      USBIsochronousOutTransferPacket._(status.value, bytesWritten ?? 0);
}

extension PropsUSBIsochronousOutTransferPacket
    on USBIsochronousOutTransferPacket {
  int get bytesWritten => js_util.getProperty(this, 'bytesWritten');
  USBTransferStatus get status =>
      USBTransferStatus.fromValue(js_util.getProperty(this, 'status'));
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
  external factory USBIsochronousOutTransferResult(
      Iterable<USBIsochronousOutTransferPacket> packets);
}

extension PropsUSBIsochronousOutTransferResult
    on USBIsochronousOutTransferResult {
  Iterable<USBIsochronousOutTransferPacket> get packets =>
      js_util.getProperty(this, 'packets');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the WebUSB API provides access to metadata
/// about a paired USB device and methods for controlling it.
@JS()
@staticInterop
class USBDevice {
  external factory USBDevice();
}

extension PropsUSBDevice on USBDevice {
  int get usbVersionMajor => js_util.getProperty(this, 'usbVersionMajor');
  int get usbVersionMinor => js_util.getProperty(this, 'usbVersionMinor');
  int get usbVersionSubminor => js_util.getProperty(this, 'usbVersionSubminor');
  int get deviceClass => js_util.getProperty(this, 'deviceClass');
  int get deviceSubclass => js_util.getProperty(this, 'deviceSubclass');
  int get deviceProtocol => js_util.getProperty(this, 'deviceProtocol');
  int get vendorId => js_util.getProperty(this, 'vendorId');
  int get productId => js_util.getProperty(this, 'productId');
  int get deviceVersionMajor => js_util.getProperty(this, 'deviceVersionMajor');
  int get deviceVersionMinor => js_util.getProperty(this, 'deviceVersionMinor');
  int get deviceVersionSubminor =>
      js_util.getProperty(this, 'deviceVersionSubminor');
  String? get manufacturerName => js_util.getProperty(this, 'manufacturerName');
  String? get productName => js_util.getProperty(this, 'productName');
  String? get serialNumber => js_util.getProperty(this, 'serialNumber');
  USBConfiguration? get configuration =>
      js_util.getProperty(this, 'configuration');
  Iterable<USBConfiguration> get configurations =>
      js_util.getProperty(this, 'configurations');
  bool get opened => js_util.getProperty(this, 'opened');
  Future<void> open() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'open', []));

  Future<void> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));

  Future<void> forget() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'forget', []));

  Future<void> selectConfiguration(int configurationValue) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'selectConfiguration', [configurationValue]));

  Future<void> claimInterface(int interfaceNumber) => js_util.promiseToFuture(
      js_util.callMethod(this, 'claimInterface', [interfaceNumber]));

  Future<void> releaseInterface(int interfaceNumber) => js_util.promiseToFuture(
      js_util.callMethod(this, 'releaseInterface', [interfaceNumber]));

  Future<void> selectAlternateInterface(
          int interfaceNumber, int alternateSetting) =>
      js_util.promiseToFuture(js_util.callMethod(this,
          'selectAlternateInterface', [interfaceNumber, alternateSetting]));

  Future<USBInTransferResult> controlTransferIn(
          USBControlTransferParameters setup, int length) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'controlTransferIn', [setup, length]));

  Future<USBOutTransferResult> controlTransferOut(
          USBControlTransferParameters setup,
          [dynamic data]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'controlTransferOut', [setup, data]));

  Future<void> clearHalt(USBDirection direction, int endpointNumber) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'clearHalt', [direction.value, endpointNumber]));

  Future<USBInTransferResult> transferIn(int endpointNumber, int length) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'transferIn', [endpointNumber, length]));

  Future<USBOutTransferResult> transferOut(int endpointNumber, dynamic data) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'transferOut', [endpointNumber, data]));

  Future<USBIsochronousInTransferResult> isochronousTransferIn(
          int endpointNumber, Iterable<int> packetLengths) =>
      js_util.promiseToFuture(js_util.callMethod(
          this, 'isochronousTransferIn', [endpointNumber, packetLengths]));

  Future<USBIsochronousOutTransferResult> isochronousTransferOut(
          int endpointNumber, dynamic data, Iterable<int> packetLengths) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'isochronousTransferOut',
          [endpointNumber, data, packetLengths]));

  Future<void> reset() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'reset', []));
}

enum USBRequestType {
  standard('standard'),
  valueClass('class'),
  vendor('vendor');

  final String value;
  static USBRequestType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<USBRequestType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const USBRequestType(this.value);
}

enum USBRecipient {
  device('device'),
  interface('interface'),
  endpoint('endpoint'),
  other('other');

  final String value;
  static USBRecipient fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<USBRecipient> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const USBRecipient(this.value);
}

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
          requestType: requestType.value,
          recipient: recipient.value,
          request: request,
          value: value,
          index: index);
}

extension PropsUSBControlTransferParameters on USBControlTransferParameters {
  USBRequestType get requestType =>
      USBRequestType.fromValue(js_util.getProperty(this, 'requestType'));
  set requestType(USBRequestType newValue) {
    js_util.setProperty(this, 'requestType', newValue.value);
  }

  USBRecipient get recipient =>
      USBRecipient.fromValue(js_util.getProperty(this, 'recipient'));
  set recipient(USBRecipient newValue) {
    js_util.setProperty(this, 'recipient', newValue.value);
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
///  The interface of the WebUSB API provides information about a
/// particular configuration of a USB device and the interfaces that
/// it supports.
@JS()
@staticInterop
class USBConfiguration {
  external factory USBConfiguration(USBDevice device, int configurationValue);
}

extension PropsUSBConfiguration on USBConfiguration {
  int get configurationValue => js_util.getProperty(this, 'configurationValue');
  String? get configurationName =>
      js_util.getProperty(this, 'configurationName');
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
  external factory USBInterface(
      USBConfiguration configuration, int interfaceNumber);
}

extension PropsUSBInterface on USBInterface {
  int get interfaceNumber => js_util.getProperty(this, 'interfaceNumber');
  USBAlternateInterface get alternate => js_util.getProperty(this, 'alternate');
  Iterable<USBAlternateInterface> get alternates =>
      js_util.getProperty(this, 'alternates');
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
  external factory USBAlternateInterface(
      USBInterface deviceInterface, int alternateSetting);
}

extension PropsUSBAlternateInterface on USBAlternateInterface {
  int get alternateSetting => js_util.getProperty(this, 'alternateSetting');
  int get interfaceClass => js_util.getProperty(this, 'interfaceClass');
  int get interfaceSubclass => js_util.getProperty(this, 'interfaceSubclass');
  int get interfaceProtocol => js_util.getProperty(this, 'interfaceProtocol');
  String? get interfaceName => js_util.getProperty(this, 'interfaceName');
  Iterable<USBEndpoint> get endpoints => js_util.getProperty(this, 'endpoints');
}

enum USBDirection {
  valueIn('in'),
  out('out');

  final String value;
  static USBDirection fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<USBDirection> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const USBDirection(this.value);
}

enum USBEndpointType {
  bulk('bulk'),
  interrupt('interrupt'),
  isochronous('isochronous');

  final String value;
  static USBEndpointType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<USBEndpointType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const USBEndpointType(this.value);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebUSB API provides information about an
/// endpoint provided by the USB device. An endpoint represents a
/// unidirectional data stream into or out of a device.
@JS()
@staticInterop
class USBEndpoint {
  external factory USBEndpoint._(
      USBAlternateInterface alternate, int endpointNumber, String direction);

  factory USBEndpoint(USBAlternateInterface alternate, int endpointNumber,
          USBDirection direction) =>
      USBEndpoint._(alternate, endpointNumber, direction.value);
}

extension PropsUSBEndpoint on USBEndpoint {
  int get endpointNumber => js_util.getProperty(this, 'endpointNumber');
  USBDirection get direction =>
      USBDirection.fromValue(js_util.getProperty(this, 'direction'));
  USBEndpointType get type =>
      USBEndpointType.fromValue(js_util.getProperty(this, 'type'));
  int get packetSize => js_util.getProperty(this, 'packetSize');
}

@anonymous
@JS()
@staticInterop
class USBPermissionDescriptor implements PermissionDescriptor {
  external factory USBPermissionDescriptor(
      {Iterable<USBDeviceFilter>? filters});
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
      {required int vendorId, required int productId, String? serialNumber});
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
  external factory USBPermissionStorage._(
      {Iterable<AllowedUSBDevice>? allowedDevices});

  factory USBPermissionStorage({Iterable<AllowedUSBDevice>? allowedDevices}) =>
      USBPermissionStorage._(allowedDevices: allowedDevices ?? const []);
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
  external factory USBPermissionResult();
}

extension PropsUSBPermissionResult on USBPermissionResult {
  Iterable<USBDevice> get devices => js_util.getProperty(this, 'devices');
  set devices(Iterable<USBDevice> newValue) {
    js_util.setProperty(this, 'devices', newValue);
  }
}
