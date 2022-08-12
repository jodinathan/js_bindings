/// Web Audio API
///
/// https://webaudio.github.io/web-audio-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webaudio;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

enum AudioContextState { suspended, running, closed }

///  The interface of the Web Audio API acts as a base definition for
/// online and offline audio-processing graphs, as represented by
/// [AudioContext] and [OfflineAudioContext] respectively. You
/// wouldn't use directly — you'd use its features via one of these
/// two inheriting interfaces.
///  A can be a target of events, therefore it implements the
/// [EventTarget] interface.
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
///    BaseAudioContext
///
///
@JS()
@staticInterop
class BaseAudioContext implements EventTarget {
  external factory BaseAudioContext();
}

extension PropsBaseAudioContext on BaseAudioContext {
  AudioDestinationNode get destination =>
      js_util.getProperty(this, 'destination');
  double get sampleRate => js_util.getProperty(this, 'sampleRate');
  double get currentTime => js_util.getProperty(this, 'currentTime');
  AudioListener get listener => js_util.getProperty(this, 'listener');
  AudioContextState get state =>
      AudioContextState.values.byName(js_util.getProperty(this, 'state'));
  AudioWorklet get audioWorklet => js_util.getProperty(this, 'audioWorklet');
  EventHandlerNonNull? get onstatechange =>
      js_util.getProperty(this, 'onstatechange');
  set onstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstatechange', newValue);
  }

  AnalyserNode createAnalyser() =>
      js_util.callMethod(this, 'createAnalyser', []);

  BiquadFilterNode createBiquadFilter() =>
      js_util.callMethod(this, 'createBiquadFilter', []);

  AudioBuffer createBuffer(
          int numberOfChannels, int length, double sampleRate) =>
      js_util.callMethod(
          this, 'createBuffer', [numberOfChannels, length, sampleRate]);

  AudioBufferSourceNode createBufferSource() =>
      js_util.callMethod(this, 'createBufferSource', []);

  ChannelMergerNode createChannelMerger([int? numberOfInputs = 6]) =>
      js_util.callMethod(this, 'createChannelMerger', [numberOfInputs]);

  ChannelSplitterNode createChannelSplitter([int? numberOfOutputs = 6]) =>
      js_util.callMethod(this, 'createChannelSplitter', [numberOfOutputs]);

  ConstantSourceNode createConstantSource() =>
      js_util.callMethod(this, 'createConstantSource', []);

  ConvolverNode createConvolver() =>
      js_util.callMethod(this, 'createConvolver', []);

  DelayNode createDelay([double? maxDelayTime = 1.0]) =>
      js_util.callMethod(this, 'createDelay', [maxDelayTime]);

  DynamicsCompressorNode createDynamicsCompressor() =>
      js_util.callMethod(this, 'createDynamicsCompressor', []);

  GainNode createGain() => js_util.callMethod(this, 'createGain', []);

  IIRFilterNode createIIRFilter(
          Iterable<double> feedforward, Iterable<double> feedback) =>
      js_util.callMethod(this, 'createIIRFilter', [feedforward, feedback]);

  OscillatorNode createOscillator() =>
      js_util.callMethod(this, 'createOscillator', []);

  PannerNode createPanner() => js_util.callMethod(this, 'createPanner', []);

  PeriodicWave createPeriodicWave(Iterable<double> real, Iterable<double> imag,
          [PeriodicWaveConstraints? constraints]) =>
      js_util.callMethod(this, 'createPeriodicWave', [real, imag, constraints]);

  ScriptProcessorNode createScriptProcessor(
          [int? bufferSize = 0,
          int? numberOfInputChannels = 2,
          int? numberOfOutputChannels = 2]) =>
      js_util.callMethod(this, 'createScriptProcessor',
          [bufferSize, numberOfInputChannels, numberOfOutputChannels]);

  StereoPannerNode createStereoPanner() =>
      js_util.callMethod(this, 'createStereoPanner', []);

  WaveShaperNode createWaveShaper() =>
      js_util.callMethod(this, 'createWaveShaper', []);

  Future<AudioBuffer> decodeAudioData(ByteBuffer audioData,
          [DecodeSuccessCallback? successCallback,
          DecodeErrorCallback? errorCallback]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'decodeAudioData', [
        audioData,
        successCallback == null ? null : allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback)
      ]));
}

enum AudioContextLatencyCategory { balanced, interactive, playback }

///  The interface represents an audio-processing graph built from
/// audio modules linked together, each represented by an
/// [AudioNode].
///  An audio context controls both the creation of the nodes it
/// contains and the execution of the audio processing, or decoding.
/// You need to create an before you do anything else, as everything
/// happens inside a context. It's recommended to create one
/// AudioContext and reuse it instead of initializing a new one each
/// time, and it's OK to use a single for several different audio
/// sources and pipeline concurrently.
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
///    BaseAudioContext
///
///
///
///
///
///
///
///    AudioContext
///
///
@JS()
@staticInterop
class AudioContext implements BaseAudioContext {
  external factory AudioContext([AudioContextOptions? contextOptions]);
}

extension PropsAudioContext on AudioContext {
  double get baseLatency => js_util.getProperty(this, 'baseLatency');
  double get outputLatency => js_util.getProperty(this, 'outputLatency');
  AudioRenderCapacity get renderCapacity =>
      js_util.getProperty(this, 'renderCapacity');
  AudioTimestamp getOutputTimestamp() =>
      js_util.callMethod(this, 'getOutputTimestamp', []);

  Future<Object> resume() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'resume', []));

  Future<Object> suspend() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'suspend', []));

  Future<Object> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));

  MediaElementAudioSourceNode createMediaElementSource(
          HTMLMediaElement mediaElement) =>
      js_util.callMethod(this, 'createMediaElementSource', [mediaElement]);

  MediaStreamAudioSourceNode createMediaStreamSource(MediaStream mediaStream) =>
      js_util.callMethod(this, 'createMediaStreamSource', [mediaStream]);

  MediaStreamTrackAudioSourceNode createMediaStreamTrackSource(
          MediaStreamTrack mediaStreamTrack) =>
      js_util
          .callMethod(this, 'createMediaStreamTrackSource', [mediaStreamTrack]);

  MediaStreamAudioDestinationNode createMediaStreamDestination() =>
      js_util.callMethod(this, 'createMediaStreamDestination', []);
}

@anonymous
@JS()
@staticInterop
class AudioContextOptions {
  external factory AudioContextOptions(
      {dynamic latencyHint, required double sampleRate});
}

extension PropsAudioContextOptions on AudioContextOptions {
  dynamic get latencyHint => js_util.getProperty(this, 'latencyHint');
  set latencyHint(dynamic newValue) {
    js_util.setProperty(this, 'latencyHint', newValue);
  }

  double get sampleRate => js_util.getProperty(this, 'sampleRate');
  set sampleRate(double newValue) {
    js_util.setProperty(this, 'sampleRate', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AudioTimestamp {
  external factory AudioTimestamp(
      {required double contextTime, required double performanceTime});
}

extension PropsAudioTimestamp on AudioTimestamp {
  double get contextTime => js_util.getProperty(this, 'contextTime');
  set contextTime(double newValue) {
    js_util.setProperty(this, 'contextTime', newValue);
  }

  double get performanceTime => js_util.getProperty(this, 'performanceTime');
  set performanceTime(double newValue) {
    js_util.setProperty(this, 'performanceTime', newValue);
  }
}

@JS()
@staticInterop
class AudioRenderCapacity implements EventTarget {
  external factory AudioRenderCapacity();
}

extension PropsAudioRenderCapacity on AudioRenderCapacity {
  Object start([AudioRenderCapacityOptions? options]) =>
      js_util.callMethod(this, 'start', [options]);

  Object stop() => js_util.callMethod(this, 'stop', []);

  EventHandlerNonNull? get onupdate => js_util.getProperty(this, 'onupdate');
  set onupdate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onupdate', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AudioRenderCapacityOptions {
  external factory AudioRenderCapacityOptions({double? updateInterval = 1});
}

extension PropsAudioRenderCapacityOptions on AudioRenderCapacityOptions {
  double get updateInterval => js_util.getProperty(this, 'updateInterval');
  set updateInterval(double newValue) {
    js_util.setProperty(this, 'updateInterval', newValue);
  }
}

@JS()
@staticInterop
class AudioRenderCapacityEvent implements Event {
  external factory AudioRenderCapacityEvent(String type,
      [AudioRenderCapacityEventInit? eventInitDict]);
}

extension PropsAudioRenderCapacityEvent on AudioRenderCapacityEvent {
  double get timestamp => js_util.getProperty(this, 'timestamp');
  double get averageLoad => js_util.getProperty(this, 'averageLoad');
  double get peakLoad => js_util.getProperty(this, 'peakLoad');
  double get underrunRatio => js_util.getProperty(this, 'underrunRatio');
}

@anonymous
@JS()
@staticInterop
class AudioRenderCapacityEventInit implements EventInit {
  external factory AudioRenderCapacityEventInit(
      {double? timestamp = 0,
      double? averageLoad = 0,
      double? peakLoad = 0,
      double? underrunRatio = 0});
}

extension PropsAudioRenderCapacityEventInit on AudioRenderCapacityEventInit {
  double get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(double newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  double get averageLoad => js_util.getProperty(this, 'averageLoad');
  set averageLoad(double newValue) {
    js_util.setProperty(this, 'averageLoad', newValue);
  }

  double get peakLoad => js_util.getProperty(this, 'peakLoad');
  set peakLoad(double newValue) {
    js_util.setProperty(this, 'peakLoad', newValue);
  }

  double get underrunRatio => js_util.getProperty(this, 'underrunRatio');
  set underrunRatio(double newValue) {
    js_util.setProperty(this, 'underrunRatio', newValue);
  }
}

///  The interface is an [AudioContext] interface representing an
/// audio-processing graph built from linked together [AudioNode]s.
/// In contrast with a standard [AudioContext], an doesn't render the
/// audio to the device hardware; instead, it generates it, as fast
/// as it can, and outputs the result to an [AudioBuffer].
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
///    BaseAudioContext
///
///
///
///
///
///
///
///    OfflineAudioContext
///
///
@JS()
@staticInterop
class OfflineAudioContext implements BaseAudioContext {
  external factory OfflineAudioContext(
      [int? numberOfChannels, int? length, double? sampleRate]);
}

extension PropsOfflineAudioContext on OfflineAudioContext {
  Future<AudioBuffer> startRendering() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'startRendering', []));

  Future<Object> resume() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'resume', []));

