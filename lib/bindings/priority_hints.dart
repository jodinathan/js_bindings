/// Priority Hints
///
/// https://wicg.github.io/priority-hints/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library priority_hints;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum FetchPriority { high, low, auto }
