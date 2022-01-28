/// Page Lifecycle
///
/// https://wicg.github.io/page-lifecycle/
@JS('window')
@staticInterop
library page_lifecycle;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html
service_workers_1 */

enum ClientLifecycleState { active, frozen }
