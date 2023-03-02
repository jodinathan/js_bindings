/// Prioritized Task Scheduling
///
/// https://wicg.github.io/scheduling-apis/

// ignore_for_file: unused_import

@JS('self')
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
      {AbortSignal? signal, String? priority, int? delay});

  factory SchedulerPostTaskOptions(
          {AbortSignal? signal, TaskPriority? priority, int? delay}) =>
      SchedulerPostTaskOptions._(
          signal: signal ?? undefined,
          priority: priority?.value ?? undefined,
          delay: delay ?? 0);
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

  factory TaskControllerInit({TaskPriority? priority}) => TaskControllerInit._(
      priority: priority?.value ?? TaskPriority.userVisible.value);
}

extension PropsTaskControllerInit on TaskControllerInit {
  TaskPriority get priority =>
      TaskPriority.fromValue(js_util.getProperty(this, 'priority'));
  set priority(TaskPriority newValue) {
    js_util.setProperty(this, 'priority', newValue.value);
  }
}

@JS()
@staticInterop
class TaskController implements AbortController {
  external factory TaskController._([TaskControllerInit? init]);

  factory TaskController([TaskControllerInit? init]) =>
      TaskController._(init ?? undefined);
}

extension PropsTaskController on TaskController {
  void setPriority(TaskPriority priority) =>
      js_util.callMethod(this, 'setPriority', [priority.value]);
}

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
