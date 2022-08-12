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
  external factory CloseWatcher([CloseWatcherOptions? options]);
}

extension PropsCloseWatcher on CloseWatcher {
  Object destroy() => js_util.callMethod(this, 'destroy', []);

  Object close() => js_util.callMethod(this, 'close', []);

  EventHandlerNonNull? get oncancel => js_util.getProperty(this, 'oncancel');
  set oncancel(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncancel', newValue);
  }

  EventHandlerNonNull? get onclose => js_util.getProperty(this, 'onclose');
  set onclose(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onclose', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class CloseWatcherOptions {
  external factory CloseWatcherOptions({required AbortSignal signal});
}

extension PropsCloseWatcherOptions on CloseWatcherOptions {
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}
