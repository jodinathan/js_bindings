/// WebHID API
///
/// https://wicg.github.io/webhid/
@JS('window')
library webhid;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';

@anonymous
@JS()
class HIDDeviceFilter {
  external int get vendorId;
  external set vendorId(int newValue);
  external int get productId;
  external set productId(int newValue);
  external int get usagePage;
  external set usagePage(int newValue);
  external int get usage;
  external set usage(int newValue);

  external factory HIDDeviceFilter(
      {int vendorId, int productId, int usagePage, int usage});
}

@anonymous
@JS()
class HIDDeviceRequestOptions {
  external Iterable<HIDDeviceFilter> get filters;
  external set filters(Iterable<HIDDeviceFilter> newValue);

  external factory HIDDeviceRequestOptions({Iterable<HIDDeviceFilter> filters});
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface provides methods for connecting to HID devices,
/// listing attached HID devices and event handlers for connected HID
/// devices.
@JS()
class HID extends EventTarget {
  external EventHandlerNonNull? get onconnect;
  external set onconnect(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondisconnect;
  external set ondisconnect(EventHandlerNonNull? newValue);

  ///  Returns a [Promise] that resolves with an array of connected
  /// [HIDDevice] objects.
  ///
  external Iterable<Promise<HIDDevice>> getDevices();

  ///  Returns a [Promise] that resolves with an array of connected
  /// [HIDDevice] objects from the HID device selected from popup.
  ///   You can only select one HID device from the popup at a time
  /// from this [Promise], but the array might contain multiple
  /// [HIDDevice]s.
  ///
  external Iterable<Promise<HIDDevice>> requestDevice(
      HIDDeviceRequestOptions options);

  external factory HID();
}

@anonymous
@JS()
class HIDConnectionEventInit extends EventInit {
  external HIDDevice get device;
  external set device(HIDDevice newValue);

  external factory HIDConnectionEventInit({HIDDevice device});
}

@JS()
class HIDConnectionEvent extends Event {
  external factory HIDConnectionEvent(
      {String type, HIDConnectionEventInit eventInitDict});
  external HIDDevice get device;
}

@anonymous
@JS()
class HIDInputReportEventInit extends EventInit {
  external HIDDevice get device;
  external set device(HIDDevice newValue);
  external int get reportId;
  external set reportId(int newValue);
  external ByteData get data;
  external set data(ByteData newValue);

  external factory HIDInputReportEventInit(
      {HIDDevice device, int reportId, ByteData data});
}

@JS()
class HIDInputReportEvent extends Event {
  external factory HIDInputReportEvent(
      {String type, HIDInputReportEventInit eventInitDict});
  external HIDDevice get device;
  external int get reportId;
  external ByteData get data;
}

@JS()
enum HIDUnitSystem {
  none,
  @JS('si-linear')
  siLinear,
  @JS('si-rotation')
  siRotation,
  @JS('english-linear')
  englishLinear,
  @JS('english-rotation')
  englishRotation,
  @JS('vendor-defined')
  vendorDefined,
  reserved
}

@anonymous
@JS()
class HIDReportItem {
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

@anonymous
@JS()
class HIDReportInfo {
  external int get reportId;
  external set reportId(int newValue);
  external Iterable<HIDReportItem> get items;
  external set items(Iterable<HIDReportItem> newValue);

  external factory HIDReportInfo({int reportId, Iterable<HIDReportItem> items});
}

@anonymous
@JS()
class HIDCollectionInfo {
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

  external factory HIDCollectionInfo(
      {int usagePage,
      int usage,
      int type,
      Iterable<HIDCollectionInfo> children,
      Iterable<HIDReportInfo> inputReports,
      Iterable<HIDReportInfo> outputReports,
      Iterable<HIDReportInfo> featureReports});
}

@JS()
class HIDDevice extends EventTarget {
  external EventHandlerNonNull? get oninputreport;
  external set oninputreport(EventHandlerNonNull? newValue);
  external bool get opened;
  external int get vendorId;
  external int get productId;
  external String get productName;
  external Iterable<HIDCollectionInfo> get collections;
  external Promise<Object> open();
  external Promise<Object> close();
  external Promise<Object> sendReport(int reportId, dynamic data);
  external Promise<Object> sendFeatureReport(int reportId, dynamic data);
  external Promise<ByteData> receiveFeatureReport(int reportId);

  external factory HIDDevice();
}
