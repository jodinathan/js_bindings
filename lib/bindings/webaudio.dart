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

@JS()
@staticInterop
class BaseAudioContext implements EventTarget {
  external BaseAudioContext();
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

@JS()
@staticInterop
class AudioContext implements BaseAudioContext {
  external AudioContext([AudioContextOptions? contextOptions]);
}

extension PropsAudioContext on AudioContext {
  double get baseLatency => js_util.getProperty(this, 'baseLatency');
  double get outputLatency => js_util.getProperty(this, 'outputLatency');
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
class OfflineAudioContext implements BaseAudioContext {
  external OfflineAudioContext(
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

@JS()
@staticInterop
class OfflineAudioCompletionEvent implements Event {
  external OfflineAudioCompletionEvent(
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

@JS()
@staticInterop
class AudioBuffer {
  external AudioBuffer(AudioBufferOptions options);
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

@JS()
@staticInterop
class AudioNode implements EventTarget {
  external AudioNode();
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

@JS()
@staticInterop
class AudioParam {
  external AudioParam();
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

@JS()
@staticInterop
class AudioScheduledSourceNode implements AudioNode {
  external AudioScheduledSourceNode();
}

extension PropsAudioScheduledSourceNode on AudioScheduledSourceNode {
  EventHandlerNonNull? get onended => js_util.getProperty(this, 'onended');
  set onended(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onended', newValue);
  }

  Object start([double? when = 0]) => js_util.callMethod(this, 'start', [when]);

  Object stop([double? when = 0]) => js_util.callMethod(this, 'stop', [when]);
}

@JS()
@staticInterop
class AnalyserNode implements AudioNode {
  external AnalyserNode(BaseAudioContext context, [AnalyserOptions? options]);
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

@JS()
@staticInterop
class AudioBufferSourceNode implements AudioScheduledSourceNode {
  external AudioBufferSourceNode(BaseAudioContext context,
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

@JS()
@staticInterop
class AudioDestinationNode implements AudioNode {
  external AudioDestinationNode();
}

extension PropsAudioDestinationNode on AudioDestinationNode {
  int get maxChannelCount => js_util.getProperty(this, 'maxChannelCount');
}

@JS()
@staticInterop
class AudioListener {
  external AudioListener();
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

@JS()
@staticInterop
class AudioProcessingEvent implements Event {
  external AudioProcessingEvent(
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

@JS()
@staticInterop
class BiquadFilterNode implements AudioNode {
  external BiquadFilterNode(BaseAudioContext context,
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

@JS()
@staticInterop
class ChannelMergerNode implements AudioNode {
  external ChannelMergerNode(BaseAudioContext context,
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

@JS()
@staticInterop
class ChannelSplitterNode implements AudioNode {
  external ChannelSplitterNode(BaseAudioContext context,
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

@JS()
@staticInterop
class ConstantSourceNode implements AudioScheduledSourceNode {
  external ConstantSourceNode(BaseAudioContext context,
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

@JS()
@staticInterop
class ConvolverNode implements AudioNode {
  external ConvolverNode(BaseAudioContext context, [ConvolverOptions? options]);
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

@JS()
@staticInterop
class DelayNode implements AudioNode {
  external DelayNode(BaseAudioContext context, [DelayOptions? options]);
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

@JS()
@staticInterop
class DynamicsCompressorNode implements AudioNode {
  external DynamicsCompressorNode(BaseAudioContext context,
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

@JS()
@staticInterop
class GainNode implements AudioNode {
  external GainNode(BaseAudioContext context, [GainOptions? options]);
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

@JS()
@staticInterop
class IIRFilterNode implements AudioNode {
  external IIRFilterNode(BaseAudioContext context, IIRFilterOptions options);
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

@JS()
@staticInterop
class MediaElementAudioSourceNode implements AudioNode {
  external MediaElementAudioSourceNode(
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

@JS()
@staticInterop
class MediaStreamAudioDestinationNode implements AudioNode {
  external MediaStreamAudioDestinationNode(AudioContext context,
      [AudioNodeOptions? options]);
}

extension PropsMediaStreamAudioDestinationNode
    on MediaStreamAudioDestinationNode {
  MediaStream get stream => js_util.getProperty(this, 'stream');
}

@JS()
@staticInterop
class MediaStreamAudioSourceNode implements AudioNode {
  external MediaStreamAudioSourceNode(
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

@JS()
@staticInterop
class MediaStreamTrackAudioSourceNode implements AudioNode {
  external MediaStreamTrackAudioSourceNode(
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

@JS()
@staticInterop
class OscillatorNode implements AudioScheduledSourceNode {
  external OscillatorNode(BaseAudioContext context,
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

@JS()
@staticInterop
class PannerNode implements AudioNode {
  external PannerNode(BaseAudioContext context, [PannerOptions? options]);
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

@JS()
@staticInterop
class PeriodicWave {
  external PeriodicWave(BaseAudioContext context,
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

@JS()
@staticInterop
class ScriptProcessorNode implements AudioNode {
  external ScriptProcessorNode();
}

extension PropsScriptProcessorNode on ScriptProcessorNode {
  EventHandlerNonNull? get onaudioprocess =>
      js_util.getProperty(this, 'onaudioprocess');
  set onaudioprocess(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onaudioprocess', newValue);
  }

  int get bufferSize => js_util.getProperty(this, 'bufferSize');
}

@JS()
@staticInterop
class StereoPannerNode implements AudioNode {
  external StereoPannerNode(BaseAudioContext context,
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

@JS()
@staticInterop
class WaveShaperNode implements AudioNode {
  external WaveShaperNode(BaseAudioContext context,
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

@JS()
@staticInterop
class AudioWorklet implements Worklet {
  external AudioWorklet();
}

@JS()
@staticInterop
class AudioWorkletGlobalScope implements WorkletGlobalScope {
  external AudioWorkletGlobalScope();
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

@JS()
@staticInterop
class AudioParamMap extends JsMap<AudioParam, String> {
  external AudioParamMap();
}

@JS()
@staticInterop
class AudioWorkletNode implements AudioNode {
  external AudioWorkletNode(BaseAudioContext context, String name,
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

@JS()
@staticInterop
class AudioWorkletProcessor {
  external AudioWorkletProcessor();
}

extension PropsAudioWorkletProcessor on AudioWorkletProcessor {
  MessagePort get port => js_util.getProperty(this, 'port');
}

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
