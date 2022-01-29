/// Page Visibility Level 2
///
/// https://w3c.github.io/page-visibility/
@JS('window')
@staticInterop
library page_visibility_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html */

enum VisibilityState { hidden, visible }
