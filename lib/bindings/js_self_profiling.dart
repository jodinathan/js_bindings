/// JS Self-Profiling API
///
/// https://wicg.github.io/js-self-profiling/
@JS('window')
@staticInterop
library js_self_profiling;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
hr_time_3 */

@JS()
@staticInterop
class Profiler implements EventTarget {
  external Profiler();
}

extension PropsProfiler on Profiler {
  double get sampleInterval => js_util.getProperty(this, 'sampleInterval');
  bool get stopped => js_util.getProperty(this, 'stopped');
  Promise<ProfilerTrace> stop() => js_util.callMethod(this, 'stop', []);
}

@anonymous
@JS()
@staticInterop
class ProfilerTrace {
  external factory ProfilerTrace(
      {Iterable<String> resources,
      Iterable<ProfilerFrame> frames,
      Iterable<ProfilerStack> stacks,
      Iterable<ProfilerSample> samples});
}

extension PropsProfilerTrace on ProfilerTrace {
  Iterable<String> get resources => js_util.getProperty(this, 'resources');
  set resources(Iterable<String> newValue) {
    js_util.setProperty(this, 'resources', newValue);
  }

  Iterable<ProfilerFrame> get frames => js_util.getProperty(this, 'frames');
  set frames(Iterable<ProfilerFrame> newValue) {
    js_util.setProperty(this, 'frames', newValue);
  }

  Iterable<ProfilerStack> get stacks => js_util.getProperty(this, 'stacks');
  set stacks(Iterable<ProfilerStack> newValue) {
    js_util.setProperty(this, 'stacks', newValue);
  }

  Iterable<ProfilerSample> get samples => js_util.getProperty(this, 'samples');
  set samples(Iterable<ProfilerSample> newValue) {
    js_util.setProperty(this, 'samples', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ProfilerSample {
  external factory ProfilerSample({double timestamp, int stackId});
}

extension PropsProfilerSample on ProfilerSample {
  double get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(double newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  int get stackId => js_util.getProperty(this, 'stackId');
  set stackId(int newValue) {
    js_util.setProperty(this, 'stackId', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ProfilerStack {
  external factory ProfilerStack({int parentId, int frameId});
}

extension PropsProfilerStack on ProfilerStack {
  int get parentId => js_util.getProperty(this, 'parentId');
  set parentId(int newValue) {
    js_util.setProperty(this, 'parentId', newValue);
  }

  int get frameId => js_util.getProperty(this, 'frameId');
  set frameId(int newValue) {
    js_util.setProperty(this, 'frameId', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ProfilerFrame {
  external factory ProfilerFrame(
      {String name, int resourceId, int line, int column});
}

extension PropsProfilerFrame on ProfilerFrame {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  int get resourceId => js_util.getProperty(this, 'resourceId');
  set resourceId(int newValue) {
    js_util.setProperty(this, 'resourceId', newValue);
  }

  int get line => js_util.getProperty(this, 'line');
  set line(int newValue) {
    js_util.setProperty(this, 'line', newValue);
  }

  int get column => js_util.getProperty(this, 'column');
  set column(int newValue) {
    js_util.setProperty(this, 'column', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ProfilerInitOptions {
  external factory ProfilerInitOptions(
      {double sampleInterval, int maxBufferSize});
}

extension PropsProfilerInitOptions on ProfilerInitOptions {
  double get sampleInterval => js_util.getProperty(this, 'sampleInterval');
  set sampleInterval(double newValue) {
    js_util.setProperty(this, 'sampleInterval', newValue);
  }

  int get maxBufferSize => js_util.getProperty(this, 'maxBufferSize');
  set maxBufferSize(int newValue) {
    js_util.setProperty(this, 'maxBufferSize', newValue);
  }
}