  Future<Object> suspend(double suspendTime) => js_util
      .promiseToFuture(js_util.callMethod(this, 'suspend', [suspendTime]));

  int get length => js_util.getProperty(this, 'length');
  EventHandlerNonNull? get oncomplete =>
      js_util.getProperty(this, 'oncomplete');
  set oncomplete(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncomplete', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class OfflineAudioContextOptions {
  external factory OfflineAudioContextOptions(
      {int? numberOfChannels = 1, int? length, double? sampleRate});
}

extension PropsOfflineAudioContextOptions on OfflineAudioContextOptions {
  int get numberOfChannels => js_util.getProperty(this, 'numberOfChannels');
  set numberOfChannels(int newValue) {
    js_util.setProperty(this, 'numberOfChannels', newValue);
  }

  int get length => js_util.getProperty(this, 'length');
  set length(int newValue) {
    js_util.setProperty(this, 'length', newValue);
  }

  double get sampleRate => js_util.getProperty(this, 'sampleRate');
  set sampleRate(double newValue) {
    js_util.setProperty(this, 'sampleRate', newValue);
  }
}

///  The Web Audio API interface represents events that occur when
/// the processing of an [OfflineAudioContext] is terminated. The
/// [complete] event uses this interface.
///
///   Note: This interface is marked as deprecated; it is still
/// supported for legacy reasons, but it will soon be superseded when
/// the promise version of [OfflineAudioContext.startRendering] is
/// supported in browsers, which will no longer need it.
///
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
///    OfflineAudioCompletionEvent
///
///
@JS()
@staticInterop
class OfflineAudioCompletionEvent implements Event {
  external factory OfflineAudioCompletionEvent(
      String type, OfflineAudioCompletionEventInit eventInitDict);
}

extension PropsOfflineAudioCompletionEvent on OfflineAudioCompletionEvent {
  AudioBuffer get renderedBuffer => js_util.getProperty(this, 'renderedBuffer');
}

@anonymous
@JS()
@staticInterop
class OfflineAudioCompletionEventInit implements EventInit {
  external factory OfflineAudioCompletionEventInit(
      {required AudioBuffer renderedBuffer});
}

extension PropsOfflineAudioCompletionEventInit
    on OfflineAudioCompletionEventInit {
  AudioBuffer get renderedBuffer => js_util.getProperty(this, 'renderedBuffer');
  set renderedBuffer(AudioBuffer newValue) {
    js_util.setProperty(this, 'renderedBuffer', newValue);
  }
}

///  The interface represents a short audio asset residing in memory,
/// created from an audio file using the
/// [AudioContext.decodeAudioData()] method, or from raw data using
/// [AudioContext.createBuffer()]. Once put into an AudioBuffer, the
/// audio can then be played by being passed into an
/// [AudioBufferSourceNode].
///  Objects of these types are designed to hold small audio
/// snippets, typically less than 45 s. For longer sounds, objects
/// implementing the [MediaElementAudioSourceNode] are more suitable.
/// The buffer contains data in the following format: non-interleaved
/// IEEE754 32-bit linear PCM with a nominal range between [-1] and
/// [+1], that is, a 32-bit floating point buffer, with each sample
/// between -1.0 and 1.0. If the has multiple channels, they are
/// stored in separate buffers.
@JS()
@staticInterop
class AudioBuffer {
  external factory AudioBuffer(AudioBufferOptions options);
}

extension PropsAudioBuffer on AudioBuffer {
  double get sampleRate => js_util.getProperty(this, 'sampleRate');
  int get length => js_util.getProperty(this, 'length');
  double get duration => js_util.getProperty(this, 'duration');
  int get numberOfChannels => js_util.getProperty(this, 'numberOfChannels');
  Float32List getChannelData(int channel) =>
      js_util.callMethod(this, 'getChannelData', [channel]);

  Object copyFromChannel(Float32List destination, int channelNumber,
          [int? bufferOffset = 0]) =>
      js_util.callMethod(
          this, 'copyFromChannel', [destination, channelNumber, bufferOffset]);

  Object copyToChannel(Float32List source, int channelNumber,
          [int? bufferOffset = 0]) =>
      js_util.callMethod(
          this, 'copyToChannel', [source, channelNumber, bufferOffset]);
}

@anonymous
@JS()
@staticInterop
class AudioBufferOptions {
  external factory AudioBufferOptions(
      {int? numberOfChannels = 1, int? length, double? sampleRate});
}

extension PropsAudioBufferOptions on AudioBufferOptions {
  int get numberOfChannels => js_util.getProperty(this, 'numberOfChannels');
  set numberOfChannels(int newValue) {
    js_util.setProperty(this, 'numberOfChannels', newValue);
  }

  int get length => js_util.getProperty(this, 'length');
  set length(int newValue) {
    js_util.setProperty(this, 'length', newValue);
  }

  double get sampleRate => js_util.getProperty(this, 'sampleRate');
  set sampleRate(double newValue) {
    js_util.setProperty(this, 'sampleRate', newValue);
  }
}

///  The interface is a generic interface for representing an audio
/// processing module.
/// Examples include:
///
///   an audio source (e.g. an HTML [<audio>] or [<video>] element,
/// an [OscillatorNode], etc.),
///  the audio destination,
///   intermediate processing module (e.g. a filter like
/// [BiquadFilterNode] or [ConvolverNode]), or
///  volume control (like [GainNode])
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
///    AudioNode
///
///
///
///   Note: An can be target of events, therefore it implements the
/// [EventTarget] interface.
///
@JS()
@staticInterop
class AudioNode implements EventTarget {
  external factory AudioNode();
}

extension PropsAudioNode on AudioNode {
  AudioNode connect(AudioNode destinationNode,
          [int? output = 0, int? input = 0]) =>
      js_util.callMethod(this, 'connect', [destinationNode, output, input]);

  Object disconnect([AudioNode? destinationNode, int? output, int? input]) =>
      js_util.callMethod(this, 'disconnect', [destinationNode, output, input]);

  BaseAudioContext get context => js_util.getProperty(this, 'context');
  int get numberOfInputs => js_util.getProperty(this, 'numberOfInputs');
  int get numberOfOutputs => js_util.getProperty(this, 'numberOfOutputs');
  int get channelCount => js_util.getProperty(this, 'channelCount');
  set channelCount(int newValue) {
    js_util.setProperty(this, 'channelCount', newValue);
  }

  ChannelCountMode get channelCountMode => ChannelCountMode.values
      .byName(js_util.getProperty(this, 'channelCountMode'));
  set channelCountMode(ChannelCountMode newValue) {
    js_util.setProperty(this, 'channelCountMode', newValue.name);
  }

  ChannelInterpretation get channelInterpretation =>
      ChannelInterpretation.values
          .byName(js_util.getProperty(this, 'channelInterpretation'));
  set channelInterpretation(ChannelInterpretation newValue) {
    js_util.setProperty(this, 'channelInterpretation', newValue.name);
  }
}

enum ChannelCountMode { max, clampedMax, explicit }

enum ChannelInterpretation { speakers, discrete }

@anonymous
@JS()
@staticInterop
class AudioNodeOptions {
  external factory AudioNodeOptions._(
      {required int channelCount,
      required String channelCountMode,
      required String channelInterpretation});

  factory AudioNodeOptions(
          {required int channelCount,
          required ChannelCountMode channelCountMode,
          required ChannelInterpretation channelInterpretation}) =>
      AudioNodeOptions._(
          channelCount: channelCount,
          channelCountMode: channelCountMode.name,
          channelInterpretation: channelInterpretation.name);
}

extension PropsAudioNodeOptions on AudioNodeOptions {
  int get channelCount => js_util.getProperty(this, 'channelCount');
  set channelCount(int newValue) {
    js_util.setProperty(this, 'channelCount', newValue);
  }

  ChannelCountMode get channelCountMode => ChannelCountMode.values
      .byName(js_util.getProperty(this, 'channelCountMode'));
  set channelCountMode(ChannelCountMode newValue) {
    js_util.setProperty(this, 'channelCountMode', newValue.name);
  }

