/// Federated Learning of Cohorts
///
/// https://wicg.github.io/floc/
@JS('window')
library floc;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';

@anonymous
@JS()
class InterestCohort {
  external String get id;
  external set id(String newValue);
  external String get version;
  external set version(String newValue);

  external factory InterestCohort({String id, String version});
}
