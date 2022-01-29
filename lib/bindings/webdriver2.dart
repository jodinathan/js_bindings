/// WebDriver
///
/// https://w3c.github.io/webdriver/
@JS('window')
@staticInterop
library webdriver2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

@JS()
@staticInterop
class NavigatorAutomationInformation {
  external NavigatorAutomationInformation();
}

extension PropsNavigatorAutomationInformation
    on NavigatorAutomationInformation {
  bool get webdriver => js_util.getProperty(this, 'webdriver');
}
