/// Federated Learning of Cohorts
///
/// https://wicg.github.io/floc/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library floc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class InterestCohort {
  external factory InterestCohort({String id, String version});
}

extension PropsInterestCohort on InterestCohort {
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  String get version => js_util.getProperty(this, 'version');
  set version(String newValue) {
    js_util.setProperty(this, 'version', newValue);
  }
}
