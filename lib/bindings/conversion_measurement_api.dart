/// Attribution Reporting
///
/// https://wicg.github.io/conversion-measurement-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library conversion_measurement_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class AttributionSourceParams {
  external factory AttributionSourceParams(
      {required String attributionDestination,
      required String attributionSourceEventId,
      required String attributionReportTo,
      required int attributionExpiry,
      required int attributionSourcePriority});
}

extension PropsAttributionSourceParams on AttributionSourceParams {
  String get attributionDestination =>
      js_util.getProperty(this, 'attributionDestination');
  set attributionDestination(String newValue) {
    js_util.setProperty(this, 'attributionDestination', newValue);
  }

  String get attributionSourceEventId =>
      js_util.getProperty(this, 'attributionSourceEventId');
  set attributionSourceEventId(String newValue) {
    js_util.setProperty(this, 'attributionSourceEventId', newValue);
  }

  String get attributionReportTo =>
      js_util.getProperty(this, 'attributionReportTo');
  set attributionReportTo(String newValue) {
    js_util.setProperty(this, 'attributionReportTo', newValue);
  }

  int get attributionExpiry => js_util.getProperty(this, 'attributionExpiry');
  set attributionExpiry(int newValue) {
    js_util.setProperty(this, 'attributionExpiry', newValue);
  }

  int get attributionSourcePriority =>
      js_util.getProperty(this, 'attributionSourcePriority');
  set attributionSourcePriority(int newValue) {
    js_util.setProperty(this, 'attributionSourcePriority', newValue);
  }
}

@JS()
@staticInterop
class AttributionReporting {
  external AttributionReporting();
}

extension PropsAttributionReporting on AttributionReporting {
  Future<Object> registerAttributionSource(AttributionSourceParams params) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'registerAttributionSource', [params]));
}
