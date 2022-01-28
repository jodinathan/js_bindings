/// Network Information API
///
/// https://wicg.github.io/netinfo/
@JS('window')
@staticInterop
library netinfo;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: savedata
dom
html */

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
  external NetworkInformation get connection;
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
@experimental
@JS()
@staticInterop
class NetworkInformation implements EventTarget, NetworkInformationSaveData {
  external factory NetworkInformation();
}

extension PropsNetworkInformation on NetworkInformation {
  ///  Returns the type of connection a device is using to communicate
  /// with the network. It will be one of the following values:
  ///
  ///    [bluetooth]
  ///    [cellular]
  ///    [ethernet]
  ///    [none]
  ///    [wifi]
  ///    [wimax]
  ///    [other]
  ///    [unknown]
  ///
  ///
  external ConnectionType get type;

  ///  Returns the effective type of the connection meaning one of
  /// 'slow-2g', '2g', '3g', or '4g'. This value is determined using a
  /// combination of recently observed round-trip time and downlink
  /// values.
  ///
  external EffectiveConnectionType get effectiveType;

  ///  Returns the maximum downlink speed, in megabits per second
  /// (Mbps), for the underlying connection technology.
  ///
  external /* double | NaN */ dynamic get downlinkMax;

  ///  Returns the effective bandwidth estimate in megabits per second,
  /// rounded to the nearest multiple of 25 kilobits per seconds.
  ///
  external /* double | NaN */ dynamic get downlink;

  ///  Returns the estimated effective round-trip time of the current
  /// connection, rounded to the nearest multiple of 25 milliseconds.
  ///
  external int get rtt;
  external EventHandlerNonNull? get onchange;
  external set onchange(EventHandlerNonNull? newValue);
}
