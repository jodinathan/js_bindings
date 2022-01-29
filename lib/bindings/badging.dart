/// Badging API
///
/// https://w3c.github.io/badging/
@JS('window')
@staticInterop
library badging;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html */

@JS()
@staticInterop
class NavigatorBadge {
  external NavigatorBadge();
}

extension PropsNavigatorBadge on NavigatorBadge {
  Promise<Object> setAppBadge([int? contents]) =>
      js_util.callMethod(this, 'setAppBadge', [contents]);

  Promise<Object> clearAppBadge() =>
      js_util.callMethod(this, 'clearAppBadge', []);
}
