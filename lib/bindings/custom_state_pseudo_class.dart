/// Custom State Pseudo Class
///
/// https://wicg.github.io/custom-state-pseudo-class/
@JS('window')
library custom_state_pseudo_class;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';

@JS()
class CustomStateSet {
  external String operator [](int index);
  external Object add(String value);

  external factory CustomStateSet();
}
