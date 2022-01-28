/// Federated Learning of Cohorts
///
/// https://wicg.github.io/floc/
@JS('window')
@staticInterop
library floc;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom */

@anonymous
@JS()
@staticInterop
class InterestCohort {
  external factory InterestCohort({String id, String version});
}

extension PropsInterestCohort on InterestCohort {
  external String get id;
  external set id(String newValue);
  external String get version;
  external set version(String newValue);
}
