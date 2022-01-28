/// Portals
///
/// https://wicg.github.io/portals/
@JS('window')
@staticInterop
library portals;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
dom
service_workers_1 */

@JS()
@staticInterop
class HTMLPortalElement implements HTMLElement {
  external factory HTMLPortalElement();
}

extension PropsHTMLPortalElement on HTMLPortalElement {
  external String get src;
  external set src(String newValue);
  external String get referrerPolicy;
  external set referrerPolicy(String newValue);
  external Promise<Object> activate([PortalActivateOptions? options]);
  external Object postMessage(dynamic message, [PostMessageOptions? options]);
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmessageerror;
  external set onmessageerror(EventHandlerNonNull? newValue);
}

@anonymous
@JS()
@staticInterop
class PortalActivateOptions implements PostMessageOptions {
  external factory PortalActivateOptions({dynamic data});
}

extension PropsPortalActivateOptions on PortalActivateOptions {
  external dynamic get data;
  external set data(dynamic newValue);
}

@JS()
@staticInterop
class PortalHost implements EventTarget {
  external factory PortalHost();
}

extension PropsPortalHost on PortalHost {
  external Object postMessage(dynamic message, [PostMessageOptions? options]);
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmessageerror;
  external set onmessageerror(EventHandlerNonNull? newValue);
}

@JS()
@staticInterop
class PortalActivateEvent implements Event {
  external factory PortalActivateEvent(String type,
      [PortalActivateEventInit? eventInitDict]);
}

extension PropsPortalActivateEvent on PortalActivateEvent {
  external dynamic get data;
  external HTMLPortalElement adoptPredecessor();
}

@anonymous
@JS()
@staticInterop
class PortalActivateEventInit implements EventInit {
  external factory PortalActivateEventInit({dynamic data});
}

extension PropsPortalActivateEventInit on PortalActivateEventInit {
  external dynamic get data;
  external set data(dynamic newValue);
}