  ChannelInterpretation get channelInterpretation =>
      ChannelInterpretation.values
          .byName(js_util.getProperty(this, 'channelInterpretation'));
  set channelInterpretation(ChannelInterpretation newValue) {
    js_util.setProperty(this, 'channelInterpretation', newValue.name);
  }
}

enum AutomationRate { aRate, kRate }

///  The Web Audio API's interface represents an audio-related
/// parameter, usually a parameter of an [AudioNode] (such as
/// [GainNode.gain]).
///  An can be set to a specific value or a change in value, and can
/// be scheduled to happen at a specific time and following a
/// specific pattern.
///  Each has a list of events, initially empty, that define when and
/// how values change. When this list is not empty, changes using the
/// [AudioParam.value] attributes are ignored. This list of events
/// allows us to schedule changes that have to happen at very precise
/// times, using arbitrary timeline-based automation curves. The time
/// used is the one defined in [AudioContext.currentTime].
@JS()
@staticInterop
class AudioParam {
  external factory AudioParam();
}

extension PropsAudioParam on AudioParam {
  double get value => js_util.getProperty(this, 'value');
  set value(double newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  AutomationRate get automationRate =>
      AutomationRate.values.byName(js_util.getProperty(this, 'automationRate'));
  set automationRate(AutomationRate newValue) {
    js_util.setProperty(this, 'automationRate', newValue.name);
  }

  double get defaultValue => js_util.getProperty(this, 'defaultValue');
  double get minValue => js_util.getProperty(this, 'minValue');
  double get maxValue => js_util.getProperty(this, 'maxValue');
  AudioParam setValueAtTime(double value, double startTime) =>
      js_util.callMethod(this, 'setValueAtTime', [value, startTime]);

  AudioParam linearRampToValueAtTime(double value, double endTime) =>
      js_util.callMethod(this, 'linearRampToValueAtTime', [value, endTime]);

  AudioParam exponentialRampToValueAtTime(double value, double endTime) =>
      js_util
          .callMethod(this, 'exponentialRampToValueAtTime', [value, endTime]);

  AudioParam setTargetAtTime(
          double target, double startTime, double timeConstant) =>
      js_util.callMethod(
          this, 'setTargetAtTime', [target, startTime, timeConstant]);

  AudioParam setValueCurveAtTime(
          Iterable<double> values, double startTime, double duration) =>
      js_util.callMethod(
          this, 'setValueCurveAtTime', [values, startTime, duration]);

  AudioParam cancelScheduledValues(double cancelTime) =>
      js_util.callMethod(this, 'cancelScheduledValues', [cancelTime]);

  AudioParam cancelAndHoldAtTime(double cancelTime) =>
      js_util.callMethod(this, 'cancelAndHoldAtTime', [cancelTime]);
}

///  The interface—part of the Web Audio API—is a parent interface
/// for several types of audio source node interfaces which share the
/// ability to be started and stopped, optionally at specified times.
/// Specifically, this interface defines the [start()] and [stop()]
/// methods, as well as the [ended] event.
///
///   Note: You can't create an object directly. Instead, use the
/// interface which extends it, such as [AudioBufferSourceNode],
/// [OscillatorNode], and [ConstantSourceNode].
///
///  Unless stated otherwise, nodes based upon output silence when
/// not playing (that is, before [start()] is called and after
/// [stop()] is called). Silence is represented, as always, by a
/// stream of samples with the value zero (0).
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
///    AudioNode
///
///
///
///
///
///
///
///    AudioScheduledSourceNode
///
///
@JS()
@staticInterop
class AudioScheduledSourceNode implements AudioNode {
  external factory AudioScheduledSourceNode();
}

extension PropsAudioScheduledSourceNode on AudioScheduledSourceNode {
  EventHandlerNonNull? get onended => js_util.getProperty(this, 'onended');
  set onended(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onended', newValue);
  }

  Object start([double? when = 0]) => js_util.callMethod(this, 'start', [when]);

  Object stop([double? when = 0]) => js_util.callMethod(this, 'stop', [when]);
}

///  The interface represents a node able to provide real-time
/// frequency and time-domain analysis information. It is an
/// [AudioNode] that passes the audio stream unchanged from the input
/// to the output, but allows you to take the generated data, process
/// it, and create audio visualizations.
///  An has exactly one input and one output. The node works even if
/// the output is not connected.
///
///
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
///    AudioNode
///
///
///
///
///
///
///
///    AnalyserNode
///
///
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    [1] (but may be left unconnected)
///
///
///    Channel count mode
///    ["max"]
///
///
///    Channel count
///    [2]
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///
@JS()
@staticInterop
class AnalyserNode implements AudioNode {
  external factory AnalyserNode(BaseAudioContext context,
      [AnalyserOptions? options]);
}

extension PropsAnalyserNode on AnalyserNode {
  Object getFloatFrequencyData(Float32List array) =>
      js_util.callMethod(this, 'getFloatFrequencyData', [array]);

  Object getByteFrequencyData(Uint8List array) =>
      js_util.callMethod(this, 'getByteFrequencyData', [array]);

  Object getFloatTimeDomainData(Float32List array) =>
      js_util.callMethod(this, 'getFloatTimeDomainData', [array]);

  Object getByteTimeDomainData(Uint8List array) =>
      js_util.callMethod(this, 'getByteTimeDomainData', [array]);

  int get fftSize => js_util.getProperty(this, 'fftSize');
  set fftSize(int newValue) {
    js_util.setProperty(this, 'fftSize', newValue);
  }

  int get frequencyBinCount => js_util.getProperty(this, 'frequencyBinCount');
  double get minDecibels => js_util.getProperty(this, 'minDecibels');
  set minDecibels(double newValue) {
    js_util.setProperty(this, 'minDecibels', newValue);
  }

  double get maxDecibels => js_util.getProperty(this, 'maxDecibels');
  set maxDecibels(double newValue) {
    js_util.setProperty(this, 'maxDecibels', newValue);
  }

