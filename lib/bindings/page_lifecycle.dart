/// Page Lifecycle
///
/// https://wicg.github.io/page-lifecycle/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library page_lifecycle;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum ClientLifecycleState { active, frozen }
