/// Prioritized Task Scheduling
///
/// https://wicg.github.io/scheduling-apis/
@JS('window')
library scheduling_apis;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';

@JS()
enum TaskPriority {
  @JS('user-blocking')
  userBlocking,
  @JS('user-visible')
  userVisible,
  background
}

@anonymous
@JS()
class SchedulerPostTaskOptions {
  external AbortSignal get signal;
  external set signal(AbortSignal newValue);
  external TaskPriority get priority;
  external set priority(TaskPriority newValue);
  external int get delay;
  external set delay(int newValue);

  external factory SchedulerPostTaskOptions(
      {AbortSignal signal, TaskPriority priority, int delay = 0});
}

@JS()
class Scheduler {
  external Promise<dynamic> postTask(SchedulerPostTaskCallback callback,
      [SchedulerPostTaskOptions? options]);

  external factory Scheduler();
}

@JS()
class TaskPriorityChangeEvent // null -> {} -> Event
    with
        Event {
  external factory TaskPriorityChangeEvent(
      String type, TaskPriorityChangeEventInit priorityChangeEventInitDict);
  external TaskPriority get previousPriority;
}

@anonymous
@JS()
class TaskPriorityChangeEventInit // null -> {} -> EventInit
    with
        EventInit {
  external TaskPriority get previousPriority;
  external set previousPriority(TaskPriority newValue);

  external factory TaskPriorityChangeEventInit({TaskPriority previousPriority});
}

@JS()
class TaskController // null -> {} -> AbortController
    with
        AbortController {
  external factory TaskController(
      [TaskPriority? priority = TaskPriority.userVisible]);
  external Object setPriority(TaskPriority priority);
}

@JS()
class TaskSignal // EventTarget -> {} -> AbortSignal
    extends AbortSignal {
  external TaskPriority get priority;
  external EventHandlerNonNull? get onprioritychange;
  external set onprioritychange(EventHandlerNonNull? newValue);

  external factory TaskSignal();
}
