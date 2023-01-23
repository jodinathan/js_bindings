/// Network Information API
///
/// https://wicg.github.io/netinfo/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library netinfo;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

enum ConnectionType {
  bluetooth('bluetooth'),
  cellular('cellular'),
  ethernet('ethernet'),
  mixed('mixed'),
  none('none'),
  other('other'),
  unknown('unknown'),
  wifi('wifi'),
  wimax('wimax');

  final String value;
  static ConnectionType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ConnectionType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ConnectionType(this.value);
}

enum EffectiveConnectionType {
  value2g('2g'),
  value3g('3g'),
  value4g('4g'),
  slow2g('slow-2g');

  final String value;
  static EffectiveConnectionType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<EffectiveConnectionType> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const EffectiveConnectionType(this.value);
}

@JS()
@staticInterop
class NavigatorNetworkInformation {
  external factory NavigatorNetworkInformation();
}

extension PropsNavigatorNetworkInformation on NavigatorNetworkInformation {
  NetworkInformation get connection => js_util.getProperty(this, 'connection');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///
///   The interface of the Network Information API provides
/// information about the connection a device is using to communicate
/// with the network and provides a means for scripts to be notified
/// if the connection type changes.
///   The interface cannot be instantiated. It is instead accessed
/// through the [connection] property of the [Navigator] interface.
///
///  Note: This feature is available in Web Workers
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
///    NetworkInformation
///
///
@experimental
@JS()
@staticInterop
class NetworkInformation implements EventTarget, NetworkInformationSaveData {
  external factory NetworkInformation();
}

extension PropsNetworkInformation on NetworkInformation {
  ConnectionType get type =>
      ConnectionType.fromValue(js_util.getProperty(this, 'type'));
  EffectiveConnectionType get effectiveType =>
      EffectiveConnectionType.fromValue(
          js_util.getProperty(this, 'effectiveType'));
/* double | NaN */ dynamic get downlinkMax =>
      js_util.getProperty(this, 'downlinkMax');
/* double | NaN */ dynamic get downlink =>
      js_util.getProperty(this, 'downlink');
  int get rtt => js_util.getProperty(this, 'rtt');
  EventHandlerNonNull? get onchange => js_util.getProperty(this, 'onchange');
  set onchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onchange', newValue);
  }
}
