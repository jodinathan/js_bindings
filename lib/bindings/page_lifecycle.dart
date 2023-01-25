/// Page Lifecycle
///
/// https://wicg.github.io/page-lifecycle/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library page_lifecycle;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum ClientLifecycleState {
  active('active'),
  frozen('frozen');

  final String value;
  static ClientLifecycleState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ClientLifecycleState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ClientLifecycleState(this.value);
}
