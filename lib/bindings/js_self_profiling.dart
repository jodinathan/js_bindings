/// JS Self-Profiling API
///
/// https://wicg.github.io/js-self-profiling/
@JS('window')
@staticInterop
library js_self_profiling;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
hr_time_3 */

@JS()
@staticInterop
class Profiler implements EventTarget {
  external factory Profiler();
}

extension PropsProfiler on Profiler {
  external double get sampleInterval;
  external bool get stopped;
  external Promise<ProfilerTrace> stop();
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
  external Iterable<String> get resources;
  external set resources(Iterable<String> newValue);
  external Iterable<ProfilerFrame> get frames;
  external set frames(Iterable<ProfilerFrame> newValue);
  external Iterable<ProfilerStack> get stacks;
  external set stacks(Iterable<ProfilerStack> newValue);
  external Iterable<ProfilerSample> get samples;
  external set samples(Iterable<ProfilerSample> newValue);
}

@anonymous
@JS()
@staticInterop
class ProfilerSample {
  external factory ProfilerSample({double timestamp, int stackId});
}

extension PropsProfilerSample on ProfilerSample {
  external double get timestamp;
  external set timestamp(double newValue);
  external int get stackId;
  external set stackId(int newValue);
}

@anonymous
@JS()
@staticInterop
class ProfilerStack {
  external factory ProfilerStack({int parentId, int frameId});
}

extension PropsProfilerStack on ProfilerStack {
  external int get parentId;
  external set parentId(int newValue);
  external int get frameId;
  external set frameId(int newValue);
}

@anonymous
@JS()
@staticInterop
class ProfilerFrame {
  external factory ProfilerFrame(
      {String name, int resourceId, int line, int column});
}

extension PropsProfilerFrame on ProfilerFrame {
  external String get name;
  external set name(String newValue);
  external int get resourceId;
  external set resourceId(int newValue);
  external int get line;
  external set line(int newValue);
  external int get column;
  external set column(int newValue);
}

@anonymous
@JS()
@staticInterop
class ProfilerInitOptions {
  external factory ProfilerInitOptions(
      {double sampleInterval, int maxBufferSize});
}

extension PropsProfilerInitOptions on ProfilerInitOptions {
  external double get sampleInterval;
  external set sampleInterval(double newValue);
  external int get maxBufferSize;
  external set maxBufferSize(int newValue);
}
