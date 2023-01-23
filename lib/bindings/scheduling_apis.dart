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

enum TaskPriority {
  userBlocking('user-blocking'),
  userVisible('user-visible'),
  background('background');

  final String value;
  static TaskPriority fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<TaskPriority> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const TaskPriority(this.value);
}

@anonymous
@JS()
@staticInterop
class SchedulerPostTaskOptions {
  external factory SchedulerPostTaskOptions._(
      {required AbortSignal signal, required String priority, int? delay = 0});

  factory SchedulerPostTaskOptions(
          {required AbortSignal signal,
          required TaskPriority priority,
          int? delay = 0}) =>
      SchedulerPostTaskOptions._(
          signal: signal, priority: priority.value, delay: delay);
}

extension PropsSchedulerPostTaskOptions on SchedulerPostTaskOptions {
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }

  TaskPriority get priority =>
      TaskPriority.fromValue(js_util.getProperty(this, 'priority'));
  set priority(TaskPriority newValue) {
    js_util.setProperty(this, 'priority', newValue.value);
  }

  int get delay => js_util.getProperty(this, 'delay');
  set delay(int newValue) {
    js_util.setProperty(this, 'delay', newValue);
  }
}

///  The interface of the Prioritized Task Scheduling API provides
/// the [Scheduler.postTask()] method that can be used for adding
/// prioritized tasks to be scheduled.
///  A can be accessed from the global object [Window] or
/// [WorkerGlobalScope] ([this.scheduler]).
@JS()
@staticInterop
class Scheduler {
  external factory Scheduler();
}

extension PropsScheduler on Scheduler {
  Future<dynamic> postTask(SchedulerPostTaskCallback callback,
          [SchedulerPostTaskOptions? options]) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'postTask', [allowInterop(callback), options]));
}

/// The is the interface for the [prioritychange] event.
///
///
///
///    Event
///
///
///
///
///
///
///
///    TaskPriorityChangeEvent
///
///
@JS()
@staticInterop
class TaskPriorityChangeEvent implements Event {
  external factory TaskPriorityChangeEvent(
      String type, TaskPriorityChangeEventInit priorityChangeEventInitDict);
}

extension PropsTaskPriorityChangeEvent on TaskPriorityChangeEvent {
  TaskPriority get previousPriority =>
      TaskPriority.fromValue(js_util.getProperty(this, 'previousPriority'));
}

@anonymous
@JS()
@staticInterop
class TaskPriorityChangeEventInit implements EventInit {
  external factory TaskPriorityChangeEventInit._(
      {required String previousPriority});

  factory TaskPriorityChangeEventInit(
          {required TaskPriority previousPriority}) =>
      TaskPriorityChangeEventInit._(previousPriority: previousPriority.value);
}

extension PropsTaskPriorityChangeEventInit on TaskPriorityChangeEventInit {
  TaskPriority get previousPriority =>
      TaskPriority.fromValue(js_util.getProperty(this, 'previousPriority'));
  set previousPriority(TaskPriority newValue) {
    js_util.setProperty(this, 'previousPriority', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class TaskControllerInit {
  external factory TaskControllerInit._({String? priority});

  factory TaskControllerInit(
          {TaskPriority? priority = TaskPriority.userVisible}) =>
      TaskControllerInit._(priority: priority?.value);
}

extension PropsTaskControllerInit on TaskControllerInit {
  TaskPriority get priority =>
      TaskPriority.fromValue(js_util.getProperty(this, 'priority'));
  set priority(TaskPriority newValue) {
    js_util.setProperty(this, 'priority', newValue.value);
  }
}

///
///   The interface of the Prioritized Task Scheduling API represents
/// a controller object that can be used to both abort and change the
/// priority of one or more prioritized tasks.
///   If there is no need to change task priorities, then
/// [AbortController] can be used instead.
///   A new instance is created using the [TaskController()]
/// constructor, optionally specifying a priority for its associated
/// signal (a [TaskSignal]).
///   If not specified, the signal will have a priority of
/// ["user-visible"] by default.
///   The controller's signal can be passed as an argument to the
/// [Scheduler.postTask()] method for one or more tasks.
///   For mutable tasks (only) the task is initialized with the
/// signal priority, and can later be changed by calling
/// [TaskController.setPriority()].
///   For immutable tasks, any priority initialized or set by the
/// controller is ignored.
///
/// Tasks can be aborted by calling [abort()] on the controller.
///
///
///
///    AbortController
///
///
///
///
///
///
///
///    TaskController
///
///
@JS()
@staticInterop
class TaskController implements AbortController {
  external factory TaskController([TaskControllerInit? init]);
}

extension PropsTaskController on TaskController {
  void setPriority(TaskPriority priority) =>
      js_util.callMethod(this, 'setPriority', [priority.value]);
}

///  The interface of the Prioritized Task Scheduling API represents
/// a signal object that allows you to communicate with a prioritized
/// task, and abort it or change the priority (if required) via a
/// [TaskController] object.
///
///   An object of this type is created, and associated with, a
/// [TaskController].
///   The initial priority of the signal may be set by specifying it
/// as an argument to the [TaskController] constructor (by default it
/// is ["user-visible"]).
///   The priority can be changed by calling
/// [TaskController.setPriority()] on the controller.
///   The signal may be passed as the [options.signal] argument in
/// [Scheduler.postTask()], after which it's associated controller
/// can be used to abort the task.
///   If the task priority is mutable, the controller can also be
/// used to change the task's priority.
///   Abortable tasks that do not need the priority to change may
/// instead specify an [AbortSignal] as the [options.signal]
/// argument.
///
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    AbortSignal
///
///
///
///
///
///
///
///    TaskSignal
///
///
@JS()
@staticInterop
class TaskSignal implements AbortSignal {
  external factory TaskSignal();
}

extension PropsTaskSignal on TaskSignal {
  TaskPriority get priority =>
      TaskPriority.fromValue(js_util.getProperty(this, 'priority'));
  EventHandlerNonNull? get onprioritychange =>
      js_util.getProperty(this, 'onprioritychange');
  set onprioritychange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onprioritychange', newValue);
  }
}
