/// Portals
///
/// https://wicg.github.io/portals/
@JS('window')
@staticInterop
library portals;

import 'dart:js_util' as js_util;
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
  external HTMLPortalElement();
}

extension PropsHTMLPortalElement on HTMLPortalElement {
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  String get referrerPolicy => js_util.getProperty(this, 'referrerPolicy');
  set referrerPolicy(String newValue) {
    js_util.setProperty(this, 'referrerPolicy', newValue);
  }

  Promise<Object> activate([PortalActivateOptions? options]) =>
      js_util.callMethod(this, 'activate', [options]);

  Object postMessage(dynamic message, [PostMessageOptions? options]) =>
      js_util.callMethod(this, 'postMessage', [message, options]);

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  EventHandlerNonNull? get onmessageerror =>
      js_util.getProperty(this, 'onmessageerror');
  set onmessageerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessageerror', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PortalActivateOptions implements PostMessageOptions {
  external factory PortalActivateOptions({dynamic data});
}

extension PropsPortalActivateOptions on PortalActivateOptions {
  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
}

@JS()
@staticInterop
class PortalHost implements EventTarget {
  external PortalHost();
}

extension PropsPortalHost on PortalHost {
  Object postMessage(dynamic message, [PostMessageOptions? options]) =>
      js_util.callMethod(this, 'postMessage', [message, options]);

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  EventHandlerNonNull? get onmessageerror =>
      js_util.getProperty(this, 'onmessageerror');
  set onmessageerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessageerror', newValue);
  }
}

@JS()
@staticInterop
class PortalActivateEvent implements Event {
  external PortalActivateEvent(String type,
      [PortalActivateEventInit? eventInitDict]);
}

extension PropsPortalActivateEvent on PortalActivateEvent {
  dynamic get data => js_util.getProperty(this, 'data');
  HTMLPortalElement adoptPredecessor() =>
      js_util.callMethod(this, 'adoptPredecessor', []);
}

@anonymous
@JS()
@staticInterop
class PortalActivateEventInit implements EventInit {
  external factory PortalActivateEventInit({dynamic data});
}

extension PropsPortalActivateEventInit on PortalActivateEventInit {
  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
}
