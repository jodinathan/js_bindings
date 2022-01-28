/// Badging API
///
/// https://w3c.github.io/badging/
@JS('window')
@staticInterop
library badging;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html */

@JS()
@staticInterop
class NavigatorBadge {
  external factory NavigatorBadge();
}

extension PropsNavigatorBadge on NavigatorBadge {
  external Promise<Object> setAppBadge([int? contents]);
  external Promise<Object> clearAppBadge();
}
