/// WebDriver
///
/// https://w3c.github.io/webdriver/
@JS('window')
@staticInterop
library webdriver2;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

@JS()
@staticInterop
class NavigatorAutomationInformation {
  external factory NavigatorAutomationInformation();
}

extension PropsNavigatorAutomationInformation
    on NavigatorAutomationInformation {
  external bool get webdriver;
}