  double get smoothingTimeConstant =>
      js_util.getProperty(this, 'smoothingTimeConstant');
  set smoothingTimeConstant(double newValue) {
    js_util.setProperty(this, 'smoothingTimeConstant', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AnalyserOptions implements AudioNodeOptions {
  external factory AnalyserOptions(
      {int? fftSize = 2048,
      double? maxDecibels = -30,
      double? minDecibels = -100,
      double? smoothingTimeConstant = 0.8});
}

extension PropsAnalyserOptions on AnalyserOptions {
  int get fftSize => js_util.getProperty(this, 'fftSize');
  set fftSize(int newValue) {
    js_util.setProperty(this, 'fftSize', newValue);
  }

  double get maxDecibels => js_util.getProperty(this, 'maxDecibels');
  set maxDecibels(double newValue) {
    js_util.setProperty(this, 'maxDecibels', newValue);
  }

  double get minDecibels => js_util.getProperty(this, 'minDecibels');
  set minDecibels(double newValue) {
    js_util.setProperty(this, 'minDecibels', newValue);
  }

  double get smoothingTimeConstant =>
      js_util.getProperty(this, 'smoothingTimeConstant');
  set smoothingTimeConstant(double newValue) {
    js_util.setProperty(this, 'smoothingTimeConstant', newValue);
  }
}

///  The interface is an [AudioScheduledSourceNode] which represents
/// an audio source consisting of in-memory audio data, stored in an
/// [AudioBuffer].
///  This interface is especially useful for playing back audio which
/// has particularly stringent timing accuracy requirements, such as
/// for sounds that must match a specific rhythm and can be kept in
/// memory rather than being played from disk or the network. To play
/// sounds which require accurate timing but must be streamed from
/// the network or played from disk, use a [AudioWorkletNode] to
/// implement its playback.
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
///    AudioNode
///
///
///
///
///
///
///
///    AudioScheduledSourceNode
///
///
///
///
///
///
///
///    AudioBufferSourceNode
///
///
///  An has no inputs and exactly one output, which has the same
/// number of channels as the [AudioBuffer] indicated by its [buffer]
/// property. If there's no buffer set—that is, if [buffer] is
/// [null]—the output contains a single channel of silence (every
/// sample is 0).
///  An can only be played once; after each call to [start()], you
/// have to create a new node if you want to play the same sound
/// again. Fortunately, these nodes are very inexpensive to create,
/// and the actual [AudioBuffer]s can be reused for multiple plays of
/// the sound. Indeed, you can use these nodes in a "fire and forget"
/// manner: create the node, call [start()] to begin playing the
/// sound, and don't even bother to hold a reference to it. It will
/// automatically be garbage-collected at an appropriate time, which
/// won't be until sometime after the sound has finished playing.
///  Multiple calls to [stop()] are allowed. The most recent call
/// replaces the previous one, if the has not already reached the end
/// of the buffer.
///
///
///
///
///    Number of inputs
///    [0]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count
///    defined by the associated [AudioBuffer]
///
///
///
@JS()
@staticInterop
class AudioBufferSourceNode implements AudioScheduledSourceNode {
  external factory AudioBufferSourceNode(BaseAudioContext context,
      [AudioBufferSourceOptions? options]);
}

extension PropsAudioBufferSourceNode on AudioBufferSourceNode {
  AudioBuffer? get buffer => js_util.getProperty(this, 'buffer');
  set buffer(AudioBuffer? newValue) {
    js_util.setProperty(this, 'buffer', newValue);
  }

  AudioParam get playbackRate => js_util.getProperty(this, 'playbackRate');
  AudioParam get detune => js_util.getProperty(this, 'detune');
  bool get loop => js_util.getProperty(this, 'loop');
  set loop(bool newValue) {
    js_util.setProperty(this, 'loop', newValue);
  }

  double get loopStart => js_util.getProperty(this, 'loopStart');
  set loopStart(double newValue) {
    js_util.setProperty(this, 'loopStart', newValue);
  }

  double get loopEnd => js_util.getProperty(this, 'loopEnd');
  set loopEnd(double newValue) {
    js_util.setProperty(this, 'loopEnd', newValue);
  }

  Object start([double? when = 0, double? offset, double? duration]) =>
      js_util.callMethod(this, 'start', [when, offset, duration]);
}

@anonymous
@JS()
@staticInterop
class AudioBufferSourceOptions {
  external factory AudioBufferSourceOptions(
      {AudioBuffer? buffer,
      double? detune = 0,
      bool? loop = false,
      double? loopEnd = 0,
      double? loopStart = 0,
      double? playbackRate = 1});
}

extension PropsAudioBufferSourceOptions on AudioBufferSourceOptions {
  AudioBuffer? get buffer => js_util.getProperty(this, 'buffer');
  set buffer(AudioBuffer? newValue) {
    js_util.setProperty(this, 'buffer', newValue);
  }

  double get detune => js_util.getProperty(this, 'detune');
  set detune(double newValue) {
    js_util.setProperty(this, 'detune', newValue);
  }

  bool get loop => js_util.getProperty(this, 'loop');
  set loop(bool newValue) {
    js_util.setProperty(this, 'loop', newValue);
  }

  double get loopEnd => js_util.getProperty(this, 'loopEnd');
  set loopEnd(double newValue) {
    js_util.setProperty(this, 'loopEnd', newValue);
  }

  double get loopStart => js_util.getProperty(this, 'loopStart');
  set loopStart(double newValue) {
    js_util.setProperty(this, 'loopStart', newValue);
  }

  double get playbackRate => js_util.getProperty(this, 'playbackRate');
  set playbackRate(double newValue) {
    js_util.setProperty(this, 'playbackRate', newValue);
  }
}

///  The interface represents the end destination of an audio graph
/// in a given context — usually the speakers of your device. It can
/// also be the node that will "record" the audio data when used with
/// an [OfflineAudioContext].
///   has no output (as it is the output, no more [AudioNode] can be
/// linked after it in the audio graph) and one input. The number of
/// channels in the input must be between [0] and the
/// [maxChannelCount] value or an exception is raised.
///  The of a given [AudioContext] can be retrieved using the
/// [AudioContext.destination] property.
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
///    AudioNode
///
///
///
///
///
///
///
///    AudioDestinationNode
///
///
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    [0]
///
///
///    Channel count mode
///    ["explicit"]
///
///
///    Channel count
///    [2]
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///
@JS()
@staticInterop
class AudioDestinationNode implements AudioNode {
  external factory AudioDestinationNode();
}

extension PropsAudioDestinationNode on AudioDestinationNode {
  int get maxChannelCount => js_util.getProperty(this, 'maxChannelCount');
}

///  The interface represents the position and orientation of the
/// unique person listening to the audio scene, and is used in audio
/// spatialization. All [PannerNode]s spatialize in relation to the
/// stored in the [BaseAudioContext.listener] attribute.
///  It is important to note that there is only one listener per
/// context and that it isn't an [AudioNode].
///
///
///
@JS()
@staticInterop
class AudioListener {
  external factory AudioListener();
}

extension PropsAudioListener on AudioListener {
  AudioParam get positionX => js_util.getProperty(this, 'positionX');
  AudioParam get positionY => js_util.getProperty(this, 'positionY');
  AudioParam get positionZ => js_util.getProperty(this, 'positionZ');
  AudioParam get forwardX => js_util.getProperty(this, 'forwardX');
  AudioParam get forwardY => js_util.getProperty(this, 'forwardY');
  AudioParam get forwardZ => js_util.getProperty(this, 'forwardZ');
  AudioParam get upX => js_util.getProperty(this, 'upX');
  AudioParam get upY => js_util.getProperty(this, 'upY');
  AudioParam get upZ => js_util.getProperty(this, 'upZ');
  Object setPosition(double x, double y, double z) =>
      js_util.callMethod(this, 'setPosition', [x, y, z]);

  Object setOrientation(
          double x, double y, double z, double xUp, double yUp, double zUp) =>
      js_util.callMethod(this, 'setOrientation', [x, y, z, xUp, yUp, zUp]);
}

///  Deprecated: This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///  The Web Audio API represents events that occur when a
/// [ScriptProcessorNode] input buffer is ready to be processed.
///
///   Note: As of the August 29 2014 Web Audio API spec publication,
/// this feature has been marked as deprecated, and is soon to be
/// replaced by AudioWorklet.
///
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
///    AudioProcessingEvent
///
///
@Deprecated('Not official in the specs')
@JS()
@staticInterop
class AudioProcessingEvent implements Event {
  external factory AudioProcessingEvent(
      String type, AudioProcessingEventInit eventInitDict);
}

extension PropsAudioProcessingEvent on AudioProcessingEvent {
  double get playbackTime => js_util.getProperty(this, 'playbackTime');
  AudioBuffer get inputBuffer => js_util.getProperty(this, 'inputBuffer');
  AudioBuffer get outputBuffer => js_util.getProperty(this, 'outputBuffer');
}

@anonymous
@JS()
@staticInterop
class AudioProcessingEventInit implements EventInit {
  external factory AudioProcessingEventInit(
      {required double playbackTime,
      required AudioBuffer inputBuffer,
      required AudioBuffer outputBuffer});
}

extension PropsAudioProcessingEventInit on AudioProcessingEventInit {
  double get playbackTime => js_util.getProperty(this, 'playbackTime');
  set playbackTime(double newValue) {
    js_util.setProperty(this, 'playbackTime', newValue);
  }

  AudioBuffer get inputBuffer => js_util.getProperty(this, 'inputBuffer');
  set inputBuffer(AudioBuffer newValue) {
    js_util.setProperty(this, 'inputBuffer', newValue);
  }

  AudioBuffer get outputBuffer => js_util.getProperty(this, 'outputBuffer');
  set outputBuffer(AudioBuffer newValue) {
    js_util.setProperty(this, 'outputBuffer', newValue);
  }
}

enum BiquadFilterType {
  lowpass,
  highpass,
  bandpass,
  lowshelf,
  highshelf,
  peaking,
  notch,
  allpass
}

///  The interface represents a simple low-order filter, and is
/// created using the [BaseAudioContext/createBiquadFilter] method.
/// It is an [AudioNode] that can represent different kinds of
/// filters, tone control devices, and graphic equalizers. A always
/// has exactly one input and one output.
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
///    AudioNode
///
///
///
///
///
///
///
///    BiquadFilterNode
///
///
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count mode
///    ["max"]
///
///
///    Channel count
///    [2] (not used in the default count mode)
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///
@JS()
@staticInterop
class BiquadFilterNode implements AudioNode {
  external factory BiquadFilterNode(BaseAudioContext context,
      [BiquadFilterOptions? options]);
}

extension PropsBiquadFilterNode on BiquadFilterNode {
  BiquadFilterType get type =>
      BiquadFilterType.values.byName(js_util.getProperty(this, 'type'));
  set type(BiquadFilterType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }

  AudioParam get frequency => js_util.getProperty(this, 'frequency');
  AudioParam get detune => js_util.getProperty(this, 'detune');
  AudioParam get q => js_util.getProperty(this, 'Q');
  AudioParam get gain => js_util.getProperty(this, 'gain');
  Object getFrequencyResponse(Float32List frequencyHz, Float32List magResponse,
          Float32List phaseResponse) =>
      js_util.callMethod(this, 'getFrequencyResponse',
          [frequencyHz, magResponse, phaseResponse]);
}

@anonymous
@JS()
@staticInterop
class BiquadFilterOptions implements AudioNodeOptions {
  external factory BiquadFilterOptions._(
      {String? type,
      double? Q = 1,
      double? detune = 0,
      double? frequency = 350,
      double? gain = 0});

  factory BiquadFilterOptions(
          {BiquadFilterType? type = BiquadFilterType.lowpass,
          double? Q = 1,
          double? detune = 0,
          double? frequency = 350,
          double? gain = 0}) =>
      BiquadFilterOptions._(
          type: type?.name,
          Q: Q,
          detune: detune,
          frequency: frequency,
          gain: gain);
}

extension PropsBiquadFilterOptions on BiquadFilterOptions {
  BiquadFilterType get type =>
      BiquadFilterType.values.byName(js_util.getProperty(this, 'type'));
  set type(BiquadFilterType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }

  double get q => js_util.getProperty(this, 'Q');
  set q(double newValue) {
    js_util.setProperty(this, 'Q', newValue);
  }

  double get detune => js_util.getProperty(this, 'detune');
  set detune(double newValue) {
    js_util.setProperty(this, 'detune', newValue);
  }

  double get frequency => js_util.getProperty(this, 'frequency');
  set frequency(double newValue) {
    js_util.setProperty(this, 'frequency', newValue);
  }

  double get gain => js_util.getProperty(this, 'gain');
  set gain(double newValue) {
    js_util.setProperty(this, 'gain', newValue);
  }
}

///  The interface, often used in conjunction with its opposite,
/// [ChannelSplitterNode], reunites different mono inputs into a
/// single output. Each input is used to fill a channel of the
/// output. This is useful for accessing each channels separately,
/// e.g. for performing channel mixing where gain must be separately
/// controlled on each channel.
///
///
///
///  If has one single output, but as many inputs as there are
/// channels to merge; the number of inputs is defined as a parameter
/// of its constructor and the call to
/// [AudioContext.createChannelMerger()]. In the case that no value
/// is given, it will default to [6].
///  Using a , it is possible to create outputs with more channels
/// than the rendering hardware is able to process. In that case,
/// when the signal is sent to the [AudioContext.listener] object,
/// supernumerary channels will be ignored.
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
///    AudioNode
///
///
///
///
///
///
///
///    ChannelMergerNode
///
///
///
///
///
///    Number of inputs
///    variable; default to [6].
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count mode
///    ["explicit"]
///
///
///    Channel count
///    [2 ](not used in the default count mode)
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///
@JS()
@staticInterop
class ChannelMergerNode implements AudioNode {
  external factory ChannelMergerNode(BaseAudioContext context,
      [ChannelMergerOptions? options]);
}

@anonymous
@JS()
@staticInterop
class ChannelMergerOptions implements AudioNodeOptions {
  external factory ChannelMergerOptions({int? numberOfInputs = 6});
}

extension PropsChannelMergerOptions on ChannelMergerOptions {
  int get numberOfInputs => js_util.getProperty(this, 'numberOfInputs');
  set numberOfInputs(int newValue) {
    js_util.setProperty(this, 'numberOfInputs', newValue);
  }
}

///  The interface, often used in conjunction with its opposite,
/// [ChannelMergerNode], separates the different channels of an audio
/// source into a set of mono outputs. This is useful for accessing
/// each channel separately, e.g. for performing channel mixing where
/// gain must be separately controlled on each channel.
///
///
///
///  If your always has one single input, the amount of outputs is
/// defined by a parameter on its constructor and the call to
/// [AudioContext.createChannelSplitter()]. In the case that no value
/// is given, it will default to [6]. If there are fewer channels in
/// the input than there are outputs, supernumerary outputs are
/// silent.
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
///    AudioNode
///
///
///
///
///
///
///
///    ChannelSplitterNode
///
///
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    variable; default to [6].
///
///
///    Channel count mode
///
///     ["explicit]" Older implementations, as per earlier versions
///     of the spec use ["max"].
///
///
///
///    Channel count
///
///      Fixed to the number of outputs. Older implementations, as
/// per earlier
///     versions of the spec use [2 ](not used in the default count
///     mode).
///
///
///
///    Channel interpretation
///    ["discrete"]
///
///
///
@JS()
@staticInterop
class ChannelSplitterNode implements AudioNode {
  external factory ChannelSplitterNode(BaseAudioContext context,
      [ChannelSplitterOptions? options]);
}

@anonymous
@JS()
@staticInterop
class ChannelSplitterOptions implements AudioNodeOptions {
  external factory ChannelSplitterOptions({int? numberOfOutputs = 6});
}

extension PropsChannelSplitterOptions on ChannelSplitterOptions {
  int get numberOfOutputs => js_util.getProperty(this, 'numberOfOutputs');
  set numberOfOutputs(int newValue) {
    js_util.setProperty(this, 'numberOfOutputs', newValue);
  }
}

///  The interface—part of the Web Audio API—represents an audio
/// source (based upon [AudioScheduledSourceNode]) whose output is
/// single unchanging value. This makes it useful for cases in which
/// you need a constant value coming in from an audio source. In
/// addition, it can be used like a constructible [AudioParam] by
/// automating the value of its [offset] or by connecting another
/// node to it; see Controlling multiple parameters with
/// ConstantSourceNode.
///  A has no inputs and exactly one monaural (one-channel) output.
/// The output's value is always the same as the value of the
/// [offset] parameter.
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
///    AudioNode
///
///
///
///
///
///
///
///    AudioScheduledSourceNode
///
///
///
///
///
///
///
///    ConstantSourceNode
///
///
///
///
///
///    Number of inputs
///    [0]
///
///
///    Number of outputs
///    [1]
///
///
///
@JS()
@staticInterop
class ConstantSourceNode implements AudioScheduledSourceNode {
  external factory ConstantSourceNode(BaseAudioContext context,
      [ConstantSourceOptions? options]);
}

extension PropsConstantSourceNode on ConstantSourceNode {
  AudioParam get offset => js_util.getProperty(this, 'offset');
}

@anonymous
@JS()
@staticInterop
class ConstantSourceOptions {
  external factory ConstantSourceOptions({double? offset = 1});
}

extension PropsConstantSourceOptions on ConstantSourceOptions {
  double get offset => js_util.getProperty(this, 'offset');
  set offset(double newValue) {
    js_util.setProperty(this, 'offset', newValue);
  }
}

///  The interface is an [AudioNode] that performs a Linear
/// Convolution on a given [AudioBuffer], often used to achieve a
/// reverb effect. A always has exactly one input and one output.
///
///   Note: For more information on the theory behind Linear
/// Convolution, see the Convolution article on Wikipedia.
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
///    AudioNode
///
///
///
///
///
///
///
///    ConvolverNode
///
///
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count mode
///    ["clamped-max"]
///
///
///    Channel count
///    [1], [2], or [4]
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///
@JS()
@staticInterop
class ConvolverNode implements AudioNode {
  external factory ConvolverNode(BaseAudioContext context,
      [ConvolverOptions? options]);
}

extension PropsConvolverNode on ConvolverNode {
  AudioBuffer? get buffer => js_util.getProperty(this, 'buffer');
  set buffer(AudioBuffer? newValue) {
    js_util.setProperty(this, 'buffer', newValue);
  }

  bool get normalize => js_util.getProperty(this, 'normalize');
  set normalize(bool newValue) {
    js_util.setProperty(this, 'normalize', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ConvolverOptions implements AudioNodeOptions {
  external factory ConvolverOptions(
      {AudioBuffer? buffer, bool? disableNormalization = false});
}

extension PropsConvolverOptions on ConvolverOptions {
  AudioBuffer? get buffer => js_util.getProperty(this, 'buffer');
  set buffer(AudioBuffer? newValue) {
    js_util.setProperty(this, 'buffer', newValue);
  }

  bool get disableNormalization =>
      js_util.getProperty(this, 'disableNormalization');
  set disableNormalization(bool newValue) {
    js_util.setProperty(this, 'disableNormalization', newValue);
  }
}

///  The interface represents a delay-line; an [AudioNode]
/// audio-processing module that causes a delay between the arrival
/// of an input data and its propagation to the output.
///  A always has exactly one input and one output, both with the
/// same amount of channels.
///
///
///
///  When creating a graph that has a cycle, it is mandatory to have
/// at least one in the cycle, or the nodes taking part in the cycle
/// will be muted.
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
///    AudioNode
///
///
///
///
///
///
///
///    DelayNode
///
///
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count mode
///    ["max"]
///
///
///    Channel count
///    [2] (not used in the default count mode)
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///
@JS()
@staticInterop
class DelayNode implements AudioNode {
  external factory DelayNode(BaseAudioContext context, [DelayOptions? options]);
}

extension PropsDelayNode on DelayNode {
  AudioParam get delayTime => js_util.getProperty(this, 'delayTime');
}

@anonymous
@JS()
@staticInterop
class DelayOptions implements AudioNodeOptions {
  external factory DelayOptions(
      {double? maxDelayTime = 1, double? delayTime = 0});
}

extension PropsDelayOptions on DelayOptions {
  double get maxDelayTime => js_util.getProperty(this, 'maxDelayTime');
  set maxDelayTime(double newValue) {
    js_util.setProperty(this, 'maxDelayTime', newValue);
  }

  double get delayTime => js_util.getProperty(this, 'delayTime');
  set delayTime(double newValue) {
    js_util.setProperty(this, 'delayTime', newValue);
  }
}

///  The interface provides a compression effect, which lowers the
/// volume of the loudest parts of the signal in order to help
/// prevent clipping and distortion that can occur when multiple
/// sounds are played and multiplexed together at once. This is often
/// used in musical production and game audio. is an [AudioNode] that
/// has exactly one input and one output.
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
///    AudioNode
///
///
///
///
///
///
///
///    DynamicsCompressorNode
///
///
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count mode
///    ["clamped-max"]
///
///
///    Channel count
///    [2]
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///
@JS()
@staticInterop
class DynamicsCompressorNode implements AudioNode {
  external factory DynamicsCompressorNode(BaseAudioContext context,
      [DynamicsCompressorOptions? options]);
}

extension PropsDynamicsCompressorNode on DynamicsCompressorNode {
  AudioParam get threshold => js_util.getProperty(this, 'threshold');
  AudioParam get knee => js_util.getProperty(this, 'knee');
  AudioParam get ratio => js_util.getProperty(this, 'ratio');
  double get reduction => js_util.getProperty(this, 'reduction');
  AudioParam get attack => js_util.getProperty(this, 'attack');
  AudioParam get release => js_util.getProperty(this, 'release');
}

@anonymous
@JS()
@staticInterop
class DynamicsCompressorOptions implements AudioNodeOptions {
  external factory DynamicsCompressorOptions(
      {double? attack = 0.003,
      double? knee = 30,
      double? ratio = 12,
      double? release = 0.25,
      double? threshold = -24});
}

extension PropsDynamicsCompressorOptions on DynamicsCompressorOptions {
  double get attack => js_util.getProperty(this, 'attack');
  set attack(double newValue) {
    js_util.setProperty(this, 'attack', newValue);
  }

  double get knee => js_util.getProperty(this, 'knee');
  set knee(double newValue) {
    js_util.setProperty(this, 'knee', newValue);
  }

  double get ratio => js_util.getProperty(this, 'ratio');
  set ratio(double newValue) {
    js_util.setProperty(this, 'ratio', newValue);
  }

  double get release => js_util.getProperty(this, 'release');
  set release(double newValue) {
    js_util.setProperty(this, 'release', newValue);
  }

  double get threshold => js_util.getProperty(this, 'threshold');
  set threshold(double newValue) {
    js_util.setProperty(this, 'threshold', newValue);
  }
}

///  The interface represents a change in volume. It is an
/// [AudioNode] audio-processing module that causes a given gain to
/// be applied to the input data before its propagation to the
/// output. A always has exactly one input and one output, both with
/// the same number of channels.
///  The gain is a unitless value, changing with time, that is
/// multiplied to each corresponding sample of all input channels. If
/// modified, the new gain is instantly applied, causing unaesthetic
/// 'clicks' in the resulting audio. To prevent this from happening,
/// never change the value directly but use the exponential
/// interpolation methods on the [AudioParam] interface.
///
///
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
///    AudioNode
///
///
///
///
///
///
///
///    GainNode
///
///
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count mode
///    ["max"]
///
///
///    Channel count
///    [2] (not used in the default count mode)
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///
@JS()
@staticInterop
class GainNode implements AudioNode {
  external factory GainNode(BaseAudioContext context, [GainOptions? options]);
}

extension PropsGainNode on GainNode {
  AudioParam get gain => js_util.getProperty(this, 'gain');
}

@anonymous
@JS()
@staticInterop
class GainOptions implements AudioNodeOptions {
  external factory GainOptions({double? gain = 1.0});
}

extension PropsGainOptions on GainOptions {
  double get gain => js_util.getProperty(this, 'gain');
  set gain(double newValue) {
    js_util.setProperty(this, 'gain', newValue);
  }
}

///  The interface of the Web Audio API is a [AudioNode] processor
/// which implements a general infinite impulse response (IIR)
/// filter; this type of filter can be used to implement tone control
/// devices and graphic equalizers as well. It lets the parameters of
/// the filter response be specified, so that it can be tuned as
/// needed.
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
///    AudioNode
///
///
///
///
///
///
///
///    IIRFilterNode
///
///
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count mode
///    ["max"]
///
///
///    Channel count
///    Same as on the input
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///
///  Typically, it's best to use the [BiquadFilterNode] interface to
/// implement higher-order filters. There are several reasons why:
///
///  Biquad filters are typically less sensitive to numeric quirks.
///  The filter parameters of biquad filters can be automated.
///   All even-ordered IIR filters can be created using
/// [BiquadFilterNode].
///
///  However, if you need to create an odd-ordered IIR filter, you'll
/// need to use . You may also find this interface useful if you
/// don't need automation, or for other reasons.
///
///   Note: Once the node has been created, you can't change its
/// coefficients.
///
///  s have a tail-time reference; they continue to output non-silent
/// audio with zero input. As an IIR filter, the non-zero input
/// continues forever, but this can be limited after some finite time
/// in practice, when the output has approached zero closely enough.
/// The actual time that takes depends on the filter coefficients
/// provided.
@JS()
@staticInterop
class IIRFilterNode implements AudioNode {
  external factory IIRFilterNode(
      BaseAudioContext context, IIRFilterOptions options);
}

extension PropsIIRFilterNode on IIRFilterNode {
  Object getFrequencyResponse(Float32List frequencyHz, Float32List magResponse,
          Float32List phaseResponse) =>
      js_util.callMethod(this, 'getFrequencyResponse',
          [frequencyHz, magResponse, phaseResponse]);
}

@anonymous
@JS()
@staticInterop
class IIRFilterOptions implements AudioNodeOptions {
  external factory IIRFilterOptions(
      {required Iterable<double> feedforward,
      required Iterable<double> feedback});
}

extension PropsIIRFilterOptions on IIRFilterOptions {
  Iterable<double> get feedforward => js_util.getProperty(this, 'feedforward');
  set feedforward(Iterable<double> newValue) {
    js_util.setProperty(this, 'feedforward', newValue);
  }

  Iterable<double> get feedback => js_util.getProperty(this, 'feedback');
  set feedback(Iterable<double> newValue) {
    js_util.setProperty(this, 'feedback', newValue);
  }
}

///  The interface represents an audio source consisting of an HTML5
/// [<audio>] or [<video>] element. It is an [AudioNode] that acts as
/// an audio source.
///  A has no inputs and exactly one output, and is created using the
/// [AudioContext.createMediaElementSource()] method. The number of
/// channels in the output equals the number of channels of the audio
/// referenced by the [HTMLMediaElement] used in the creation of the
/// node, or is 1 if the [HTMLMediaElement] has no audio.
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
///    AudioNode
///
///
///
///
///
///
///
///    MediaElementAudioSourceNode
///
///
///
///
///
///    Number of inputs
///    [0]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count
///     2 (but note that [AudioNode.channelCount] is only used for
/// up-mixing and down-mixing [AudioNode] inputs, and doesn't have
/// any input)
///
///
///
@JS()
@staticInterop
class MediaElementAudioSourceNode implements AudioNode {
  external factory MediaElementAudioSourceNode(
      AudioContext context, MediaElementAudioSourceOptions options);
}

extension PropsMediaElementAudioSourceNode on MediaElementAudioSourceNode {
  HTMLMediaElement get mediaElement =>
      js_util.getProperty(this, 'mediaElement');
}

@anonymous
@JS()
@staticInterop
class MediaElementAudioSourceOptions {
  external factory MediaElementAudioSourceOptions(
      {required HTMLMediaElement mediaElement});
}

extension PropsMediaElementAudioSourceOptions
    on MediaElementAudioSourceOptions {
  HTMLMediaElement get mediaElement =>
      js_util.getProperty(this, 'mediaElement');
  set mediaElement(HTMLMediaElement newValue) {
    js_util.setProperty(this, 'mediaElement', newValue);
  }
}

///  The interface represents an audio destination consisting of a
/// WebRTC [MediaStream] with a single [AudioMediaStreamTrack], which
/// can be used in a similar way to a [MediaStream] obtained from
/// [navigator.mediaDevices.getUserMedia()].
///  It is an [AudioNode] that acts as an audio destination, created
/// using the [AudioContext.createMediaStreamDestination()] method.
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
///    AudioNode
///
///
///
///
///
///
///
///    MediaStreamAudioDestinationNode
///
///
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    [0]
///
///
///    Channel count
///    [2]
///
///
///    Channel count mode
///    ["explicit"]
///
///
///    Channel count interpretation
///    ["speakers"]
///
///
///
@JS()
@staticInterop
class MediaStreamAudioDestinationNode implements AudioNode {
  external factory MediaStreamAudioDestinationNode(AudioContext context,
      [AudioNodeOptions? options]);
}

extension PropsMediaStreamAudioDestinationNode
    on MediaStreamAudioDestinationNode {
  MediaStream get stream => js_util.getProperty(this, 'stream');
}

///  The interface is a type of [AudioNode] which operates as an
/// audio source whose media is received from a [MediaStream]
/// obtained using the WebRTC or Media Capture and Streams APIs.
///  This media could be from a microphone (through [getUserMedia()])
/// or from a remote peer on a WebRTC call (using the
/// [RTCPeerConnection]'s audio tracks).
///  A has no inputs and exactly one output, and is created using the
/// [AudioContext.createMediaStreamSource()] method.
///  The takes the audio from the first [MediaStreamTrack] whose
/// [kind] attribute's value is [audio]. See Track ordering for more
/// information about the order of tracks.
///  The number of channels output by the node matches the number of
/// tracks found in the selected audio track.
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
///    AudioNode
///
///
///
///
///
///
///
///    MediaStreamAudioSourceNode
///
///
///
///
///
///    Number of inputs
///    [0]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count
///     2 (but note that [AudioNode.channelCount] is only used for
/// up-mixing and down-mixing [AudioNode] inputs, and doesn't have
/// any input)
///
///
///
@JS()
@staticInterop
class MediaStreamAudioSourceNode implements AudioNode {
  external factory MediaStreamAudioSourceNode(
      AudioContext context, MediaStreamAudioSourceOptions options);
}

extension PropsMediaStreamAudioSourceNode on MediaStreamAudioSourceNode {
  MediaStream get mediaStream => js_util.getProperty(this, 'mediaStream');
}

@anonymous
@JS()
@staticInterop
class MediaStreamAudioSourceOptions {
  external factory MediaStreamAudioSourceOptions(
      {required MediaStream mediaStream});
}

extension PropsMediaStreamAudioSourceOptions on MediaStreamAudioSourceOptions {
  MediaStream get mediaStream => js_util.getProperty(this, 'mediaStream');
  set mediaStream(MediaStream newValue) {
    js_util.setProperty(this, 'mediaStream', newValue);
  }
}

///  The interface is a type of [AudioNode] which represents a source
/// of audio data taken from a specific [MediaStreamTrack] obtained
/// through the WebRTC or Media Capture and Streams APIs.
///  The audio itself might be input from a microphone or other audio
/// sampling device, or might be received through a
/// [RTCPeerConnection], among other possible options.
///  A has no inputs and exactly one output, and is created using the
/// [AudioContext.createMediaStreamTrackSource()] method. This
/// interface is similar to [MediaStreamAudioSourceNode], except it
/// lets you specifically state the track to use, rather than
/// assuming the first audio track on a stream.
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
///    AudioNode
///
///
///
///
///
///
///
///    MediaStreamTrackAudioSourceNode
///
///
///
///
///
///    Number of inputs
///    [0]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count
///
///     defined by the first audio [MediaStreamTrack]
///     passed to the
///     [AudioContext.createMediaStreamTrackSource()]
///     method that created it.
///
///
///
///
@JS()
@staticInterop
class MediaStreamTrackAudioSourceNode implements AudioNode {
  external factory MediaStreamTrackAudioSourceNode(
      AudioContext context, MediaStreamTrackAudioSourceOptions options);
}

@anonymous
@JS()
@staticInterop
class MediaStreamTrackAudioSourceOptions {
  external factory MediaStreamTrackAudioSourceOptions(
      {required MediaStreamTrack mediaStreamTrack});
}

extension PropsMediaStreamTrackAudioSourceOptions
    on MediaStreamTrackAudioSourceOptions {
  MediaStreamTrack get mediaStreamTrack =>
      js_util.getProperty(this, 'mediaStreamTrack');
  set mediaStreamTrack(MediaStreamTrack newValue) {
    js_util.setProperty(this, 'mediaStreamTrack', newValue);
  }
}

enum OscillatorType { sine, square, sawtooth, triangle, custom }

///  The interface represents a periodic waveform, such as a sine
/// wave. It is an [AudioScheduledSourceNode] audio-processing module
/// that causes a specified frequency of a given wave to be
/// created—in effect, a constant tone.
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
///    AudioNode
///
///
///
///
///
///
///
///    AudioScheduledSourceNode
///
///
///
///
///
///
///
///    OscillatorNode
///
///
///
///
///
///    Number of inputs
///    [0]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count mode
///    [max]
///
///
///    Channel count
///    [2] (not used in the default count mode)
///
///
///    Channel interpretation
///    [speakers]
///
///
///
@JS()
@staticInterop
class OscillatorNode implements AudioScheduledSourceNode {
  external factory OscillatorNode(BaseAudioContext context,
      [OscillatorOptions? options]);
}

extension PropsOscillatorNode on OscillatorNode {
  OscillatorType get type =>
      OscillatorType.values.byName(js_util.getProperty(this, 'type'));
  set type(OscillatorType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }

  AudioParam get frequency => js_util.getProperty(this, 'frequency');
  AudioParam get detune => js_util.getProperty(this, 'detune');
  Object setPeriodicWave(PeriodicWave periodicWave) =>
      js_util.callMethod(this, 'setPeriodicWave', [periodicWave]);
}

@anonymous
@JS()
@staticInterop
class OscillatorOptions implements AudioNodeOptions {
  external factory OscillatorOptions._(
      {String? type,
      double? frequency = 440,
      double? detune = 0,
      PeriodicWave? periodicWave});

  factory OscillatorOptions(
          {OscillatorType? type = OscillatorType.sine,
          double? frequency = 440,
          double? detune = 0,
          PeriodicWave? periodicWave}) =>
      OscillatorOptions._(
          type: type?.name,
          frequency: frequency,
          detune: detune,
          periodicWave: periodicWave);
}

extension PropsOscillatorOptions on OscillatorOptions {
  OscillatorType get type =>
      OscillatorType.values.byName(js_util.getProperty(this, 'type'));
  set type(OscillatorType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }

  double get frequency => js_util.getProperty(this, 'frequency');
  set frequency(double newValue) {
    js_util.setProperty(this, 'frequency', newValue);
  }

  double get detune => js_util.getProperty(this, 'detune');
  set detune(double newValue) {
    js_util.setProperty(this, 'detune', newValue);
  }

  PeriodicWave get periodicWave => js_util.getProperty(this, 'periodicWave');
  set periodicWave(PeriodicWave newValue) {
    js_util.setProperty(this, 'periodicWave', newValue);
  }
}

enum PanningModelType { equalpower, hrtf }

enum DistanceModelType { linear, inverse, exponential }

///  The interface defines an audio-processing object that represents
/// the location, direction, and behavior of an audio source signal
/// in a simulated physical space. This [AudioNode] uses right-hand
/// Cartesian coordinates to describe the source's position as a
/// vector and its orientation as a 3D directional cone.
///  A always has exactly one input and one output: the input can be
/// mono or stereo but the output is always stereo (2 channels); you
/// can't have panning effects without at least two audio channels!
///
///
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
///    AudioNode
///
///
///
///
///
///
///
///    PannerNode
///
///
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count mode
///    ["clamped-max"]
///
///
///    Channel count
///    [2]
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///
@JS()
@staticInterop
class PannerNode implements AudioNode {
  external factory PannerNode(BaseAudioContext context,
      [PannerOptions? options]);
}

extension PropsPannerNode on PannerNode {
  PanningModelType get panningModel =>
      PanningModelType.values.byName(js_util.getProperty(this, 'panningModel'));
  set panningModel(PanningModelType newValue) {
    js_util.setProperty(this, 'panningModel', newValue.name);
  }

  AudioParam get positionX => js_util.getProperty(this, 'positionX');
  AudioParam get positionY => js_util.getProperty(this, 'positionY');
  AudioParam get positionZ => js_util.getProperty(this, 'positionZ');
  AudioParam get orientationX => js_util.getProperty(this, 'orientationX');
  AudioParam get orientationY => js_util.getProperty(this, 'orientationY');
  AudioParam get orientationZ => js_util.getProperty(this, 'orientationZ');
  DistanceModelType get distanceModel => DistanceModelType.values
      .byName(js_util.getProperty(this, 'distanceModel'));
  set distanceModel(DistanceModelType newValue) {
    js_util.setProperty(this, 'distanceModel', newValue.name);
  }

  double get refDistance => js_util.getProperty(this, 'refDistance');
  set refDistance(double newValue) {
    js_util.setProperty(this, 'refDistance', newValue);
  }

  double get maxDistance => js_util.getProperty(this, 'maxDistance');
  set maxDistance(double newValue) {
    js_util.setProperty(this, 'maxDistance', newValue);
  }

  double get rolloffFactor => js_util.getProperty(this, 'rolloffFactor');
  set rolloffFactor(double newValue) {
    js_util.setProperty(this, 'rolloffFactor', newValue);
  }

  double get coneInnerAngle => js_util.getProperty(this, 'coneInnerAngle');
  set coneInnerAngle(double newValue) {
    js_util.setProperty(this, 'coneInnerAngle', newValue);
  }

  double get coneOuterAngle => js_util.getProperty(this, 'coneOuterAngle');
  set coneOuterAngle(double newValue) {
    js_util.setProperty(this, 'coneOuterAngle', newValue);
  }

  double get coneOuterGain => js_util.getProperty(this, 'coneOuterGain');
  set coneOuterGain(double newValue) {
    js_util.setProperty(this, 'coneOuterGain', newValue);
  }

  Object setPosition(double x, double y, double z) =>
      js_util.callMethod(this, 'setPosition', [x, y, z]);

  Object setOrientation(double x, double y, double z) =>
      js_util.callMethod(this, 'setOrientation', [x, y, z]);
}

@anonymous
@JS()
@staticInterop
class PannerOptions implements AudioNodeOptions {
  external factory PannerOptions._(
      {String? panningModel,
      String? distanceModel,
      double? positionX = 0,
      double? positionY = 0,
      double? positionZ = 0,
      double? orientationX = 1,
      double? orientationY = 0,
      double? orientationZ = 0,
      double? refDistance = 1,
      double? maxDistance = 10000,
      double? rolloffFactor = 1,
      double? coneInnerAngle = 360,
      double? coneOuterAngle = 360,
      double? coneOuterGain = 0});

  factory PannerOptions(
          {PanningModelType? panningModel = PanningModelType.equalpower,
          DistanceModelType? distanceModel = DistanceModelType.inverse,
          double? positionX = 0,
          double? positionY = 0,
          double? positionZ = 0,
          double? orientationX = 1,
          double? orientationY = 0,
          double? orientationZ = 0,
          double? refDistance = 1,
          double? maxDistance = 10000,
          double? rolloffFactor = 1,
          double? coneInnerAngle = 360,
          double? coneOuterAngle = 360,
          double? coneOuterGain = 0}) =>
      PannerOptions._(
          panningModel: panningModel?.name,
          distanceModel: distanceModel?.name,
          positionX: positionX,
          positionY: positionY,
          positionZ: positionZ,
          orientationX: orientationX,
          orientationY: orientationY,
          orientationZ: orientationZ,
          refDistance: refDistance,
          maxDistance: maxDistance,
          rolloffFactor: rolloffFactor,
          coneInnerAngle: coneInnerAngle,
          coneOuterAngle: coneOuterAngle,
          coneOuterGain: coneOuterGain);
}

extension PropsPannerOptions on PannerOptions {
  PanningModelType get panningModel =>
      PanningModelType.values.byName(js_util.getProperty(this, 'panningModel'));
  set panningModel(PanningModelType newValue) {
    js_util.setProperty(this, 'panningModel', newValue.name);
  }

  DistanceModelType get distanceModel => DistanceModelType.values
      .byName(js_util.getProperty(this, 'distanceModel'));
  set distanceModel(DistanceModelType newValue) {
    js_util.setProperty(this, 'distanceModel', newValue.name);
  }

  double get positionX => js_util.getProperty(this, 'positionX');
  set positionX(double newValue) {
    js_util.setProperty(this, 'positionX', newValue);
  }

  double get positionY => js_util.getProperty(this, 'positionY');
  set positionY(double newValue) {
    js_util.setProperty(this, 'positionY', newValue);
  }

  double get positionZ => js_util.getProperty(this, 'positionZ');
  set positionZ(double newValue) {
    js_util.setProperty(this, 'positionZ', newValue);
  }

  double get orientationX => js_util.getProperty(this, 'orientationX');
  set orientationX(double newValue) {
    js_util.setProperty(this, 'orientationX', newValue);
  }

  double get orientationY => js_util.getProperty(this, 'orientationY');
  set orientationY(double newValue) {
    js_util.setProperty(this, 'orientationY', newValue);
  }

  double get orientationZ => js_util.getProperty(this, 'orientationZ');
  set orientationZ(double newValue) {
    js_util.setProperty(this, 'orientationZ', newValue);
  }

  double get refDistance => js_util.getProperty(this, 'refDistance');
  set refDistance(double newValue) {
    js_util.setProperty(this, 'refDistance', newValue);
  }

  double get maxDistance => js_util.getProperty(this, 'maxDistance');
  set maxDistance(double newValue) {
    js_util.setProperty(this, 'maxDistance', newValue);
  }

  double get rolloffFactor => js_util.getProperty(this, 'rolloffFactor');
  set rolloffFactor(double newValue) {
    js_util.setProperty(this, 'rolloffFactor', newValue);
  }

  double get coneInnerAngle => js_util.getProperty(this, 'coneInnerAngle');
  set coneInnerAngle(double newValue) {
    js_util.setProperty(this, 'coneInnerAngle', newValue);
  }

  double get coneOuterAngle => js_util.getProperty(this, 'coneOuterAngle');
  set coneOuterAngle(double newValue) {
    js_util.setProperty(this, 'coneOuterAngle', newValue);
  }

  double get coneOuterGain => js_util.getProperty(this, 'coneOuterGain');
  set coneOuterGain(double newValue) {
    js_util.setProperty(this, 'coneOuterGain', newValue);
  }
}

///  The interface defines a periodic waveform that can be used to
/// shape the output of an [OscillatorNode].
///   has no inputs or outputs; it is used to define custom
/// oscillators when calling [OscillatorNode.setPeriodicWave()]. The
/// itself is created/returned by
/// [BaseAudioContext.createPeriodicWave].
@JS()
@staticInterop
class PeriodicWave {
  external factory PeriodicWave(BaseAudioContext context,
      [PeriodicWaveOptions? options]);
}

@anonymous
@JS()
@staticInterop
class PeriodicWaveConstraints {
  external factory PeriodicWaveConstraints(
      {bool? disableNormalization = false});
}

extension PropsPeriodicWaveConstraints on PeriodicWaveConstraints {
  bool get disableNormalization =>
      js_util.getProperty(this, 'disableNormalization');
  set disableNormalization(bool newValue) {
    js_util.setProperty(this, 'disableNormalization', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PeriodicWaveOptions implements PeriodicWaveConstraints {
  external factory PeriodicWaveOptions(
      {required Iterable<double> real, required Iterable<double> imag});
}

extension PropsPeriodicWaveOptions on PeriodicWaveOptions {
  Iterable<double> get real => js_util.getProperty(this, 'real');
  set real(Iterable<double> newValue) {
    js_util.setProperty(this, 'real', newValue);
  }

  Iterable<double> get imag => js_util.getProperty(this, 'imag');
  set imag(Iterable<double> newValue) {
    js_util.setProperty(this, 'imag', newValue);
  }
}

///  Deprecated: This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///  The interface allows the generation, processing, or analyzing of
/// audio using JavaScript.
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
///    AudioNode
///
///
///
///
///
///
///
///    ScriptProcessorNode
///
///
///
///   Note: This feature was replaced by AudioWorklets and the
/// [AudioWorkletNode] interface.
///
///  The interface is an [AudioNode] audio-processing module that is
/// linked to two buffers, one containing the input audio data, one
/// containing the processed output audio data. An event,
/// implementing the [AudioProcessingEvent] interface, is sent to the
/// object each time the input buffer contains new data, and the
/// event handler terminates when it has filled the output buffer
/// with data.
///
///
///
///  The size of the input and output buffer are defined at the
/// creation time, when the [BaseAudioContext.createScriptProcessor]
/// method is called (both are defined by
/// [BaseAudioContext.createScriptProcessor]'s [bufferSize]
/// parameter). The buffer size must be a power of 2 between [256]
/// and [16384], that is [256], [512], [1024], [2048], [4096], [8192]
/// or [16384]. Small numbers lower the latency, but large number may
/// be necessary to avoid audio breakup and glitches.
///  If the buffer size is not defined, which is recommended, the
/// browser will pick one that its heuristic deems appropriate.
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count mode
///    ["max"]
///
///
///    Channel count
///    [2] (not used in the default count mode)
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///
@Deprecated('Not official in the specs')
@JS()
@staticInterop
class ScriptProcessorNode implements AudioNode {
  external factory ScriptProcessorNode();
}

extension PropsScriptProcessorNode on ScriptProcessorNode {
  EventHandlerNonNull? get onaudioprocess =>
      js_util.getProperty(this, 'onaudioprocess');
  set onaudioprocess(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onaudioprocess', newValue);
  }

  int get bufferSize => js_util.getProperty(this, 'bufferSize');
}

///  The interface of the Web Audio API represents a simple stereo
/// panner node that can be used to pan an audio stream left or
/// right. It is an [AudioNode] audio-processing module that
/// positions an incoming audio stream in a stereo image using a
/// low-cost equal-power panning algorithm.
///  The [pan] property takes a unitless value between [-1] (full
/// left pan) and [1] (full right pan). This interface was introduced
/// as a much simpler way to apply a simple panning effect than
/// having to use a full [PannerNode].
///
///
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
///    AudioNode
///
///
///
///
///
///
///
///    StereoPannerNode
///
///
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count mode
///    ["clamped-max"]
///
///
///    Channel count
///    [2]
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///
@JS()
@staticInterop
class StereoPannerNode implements AudioNode {
  external factory StereoPannerNode(BaseAudioContext context,
      [StereoPannerOptions? options]);
}

extension PropsStereoPannerNode on StereoPannerNode {
  AudioParam get pan => js_util.getProperty(this, 'pan');
}

@anonymous
@JS()
@staticInterop
class StereoPannerOptions implements AudioNodeOptions {
  external factory StereoPannerOptions({double? pan = 0});
}

extension PropsStereoPannerOptions on StereoPannerOptions {
  double get pan => js_util.getProperty(this, 'pan');
  set pan(double newValue) {
    js_util.setProperty(this, 'pan', newValue);
  }
}

enum OverSampleType { none, value2x, value4x }

/// The interface represents a non-linear distorter.
///  It is an [AudioNode] that uses a curve to apply a wave shaping
/// distortion to the signal. Beside obvious distortion effects, it
/// is often used to add a warm feeling to the signal.
/// A always has exactly one input and one output.
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
///    AudioNode
///
///
///
///
///
///
///
///    WaveShaperNode
///
///
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    [1]
///
///
///    Channel count mode
///    ["max"]
///
///
///    Channel count
///    [2] (not used in the default count mode)
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///
@JS()
@staticInterop
class WaveShaperNode implements AudioNode {
  external factory WaveShaperNode(BaseAudioContext context,
      [WaveShaperOptions? options]);
}

extension PropsWaveShaperNode on WaveShaperNode {
  Float32List? get curve => js_util.getProperty(this, 'curve');
  set curve(Float32List? newValue) {
    js_util.setProperty(this, 'curve', newValue);
  }

  OverSampleType get oversample =>
      OverSampleType.values.byName(js_util.getProperty(this, 'oversample'));
  set oversample(OverSampleType newValue) {
    js_util.setProperty(this, 'oversample', newValue.name);
  }
}

@anonymous
@JS()
@staticInterop
class WaveShaperOptions implements AudioNodeOptions {
  external factory WaveShaperOptions._(
      {required Iterable<double> curve, String? oversample});

  factory WaveShaperOptions(
          {required Iterable<double> curve,
          OverSampleType? oversample = OverSampleType.none}) =>
      WaveShaperOptions._(curve: curve, oversample: oversample?.name);
}

extension PropsWaveShaperOptions on WaveShaperOptions {
  Iterable<double> get curve => js_util.getProperty(this, 'curve');
  set curve(Iterable<double> newValue) {
    js_util.setProperty(this, 'curve', newValue);
  }

  OverSampleType get oversample =>
      OverSampleType.values.byName(js_util.getProperty(this, 'oversample'));
  set oversample(OverSampleType newValue) {
    js_util.setProperty(this, 'oversample', newValue.name);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web Audio API is used to supply custom
/// audio processing scripts that execute in a separate thread to
/// provide very low latency audio processing.
///  The worklet's code is run in the [AudioWorkletGlobalScope]
/// global execution context, using a separate Web Audio thread which
/// is shared by the worklet and other audio nodes.
///  Access the audio context's instance of through the
/// [BaseAudioContext.audioWorklet] property.
///
///
///
///    Worklet
///
///
///
///
///
///
///
///    AudioWorklet
///
///
@JS()
@staticInterop
class AudioWorklet implements Worklet {
  external factory AudioWorklet();
}

///  The interface of the Web Audio API represents a global execution
/// context for user-supplied code, which defines custom
/// [AudioWorkletProcessor]-derived classes.
///  Each [BaseAudioContext] has a single [AudioWorklet] available
/// under the [audioWorklet] property, which runs its code in a
/// single .
///  As the global execution context is shared across the current
/// [BaseAudioContext], it's possible to define any other variables
/// and perform any actions allowed in worklets — apart from defining
/// [AudioWorkletProcessor]-derived classes.
///
///
///
///    WorkletGlobalScope
///
///
///
///
///
///
///
///    AudioWorkletGlobalScope
///
///
@JS()
@staticInterop
class AudioWorkletGlobalScope implements WorkletGlobalScope {
  external factory AudioWorkletGlobalScope();
}

extension PropsAudioWorkletGlobalScope on AudioWorkletGlobalScope {
  Object registerProcessor(
          String name, AudioWorkletProcessorConstructor processorCtor) =>
      js_util.callMethod(
          this, 'registerProcessor', [name, allowInterop(processorCtor)]);

  int get currentFrame => js_util.getProperty(this, 'currentFrame');
  double get currentTime => js_util.getProperty(this, 'currentTime');
  double get sampleRate => js_util.getProperty(this, 'sampleRate');
}

///  The Web Audio API interface represents a set of multiple audio
/// parameters, each described as a mapping of a string identifying
/// the parameter to the [AudioParam] object representing its value.
@JS()
@staticInterop
class AudioParamMap extends JsMap<AudioParam, String> {
  external factory AudioParamMap();
}

///
///   Note: Although the interface is available outside secure
/// contexts, the [BaseAudioContext.audioWorklet] property is not,
/// thus custom [AudioWorkletProcessor]s cannot be defined outside
/// them.
///
///  The interface of the Web Audio API represents a base class for a
/// user-defined [AudioNode], which can be connected to an audio
/// routing graph along with other nodes. It has an associated
/// [AudioWorkletProcessor], which does the actual audio processing
/// in a Web Audio rendering thread.
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
///    AudioNode
///
///
///
///
///
///
///
///    AudioWorkletNode
///
///
@JS()
@staticInterop
class AudioWorkletNode implements AudioNode {
  external factory AudioWorkletNode(BaseAudioContext context, String name,
      [AudioWorkletNodeOptions? options]);
}

extension PropsAudioWorkletNode on AudioWorkletNode {
  AudioParamMap get parameters => js_util.getProperty(this, 'parameters');
  MessagePort get port => js_util.getProperty(this, 'port');
  EventHandlerNonNull? get onprocessorerror =>
      js_util.getProperty(this, 'onprocessorerror');
  set onprocessorerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onprocessorerror', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AudioWorkletNodeOptions implements AudioNodeOptions {
  external factory AudioWorkletNodeOptions(
      {int? numberOfInputs = 1,
      int? numberOfOutputs = 1,
      Iterable<int>? outputChannelCount,
      dynamic parameterData,
      dynamic processorOptions});
}

extension PropsAudioWorkletNodeOptions on AudioWorkletNodeOptions {
  int get numberOfInputs => js_util.getProperty(this, 'numberOfInputs');
  set numberOfInputs(int newValue) {
    js_util.setProperty(this, 'numberOfInputs', newValue);
  }

  int get numberOfOutputs => js_util.getProperty(this, 'numberOfOutputs');
  set numberOfOutputs(int newValue) {
    js_util.setProperty(this, 'numberOfOutputs', newValue);
  }

  Iterable<int> get outputChannelCount =>
      js_util.getProperty(this, 'outputChannelCount');
  set outputChannelCount(Iterable<int> newValue) {
    js_util.setProperty(this, 'outputChannelCount', newValue);
  }

  dynamic get parameterData => js_util.getProperty(this, 'parameterData');
  set parameterData(dynamic newValue) {
    js_util.setProperty(this, 'parameterData', newValue);
  }

  dynamic get processorOptions => js_util.getProperty(this, 'processorOptions');
  set processorOptions(dynamic newValue) {
    js_util.setProperty(this, 'processorOptions', newValue);
  }
}

///  The interface of the Web Audio API represents an audio
/// processing code behind a custom [AudioWorkletNode]. It lives in
/// the [AudioWorkletGlobalScope] and runs on the Web Audio rendering
/// thread. In turn, an [AudioWorkletNode] based on it runs on the
/// main thread.
@JS()
@staticInterop
class AudioWorkletProcessor {
  external factory AudioWorkletProcessor();
}

extension PropsAudioWorkletProcessor on AudioWorkletProcessor {
  MessagePort get port => js_util.getProperty(this, 'port');
}

///  The dictionary of the Web Audio API specifies properties for
/// [AudioParam] objects.
///  It is used to create custom [AudioParam]s on an
/// [AudioWorkletNode]. If the underlying [AudioWorkletProcessor] has
/// a [parameterDescriptors] static getter, then the returned array
/// of objects based on this dictionary is used internally by
/// [AudioWorkletNode] constructor to populate its [parameters]
/// property accordingly.
@anonymous
@JS()
@staticInterop
class AudioParamDescriptor {
  external factory AudioParamDescriptor._(
      {required String name,
      double? defaultValue = 0,
      double? minValue = -3.4028235e38,
      double? maxValue = 3.4028235e38,
      String? automationRate});

  factory AudioParamDescriptor(
          {required String name,
          double? defaultValue = 0,
          double? minValue = -3.4028235e38,
          double? maxValue = 3.4028235e38,
          AutomationRate? automationRate = AutomationRate.aRate}) =>
      AudioParamDescriptor._(
          name: name,
          defaultValue: defaultValue,
          minValue: minValue,
          maxValue: maxValue,
          automationRate: automationRate?.name);
}

extension PropsAudioParamDescriptor on AudioParamDescriptor {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  double get defaultValue => js_util.getProperty(this, 'defaultValue');
  set defaultValue(double newValue) {
    js_util.setProperty(this, 'defaultValue', newValue);
  }

  double get minValue => js_util.getProperty(this, 'minValue');
  set minValue(double newValue) {
    js_util.setProperty(this, 'minValue', newValue);
  }

  double get maxValue => js_util.getProperty(this, 'maxValue');
  set maxValue(double newValue) {
    js_util.setProperty(this, 'maxValue', newValue);
  }

  AutomationRate get automationRate =>
      AutomationRate.values.byName(js_util.getProperty(this, 'automationRate'));
  set automationRate(AutomationRate newValue) {
    js_util.setProperty(this, 'automationRate', newValue.name);
  }
}
