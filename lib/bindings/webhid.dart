/// WebHID API
///
/// https://wicg.github.io/webhid/
@JS('window')
@staticInterop
library webhid;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html */

@anonymous
@JS()
@staticInterop
class HIDDeviceFilter {
  external factory HIDDeviceFilter(
      {int vendorId, int productId, int usagePage, int usage});
}

extension PropsHIDDeviceFilter on HIDDeviceFilter {
  external int get vendorId;
  external set vendorId(int newValue);
  external int get productId;
  external set productId(int newValue);
  external int get usagePage;
  external set usagePage(int newValue);
  external int get usage;
  external set usage(int newValue);
}

@anonymous
@JS()
@staticInterop
class HIDDeviceRequestOptions {
  external factory HIDDeviceRequestOptions({Iterable<HIDDeviceFilter> filters});
}

extension PropsHIDDeviceRequestOptions on HIDDeviceRequestOptions {
  external Iterable<HIDDeviceFilter> get filters;
  external set filters(Iterable<HIDDeviceFilter> newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface provides methods for connecting to HID devices,
/// listing attached HID devices and event handlers for connected HID
/// devices.
@JS()
@staticInterop
class HID implements EventTarget {
  external factory HID();
}

extension PropsHID on HID {
  external EventHandlerNonNull? get onconnect;
  external set onconnect(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondisconnect;
  external set ondisconnect(EventHandlerNonNull? newValue);

  ///  Returns a [Promise] that resolves with an array of connected
  /// [HIDDevice] objects.
  ///
  /// HID.getDevices();
  ///
  external Iterable<Promise<HIDDevice>> getDevices();

  ///  Returns a [Promise] that resolves with an array of connected
  /// [HIDDevice] objects. Calling this function will trigger the user
  /// agent's permission flow in order to gain permission to access one
  /// selected device from the returned list of devices.
  ///
  /// HID.requestDevice(options);
  ///
  external Iterable<Promise<HIDDevice>> requestDevice(
      HIDDeviceRequestOptions options);
}

@anonymous
@JS()
@staticInterop
class HIDConnectionEventInit implements EventInit {
  external factory HIDConnectionEventInit({HIDDevice device});
}

extension PropsHIDConnectionEventInit on HIDConnectionEventInit {
  external HIDDevice get device;
  external set device(HIDDevice newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [WebHID API] represents HID connection
/// events, and is the event type passed to [HID.onconnect] and
/// [HID.ondisconnect] when an input report is received.
@JS()
@staticInterop
class HIDConnectionEvent implements Event {
  external factory HIDConnectionEvent(
      String type, HIDConnectionEventInit eventInitDict);
}

extension PropsHIDConnectionEvent on HIDConnectionEvent {
  ///  Returns the [HIDDevice] instance representing the device
  /// associated with the connection event.
  ///
  external HIDDevice get device;
}

@anonymous
@JS()
@staticInterop
class HIDInputReportEventInit implements EventInit {
  external factory HIDInputReportEventInit(
      {HIDDevice device, int reportId, ByteData data});
}

extension PropsHIDInputReportEventInit on HIDInputReportEventInit {
  external HIDDevice get device;
  external set device(HIDDevice newValue);
  external int get reportId;
  external set reportId(int newValue);
  external ByteData get data;
  external set data(ByteData newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [WebHID API] is passed to
/// [HIDDevice.oninputreport] when an input report is received from
/// any associated HID device.
@JS()
@staticInterop
class HIDInputReportEvent implements Event {
  external factory HIDInputReportEvent(
      String type, HIDInputReportEventInit eventInitDict);
}

extension PropsHIDInputReportEvent on HIDInputReportEvent {
  ///  The [HIDDevice] instance that represents the HID interface that
  /// sent the input report.
  ///
  external HIDDevice get device;

  ///  The one-byte identification prefix for this report, or 0 if the
  /// HID interface does not use report IDs.
  ///
  external int get reportId;

  ///  A [DataView] containing the data from the input report,
  /// excluding the [reportId] if the HID interface uses report IDs.
  ///
  external ByteData get data;
}

enum HIDUnitSystem {
  none,
  siLinear,
  siRotation,
  englishLinear,
  englishRotation,
  vendorDefined,
  reserved
}

@anonymous
@JS()
@staticInterop
class HIDReportItem {
  external factory HIDReportItem(
      {bool isAbsolute,
      bool isArray,
      bool isBufferedBytes,
      bool isConstant,
      bool isLinear,
      bool isRange,
      bool isVolatile,
      bool hasNull,
      bool hasPreferredState,
      bool wrap,
      Iterable<int> usages,
      int usageMinimum,
      int usageMaximum,
      int reportSize,
      int reportCount,
      int unitExponent,
      HIDUnitSystem unitSystem,
      int unitFactorLengthExponent,
      int unitFactorMassExponent,
      int unitFactorTimeExponent,
      int unitFactorTemperatureExponent,
      int unitFactorCurrentExponent,
      int unitFactorLuminousIntensityExponent,
      int logicalMinimum,
      int logicalMaximum,
      int physicalMinimum,
      int physicalMaximum,
      Iterable<String> strings});
}

extension PropsHIDReportItem on HIDReportItem {
  external bool get isAbsolute;
  external set isAbsolute(bool newValue);
  external bool get isArray;
  external set isArray(bool newValue);
  external bool get isBufferedBytes;
  external set isBufferedBytes(bool newValue);
  external bool get isConstant;
  external set isConstant(bool newValue);
  external bool get isLinear;
  external set isLinear(bool newValue);
  external bool get isRange;
  external set isRange(bool newValue);
  external bool get isVolatile;
  external set isVolatile(bool newValue);
  external bool get hasNull;
  external set hasNull(bool newValue);
  external bool get hasPreferredState;
  external set hasPreferredState(bool newValue);
  external bool get wrap;
  external set wrap(bool newValue);
  external Iterable<int> get usages;
  external set usages(Iterable<int> newValue);
  external int get usageMinimum;
  external set usageMinimum(int newValue);
  external int get usageMaximum;
  external set usageMaximum(int newValue);
  external int get reportSize;
  external set reportSize(int newValue);
  external int get reportCount;
  external set reportCount(int newValue);
  external int get unitExponent;
  external set unitExponent(int newValue);
  external HIDUnitSystem get unitSystem;
  external set unitSystem(HIDUnitSystem newValue);
  external int get unitFactorLengthExponent;
  external set unitFactorLengthExponent(int newValue);
  external int get unitFactorMassExponent;
  external set unitFactorMassExponent(int newValue);
  external int get unitFactorTimeExponent;
  external set unitFactorTimeExponent(int newValue);
  external int get unitFactorTemperatureExponent;
  external set unitFactorTemperatureExponent(int newValue);
  external int get unitFactorCurrentExponent;
  external set unitFactorCurrentExponent(int newValue);
  external int get unitFactorLuminousIntensityExponent;
  external set unitFactorLuminousIntensityExponent(int newValue);
  external int get logicalMinimum;
  external set logicalMinimum(int newValue);
  external int get logicalMaximum;
  external set logicalMaximum(int newValue);
  external int get physicalMinimum;
  external set physicalMinimum(int newValue);
  external int get physicalMaximum;
  external set physicalMaximum(int newValue);
  external Iterable<String> get strings;
  external set strings(Iterable<String> newValue);
}

@anonymous
@JS()
@staticInterop
class HIDReportInfo {
  external factory HIDReportInfo({int reportId, Iterable<HIDReportItem> items});
}

extension PropsHIDReportInfo on HIDReportInfo {
  external int get reportId;
  external set reportId(int newValue);
  external Iterable<HIDReportItem> get items;
  external set items(Iterable<HIDReportItem> newValue);
}

@anonymous
@JS()
@staticInterop
class HIDCollectionInfo {
  external factory HIDCollectionInfo(
      {int usagePage,
      int usage,
      int type,
      Iterable<HIDCollectionInfo> children,
      Iterable<HIDReportInfo> inputReports,
      Iterable<HIDReportInfo> outputReports,
      Iterable<HIDReportInfo> featureReports});
}

extension PropsHIDCollectionInfo on HIDCollectionInfo {
  external int get usagePage;
  external set usagePage(int newValue);
  external int get usage;
  external set usage(int newValue);
  external int get type;
  external set type(int newValue);
  external Iterable<HIDCollectionInfo> get children;
  external set children(Iterable<HIDCollectionInfo> newValue);
  external Iterable<HIDReportInfo> get inputReports;
  external set inputReports(Iterable<HIDReportInfo> newValue);
  external Iterable<HIDReportInfo> get outputReports;
  external set outputReports(Iterable<HIDReportInfo> newValue);
  external Iterable<HIDReportInfo> get featureReports;
  external set featureReports(Iterable<HIDReportInfo> newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [WebHID API] represents a HID Device. It
/// provides properties for accessing information about the device,
/// methods for opening and closing the connection, and the sending
/// and receiving of reports.
///
///
///
///    EventTarget
///
///
///
///
///
///    HIDDevice
///
///
@JS()
@staticInterop
class HIDDevice implements EventTarget {
  external factory HIDDevice();
}

extension PropsHIDDevice on HIDDevice {
  external EventHandlerNonNull? get oninputreport;
  external set oninputreport(EventHandlerNonNull? newValue);

  /// Returns a [boolean], true if the device has an open connection.
  ///
  external bool get opened;

  /// Returns the vendorId of the HID device.
  ///
  external int get vendorId;

  /// Returns the productID of the HID device.
  ///
  external int get productId;

  ///  Returns a [string] containing the product name of the HID
  /// device.
  ///
  external String get productName;

  /// Returns an array of report formats for the HID device.
  ///
  external Iterable<HIDCollectionInfo> get collections;

  ///  Opens a connection to this HID device, and returns a [Promise]
  /// which resolves once the connection has been successful.
  ///
  /// HIDDevice.open();
  ///
  external Promise<Object> open();

  ///  Closes the connection to this HID device, and returns a
  /// [Promise] which resolves once the connection has been closed.
  ///
  /// HIDDevice.close();
  ///
  external Promise<Object> close();

  ///  Sends an output report to this HID Device, and returns a
  /// [Promise] which resolves once the report has been sent.
  ///
  /// HIDDevice.sendReport(reportId, data);
  ///
  external Promise<Object> sendReport(int reportId, dynamic data);

  ///  Sends a feature report to this HID device, and returns a
  /// [Promise] which resolves once the report has been sent.
  ///
  /// HIDDevice.sendFeatureReport(reportId, data);
  ///
  external Promise<Object> sendFeatureReport(int reportId, dynamic data);

  ///  Receives a feature report from this HID device in the form of a
  /// [Promise] which resolves with a [DataView]. This allows typed
  /// access to the contents of this message.
  ///
  /// HIDDevice.receiveFeatureReport(reportId);
  ///
  external Promise<ByteData> receiveFeatureReport(int reportId);
}
