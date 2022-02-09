/// Close Watcher API
///
/// https://wicg.github.io/close-watcher/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library close_watcher;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class CloseWatcher implements EventTarget {
  external CloseWatcher();
}

extension PropsCloseWatcher on CloseWatcher {
  Object destroy() => js_util.callMethod(this, 'destroy', []);

  Object signalClose() => js_util.callMethod(this, 'signalClose', []);

  EventHandlerNonNull? get oncancel => js_util.getProperty(this, 'oncancel');
  set oncancel(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncancel', newValue);
  }

  EventHandlerNonNull? get onclose => js_util.getProperty(this, 'onclose');
  set onclose(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onclose', newValue);
  }
}
