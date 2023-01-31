/// Priority Hints
///
/// https://wicg.github.io/priority-hints/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library priority_hints;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum FetchPriority {
  high('high'),
  low('low'),
  auto('auto');

  final String value;
  static FetchPriority fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<FetchPriority> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const FetchPriority(this.value);
}
