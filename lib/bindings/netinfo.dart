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
  bluetooth,
  cellular,
  ethernet,
  mixed,
  none,
  other,
  unknown,
  wifi,
  wimax
}

enum EffectiveConnectionType { value2g, value3g, value4g, slow2g }

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
///  The interface provides information about the connection a device
/// is using to communicate with the network and provides a means for
/// scripts to be notified if the connection type changes. The
/// interfaces cannot be instantiated. It is instead accessed through
/// the [connection] property of the [Navigator] interface.
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
      ConnectionType.values.byName(js_util.getProperty(this, 'type'));
  EffectiveConnectionType get effectiveType => EffectiveConnectionType.values
      .byName(js_util.getProperty(this, 'effectiveType'));
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
