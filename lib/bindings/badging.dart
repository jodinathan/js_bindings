/// Badging API
///
/// https://w3c.github.io/badging/
@JS('window')
library badging;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';

@JS()
mixin NavigatorBadge {
  external Promise<Object> setAppBadge([int? contents]);
  external Promise<Object> clearAppBadge();
}
