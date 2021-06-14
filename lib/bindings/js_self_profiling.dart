/// JS Self-Profiling API
///
/// https://wicg.github.io/js-self-profiling/
@JS('window')
library js_self_profiling;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'hr_time_3.dart';

@JS()
class Profiler extends EventTarget {
  external double get sampleInterval;
  external bool get stopped;
  external Promise<ProfilerTrace> stop();

  external factory Profiler();
}

@anonymous
@JS()
class ProfilerTrace {
  external Iterable<String> get resources;
  external set resources(Iterable<String> newValue);
  external Iterable<ProfilerFrame> get frames;
  external set frames(Iterable<ProfilerFrame> newValue);
  external Iterable<ProfilerStack> get stacks;
  external set stacks(Iterable<ProfilerStack> newValue);
  external Iterable<ProfilerSample> get samples;
  external set samples(Iterable<ProfilerSample> newValue);

  external factory ProfilerTrace(
      {Iterable<String> resources,
      Iterable<ProfilerFrame> frames,
      Iterable<ProfilerStack> stacks,
      Iterable<ProfilerSample> samples});
}

@anonymous
@JS()
class ProfilerSample {
  external double get timestamp;
  external set timestamp(double newValue);
  external int get stackId;
  external set stackId(int newValue);

  external factory ProfilerSample({double timestamp, int stackId});
}

@anonymous
@JS()
class ProfilerStack {
  external int get parentId;
  external set parentId(int newValue);
  external int get frameId;
  external set frameId(int newValue);

  external factory ProfilerStack({int parentId, int frameId});
}

@anonymous
@JS()
class ProfilerFrame {
  external String get name;
  external set name(String newValue);
  external int get resourceId;
  external set resourceId(int newValue);
  external int get line;
  external set line(int newValue);
  external int get column;
  external set column(int newValue);

  external factory ProfilerFrame(
      {String name, int resourceId, int line, int column});
}

@anonymous
@JS()
class ProfilerInitOptions {
  external double get sampleInterval;
  external set sampleInterval(double newValue);
  external int get maxBufferSize;
  external set maxBufferSize(int newValue);

  external factory ProfilerInitOptions(
      {double sampleInterval, int maxBufferSize});
}
