/// WebDriver
///
/// https://w3c.github.io/webdriver/
@JS('window')
library webdriver2;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

@JS()
mixin NavigatorAutomationInformation {
  external bool get webdriver;
}
