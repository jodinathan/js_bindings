/// WebDriver
///
/// https://w3c.github.io/webdriver/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webdriver2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class NavigatorAutomationInformation {
  external factory NavigatorAutomationInformation();
}

extension PropsNavigatorAutomationInformation
    on NavigatorAutomationInformation {
  bool get webdriver => js_util.getProperty(this, 'webdriver');
}
