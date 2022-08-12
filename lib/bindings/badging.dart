/// Badging API
///
/// https://w3c.github.io/badging/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library badging;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class NavigatorBadge {
  external factory NavigatorBadge();
}

extension PropsNavigatorBadge on NavigatorBadge {
  Future<Object> setAppBadge([int? contents]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'setAppBadge', [contents]));

  Future<Object> clearAppBadge() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'clearAppBadge', []));
}
