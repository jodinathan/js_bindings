/// Portals
///
/// https://wicg.github.io/portals/
@JS('window')
library portals;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';
import 'service_workers_1.dart';

@JS()
class HTMLPortalElement extends HTMLElement {
  external factory HTMLPortalElement();
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
class PortalActivateOptions extends PostMessageOptions {
  external dynamic get data;
  external set data(dynamic newValue);

  external factory PortalActivateOptions({dynamic data});
}

@JS()
class PortalHost extends EventTarget {
  external Object postMessage(dynamic message, [PostMessageOptions? options]);
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmessageerror;
  external set onmessageerror(EventHandlerNonNull? newValue);

  external factory PortalHost();
}

@JS()
class PortalActivateEvent extends Event {
  external factory PortalActivateEvent(
      {String type, PortalActivateEventInit? eventInitDict});
  external dynamic get data;
  external HTMLPortalElement adoptPredecessor();
}

@anonymous
@JS()
class PortalActivateEventInit extends EventInit {
  external dynamic get data;
  external set data(dynamic newValue);

  external factory PortalActivateEventInit({dynamic data});
}
