/// WebHID API
///
/// https://wicg.github.io/webhid/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webhid;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  The interface provides methods for connecting to HID devices,
/// listing attached HID devices and event handlers for connected HID
/// devices.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    HID
///
///
@experimental
@JS('HID')
@staticInterop
class Hid implements EventTarget {
  external factory Hid();
}

extension PropsHid on Hid {
  EventHandlerNonNull? get onconnect => js_util.getProperty(this, 'onconnect');
  set onconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onconnect', newValue);
  }

  EventHandlerNonNull? get ondisconnect =>
      js_util.getProperty(this, 'ondisconnect');
  set ondisconnect(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondisconnect', newValue);
  }

  Future<Iterable<HIDDevice>> getDevices() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getDevices', []));

  Future<Iterable<HIDDevice>> requestDevice(HIDDeviceRequestOptions options) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestDevice', [options]));
}

@anonymous
@JS()
@staticInterop
class HIDDeviceRequestOptions {
  external factory HIDDeviceRequestOptions(
      {required Iterable<HIDDeviceFilter> filters,
      required Iterable<HIDDeviceFilter> exclusionFilters});
}

extension PropsHIDDeviceRequestOptions on HIDDeviceRequestOptions {
  Iterable<HIDDeviceFilter> get filters => js_util.getProperty(this, 'filters');
  set filters(Iterable<HIDDeviceFilter> newValue) {
    js_util.setProperty(this, 'filters', newValue);
  }

  Iterable<HIDDeviceFilter> get exclusionFilters =>
      js_util.getProperty(this, 'exclusionFilters');
  set exclusionFilters(Iterable<HIDDeviceFilter> newValue) {
    js_util.setProperty(this, 'exclusionFilters', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class HIDDeviceFilter {
  external factory HIDDeviceFilter(
      {required int vendorId,
      required int productId,
      required int usagePage,
      required int usage});
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

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
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
///
///
///    HIDDevice
///
///
@experimental
@JS()
@staticInterop
class HIDDevice implements EventTarget {
  external factory HIDDevice();
}

extension PropsHIDDevice on HIDDevice {
  EventHandlerNonNull? get oninputreport =>
      js_util.getProperty(this, 'oninputreport');
  set oninputreport(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oninputreport', newValue);
  }

  bool get opened => js_util.getProperty(this, 'opened');
  int get vendorId => js_util.getProperty(this, 'vendorId');
  int get productId => js_util.getProperty(this, 'productId');
  String get productName => js_util.getProperty(this, 'productName');
  Iterable<HIDCollectionInfo> get collections =>
      js_util.getProperty(this, 'collections');
  Future<void> open() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'open', []));

  Future<void> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));

  Future<void> forget() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'forget', []));

  Future<void> sendReport(int reportId, dynamic data) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'sendReport', [reportId, data]));

  Future<void> sendFeatureReport(int reportId, dynamic data) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'sendFeatureReport', [reportId, data]));

  Future<ByteData> receiveFeatureReport(int reportId) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'receiveFeatureReport', [reportId]));
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  The interface of the [WebHID API] represents HID connection
/// events, and is the event type passed to [HID.onconnect] and
/// [HID.ondisconnect] when an input report is received.
///
///
///
///    Event
///
///
///
///
///
///
///
///    HIDConnectionEvent
///
///
@experimental
@JS()
@staticInterop
class HIDConnectionEvent implements Event {
  external factory HIDConnectionEvent(
      String type, HIDConnectionEventInit eventInitDict);
}

extension PropsHIDConnectionEvent on HIDConnectionEvent {
  HIDDevice get device => js_util.getProperty(this, 'device');
}

@anonymous
@JS()
@staticInterop
class HIDConnectionEventInit implements EventInit {
  external factory HIDConnectionEventInit({required HIDDevice device});
}

