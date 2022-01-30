/// WebHID API
///
/// https://wicg.github.io/webhid/
@JS('window')
@staticInterop
library webhid;

import 'dart:js_util' as js_util;
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
  int get vendorId => js_util.getProperty(this, 'vendorId');
  set vendorId(int newValue) {
    js_util.setProperty(this, 'vendorId', newValue);
  }

  int get productId => js_util.getProperty(this, 'productId');
  set productId(int newValue) {
    js_util.setProperty(this, 'productId', newValue);
  }

  int get usagePage => js_util.getProperty(this, 'usagePage');
  set usagePage(int newValue) {
    js_util.setProperty(this, 'usagePage', newValue);
  }

  int get usage => js_util.getProperty(this, 'usage');
  set usage(int newValue) {
    js_util.setProperty(this, 'usage', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class HIDDeviceRequestOptions {
  external factory HIDDeviceRequestOptions({Iterable<HIDDeviceFilter> filters});
}

extension PropsHIDDeviceRequestOptions on HIDDeviceRequestOptions {
  Iterable<HIDDeviceFilter> get filters => js_util.getProperty(this, 'filters');
  set filters(Iterable<HIDDeviceFilter> newValue) {
    js_util.setProperty(this, 'filters', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface provides methods for connecting to HID devices,
/// listing attached HID devices and event handlers for connected HID
/// devices.
@JS()
@staticInterop
class HID implements EventTarget {
  external HID();
}

extension PropsHID on HID {
  EventHandlerNonNull? get onconnect => js_util.getProperty(this, 'onconnect');
  set onconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onconnect', newValue);
  }

  EventHandlerNonNull? get ondisconnect =>
      js_util.getProperty(this, 'ondisconnect');
  set ondisconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondisconnect', newValue);
  }

  ///  Returns a [Future] that resolves with an array of connected
  /// [HIDDevice] objects.
  ///
  /// HID.getDevices();
  ///
  Future<Iterable<HIDDevice>> getDevices() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getDevices', []));

  ///  Returns a [Future] that resolves with an array of connected
  /// [HIDDevice] objects. Calling this function will trigger the user
  /// agent's permission flow in order to gain permission to access one
  /// selected device from the returned list of devices.
  ///
  /// HID.requestDevice(options);
  ///
  Future<Iterable<HIDDevice>> requestDevice(

          ///  An object containing an array of filter objects for possible
          /// devices to pair with. Each filter object can have the following
          /// properties:
          ///
          ///    [vendorId]Optional
          ///
          ///      An integer representing the vendorId of the requested HID
          /// device
          ///
          ///    [productId]Optional
          ///
          ///      An integer representing the productId of the requested HID
          /// device.
          ///
          ///    [usagePage]Optional
          ///
          ///      An integer representing the usage page component of the HID
          /// usage of the requested device. The usage for a top level
          /// collection is used to identify the device type.
          ///      Standard HID usage values can be found in the HID Usage
          /// Tables document
          ///
          ///    [usage]Optional
          ///
          ///      An integer representing the usage ID component of the HID
          /// usage of the requested device.
          ///
          ///
          ///
          HIDDeviceRequestOptions options) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestDevice', [options]));
}

@anonymous
@JS()
@staticInterop
class HIDConnectionEventInit implements EventInit {
  external factory HIDConnectionEventInit({HIDDevice device});
}

extension PropsHIDConnectionEventInit on HIDConnectionEventInit {
  HIDDevice get device => js_util.getProperty(this, 'device');
  set device(HIDDevice newValue) {
    js_util.setProperty(this, 'device', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [WebHID API] represents HID connection
/// events, and is the event type passed to [HID.onconnect] and
/// [HID.ondisconnect] when an input report is received.
@JS()
@staticInterop
class HIDConnectionEvent implements Event {
  external HIDConnectionEvent(
      String type, HIDConnectionEventInit eventInitDict);
}

extension PropsHIDConnectionEvent on HIDConnectionEvent {
  ///  Returns the [HIDDevice] instance representing the device
  /// associated with the connection event.
  ///
  HIDDevice get device => js_util.getProperty(this, 'device');
}

@anonymous
@JS()
@staticInterop
class HIDInputReportEventInit implements EventInit {
  external factory HIDInputReportEventInit(
      {HIDDevice device, int reportId, ByteData data});
}

extension PropsHIDInputReportEventInit on HIDInputReportEventInit {
  HIDDevice get device => js_util.getProperty(this, 'device');
  set device(HIDDevice newValue) {
    js_util.setProperty(this, 'device', newValue);
  }

  int get reportId => js_util.getProperty(this, 'reportId');
  set reportId(int newValue) {
    js_util.setProperty(this, 'reportId', newValue);
  }

  ByteData get data => js_util.getProperty(this, 'data');
  set data(ByteData newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [WebHID API] is passed to
/// [HIDDevice.oninputreport] when an input report is received from
/// any associated HID device.
@JS()
@staticInterop
class HIDInputReportEvent implements Event {
  external HIDInputReportEvent(
      String type, HIDInputReportEventInit eventInitDict);
}

extension PropsHIDInputReportEvent on HIDInputReportEvent {
  ///  The [HIDDevice] instance that represents the HID interface that
  /// sent the input report.
  ///
  HIDDevice get device => js_util.getProperty(this, 'device');

  ///  The one-byte identification prefix for this report, or 0 if the
  /// HID interface does not use report IDs.
  ///
  int get reportId => js_util.getProperty(this, 'reportId');

  ///  A [DataView] containing the data from the input report,
  /// excluding the [reportId] if the HID interface uses report IDs.
  ///
  ByteData get data => js_util.getProperty(this, 'data');
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
  bool get isAbsolute => js_util.getProperty(this, 'isAbsolute');
  set isAbsolute(bool newValue) {
    js_util.setProperty(this, 'isAbsolute', newValue);
  }

  bool get isArray => js_util.getProperty(this, 'isArray');
  set isArray(bool newValue) {
    js_util.setProperty(this, 'isArray', newValue);
  }

  bool get isBufferedBytes => js_util.getProperty(this, 'isBufferedBytes');
  set isBufferedBytes(bool newValue) {
    js_util.setProperty(this, 'isBufferedBytes', newValue);
  }

  bool get isConstant => js_util.getProperty(this, 'isConstant');
  set isConstant(bool newValue) {
    js_util.setProperty(this, 'isConstant', newValue);
  }

  bool get isLinear => js_util.getProperty(this, 'isLinear');
  set isLinear(bool newValue) {
    js_util.setProperty(this, 'isLinear', newValue);
  }

  bool get isRange => js_util.getProperty(this, 'isRange');
  set isRange(bool newValue) {
    js_util.setProperty(this, 'isRange', newValue);
  }

  bool get isVolatile => js_util.getProperty(this, 'isVolatile');
  set isVolatile(bool newValue) {
    js_util.setProperty(this, 'isVolatile', newValue);
  }

  bool get hasNull => js_util.getProperty(this, 'hasNull');
  set hasNull(bool newValue) {
    js_util.setProperty(this, 'hasNull', newValue);
  }

  bool get hasPreferredState => js_util.getProperty(this, 'hasPreferredState');
  set hasPreferredState(bool newValue) {
    js_util.setProperty(this, 'hasPreferredState', newValue);
  }

  bool get wrap => js_util.getProperty(this, 'wrap');
  set wrap(bool newValue) {
    js_util.setProperty(this, 'wrap', newValue);
  }

  Iterable<int> get usages => js_util.getProperty(this, 'usages');
  set usages(Iterable<int> newValue) {
    js_util.setProperty(this, 'usages', newValue);
  }

  int get usageMinimum => js_util.getProperty(this, 'usageMinimum');
  set usageMinimum(int newValue) {
    js_util.setProperty(this, 'usageMinimum', newValue);
  }

  int get usageMaximum => js_util.getProperty(this, 'usageMaximum');
  set usageMaximum(int newValue) {
    js_util.setProperty(this, 'usageMaximum', newValue);
  }

  int get reportSize => js_util.getProperty(this, 'reportSize');
  set reportSize(int newValue) {
    js_util.setProperty(this, 'reportSize', newValue);
  }

  int get reportCount => js_util.getProperty(this, 'reportCount');
  set reportCount(int newValue) {
    js_util.setProperty(this, 'reportCount', newValue);
  }

  int get unitExponent => js_util.getProperty(this, 'unitExponent');
  set unitExponent(int newValue) {
    js_util.setProperty(this, 'unitExponent', newValue);
  }

  HIDUnitSystem get unitSystem => js_util.getProperty(this, 'unitSystem');
  set unitSystem(HIDUnitSystem newValue) {
    js_util.setProperty(this, 'unitSystem', newValue);
  }

  int get unitFactorLengthExponent =>
      js_util.getProperty(this, 'unitFactorLengthExponent');
  set unitFactorLengthExponent(int newValue) {
    js_util.setProperty(this, 'unitFactorLengthExponent', newValue);
  }

  int get unitFactorMassExponent =>
      js_util.getProperty(this, 'unitFactorMassExponent');
  set unitFactorMassExponent(int newValue) {
    js_util.setProperty(this, 'unitFactorMassExponent', newValue);
  }

  int get unitFactorTimeExponent =>
      js_util.getProperty(this, 'unitFactorTimeExponent');
  set unitFactorTimeExponent(int newValue) {
    js_util.setProperty(this, 'unitFactorTimeExponent', newValue);
  }

  int get unitFactorTemperatureExponent =>
      js_util.getProperty(this, 'unitFactorTemperatureExponent');
  set unitFactorTemperatureExponent(int newValue) {
    js_util.setProperty(this, 'unitFactorTemperatureExponent', newValue);
  }

  int get unitFactorCurrentExponent =>
      js_util.getProperty(this, 'unitFactorCurrentExponent');
  set unitFactorCurrentExponent(int newValue) {
    js_util.setProperty(this, 'unitFactorCurrentExponent', newValue);
  }

  int get unitFactorLuminousIntensityExponent =>
      js_util.getProperty(this, 'unitFactorLuminousIntensityExponent');
  set unitFactorLuminousIntensityExponent(int newValue) {
    js_util.setProperty(this, 'unitFactorLuminousIntensityExponent', newValue);
  }

  int get logicalMinimum => js_util.getProperty(this, 'logicalMinimum');
  set logicalMinimum(int newValue) {
    js_util.setProperty(this, 'logicalMinimum', newValue);
  }

  int get logicalMaximum => js_util.getProperty(this, 'logicalMaximum');
  set logicalMaximum(int newValue) {
    js_util.setProperty(this, 'logicalMaximum', newValue);
  }

  int get physicalMinimum => js_util.getProperty(this, 'physicalMinimum');
  set physicalMinimum(int newValue) {
    js_util.setProperty(this, 'physicalMinimum', newValue);
  }

  int get physicalMaximum => js_util.getProperty(this, 'physicalMaximum');
  set physicalMaximum(int newValue) {
    js_util.setProperty(this, 'physicalMaximum', newValue);
  }

  Iterable<String> get strings => js_util.getProperty(this, 'strings');
  set strings(Iterable<String> newValue) {
    js_util.setProperty(this, 'strings', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class HIDReportInfo {
  external factory HIDReportInfo({int reportId, Iterable<HIDReportItem> items});
}

extension PropsHIDReportInfo on HIDReportInfo {
  int get reportId => js_util.getProperty(this, 'reportId');
  set reportId(int newValue) {
    js_util.setProperty(this, 'reportId', newValue);
  }

  Iterable<HIDReportItem> get items => js_util.getProperty(this, 'items');
  set items(Iterable<HIDReportItem> newValue) {
    js_util.setProperty(this, 'items', newValue);
  }
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
  int get usagePage => js_util.getProperty(this, 'usagePage');
  set usagePage(int newValue) {
    js_util.setProperty(this, 'usagePage', newValue);
  }

  int get usage => js_util.getProperty(this, 'usage');
  set usage(int newValue) {
    js_util.setProperty(this, 'usage', newValue);
  }

  int get type => js_util.getProperty(this, 'type');
  set type(int newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  Iterable<HIDCollectionInfo> get children =>
      js_util.getProperty(this, 'children');
  set children(Iterable<HIDCollectionInfo> newValue) {
    js_util.setProperty(this, 'children', newValue);
  }

  Iterable<HIDReportInfo> get inputReports =>
      js_util.getProperty(this, 'inputReports');
  set inputReports(Iterable<HIDReportInfo> newValue) {
    js_util.setProperty(this, 'inputReports', newValue);
  }

  Iterable<HIDReportInfo> get outputReports =>
      js_util.getProperty(this, 'outputReports');
  set outputReports(Iterable<HIDReportInfo> newValue) {
    js_util.setProperty(this, 'outputReports', newValue);
  }

  Iterable<HIDReportInfo> get featureReports =>
      js_util.getProperty(this, 'featureReports');
  set featureReports(Iterable<HIDReportInfo> newValue) {
    js_util.setProperty(this, 'featureReports', newValue);
  }
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
  external HIDDevice();
}

extension PropsHIDDevice on HIDDevice {
  EventHandlerNonNull? get oninputreport =>
      js_util.getProperty(this, 'oninputreport');
  set oninputreport(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oninputreport', newValue);
  }

  /// Returns a [bool], true if the device has an open connection.
  ///
  bool get opened => js_util.getProperty(this, 'opened');

  /// Returns the vendorId of the HID device.
  ///
  int get vendorId => js_util.getProperty(this, 'vendorId');

  /// Returns the productID of the HID device.
  ///
  int get productId => js_util.getProperty(this, 'productId');

  ///  Returns a [string] containing the product name of the HID
  /// device.
  ///
  String get productName => js_util.getProperty(this, 'productName');

  /// Returns an array of report formats for the HID device.
  ///
  Iterable<HIDCollectionInfo> get collections =>
      js_util.getProperty(this, 'collections');

  ///  Opens a connection to this HID device, and returns a [Future]
  /// which resolves once the connection has been successful.
  ///
  /// HIDDevice.open();
  ///
  Future<Object> open() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'open', []));

  ///  Closes the connection to this HID device, and returns a [Future]
  /// which resolves once the connection has been closed.
  ///
  /// HIDDevice.close();
  ///
  Future<Object> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));

  ///  Sends an output report to this HID Device, and returns a
  /// [Future] which resolves once the report has been sent.
  ///
  /// HIDDevice.sendReport(reportId, data);
  ///
  Future<Object> sendReport(

          ///  An 8-bit report ID. If the HID device does not use report IDs,
          /// send [0].
          ///
          int reportId,

          /// Bytes as a [BufferSource].
          ///
          dynamic data) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'sendReport', [reportId, data]));

  ///  Sends a feature report to this HID device, and returns a
  /// [Future] which resolves once the report has been sent.
  ///
  /// HIDDevice.sendFeatureReport(reportId, data);
  ///
  Future<Object> sendFeatureReport(

          ///  An 8-bit report ID. If the HID device does not use report IDs,
          /// send [0].
          ///
          int reportId,

          /// Bytes as a [BufferSource].
          ///
          dynamic data) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'sendFeatureReport', [reportId, data]));

  ///  Receives a feature report from this HID device in the form of a
  /// [Future] which resolves with a [DataView]. This allows typed
  /// access to the contents of this message.
  ///
  /// HIDDevice.receiveFeatureReport(reportId);
  ///
  Future<ByteData> receiveFeatureReport(

          ///  An 8-bit report ID. If the HID device does not use report IDs,
          /// send [0].
          ///
          int reportId) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'receiveFeatureReport', [reportId]));
}
