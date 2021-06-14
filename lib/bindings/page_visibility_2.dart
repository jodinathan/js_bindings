/// Page Visibility Level 2
///
/// https://w3c.github.io/page-visibility/
@JS('window')
library page_visibility_2;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';

@JS()
enum VisibilityState { hidden, visible }
