/// Prioritized Task Scheduling
///
/// https://wicg.github.io/scheduling-apis/
@JS('window')
@staticInterop
library scheduling_apis;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html */

enum TaskPriority { userBlocking, userVisible, background }

@anonymous
@JS()
@staticInterop
class SchedulerPostTaskOptions {
  external factory SchedulerPostTaskOptions(
      {AbortSignal signal, TaskPriority priority, int delay = 0});
}

extension PropsSchedulerPostTaskOptions on SchedulerPostTaskOptions {
  external AbortSignal get signal;
  external set signal(AbortSignal newValue);
  external TaskPriority get priority;
  external set priority(TaskPriority newValue);
  external int get delay;
  external set delay(int newValue);
}

@JS()
@staticInterop
class Scheduler {
  external factory Scheduler();
}

extension PropsScheduler on Scheduler {
  external Promise<dynamic> postTask(SchedulerPostTaskCallback callback,
      [SchedulerPostTaskOptions? options]);
}

@JS()
@staticInterop
class TaskPriorityChangeEvent implements Event {
  external factory TaskPriorityChangeEvent(
      String type, TaskPriorityChangeEventInit priorityChangeEventInitDict);
}

extension PropsTaskPriorityChangeEvent on TaskPriorityChangeEvent {
  external TaskPriority get previousPriority;
}

@anonymous
@JS()
@staticInterop
class TaskPriorityChangeEventInit implements EventInit {
  external factory TaskPriorityChangeEventInit({TaskPriority previousPriority});
}

extension PropsTaskPriorityChangeEventInit on TaskPriorityChangeEventInit {
  external TaskPriority get previousPriority;
  external set previousPriority(TaskPriority newValue);
}

@JS()
@staticInterop
class TaskController implements AbortController {
  external factory TaskController(
      [TaskPriority? priority = TaskPriority.userVisible]);
}

extension PropsTaskController on TaskController {
  external Object setPriority(TaskPriority priority);
}

@JS()
@staticInterop
class TaskSignal implements AbortSignal {
  external factory TaskSignal();
}

extension PropsTaskSignal on TaskSignal {
  external TaskPriority get priority;
  external EventHandlerNonNull? get onprioritychange;
  external set onprioritychange(EventHandlerNonNull? newValue);
}