extension PropsHIDConnectionEventInit on HIDConnectionEventInit {
  HIDDevice get device => js_util.getProperty(this, 'device');
  set device(HIDDevice newValue) {
    js_util.setProperty(this, 'device', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  The interface of the [WebHID API] is passed to
/// [HIDDevice.inputreport_event] when an input report is received
/// from any associated HID device.
///
///
///
///    Event
///
///
///
///
///
///
///
///    HIDInputReportEvent
///
///
@experimental
@JS()
@staticInterop
class HIDInputReportEvent implements Event {
  external factory HIDInputReportEvent(
      String type, HIDInputReportEventInit eventInitDict);
}

extension PropsHIDInputReportEvent on HIDInputReportEvent {
  HIDDevice get device => js_util.getProperty(this, 'device');
  int get reportId => js_util.getProperty(this, 'reportId');
  ByteData get data => js_util.getProperty(this, 'data');
}

@anonymous
@JS()
@staticInterop
class HIDInputReportEventInit implements EventInit {
  external factory HIDInputReportEventInit(
      {required HIDDevice device,
      required int reportId,
      required ByteData data});
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

@anonymous
@JS()
@staticInterop
class HIDCollectionInfo {
  external factory HIDCollectionInfo(
      {required int usagePage,
      required int usage,
      required int type,
      required Iterable<HIDCollectionInfo> children,
      required Iterable<HIDReportInfo> inputReports,
      required Iterable<HIDReportInfo> outputReports,
      required Iterable<HIDReportInfo> featureReports});
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

@anonymous
@JS()
@staticInterop
class HIDReportInfo {
  external factory HIDReportInfo(
      {required int reportId, required Iterable<HIDReportItem> items});
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
class HIDReportItem {
  external factory HIDReportItem._(
      {required bool isAbsolute,
      required bool isArray,
      required bool isBufferedBytes,
      required bool isConstant,
      required bool isLinear,
      required bool isRange,
      required bool isVolatile,
      required bool hasNull,
      required bool hasPreferredState,
      required bool wrap,
      required Iterable<int> usages,
      required int usageMinimum,
      required int usageMaximum,
      required int reportSize,
      required int reportCount,
      required int unitExponent,
      required String unitSystem,
      required int unitFactorLengthExponent,
      required int unitFactorMassExponent,
      required int unitFactorTimeExponent,
      required int unitFactorTemperatureExponent,
      required int unitFactorCurrentExponent,
      required int unitFactorLuminousIntensityExponent,
      required int logicalMinimum,
      required int logicalMaximum,
      required int physicalMinimum,
      required int physicalMaximum,
      required Iterable<String> strings});

  factory HIDReportItem(
          {required bool isAbsolute,
          required bool isArray,
          required bool isBufferedBytes,
          required bool isConstant,
          required bool isLinear,
          required bool isRange,
          required bool isVolatile,
          required bool hasNull,
          required bool hasPreferredState,
          required bool wrap,
          required Iterable<int> usages,
          required int usageMinimum,
          required int usageMaximum,
          required int reportSize,
          required int reportCount,
          required int unitExponent,
          required HIDUnitSystem unitSystem,
          required int unitFactorLengthExponent,
          required int unitFactorMassExponent,
          required int unitFactorTimeExponent,
          required int unitFactorTemperatureExponent,
          required int unitFactorCurrentExponent,
          required int unitFactorLuminousIntensityExponent,
          required int logicalMinimum,
          required int logicalMaximum,
          required int physicalMinimum,
          required int physicalMaximum,
          required Iterable<String> strings}) =>
      HIDReportItem._(
          isAbsolute: isAbsolute,
          isArray: isArray,
          isBufferedBytes: isBufferedBytes,
          isConstant: isConstant,
          isLinear: isLinear,
          isRange: isRange,
          isVolatile: isVolatile,
          hasNull: hasNull,
          hasPreferredState: hasPreferredState,
          wrap: wrap,
          usages: usages,
          usageMinimum: usageMinimum,
          usageMaximum: usageMaximum,
          reportSize: reportSize,
          reportCount: reportCount,
          unitExponent: unitExponent,
          unitSystem: unitSystem.value,
          unitFactorLengthExponent: unitFactorLengthExponent,
          unitFactorMassExponent: unitFactorMassExponent,
          unitFactorTimeExponent: unitFactorTimeExponent,
          unitFactorTemperatureExponent: unitFactorTemperatureExponent,
          unitFactorCurrentExponent: unitFactorCurrentExponent,
          unitFactorLuminousIntensityExponent:
              unitFactorLuminousIntensityExponent,
          logicalMinimum: logicalMinimum,
          logicalMaximum: logicalMaximum,
          physicalMinimum: physicalMinimum,
          physicalMaximum: physicalMaximum,
          strings: strings);
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

  HIDUnitSystem get unitSystem =>
      HIDUnitSystem.fromValue(js_util.getProperty(this, 'unitSystem'));
  set unitSystem(HIDUnitSystem newValue) {
    js_util.setProperty(this, 'unitSystem', newValue.value);
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

enum HIDUnitSystem {
  none('none'),
  siLinear('si-linear'),
  siRotation('si-rotation'),
  englishLinear('english-linear'),
  englishRotation('english-rotation'),
  vendorDefined('vendor-defined'),
  reserved('reserved');

  final String value;
  static HIDUnitSystem fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<HIDUnitSystem> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const HIDUnitSystem(this.value);
}
