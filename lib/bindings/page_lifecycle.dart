/// Page Lifecycle
///
/// https://wicg.github.io/page-lifecycle/
@JS('window')
library page_lifecycle;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';
import 'service_workers_1.dart';

@JS()
enum ClientLifecycleState { active, frozen }
