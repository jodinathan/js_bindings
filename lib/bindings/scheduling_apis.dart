/// Prioritized Task Scheduling
///
/// https://wicg.github.io/scheduling-apis/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library scheduling_apis;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum TaskPriority { userBlocking, userVisible, background }

@anonymous
@JS()
@staticInterop
class SchedulerPostTaskOptions {
  external factory SchedulerPostTaskOptions(
      {AbortSignal signal, TaskPriority priority, int delay = 0});
}

extension PropsSchedulerPostTaskOptions on SchedulerPostTaskOptions {
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }

  TaskPriority get priority => js_util.getProperty(this, 'priority');
  set priority(TaskPriority newValue) {
    js_util.setProperty(this, 'priority', newValue);
  }

  int get delay => js_util.getProperty(this, 'delay');
  set delay(int newValue) {
    js_util.setProperty(this, 'delay', newValue);
  }
}

@JS()
@staticInterop
class Scheduler {
  external Scheduler();
}

extension PropsScheduler on Scheduler {
  Future<dynamic> postTask(SchedulerPostTaskCallback callback,
          [SchedulerPostTaskOptions? options]) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'postTask', [allowInterop(callback), options]));
}

@JS()
@staticInterop
class TaskPriorityChangeEvent implements Event {
  external TaskPriorityChangeEvent(
      String type, TaskPriorityChangeEventInit priorityChangeEventInitDict);
}

extension PropsTaskPriorityChangeEvent on TaskPriorityChangeEvent {
  TaskPriority get previousPriority =>
      js_util.getProperty(this, 'previousPriority');
}

@anonymous
@JS()
@staticInterop
class TaskPriorityChangeEventInit implements EventInit {
  external factory TaskPriorityChangeEventInit({TaskPriority previousPriority});
}

extension PropsTaskPriorityChangeEventInit on TaskPriorityChangeEventInit {
  TaskPriority get previousPriority =>
      js_util.getProperty(this, 'previousPriority');
  set previousPriority(TaskPriority newValue) {
    js_util.setProperty(this, 'previousPriority', newValue);
  }
}

@JS()
@staticInterop
class TaskController implements AbortController {
  external TaskController([TaskPriority? priority = TaskPriority.userVisible]);
}

extension PropsTaskController on TaskController {
  Object setPriority(TaskPriority priority) =>
      js_util.callMethod(this, 'setPriority', [priority]);
}

@JS()
@staticInterop
class TaskSignal implements AbortSignal {
  external TaskSignal();
}

extension PropsTaskSignal on TaskSignal {
  TaskPriority get priority => js_util.getProperty(this, 'priority');
  EventHandlerNonNull? get onprioritychange =>
      js_util.getProperty(this, 'onprioritychange');
  set onprioritychange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onprioritychange', newValue);
  }
}
