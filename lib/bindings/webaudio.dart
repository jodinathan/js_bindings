/// Web Audio API
///
/// https://webaudio.github.io/web-audio-api/
@JS('window')
library webaudio;

import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';
import 'mediacapture_streams.dart';
import 'hr_time_3.dart';

@JS()
enum AudioContextState { suspended, running, closed }

///
///
///  The interface of the Web Audio API acts as a base definition for
/// online and offline audio-processing graphs, as represented by
/// [AudioContext] and [OfflineAudioContext] respectively. You
/// wouldn't use directly — you'd use its features via one of these
/// two inheriting interfaces.
///
///  A can be a target of events, therefore it implements the
/// [EventTarget] interface.
///
///
@JS()
class BaseAudioContext extends EventTarget {
  ///  Returns an [AudioDestinationNode] representing the final
  /// destination of all audio in the context. It can be thought of as
  /// the audio-rendering device.
  external AudioDestinationNode get destination;

  ///  Returns a float representing the sample rate (in samples per
  /// second) used by all nodes in this context. The sample-rate of an
  /// [AudioContext] cannot be changed.
  external double get sampleRate;

  ///  Returns a double representing an ever-increasing hardware time
  /// in seconds used for scheduling. It starts at [0].
  external double get currentTime;

  /// Returns the [AudioListener] object, used for 3D spatialization.
  external AudioListener get listener;

  /// Returns the current state of the [AudioContext].
  external AudioContextState get state;

  ///  Returns the [AudioWorklet] object, which can be used to create
  /// and manage [AudioNode]s in which JavaScript code implementing the
  /// [AudioWorkletProcessor] interface are run in the background to
  /// process audio data.
  @experimental
  external AudioWorklet get audioWorklet;
  external EventHandlerNonNull? get onstatechange;
  external set onstatechange(EventHandlerNonNull? newValue);

  ///  Creates an [AnalyserNode], which can be used to expose audio
  /// time and frequency data and for example to create data
  /// visualisations.
  /// var analyserNode = baseAudioContext.createAnalyser();
  external AnalyserNode createAnalyser();

  ///  Creates a [BiquadFilterNode], which represents a second order
  /// filter configurable as several different common filter types:
  /// high-pass, low-pass, band-pass, etc
  /// baseAudioContext.createBiquadFilter();
  /// The following example shows basic usage of an AudioContext to create a Biquad filter
  ///  node. For a complete working example, check out our voice-change-o-matic demo (look
  ///  at the source code too).
  ///
  /// var audioCtx = new (window.AudioContext || window.webkitAudioContext)();
  ///
  /// //set up the different audio nodes we will use for the app
  /// var analyser = audioCtx.createAnalyser();
  /// var distortion = audioCtx.createWaveShaper();
  /// var gainNode = audioCtx.createGain();
  /// var biquadFilter = audioCtx.createBiquadFilter();
  /// var convolver = audioCtx.createConvolver();
  ///
  /// // connect the nodes together
  ///
  /// source = audioCtx.createMediaStreamSource(stream);
  /// source.connect(analyser);
  /// analyser.connect(distortion);
  /// distortion.connect(biquadFilter);
  /// biquadFilter.connect(convolver);
  /// convolver.connect(gainNode);
  /// gainNode.connect(audioCtx.destination);
  ///
  /// // Manipulate the Biquad filter
  ///
  /// biquadFilter.type = "lowshelf";
  /// biquadFilter.frequency.setValueAtTime(1000, audioCtx.currentTime);
  /// biquadFilter.gain.setValueAtTime(25, audioCtx.currentTime);
  external BiquadFilterNode createBiquadFilter();

  ///  Creates a new, empty [AudioBuffer] object, which can then be
  /// populated by data and played via an [AudioBufferSourceNode].
  /// var buffer = baseAudioContext.createBuffer(numOfchannels, length, sampleRate);
  external AudioBuffer createBuffer(
      int numberOfChannels, int length, double sampleRate);

  ///  Creates an [AudioBufferSourceNode], which can be used to play
  /// and manipulate audio data contained within an [AudioBuffer]
  /// object. [AudioBuffer]s are created using
  /// [AudioContext.createBuffer()] or returned by
  /// [AudioContext.decodeAudioData()] when it successfully decodes an
  /// audio track.
  /// var source = baseAudioContext.createBufferSource();
  /// In this example, we create a two second buffer, fill it with white noise, and then play
  ///  it via an AudioBufferSourceNode. The comments should clearly explain
  ///  what is going on.
  ///  Note: You can also run the code live,
  ///   or view
  ///    the source.
  /// var audioCtx = new (window.AudioContext || window.webkitAudioContext)();
  /// var button = document.querySelector('button');
  /// var pre = document.querySelector('pre');
  /// var myScript = document.querySelector('script');
  ///
  /// pre.innerHTML = myScript.innerHTML;
  ///
  /// // Stereo
  /// var channels = 2;
  /// // Create an empty two second stereo buffer at the
  /// // sample rate of the AudioContext
  /// var frameCount = audioCtx.sampleRate * 2.0;
  ///
  /// var myArrayBuffer = audioCtx.createBuffer(channels, frameCount, audioCtx.sampleRate);
  ///
  /// button.onclick = function() {
  ///  // Fill the buffer with white noise;
  ///  //just random values between -1.0 and 1.0
  ///  for (var channel = 0; channel < channels; channel++) {
  ///   // This gives us the actual ArrayBuffer that contains the data
  ///   var nowBuffering = myArrayBuffer.getChannelData(channel);
  ///   for (var i = 0; i < frameCount; i++) {
  ///    // Math.random() is in [0; 1.0]
  ///    // audio needs to be in [-1.0; 1.0]
  ///    nowBuffering[i] = Math.random() * 2 - 1;
  ///   }
  ///  }
  ///
  ///  // Get an AudioBufferSourceNode.
  ///  // This is the AudioNode to use when we want to play an AudioBuffer
  ///  var source = audioCtx.createBufferSource();
  ///  // set the buffer in the AudioBufferSourceNode
  ///  source.buffer = myArrayBuffer;
  ///  // connect the AudioBufferSourceNode to the
  ///  // destination so we can hear the sound
  ///  source.connect(audioCtx.destination);
  ///  // start the source playing
  ///  source.start();
  /// }
  external AudioBufferSourceNode createBufferSource();

  ///  Creates a [ChannelMergerNode], which is used to combine channels
  /// from multiple audio streams into a single audio stream.
  /// baseAudioContext.createChannelMerger(numberOfInputs);
  /// The following example shows how you could separate a stereo track (say, a piece of
  ///  music), and process the left and right channel differently. To use them, you need to use
  ///  the second and third parameters of the AudioNode.connect(AudioNode
  ///  method, which allow you to specify both the index of the channel to connect from and the
  ///  index of the channel to connect to.
  ///
  /// var ac = new AudioContext();
  /// ac.decodeAudioData(someStereoBuffer, function(data) {
  ///  var source = ac.createBufferSource();
  ///  source.buffer = data;
  ///  var splitter = ac.createChannelSplitter(2);
  ///  source.connect(splitter);
  ///  var merger = ac.createChannelMerger(2);
  ///
  ///  // Reduce the volume of the left channel only
  ///  var gainNode = ac.createGain();
  ///  gainNode.gain.setValueAtTime(0.5, ac.currentTime);
  ///  splitter.connect(gainNode, 0);
  ///
  ///  // Connect the splitter back to the second input of the merger: we
  ///  // effectively swap the channels, here, reversing the stereo image.
  ///  gainNode.connect(merger, 0, 1);
  ///  splitter.connect(merger, 1, 0);
  ///
  ///  var dest = ac.createMediaStreamDestination();
  ///
  ///  // Because we have used a ChannelMergerNode, we now have a stereo
  ///  // MediaStream we can use to pipe the Web Audio graph to WebRTC,
  ///  // MediaRecorder, etc.
  ///  merger.connect(dest);
  /// });
  external ChannelMergerNode createChannelMerger([int? numberOfInputs = 6]);

  ///  Creates a [ChannelSplitterNode], which is used to access the
  /// individual channels of an audio stream and process them
  /// separately.
  /// baseAudioContext.createChannelSplitter(numberOfOutputs);
  /// The following simple example shows how you could separate a stereo track (say, a piece
  ///  of music), and process the left and right channel differently. To use them, you need to
  ///  use the second and third parameters of the AudioNode.connect(AudioNode
  ///  method, which allow you to specify the index of the channel to connect from and the
  ///  index of the channel to connect to.
  ///
  /// var ac = new AudioContext();
  /// ac.decodeAudioData(someStereoBuffer, function(data) {
  ///  var source = ac.createBufferSource();
  ///  source.buffer = data;
  ///  var splitter = ac.createChannelSplitter(2);
  ///  source.connect(splitter);
  ///  var merger = ac.createChannelMerger(2);
  ///
  ///  // Reduce the volume of the left channel only
  ///  var gainNode = ac.createGain();
  ///  gainNode.gain.setValueAtTime(0.5, ac.currentTime);
  ///  splitter.connect(gainNode, 0);
  ///
  ///  // Connect the splitter back to the second input of the merger: we
  ///  // effectively swap the channels, here, reversing the stereo image.
  ///  gainNode.connect(merger, 0, 1);
  ///  splitter.connect(merger, 1, 0);
  ///
  ///  var dest = ac.createMediaStreamDestination();
  ///
  ///  // Because we have used a ChannelMergerNode, we now have a stereo
  ///  // MediaStream we can use to pipe the Web Audio graph to WebRTC,
  ///  // MediaRecorder, etc.
  ///  merger.connect(dest);
  /// });
  external ChannelSplitterNode createChannelSplitter(
      [int? numberOfOutputs = 6]);

  ///  Creates a [ConstantSourceNode] object, which is an audio source
  /// that continuously outputs a monaural (one-channel) sound signal
  /// whose samples all have the same value.
  /// var constantSourceNode = AudioContext.createConstantSource()
  external ConstantSourceNode createConstantSource();

  ///  Creates a [ConvolverNode], which can be used to apply
  /// convolution effects to your audio graph, for example a
  /// reverberation effect.
  /// baseAudioContext.createConvolver();
  external ConvolverNode createConvolver();

  ///  Creates a [DelayNode], which is used to delay the incoming audio
  /// signal by a certain amount. This node is also useful to create
  /// feedback loops in a Web Audio API graph.
  /// var delayNode = audioCtx.createDelay(maxDelayTime);
  /// We have created a simple example that allows you to play three different samples on a
  ///  constant loop — see create-delay (you can also
  ///  view the source code). If
  ///  you just press the play buttons, the loops will start immediately; if you slide the
  ///  sliders up to the right, then press the play buttons, a delay will be introduced, so the
  ///  looping sounds don't start playing for a short amount of time.
  ///
  /// var AudioContext = window.AudioContext || window.webkitAudioContext;
  /// var audioCtx = new AudioContext();
  ///
  /// var synthDelay = audioCtx.createDelay(5.0);
  ///
  ///  ...
  ///
  /// var synthSource;
  ///
  /// playSynth.onclick = function() {
  ///  synthSource = audioCtx.createBufferSource();
  ///  synthSource.buffer = buffers[2];
  ///  synthSource.loop = true;
  ///  synthSource.start();
  ///  synthSource.connect(synthDelay);
  ///  synthDelay.connect(destination);
  ///  this.setAttribute('disabled', 'disabled');
  /// }
  ///
  /// stopSynth.onclick = function() {
  ///  synthSource.disconnect(synthDelay);
  ///  synthDelay.disconnect(destination);
  ///  synthSource.stop();
  ///  playSynth.removeAttribute('disabled');
  /// }
  ///
  /// ...
  ///
  /// var delay1;
  /// rangeSynth.oninput = function() {
  ///  delay1 = rangeSynth.value;
  ///  synthDelay.delayTime.setValueAtTime(delay1, audioCtx.currentTime);
  /// }
  ///
  external DelayNode createDelay([double? maxDelayTime = 1.0]);

  ///  Creates a [DynamicsCompressorNode], which can be used to apply
  /// acoustic compression to an audio signal.
  /// baseAudioCtx.createDynamicsCompressor();
  /// The code below demonstrates a simple usage of createDynamicsCompressor()
  ///  to add compression to an audio track. For a more complete example, have a look at our basic Compressor
  ///   example (view
  ///   the source code).
  ///
  /// // Create a MediaElementAudioSourceNode
  /// // Feed the HTMLMediaElement into it
  /// var source = audioCtx.createMediaElementSource(myAudio);
  ///
  /// // Create a compressor node
  /// var compressor = audioCtx.createDynamicsCompressor();
  /// compressor.threshold.setValueAtTime(-50, audioCtx.currentTime);
  /// compressor.knee.setValueAtTime(40, audioCtx.currentTime);
  /// compressor.ratio.setValueAtTime(12, audioCtx.currentTime);
  /// compressor.attack.setValueAtTime(0, audioCtx.currentTime);
  /// compressor.release.setValueAtTime(0.25, audioCtx.currentTime);
  ///
  /// // connect the AudioBufferSourceNode to the destination
  /// source.connect(audioCtx.destination);
  ///
  /// button.onclick = function() {
  ///  var active = button.getAttribute('data-active');
  ///  if(active == 'false') {
  ///   button.setAttribute('data-active', 'true');
  ///   button.textContent = 'Remove compression';
  ///
  ///   source.disconnect(audioCtx.destination);
  ///   source.connect(compressor);
  ///   compressor.connect(audioCtx.destination);
  ///  } else if(active == 'true') {
  ///   button.setAttribute('data-active', 'false');
  ///   button.textContent = 'Add compression';
  ///
  ///   source.disconnect(compressor);
  ///   compressor.disconnect(audioCtx.destination);
  ///   source.connect(audioCtx.destination);
  ///  }
  /// }
  external DynamicsCompressorNode createDynamicsCompressor();

  ///  Creates a [GainNode], which can be used to control the overall
  /// volume of the audio graph.
  /// var gainNode = AudioContext.createGain();
  /// The following example shows basic usage of an AudioContext to create a
  ///  GainNode, which is then used to mute and unmute the audio when a Mute
  ///  button is clicked by changing the gain property value.
  ///
  /// The below snippet wouldn't work as is — for a complete working example, check out our
  ///  Voice-change-O-matic demo (view
  ///   source.)
  ///
  /// <div>
  ///  <button class="mute">Mute button</button>
  /// </div>
  ///
  /// var audioCtx = new (window.AudioContext || window.webkitAudioContext)();
  /// var gainNode = audioCtx.createGain();
  /// var mute = document.querySelector('.mute');
  /// var source;
  ///
  /// if (navigator.mediaDevices.getUserMedia) {
  ///  navigator.mediaDevices.getUserMedia (
  ///   // constraints - only audio needed for this app
  ///   {
  ///    audio: true
  ///   },
  ///
  ///   // Success callback
  ///   function(stream) {
  ///    source = audioCtx.createMediaStreamSource(stream);
  ///
  ///   },
  ///
  ///   // Error callback
  ///   function(err) {
  ///    console.log('The following gUM error occurred: ' + err);
  ///   }
  ///  );
  /// } else {
  ///   console.log('getUserMedia not supported on your browser!');
  /// }
  ///
  /// source.connect(gainNode);
  /// gainNode.connect(audioCtx.destination);
  ///
  ///  ...
  ///
  /// mute.onclick = voiceMute;
  ///
  /// function voiceMute() {
  ///  if(mute.id == "") {
  ///   // 0 means mute. If you still hear something, make sure you haven't
  ///   // connected your source into the output in addition to using the GainNode.
  ///   gainNode.gain.setValueAtTime(0, audioCtx.currentTime);
  ///   mute.id = "activated";
  ///   mute.textContent = "Unmute";
  ///  } else {
  ///   gainNode.gain.setValueAtTime(1, audioCtx.currentTime);
  ///   mute.id = "";
  ///   mute.textContent = "Mute";
  ///  }
  /// }
  external GainNode createGain();

  ///  Creates an [IIRFilterNode], which represents a second order
  /// filter configurable as several different common filter types.
  /// var iirFilter = AudioContext.createIIRFilter(feedforward, feedback);
  external IIRFilterNode createIIRFilter(
      Iterable<double> feedforward, Iterable<double> feedback);

  ///  Creates an [OscillatorNode], a source representing a periodic
  /// waveform. It basically generates a tone.
  /// var oscillatorNode = audioCtx.createOscillator();
  external OscillatorNode createOscillator();

  ///  Creates a [PannerNode], which is used to spatialise an incoming
  /// audio stream in 3D space.
  /// createPanner();
  /// In the following example, you can see an example of how the createPanner()
  ///  method, AudioListener and PannerNode would be used to
  ///  control audio spatialisation. Generally you will define the position in 3D space that
  ///  your audio listener and panner (source) occupy initially, and then update the position
  ///  of one or both of these as the application is used. You might be moving a character
  ///  around inside a game world for example, and wanting delivery of audio to change
  ///  realistically as your character moves closer to or further away from a music player such
  ///  as a stereo. In the example you can see this being controlled by the functions
  ///  moveRight(), moveLeft(), etc., which set new values for the
  ///  panner position via the PositionPanner() function.
  ///
  /// To see a complete implementation, check out our panner-node example
  ///  (view the
  ///   source code) — this demo transports you to the 2.5D "Room of metal", where you can
  ///  play a track on a boom box and then walk around the boom box to see how the sound
  ///  changes!
  ///
  /// Note how we have used some feature detection to either give the browser the newer
  ///  property values (like AudioListener.forwardX) for setting position, etc.
  ///  if it supports those, or older methods (like
  ///  AudioListener.setOrientation()) if it still supports those but not the
  ///  new properties.
  ///
  /// // set up listener and panner position information
  /// var WIDTH = window.innerWidth;
  /// var HEIGHT = window.innerHeight;
  ///
  /// var xPos = Math.floor(WIDTH/2);
  /// var yPos = Math.floor(HEIGHT/2);
  /// var zPos = 295;
  ///
  /// // define other variables
  ///
  /// var AudioContext = window.AudioContext || window.webkitAudioContext;
  /// var audioCtx = new AudioContext();
  ///
  /// var panner = audioCtx.createPanner();
  /// panner.panningModel = 'HRTF';
  /// panner.distanceModel = 'inverse';
  /// panner.refDistance = 1;
  /// panner.maxDistance = 10000;
  /// panner.rolloffFactor = 1;
  /// panner.coneInnerAngle = 360;
  /// panner.coneOuterAngle = 0;
  /// panner.coneOuterGain = 0;
  ///
  /// if(panner.orientationX) {
  ///  panner.orientationX.setValueAtTime(1, audioCtx.currentTime);
  ///  panner.orientationY.setValueAtTime(0, audioCtx.currentTime);
  ///  panner.orientationZ.setValueAtTime(0, audioCtx.currentTime);
  /// } else {
  ///  panner.setOrientation(1,0,0);
  /// }
  ///
  /// var listener = audioCtx.listener;
  ///
  /// if(listener.forwardX) {
  ///  listener.forwardX.setValueAtTime(0, audioCtx.currentTime);
  ///  listener.forwardY.setValueAtTime(0, audioCtx.currentTime);
  ///  listener.forwardZ.setValueAtTime(-1, audioCtx.currentTime);
  ///  listener.upX.setValueAtTime(0, audioCtx.currentTime);
  ///  listener.upY.setValueAtTime(1, audioCtx.currentTime);
  ///  listener.upZ.setValueAtTime(0, audioCtx.currentTime);
  /// } else {
  ///  listener.setOrientation(0,0,-1,0,1,0);
  /// }
  ///
  /// var source;
  ///
  /// var play = document.querySelector('.play');
  /// var stop = document.querySelector('.stop');
  ///
  /// var boomBox = document.querySelector('.boom-box');
  ///
  /// var listenerData = document.querySelector('.listener-data');
  /// var pannerData = document.querySelector('.panner-data');
  ///
  /// leftBound = (-xPos) + 50;
  /// rightBound = xPos - 50;
  ///
  /// xIterator = WIDTH/150;
  ///
  /// // listener will always be in the same place for this demo
  ///
  /// if(listener.positionX) {
  ///  listener.positionX.setValueAtTime(xPos, audioCtx.currentTime);
  ///  listener.positionY.setValueAtTime(yPos, audioCtx.currentTime);
  ///  listener.positionZ.setValueAtTime(300, audioCtx.currentTime);
  /// } else {
  ///  listener.setPosition(xPos,yPos,300);
  /// }
  ///
  /// listenerData.textContent = `Listener data: X ${xPos} Y ${yPos} Z 300`;
  ///
  /// // panner will move as the boombox graphic moves around on the screen
  /// function positionPanner() {
  ///  if(panner.positionX) {
  ///   panner.positionX.setValueAtTime(xPos, audioCtx.currentTime);
  ///   panner.positionY.setValueAtTime(yPos, audioCtx.currentTime);
  ///   panner.positionZ.setValueAtTime(zPos, audioCtx.currentTime);
  ///  } else {
  ///   panner.setPosition(xPos,yPos,zPos);
  ///  }
  ///  pannerData.textContent = `Panner data: X ${xPos} Y ${yPos} Z ${zPos}`;
  /// }
  ///  Note
  ///  In terms of working out what position values to apply to the
  ///   listener and panner, to make the sound appropriate to what the visuals are doing on
  ///   screen, there is quite a bit of math involved, but you will soon get used to it with a
  ///   bit of experimentation.
  ///
  external PannerNode createPanner();

  ///  Creates a [PeriodicWave], used to define a periodic waveform
  /// that can be used to determine the output of an [OscillatorNode].
  /// var wave = AudioContext.createPeriodicWave(real, imag[, constraints]);
  /// The following example illustrates simple usage of createPeriodicWave(), to
  /// 	create a PeriodicWave object containing a simple sine wave.
  ///
  /// var real = new Float32Array(2);
  /// var imag = new Float32Array(2);
  /// var ac = new AudioContext();
  /// var osc = ac.createOscillator();
  ///
  /// real[0] = 0;
  /// imag[0] = 0;
  /// real[1] = 1;
  /// imag[1] = 0;
  ///
  /// var wave = ac.createPeriodicWave(real, imag, {disableNormalization: true});
  ///
  /// osc.setPeriodicWave(wave);
  ///
  /// osc.connect(ac.destination);
  ///
  /// osc.start();
  /// osc.stop(2);
  ///
  /// This works because a sound that contains only a fundamental tone is by definition a
  /// 	sine wave
  ///
  /// Here, we create a PeriodicWave with two values. The first value is the DC
  /// 	offset, which is the value at which the oscillator starts. 0 is good here, because we
  /// 	want to start the curve at the middle of the [-1.0; 1.0] range.
  ///
  /// The second and subsequent values are sine and cosine components. You can think of it as
  /// 	the result of a Fourier transform, where you get frequency domain values from time
  /// 	domain value. Here, with createPeriodicWave(), you specify the
  /// 	frequencies, and the browser performs an inverse Fourier transform to get a time
  /// 	domain buffer for the frequency of the oscillator. Here, we only set one component at
  /// 	full volume (1.0) on the fundamental tone, so we get a sine wave.
  ///
  /// The coefficients of the Fourier transform should be given in ascending order
  /// 	(i.e.
  ///
  ///
  ///
  /// 					(
  ///
  /// 						a
  /// 						+
  /// 						b
  /// 						i
  ///
  /// 					)
  ///
  ///
  /// 					e
  /// 					i
  ///
  /// 				,
  ///
  /// 					(
  ///
  /// 						c
  /// 						+
  /// 						d
  /// 						i
  ///
  /// 					)
  ///
  ///
  /// 					e
  ///
  /// 						2
  /// 						i
  ///
  ///
  /// 				,
  ///
  /// 					(
  ///
  /// 						f
  /// 						+
  /// 						g
  /// 						i
  ///
  /// 					)
  ///
  ///
  /// 					e
  ///
  /// 						3
  /// 						i
  ///
  ///
  ///
  /// 			\left(a+bi\right)e^{i} , \left(c+di\right)e^{2i} ,
  /// 				\left(f+gi\right)e^{3i}
  ///
  /// 	etc.) and can be positive or negative. A simple way of manually obtaining such
  /// 	coefficients (though not the best) is to use a graphing calculator.
  external PeriodicWave createPeriodicWave(
      Iterable<double> real, Iterable<double> imag,
      [PeriodicWaveConstraints? constraints]);

  ///  Creates a [ScriptProcessorNode], which can be used for direct
  /// audio processing via JavaScript.
  /// var scriptProcessor = audioCtx.createScriptProcessor(bufferSize, numberOfInputChannels, numberOfOutputChannels);
  /// The following example shows basic usage of a ScriptProcessorNode to take a
  ///  track loaded via AudioContext.decodeAudioData(), process it, adding a bit
  ///  of white noise to each audio sample of the input track (buffer) and play it through the
  ///  AudioDestinationNode. For each channel and each sample frame, the
  ///  scriptNode.onaudioprocess function takes the associated
  ///  audioProcessingEvent and uses it to loop through each channel of the input
  ///  buffer, and each sample in each channel, and add a small amount of white noise, before
  ///  setting that result to be the output sample in each case.
  ///  Note: For a full working example, see our script-processor-node
  ///   github repo (also view the source
  ///    code.)
  /// var myScript = document.querySelector('script');
  /// var myPre = document.querySelector('pre');
  /// var playButton = document.querySelector('button');
  ///
  /// // Create AudioContext and buffer source
  /// var audioCtx = new AudioContext();
  /// source = audioCtx.createBufferSource();
  ///
  /// // Create a ScriptProcessorNode with a bufferSize of 4096 and a single input and output channel
  /// var scriptNode = audioCtx.createScriptProcessor(4096, 1, 1);
  /// console.log(scriptNode.bufferSize);
  ///
  /// // load in an audio track via XHR and decodeAudioData
  ///
  /// function getData() {
  ///  request = new XMLHttpRequest();
  ///  request.open('GET', 'viper.ogg', true);
  ///  request.responseType = 'arraybuffer';
  ///  request.onload = function() {
  ///   var audioData = request.response;
  ///
  ///   audioCtx.decodeAudioData(audioData, function(buffer) {
  ///   myBuffer = buffer;
  ///   source.buffer = myBuffer;
  ///  },
  ///   function(e){"Error with decoding audio data" + e.err});
  ///  }
  ///  request.send();
  /// }
  ///
  /// // Give the node a function to process audio events
  /// scriptNode.onaudioprocess = function(audioProcessingEvent) {
  ///  // The input buffer is the song we loaded earlier
  ///  var inputBuffer = audioProcessingEvent.inputBuffer;
  ///
  ///  // The output buffer contains the samples that will be modified and played
  ///  var outputBuffer = audioProcessingEvent.outputBuffer;
  ///
  ///  // Loop through the output channels (in this case there is only one)
  ///  for (var channel = 0; channel < outputBuffer.numberOfChannels; channel++) {
  ///   var inputData = inputBuffer.getChannelData(channel);
  ///   var outputData = outputBuffer.getChannelData(channel);
  ///
  ///   // Loop through the 4096 samples
  ///   for (var sample = 0; sample < inputBuffer.length; sample++) {
  ///    // make output equal to the same as the input
  ///    outputData[sample] = inputData[sample];
  ///
  ///    // add noise to each output sample
  ///    outputData[sample] += ((Math.random() * 2) - 1) * 0.2;
  ///   }
  ///  }
  /// }
  ///
  /// getData();
  ///
  /// // wire up play button
  /// playButton.onclick = function() {
  ///  source.connect(scriptNode);
  ///  scriptNode.connect(audioCtx.destination);
  ///  source.start();
  /// }
  ///
  /// // When the buffer source stops playing, disconnect everything
  /// source.onended = function() {
  ///  source.disconnect(scriptNode);
  ///  scriptNode.disconnect(audioCtx.destination);
  /// }
  ///
  @deprecated
  external ScriptProcessorNode createScriptProcessor(
      [int? bufferSize = 0,
      int? numberOfInputChannels = 2,
      int? numberOfOutputChannels = 2]);

  ///  Creates a [StereoPannerNode], which can be used to apply stereo
  /// panning to an audio source.
  /// baseAudioContext.createStereoPanner();
  /// In our StereoPannerNode
  ///   example (see
  ///   source code) HTML we have a simple <audio> element along with a
  ///  slider <input> to increase and decrease pan value. In the JavaScript we
  ///  create a MediaElementAudioSourceNode and a
  ///  StereoPannerNode, and connect the two together using the
  ///  connect() method. We then use an oninput event handler to
  ///  change the value of the StereoPannerNode.pan parameter and update the pan
  ///  value display when the slider is moved.
  ///
  /// Moving the slider left and right while the music is playing pans the music across to
  ///  the left and right speakers of the output, respectively.
  ///
  /// var audioCtx = new (window.AudioContext || window.webkitAudioContext)();
  /// var myAudio = document.querySelector('audio');
  ///
  /// var panControl = document.querySelector('.panning-control');
  /// var panValue = document.querySelector('.panning-value');
  ///
  /// pre.innerHTML = myScript.innerHTML;
  ///
  /// // Create a MediaElementAudioSourceNode
  /// // Feed the HTMLMediaElement into it
  /// var source = audioCtx.createMediaElementSource(myAudio);
  ///
  /// // Create a stereo panner
  /// var panNode = audioCtx.createStereoPanner();
  ///
  /// // Event handler function to increase panning to the right and left
  /// // when the slider is moved
  ///
  /// panControl.oninput = function() {
  ///  panNode.pan.setValueAtTime(panControl.value, audioCtx.currentTime);
  ///  panValue.innerHTML = panControl.value;
  /// }
  ///
  /// // connect the MediaElementAudioSourceNode to the panNode
  /// // and the panNode to the destination, so we can play the
  /// // music and adjust the panning using the controls
  /// source.connect(panNode);
  /// panNode.connect(audioCtx.destination);
  external StereoPannerNode createStereoPanner();

  ///  Creates a [WaveShaperNode], which is used to implement
  /// non-linear distortion effects.
  /// baseAudioCtx.createWaveShaper();
  /// The following example shows basic usage of an AudioContext to create a wave shaper
  ///  node. For applied examples/information, check out our Voice-change-O-matic demo (see
  ///   app.js for relevant code).
  ///  Note: Sigmoid functions are commonly used for distortion curves
  ///   because of their natural properties. Their S-shape, for instance, helps create a
  ///   smoother sounding result. We found the below distortion curve code on Stack
  ///    Overflow.
  /// var audioCtx = new (window.AudioContext || window.webkitAudioContext)();
  /// var distortion = audioCtx.createWaveShaper();
  ///
  ///  ...
  ///
  /// function makeDistortionCurve(amount) {
  ///  var k = typeof amount === 'number' ? amount : 50,
  ///   n_samples = 44100,
  ///   curve = new Float32Array(n_samples),
  ///   deg = Math.PI / 180,
  ///   i = 0,
  ///   x;
  ///  for ( ; i < n_samples; ++i ) {
  ///   x = i * 2 / n_samples - 1;
  ///   curve[i] = ( 3 + k ) * x * 20 * deg / ( Math.PI + k * Math.abs(x) );
  ///  }
  ///  return curve;
  /// };
  ///
  ///  ...
  ///
  /// distortion.curve = makeDistortionCurve(400);
  /// distortion.oversample = '4x';
  external WaveShaperNode createWaveShaper();

  ///  Asynchronously decodes audio file data contained in an
  /// [ArrayBuffer]. In this case, the ArrayBuffer is usually loaded
  /// from an [XMLHttpRequest]'s [response] attribute after setting the
  /// [responseType] to [arraybuffer]. This method only works on
  /// complete files, not fragments of audio files.
  /// Older callback syntax:
  ///
  /// baseAudioContext.decodeAudioData(ArrayBuffer, successCallback, errorCallback);
  ///
  /// Newer promise-based syntax:
  ///
  /// Promise<decodedData> baseAudioContext.decodeAudioData(ArrayBuffer);
  /// In this section we will first cover the older callback-based system and then the newer
  ///  promise-based syntax.
  external Promise<AudioBuffer> decodeAudioData(ByteBuffer audioData,
      [DecodeSuccessCallback? successCallback,
      DecodeErrorCallback? errorCallback]);

  external factory BaseAudioContext();
}

@JS()
enum AudioContextLatencyCategory { balanced, interactive, playback }

///
///
///  The interface represents an audio-processing graph built from
/// audio modules linked together, each represented by an
/// [AudioNode]. An audio context controls both the creation of the
/// nodes it contains and the execution of the audio processing, or
/// decoding. You need to create an before you do anything else, as
/// everything happens inside a context. It's recommended to create
/// one AudioContext and reuse it instead of initializing a new one
/// each time, and it's OK to use a single for several different
/// audio sources and pipeline concurrently.
///
///
@JS()
class AudioContext extends BaseAudioContext {
  external factory AudioContext({AudioContextOptions? contextOptions});

  ///  Returns the number of seconds of processing latency incurred by
  /// the [AudioContext] passing the audio from the
  /// [AudioDestinationNode] to the audio subsystem.
  @experimental
  external double get baseLatency;

  ///  Returns an estimation of the output latency of the current audio
  /// context.
  @experimental
  external double get outputLatency;

  ///  Returns a new [AudioTimestamp] object containing two audio
  /// timestamp values relating to the current audio context.
  /// var timestamp = context.getOutputTimestamp()
  external AudioTimestamp getOutputTimestamp();

  ///  Resumes the progression of time in an audio context that has
  /// previously been suspended/paused.
  /// completePromise = audioContext.resume();
  ///
  /// The following snippet is taken from our AudioContext
  ///   states demo (see it running
  ///   live.) When the suspend/resume button is clicked, the
  ///  AudioContext.state is queried — if it is running,
  ///  suspend() is called; if it is
  ///  suspended, resume() is called. In each case, the text label of
  ///  the button is updated as appropriate once the promise resolves.
  ///
  /// susresBtn.onclick = function() {
  ///  if(audioCtx.state === 'running') {
  ///   audioCtx.suspend().then(function() {
  ///    susresBtn.textContent = 'Resume context';
  ///   });
  ///  } else if(audioCtx.state === 'suspended') {
  ///   audioCtx.resume().then(function() {
  ///    susresBtn.textContent = 'Suspend context';
  ///   });
  ///  }
  /// }
  ///
  external Promise<Object> resume();

  ///  Suspends the progression of time in the audio context,
  /// temporarily halting audio hardware access and reducing
  /// CPU/battery usage in the process.
  /// var audioCtx = new AudioContext();
  /// audioCtx.suspend().then(function() { ... });
  ///
  /// The following snippet is taken from our AudioContext states demo (see it running live.) When the suspend/resume button is clicked, the AudioContext.state is queried — if it is running, suspend() is called; if it is suspended, resume() is called. In each case, the text label of the button is updated as appropriate once the promise resolves.
  ///
  /// susresBtn.onclick = function() {
  ///  if(audioCtx.state === 'running') {
  ///   audioCtx.suspend().then(function() {
  ///    susresBtn.textContent = 'Resume context';
  ///   });
  ///  } else if(audioCtx.state === 'suspended') {
  ///   audioCtx.resume().then(function() {
  ///    susresBtn.textContent = 'Suspend context';
  ///   });
  ///  }
  /// }
  ///
  external Promise<Object> suspend();

  ///  Closes the audio context, releasing any system audio resources
  /// that it uses.
  /// var audioCtx = new AudioContext();
  /// audioCtx.close().then(function() { ... });
  /// await audioCtx.close();
  ///
  /// The following snippet is taken from our AudioContext states demo (see it running live.) When the stop button is clicked, close() is called. When the promise resolves, the example is reset to its beginning state.
  ///
  /// stopBtn.onclick = function() {
  ///  audioCtx.close().then(function() {
  ///   startBtn.removeAttribute('disabled');
  ///   susresBtn.setAttribute('disabled', 'disabled');
  ///   stopBtn.setAttribute('disabled', 'disabled');
  ///  });
  /// }
  ///
  external Promise<Object> close();

  ///  Creates a [MediaElementAudioSourceNode] associated with an
  /// [HTMLMediaElement]. This can be used to play and manipulate audio
  /// from [<video>] or [<audio>] elements.
  /// var audioCtx = new AudioContext();
  /// var source = audioCtx.createMediaElementSource(myMediaElement);
  /// This simple example creates a source from an <audio> element using createMediaElementSource(), then passes the audio through a GainNode before feeding it into the AudioDestinationNode for playback. When the mouse pointer is moved, the updatePage() function is invoked, which calculates the current gain as a ratio of mouse Y position divided by overall window height. You can therefore increase and decrease the volume of the playing music by moving the mouse pointer up and down.
  /// Note: You can also view this example running live, or view the source.
  /// var audioCtx = new (window.AudioContext || window.webkitAudioContext)();
  /// var myAudio = document.querySelector('audio');
  /// var pre = document.querySelector('pre');
  /// var myScript = document.querySelector('script');
  ///
  /// pre.innerHTML = myScript.innerHTML;
  ///
  /// // Create a MediaElementAudioSourceNode
  /// // Feed the HTMLMediaElement into it
  /// var source = audioCtx.createMediaElementSource(myAudio);
  ///
  /// // Create a gain node
  /// var gainNode = audioCtx.createGain();
  ///
  /// // Create variables to store mouse pointer Y coordinate
  /// // and HEIGHT of screen
  /// var CurY;
  /// var HEIGHT = window.innerHeight;
  ///
  /// // Get new mouse pointer coordinates when mouse is moved
  /// // then set new gain value
  ///
  /// document.onmousemove = updatePage;
  ///
  /// function updatePage(e) {
  ///   CurY = (window.Event) ? e.pageY : event.clientY + (document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop);
  ///
  ///   gainNode.gain.value = CurY/HEIGHT;
  /// }
  ///
  /// // connect the AudioBufferSourceNode to the gainNode
  /// // and the gainNode to the destination, so we can play the
  /// // music and adjust the volume using the mouse cursor
  /// source.connect(gainNode);
  /// gainNode.connect(audioCtx.destination);
  /// Note: As a consequence of calling createMediaElementSource(), audio playback from the HTMLMediaElement will be re-routed into the processing graph of the AudioContext. So playing/pausing the media can still be done through the media element API and the player controls.
  ///
  external MediaElementAudioSourceNode createMediaElementSource(
      HTMLMediaElement mediaElement);

  ///  Creates a [MediaStreamAudioSourceNode] associated with a
  /// [MediaStream] representing an audio stream which may come from
  /// the local computer microphone or other sources.
  /// audioSourceNode = audioContext.createMediaStreamSource(stream);
  /// In this example, we grab a media (audio + video) stream from navigator.getUserMedia, feed the media into a <video>
  ///   element to play then mute the audio, but then also feed the audio into a MediaStreamAudioSourceNode. Next, we feed this source audio into a low
  ///   pass BiquadFilterNode (which effectively serves as a bass booster),
  ///   then a AudioDestinationNode.
  ///
  /// The range slider below the <video> element controls the amount of
  ///   gain given to the lowpass filter — increase the value of the slider to make the audio
  ///   sound more bass heavy!
  ///   Note: You can see this example
  ///       running live, or view
  ///       the source.
  /// var pre = document.querySelector('pre');
  /// var video = document.querySelector('video');
  /// var myScript = document.querySelector('script');
  /// var range = document.querySelector('input');
  ///
  /// // getUserMedia block - grab stream
  /// // put it into a MediaStreamAudioSourceNode
  /// // also output the visuals into a video element
  ///
  /// if (navigator.mediaDevices) {
  ///   console.log('getUserMedia supported.');
  ///   navigator.mediaDevices.getUserMedia ({audio: true, video: true})
  ///   .then(function(stream) {
  ///     video.srcObject = stream;
  ///     video.onloadedmetadata = function(e) {
  ///       video.play();
  ///       video.muted = true;
  ///     };
  ///
  ///     // Create a MediaStreamAudioSourceNode
  ///     // Feed the HTMLMediaElement into it
  ///     var audioCtx = new AudioContext();
  ///     var source = audioCtx.createMediaStreamSource(stream);
  ///
  ///     // Create a biquadfilter
  ///     var biquadFilter = audioCtx.createBiquadFilter();
  ///     biquadFilter.type = "lowshelf";
  ///     biquadFilter.frequency.value = 1000;
  ///     biquadFilter.gain.value = range.value;
  ///
  ///     // connect the AudioBufferSourceNode to the gainNode
  ///     // and the gainNode to the destination, so we can play the
  ///     // music and adjust the volume using the mouse cursor
  ///     source.connect(biquadFilter);
  ///     biquadFilter.connect(audioCtx.destination);
  ///
  ///     // Get new mouse pointer coordinates when mouse is moved
  ///     // then set new gain value
  ///
  ///     range.oninput = function() {
  ///       biquadFilter.gain.value = range.value;
  ///     }
  ///   })
  ///   .catch(function(err) {
  ///     console.log('The following gUM error occurred: ' + err);
  ///   });
  /// } else {
  ///   console.log('getUserMedia not supported on your browser!');
  /// }
  ///
  /// // dump script to pre element
  ///
  /// pre.innerHTML = myScript.innerHTML;
  ///   Note: As a consequence of calling
  ///     createMediaStreamSource(), audio playback from the media stream will
  ///     be re-routed into the processing graph of the AudioContext. So
  ///     playing/pausing the stream can still be done through the media element API and the
  ///     player controls.
  ///
  external MediaStreamAudioSourceNode createMediaStreamSource(
      MediaStream mediaStream);

  ///  Creates a [MediaStreamTrackAudioSourceNode] associated with a
  /// [MediaStream] representing an media stream track.
  /// var audioCtx = new AudioContext();
  /// var track = audioCtx.createMediaStreamTrackSource(track);
  /// In this example, getUserMedia() is used to
  ///  request access to the user's microphone. Once that access is attained, an audio context
  ///  is established and a MediaStreamTrackAudioSourceNode is created using
  ///  createMediaStreamTrackSource(), taking its audio from the first audio track
  ///  in the stream returned by getUserMedia().
  ///
  /// Then a BiquadFilterNode is created using
  ///  createBiquadFilter(), and it's
  ///  configured as desired to perform a lowshelf filter on the audio coming from the source.
  ///  The output from the microphone is then routed into the new biquad filter, and the
  ///  filter's output is in turn routed to the audio context's
  ///  destination.
  ///
  /// navigator.mediaDevices.getUserMedia ({audio: true, video: false})
  /// .then(function(stream) {
  ///  audio.srcObject = stream;
  ///  audio.onloadedmetadata = function(e) {
  ///   audio.play();
  ///   audio.muted = true;
  ///  };
  ///
  ///  let audioCtx = new AudioContext();
  ///  let source = audioCtx.createMediaStreamSource(stream);
  ///
  ///  let biquadFilter = audioCtx.createBiquadFilter();
  ///  biquadFilter.type = "lowshelf";
  ///  biquadFilter.frequency.value = 3000;
  ///  biquadFilter.gain.value = 20;
  ///
  ///  source.connect(biquadFilter);
  ///  biquadFilter.connect(audioCtx.destination);
  /// })
  /// .catch(function(err) {
  ///  // Handle getUserMedia() error
  /// });
  external MediaStreamTrackAudioSourceNode createMediaStreamTrackSource(
      MediaStreamTrack mediaStreamTrack);

  ///  Creates a [MediaStreamAudioDestinationNode] associated with a
  /// [MediaStream] representing an audio stream which may be stored in
  /// a local file or sent to another computer.
  /// var audioCtx = new AudioContext();
  /// var destination = audioCtx.createMediaStreamDestination();
  external MediaStreamAudioDestinationNode createMediaStreamDestination();
}

///
///
///  The [AudioContextOptions] dictionary is used to specify
/// configuration options when constructing a new [AudioContext]
/// object to represent a graph of web audio nodes. It is only used
/// when calling the [AudioContext()] constructor.
@anonymous
@JS()
class AudioContextOptions {
  ///  The type of playback that the context will be used for, as a
  /// predefined [string] (["balanced"], ["interactive"] or
  /// ["playback"]) or a double-precision floating-point value
  /// indicating the preferred maximum latency of the context in
  /// seconds. The user agent may or may not choose to meet this
  /// request; check the value of [AudioContext.baseLatency] to
  /// determine the true latency after creating the context.
  external dynamic get latencyHint;
  external set latencyHint(dynamic newValue);

  ///  The to be used by the [AudioContext], specified in samples per
  /// second. The value may be any value supported by [AudioBuffer]. If
  /// not specified, the preferred sample rate for the context's output
  /// device is used by default.
  external double get sampleRate;
  external set sampleRate(double newValue);

  external factory AudioContextOptions(
      {dynamic latencyHint, double sampleRate});
}

@anonymous
@JS()
class AudioTimestamp {
  external double get contextTime;
  external set contextTime(double newValue);
  external double get performanceTime;
  external set performanceTime(double newValue);

  external factory AudioTimestamp({double contextTime, double performanceTime});
}

///
///
///  The interface is an [AudioContext] interface representing an
/// audio-processing graph built from linked together [AudioNode]s.
/// In contrast with a standard [AudioContext], an doesn't render the
/// audio to the device hardware; instead, it generates it, as fast
/// as it can, and outputs the result to an [AudioBuffer].
///
///
@JS()
class OfflineAudioContext extends BaseAudioContext {
  external factory OfflineAudioContext(
      {int numberOfChannels, int length, double sampleRate});

  ///  Starts rendering the audio, taking into account the current
  /// connections and the current scheduled changes. This page covers
  /// both the event-based version and the promise-based version.
  /// Event-based version:
  ///
  /// offlineAudioCtx.startRendering();
  /// offlineAudioCtx.oncomplete = function(e) {
  ///  // e.renderedBuffer contains the output buffer
  /// }
  ///
  /// Promise-based version:
  ///
  /// offlineAudioCtx.startRendering().then(function(buffer) {
  ///  // buffer contains the output buffer
  /// });
  ///
  /// In this simple example, we declare both an AudioContext and an
  ///  OfflineAudioContext object. We use the AudioContext to load an
  ///  audio track via XHR (BaseAudioContext.decodeAudioData), then the
  ///  OfflineAudioContext to render the audio into an
  ///  AudioBufferSourceNode and play the track through. After the offline audio
  ///  graph is set up, you need to render it to an AudioBuffer using
  ///  OfflineAudioContext.startRendering.
  ///
  /// When the startRendering() promise resolves, rendering has completed and
  ///  the output AudioBuffer is returned out of the promise.
  ///
  /// At this point we create another audio context, create an
  ///  AudioBufferSourceNode inside it, and set its buffer to be equal to the
  ///  promise AudioBuffer. This is then played as part of a simple standard audio
  ///  graph.
  ///  Note: For a working example, see our offline-audio-context-promise
  ///   Github repo (see the source
  ///    code too.)
  /// // define online and offline audio context
  ///
  /// var audioCtx = new AudioContext();
  /// var offlineCtx = new OfflineAudioContext(2,44100*40,44100);
  ///
  /// source = offlineCtx.createBufferSource();
  ///
  /// // use XHR to load an audio track, and
  /// // decodeAudioData to decode it and OfflineAudioContext to render it
  ///
  /// function getData() {
  ///  request = new XMLHttpRequest();
  ///
  ///  request.open('GET', 'viper.ogg', true);
  ///
  ///  request.responseType = 'arraybuffer';
  ///
  ///  request.onload = function() {
  ///   var audioData = request.response;
  ///
  ///   audioCtx.decodeAudioData(audioData, function(buffer) {
  ///    myBuffer = buffer;
  ///    source.buffer = myBuffer;
  ///    source.connect(offlineCtx.destination);
  ///    source.start();
  ///    //source.loop = true;
  ///    offlineCtx.startRendering().then(function(renderedBuffer) {
  ///     console.log('Rendering completed successfully');
  ///     var audioCtx = new (window.AudioContext || window.webkitAudioContext)();
  ///     var song = audioCtx.createBufferSource();
  ///     song.buffer = renderedBuffer;
  ///
  ///     song.connect(audioCtx.destination);
  ///
  ///     play.onclick = function() {
  ///      song.start();
  ///     }
  ///    }).catch(function(err) {
  ///      console.log('Rendering failed: ' + err);
  ///      // Note: The promise should reject when startRendering is called a second time on an OfflineAudioContext
  ///    });
  ///   });
  ///  }
  ///
  ///  request.send();
  /// }
  ///
  /// // Run getData to start the process off
  ///
  /// getData();
  external Promise<AudioBuffer> startRendering();
  external Promise<Object> resume();

  ///  Schedules a suspension of the time progression in the audio
  /// context at the specified time and returns a promise.
  /// OfflineAudioContext.suspend(suspendTime).then(function() { ... });
  external Promise<Object> suspend(double suspendTime);

  /// An integer representing the size of the buffer in sample-frames.
  external int get length;
  external EventHandlerNonNull? get oncomplete;
  external set oncomplete(EventHandlerNonNull? newValue);
}

@anonymous
@JS()
class OfflineAudioContextOptions {
  external int get numberOfChannels;
  external set numberOfChannels(int newValue);
  external int get length;
  external set length(int newValue);
  external double get sampleRate;
  external set sampleRate(double newValue);

  external factory OfflineAudioContextOptions(
      {int numberOfChannels = 1, int length, double sampleRate});
}

///
///
///  The Web Audio API interface represents events that occur when
/// the processing of an [OfflineAudioContext] is terminated. The
/// [complete] event implements this interface.
///  Note: This interface is marked as deprecated; it is still
/// supported for legacy reasons, but it will soon be superseded when
/// the promise version of [OfflineAudioContext.startRendering] is
/// supported in browsers, which will no longer need it.
///
@JS()
class OfflineAudioCompletionEvent extends Event {
  external factory OfflineAudioCompletionEvent(
      {String type, OfflineAudioCompletionEventInit eventInitDict});

  ///  An [AudioBuffer] containing the result of processing an
  /// [OfflineAudioContext].
  external AudioBuffer get renderedBuffer;
}

@anonymous
@JS()
class OfflineAudioCompletionEventInit extends EventInit {
  external AudioBuffer get renderedBuffer;
  external set renderedBuffer(AudioBuffer newValue);

  external factory OfflineAudioCompletionEventInit(
      {AudioBuffer renderedBuffer});
}

///
///
///  The interface represents a short audio asset residing in memory,
/// created from an audio file using the
/// [AudioContext.decodeAudioData()] method, or from raw data using
/// [AudioContext.createBuffer()]. Once put into an AudioBuffer, the
/// audio can then be played by being passed into an
/// [AudioBufferSourceNode].
///
///  Objects of these types are designed to hold small audio
/// snippets, typically less than 45 s. For longer sounds, objects
/// implementing the [MediaElementAudioSourceNode] are more suitable.
/// The buffer contains data in the following format: non-interleaved
/// IEEE754 32-bit linear PCM with a nominal range between [-1] and
/// [+1], that is, a 32-bit floating point buffer, with each sample
/// between -1.0 and 1.0. If the has multiple channels, they are
/// stored in separate buffers.
@JS()
class AudioBuffer {
  external factory AudioBuffer({AudioBufferOptions options});

  ///  Returns a float representing the sample rate, in samples per
  /// second, of the PCM data stored in the buffer.
  external double get sampleRate;

  ///  Returns an integer representing the length, in sample-frames, of
  /// the PCM data stored in the buffer.
  external int get length;

  ///  Returns a double representing the duration, in seconds, of the
  /// PCM data stored in the buffer.
  external double get duration;

  ///  Returns an integer representing the number of discrete audio
  /// channels described by the PCM data stored in the buffer.
  external int get numberOfChannels;

  ///  Returns a [Float32Array] containing the PCM data associated with
  /// the channel, defined by the [channel] parameter (with [0]
  /// representing the first channel).
  /// var myArrayBuffer = audioCtx.createBuffer(2, frameCount, audioCtx.sampleRate);
  /// var nowBuffering = myArrayBuffer.getChannelData(channel);
  /// In the following example we create a two second buffer, fill it with white noise, and then play it via an AudioBufferSourceNode. The comments should clearly explain what is going on. You can also run the code live, or view the source.
  ///
  /// var audioCtx = new (window.AudioContext || window.webkitAudioContext)();
  /// var button = document.querySelector('button');
  /// var pre = document.querySelector('pre');
  /// var myScript = document.querySelector('script');
  ///
  /// pre.innerHTML = myScript.innerHTML;
  ///
  /// // Stereo
  /// var channels = 2;
  /// // Create an empty two second stereo buffer at the
  /// // sample rate of the AudioContext
  /// var frameCount = audioCtx.sampleRate * 2.0;
  ///
  /// var myArrayBuffer = audioCtx.createBuffer(2, frameCount, audioCtx.sampleRate);
  ///
  /// button.onclick = function() {
  ///  // Fill the buffer with white noise;
  ///  //just random values between -1.0 and 1.0
  ///  for (var channel = 0; channel < channels; channel++) {
  ///   // This gives us the actual ArrayBuffer that contains the data
  ///   var nowBuffering = myArrayBuffer.getChannelData(channel);
  ///   for (var i = 0; i < frameCount; i++) {
  ///    // Math.random() is in [0; 1.0]
  ///    // audio needs to be in [-1.0; 1.0]
  ///    nowBuffering[i] = Math.random() * 2 - 1;
  ///   }
  ///  }
  ///
  ///  // Get an AudioBufferSourceNode.
  ///  // This is the AudioNode to use when we want to play an AudioBuffer
  ///  var source = audioCtx.createBufferSource();
  ///  // set the buffer in the AudioBufferSourceNode
  ///  source.buffer = myArrayBuffer;
  ///  // connect the AudioBufferSourceNode to the
  ///  // destination so we can hear the sound
  ///  source.connect(audioCtx.destination);
  ///  // start the source playing
  ///  source.start();
  /// }
  external Float32List getChannelData(int channel);

  ///  Copies the samples from the specified channel of the
  /// [AudioBuffer] to the [destination] array.
  /// myArrayBuffer.copyFromChannel(destination, channelNumber, startInChannel);
  /// This example creates a new audio buffer, then copies the samples from another channel
  ///  into it.
  ///
  /// var myArrayBuffer = audioCtx.createBuffer(2, frameCount, audioCtx.sampleRate);
  /// var anotherArray = new Float32Array(length);
  /// myArrayBuffer.copyFromChannel(anotherArray, 1, 0);
  ///
  external Object copyFromChannel(Float32List destination, int channelNumber,
      [int? bufferOffset = 0]);

  ///  Copies the samples to the specified channel of the
  /// [AudioBuffer], from the [source] array.
  /// myArrayBuffer.copyToChannel(source, channelNumber, startInChannel);
  /// var myArrayBuffer = audioCtx.createBuffer(2, frameCount, audioCtx.sampleRate);
  /// var anotherArray = new Float32Array;
  /// // Copy channel data from second channel of myArrayBuffer.
  /// myArrayBuffer.copyFromChannel(anotherArray,1,0);
  /// // Copy data from anotherArray to first channel of myArrayBuffer. Both channels have the same data now.
  /// myArrayBuffer.copyToChannel (anotherArray,0,0);
  ///
  external Object copyToChannel(Float32List source, int channelNumber,
      [int? bufferOffset = 0]);
}

@anonymous
@JS()
class AudioBufferOptions {
  external int get numberOfChannels;
  external set numberOfChannels(int newValue);
  external int get length;
  external set length(int newValue);
  external double get sampleRate;
  external set sampleRate(double newValue);

  external factory AudioBufferOptions(
      {int numberOfChannels = 1, int length, double sampleRate});
}

///
///
///  The interface is a generic interface for representing an audio
/// processing module.
///
/// Examples include:
///   an audio source (e.g. an HTML [<audio>] or [<video>] element,
/// an [OscillatorNode], etc.),
///  the audio destination,
///   intermediate processing module (e.g. a filter like
/// [BiquadFilterNode] or [ConvolverNode]), or
///  volume control (like [GainNode])
///
///
///  Note: An can be target of events, therefore it implements the
/// [EventTarget] interface.
@JS()
class AudioNode extends EventTarget {
  ///  Allows us to connect the output of this node to be input into
  /// another node, either as audio data or as the value of an
  /// [AudioParam].
  /// var destinationNode = AudioNode.connect(destination, outputIndex, inputIndex);
  ///
  /// AudioNode.connect(destination, outputIndex);
  ///
  external AudioNode connect(AudioNode destinationNode,
      [int? output = 0, int? input = 0]);

  ///  Allows us to disconnect the current node from another one it is
  /// already connected to.
  /// AudioNode.disconnect();
  ///
  /// AudioNode.disconnect(output);
  ///
  /// AudioNode.disconnect(destination);
  ///
  /// AudioNode.disconnect(destination, output);
  ///
  /// AudioNode.disconnect(destination, output, input);
  ///
  /// var AudioContext = window.AudioContext || window.webkitAudioContext;
  ///
  /// var audioCtx = new AudioContext();
  ///
  /// var oscillator = audioCtx.createOscillator();
  /// var gainNode = audioCtx.createGain();
  ///
  /// oscillator.connect(gainNode);
  /// gainNode.connect(audioCtx.destination);
  ///
  /// gainNode.disconnect();
  ///
  external Object disconnect(AudioNode destinationNode, int output, int input);

  ///  Returns the associated [BaseAudioContext], that is the object
  /// representing the processing graph the node is participating in.
  external BaseAudioContext get context;

  ///  Returns the number of inputs feeding the node. Source nodes are
  /// defined as nodes having a property with a value of [0].
  external int get numberOfInputs;

  ///  Returns the number of outputs coming out of the node.
  /// Destination nodes — like [AudioDestinationNode] — have a value of
  /// [0] for this attribute.
  external int get numberOfOutputs;

  ///  Represents an integer used to determine how many channels are
  /// used when up-mixing and down-mixing connections to any inputs to
  /// the node. Its usage and precise definition depend on the value of
  /// [AudioNode.channelCountMode].
  external int get channelCount;
  external set channelCount(int newValue);

  ///  Represents an enumerated value describing the way channels must
  /// be matched between the node's inputs and outputs.
  external ChannelCountMode get channelCountMode;
  external set channelCountMode(ChannelCountMode newValue);

  ///  Represents an enumerated value describing the meaning of the
  /// channels. This interpretation will define how audio up-mixing and
  /// down-mixing will happen.
  ///  The possible values are ["speakers"] or ["discrete"].
  external ChannelInterpretation get channelInterpretation;
  external set channelInterpretation(ChannelInterpretation newValue);

  external factory AudioNode();
}

@JS()
enum ChannelCountMode {
  max,
  @JS('clamped-max')
  clampedMax,
  explicit
}

@JS()
enum ChannelInterpretation { speakers, discrete }

///
///
/// The dictionary
///   of the Web Audio API specifies options
///   that can be used when creating new [AudioNode] objects.
///
///  is inherited from by the option objects of the different
///  types of audio node constructors. See for example
///  [AnalyserNode.AnalyserNode] or [GainNode.GainNode].
@anonymous
@JS()
class AudioNodeOptions {
  ///  Represents an integer used to determine how many channels are
  /// used when up-mixing
  ///    and down-mixing connections to any inputs to the node. (See
  ///    [AudioNode.channelCount] for more information.) Its usage and
  /// precise
  ///    definition depend on the value of
  /// [AudioNodeOptions.channelCountMode].
  ///
  external int get channelCount;
  external set channelCount(int newValue);

  ///  Represents an enumerated value describing the way channels must
  /// be matched between
  ///    the node's inputs and outputs. (See
  /// [AudioNode.channelCountMode] for more
  ///   information including default values.)
  external ChannelCountMode get channelCountMode;
  external set channelCountMode(ChannelCountMode newValue);

  ///  Represents an enumerated value describing the meaning of the
  /// channels. This
  ///   interpretation will define how audio up-mixing
  ///    and down-mixing will happen.
  ///   The possible values are ["speakers"] or ["discrete"]. (See
  ///    [AudioNode.channelCountMode] for more information including
  /// default
  ///   values.)
  external ChannelInterpretation get channelInterpretation;
  external set channelInterpretation(ChannelInterpretation newValue);

  external factory AudioNodeOptions(
      {int channelCount,
      ChannelCountMode channelCountMode,
      ChannelInterpretation channelInterpretation});
}

@JS()
enum AutomationRate {
  @JS('a-rate')
  aRate,
  @JS('k-rate')
  kRate
}

///
///
///  The Web Audio API's interface represents an audio-related
/// parameter, usually a parameter of an [AudioNode] (such as
/// [GainNode.gain]). An can be set to a specific value or a change
/// in value, and can be scheduled to happen at a specific time and
/// following a specific pattern.
///
/// There are two kinds of , a-rate and k-rate parameters:
///   An a-rate takes the current audio parameter value for each
/// sample frame of the audio signal.
///   A k-rate uses the same initial audio parameter value for the
/// whole block processed, that is 128 sample frames. In other words,
/// the same value applies to every frame in the audio as it's
/// processed by the node.
///  Each [AudioNode] defines which of its parameters are a-rate or
/// k-rate in the spec.
///
///  Each has a list of events, initially empty, that define when and
/// how values change. When this list is not empty, changes using the
/// [AudioParam.value] attributes are ignored. This list of events
/// allows us to schedule changes that have to happen at very precise
/// times, using arbitrary timelime-based automation curves. The time
/// used is the one defined in [AudioContext.currentTime].
@JS()
class AudioParam {
  ///  Represents the parameter's current value as of the current time;
  /// initially set to the value of [defaultValue].
  external double get value;
  external set value(double newValue);
  external AutomationRate get automationRate;
  external set automationRate(AutomationRate newValue);

  ///  Represents the initial volume of the attribute as defined by the
  /// specific [AudioNode] creating the [AudioParam].
  external double get defaultValue;

  ///  Represents the minimum possible value for the parameter's
  /// nominal (effective) range.
  external double get minValue;

  ///  Represents the maximum possible value for the parameter's
  /// nominal (effective) range.
  external double get maxValue;

  ///  Schedules an instant change to the value of the [AudioParam] at
  /// a precise time, as measured against [AudioContext.currentTime].
  /// The new value is given by the [value] parameter.
  /// var AudioParam = AudioParam.setValueAtTime(value, startTime)
  external AudioParam setValueAtTime(double value, double startTime);

  ///  Schedules a gradual linear change in the value of the
  /// [AudioParam]. The change starts at the time specified for the
  /// previous event, follows a linear ramp to the new value given in
  /// the [value] parameter, and reaches the new value at the time
  /// given in the [endTime] parameter.
  /// var AudioParam = AudioParam.linearRampToValueAtTime(value, endTime)
  /// In this example, we have a media source with two control buttons (see the audio-param
  ///   repo for the source code, or view the example
  ///   live.) When these buttons are pressed, linearRampToValueAtTime() is
  ///  used to fade the gain value up to 1.0, and down to 0, respectively. This is pretty
  ///  useful for fade in/fade out effects, although AudioParam.exponentialRampToValueAtTime() is often said to be a bit more
  ///  natural.
  ///
  /// // create audio context
  /// var AudioContext = window.AudioContext || window.webkitAudioContext;
  /// var audioCtx = new AudioContext();
  ///
  /// // set basic variables for example
  /// var myAudio = document.querySelector('audio');
  /// var pre = document.querySelector('pre');
  /// var myScript = document.querySelector('script');
  ///
  /// pre.innerHTML = myScript.innerHTML;
  ///
  /// var linearRampPlus = document.querySelector('.linear-ramp-plus');
  /// var linearRampMinus = document.querySelector('.linear-ramp-minus');
  ///
  /// // Create a MediaElementAudioSourceNode
  /// // Feed the HTMLMediaElement into it
  /// var source = audioCtx.createMediaElementSource(myAudio);
  ///
  /// // Create a gain node and set it's gain value to 0.5
  /// var gainNode = audioCtx.createGain();
  ///
  /// // connect the AudioBufferSourceNode to the gainNode
  /// // and the gainNode to the destination
  /// gainNode.gain.setValueAtTime(0, audioCtx.currentTime);
  /// source.connect(gainNode);
  /// gainNode.connect(audioCtx.destination);
  ///
  /// // set buttons to do something onclick
  /// linearRampPlus.onclick = function() {
  ///  gainNode.gain.linearRampToValueAtTime(1.0, audioCtx.currentTime + 2);
  /// }
  ///
  /// linearRampMinus.onclick = function() {
  ///  gainNode.gain.linearRampToValueAtTime(0, audioCtx.currentTime + 2);
  /// }
  ///
  external AudioParam linearRampToValueAtTime(double value, double endTime);

  ///  Schedules a gradual exponential change in the value of the
  /// [AudioParam]. The change starts at the time specified for the
  /// previous event, follows an exponential ramp to the new value
  /// given in the [value] parameter, and reaches the new value at the
  /// time given in the [endTime] parameter.
  /// var AudioParam = AudioParam.exponentialRampToValueAtTime(value, endTime)
  external AudioParam exponentialRampToValueAtTime(
      double value, double endTime);

  ///  Schedules the start of a change to the value of the
  /// [AudioParam]. The change starts at the time specified in
  /// [startTime] and exponentially moves towards the value given by
  /// the [target] parameter. The exponential decay rate is defined by
  /// the [timeConstant] parameter, which is a time measured in
  /// seconds.
  /// var paramRef = param.setTargetAtTime(target, startTime, timeConstant);
  external AudioParam setTargetAtTime(
      double target, double startTime, double timeConstant);

  ///  Schedules the values of the [AudioParam] to follow a set of
  /// values, defined by an array of floating-point numbers scaled to
  /// fit into the given interval, starting at a given start time and
  /// spanning a given duration of time.
  /// var paramRef = param.setValueCurveAtTime(values, startTime, duration);
  external AudioParam setValueCurveAtTime(
      Iterable<double> values, double startTime, double duration);

  /// Cancels all scheduled future changes to the [AudioParam].
  /// var AudioParam = AudioParam.cancelScheduledValues(startTime)
  external AudioParam cancelScheduledValues(double cancelTime);

  ///  Cancels all scheduled future changes to the [AudioParam] but
  /// holds its value at a given time until further changes are made
  /// using other methods.
  /// var audioParam = AudioParam.cancelAndHoldAtTime(cancelTime)
  external AudioParam cancelAndHoldAtTime(double cancelTime);

  external factory AudioParam();
}

///
///
///  The interface—part of the Web Audio API—is a parent interface
/// for several types of audio source node interfaces which share the
/// ability to be started and stopped, optionally at specified times.
/// Specifically, this interface defines the [start()] and [stop()]
/// methods, as well as the [onended] event handler.
///  You can't create an object directly. Instead, use the interface
/// which extends it, such as [AudioBufferSourceNode],
/// [OscillatorNode], and [ConstantSourceNode].
///  Unless stated otherwise, nodes based upon output silence when
/// not playing (that is, before [start()] is called and after
/// [stop()] is called). Silence is represented, as always, by a
/// stream of samples with the value zero (0).
@JS()
class AudioScheduledSourceNode extends AudioNode {
  external EventHandlerNonNull? get onended;
  external set onended(EventHandlerNonNull? newValue);

  ///  Schedules the node to begin playing the constant sound at the
  /// specified time. If no time is specified, the node begins playing
  /// immediately.
  /// AudioScheduledSourceNode.start([when [, offset [, duration]]]);
  ///
  /// This example demonstrates how to create an OscillatorNode which is
  ///  scheduled to start playing in 2 seconds and stop playing 1 second after that. The times
  ///  are calculated by adding the desired number of seconds to the context's current time
  ///  stamp returned by AudioContext.currentTime.
  ///
  /// context = new AudioContext();
  /// osc = context.createOscillator();
  /// osc.connect(context.destination);
  ///
  /// /* Schedule the start and stop times for the oscillator */
  ///
  /// osc.start(context.currentTime + 2);
  /// osc.stop(context.currentTime + 3);
  external Object start([double? when = 0]);

  ///  Schedules the node to stop playing at the specified time. If no
  /// time is specified, the node stops playing at once.
  /// AudioScheduledSourceNode.stop([when]);
  ///
  /// This example demonstrates starting an oscillator node, scheduled to begin playing at
  ///  once and to stop playing in one second. The stop time is determined by taking the audio
  ///  context's current time from AudioContext.currentTime and adding 1 second.
  /// context = new AudioContext();
  /// osc = context.createOscillator();
  /// osc.connect(context.destination);
  ///
  /// /* Let's play a sine wave for one second. */
  ///
  /// osc.start();
  /// osc.stop(context.currentTime + 1);
  external Object stop([double? when = 0]);

  external factory AudioScheduledSourceNode();
}

///
///
///  The interface represents a node able to provide real-time
/// frequency and time-domain analysis information. It is an
/// [AudioNode] that passes the audio stream unchanged from the input
/// to the output, but allows you to take the generated data, process
/// it, and create audio visualizations.
///
///  An has exactly one input and one output. The node works even if
/// the output is not connected.
///
///
///
///
///   Number of inputs
///   [1]
///
///
///   Number of outputs
///   [1] (but may be left unconnected)
///
///
///   Channel count mode
///   ["max"]
///
///
///   Channel count
///   [2]
///
///
///   Channel interpretation
///   ["speakers"]
///
///
///
@JS()
class AnalyserNode extends AudioNode {
  external factory AnalyserNode(
      {BaseAudioContext context, AnalyserOptions? options});

  ///  Copies the current frequency data into a [Float32Array] array
  /// passed into it.
  /// var audioCtx = new AudioContext();
  /// var analyser = audioCtx.createAnalyser();
  /// var dataArray = new Float32Array(analyser.frequencyBinCount); // Float32Array should be the same length as the frequencyBinCount
  ///
  /// void analyser.getFloatFrequencyData(dataArray); // fill the Float32Array with data returned from getFloatFrequencyData()
  ///
  /// const audioCtx = new AudioContext();
  /// const analyser = audioCtx.createAnalyser();
  /// // Float32Array should be the same length as the frequencyBinCount
  /// const myDataArray = new Float32Array(analyser.frequencyBinCount);
  /// // fill the Float32Array with data returned from getFloatFrequencyData()
  /// analyser.getFloatFrequencyData(myDataArray);
  ///
  external Object getFloatFrequencyData(Float32List array);

  ///  Copies the current frequency data into a [Uint8Array] (unsigned
  /// byte array) passed into it.
  /// var audioCtx = new AudioContext();
  /// var analyser = audioCtx.createAnalyser();
  /// var dataArray = new Uint8Array(analyser.frequencyBinCount); // Uint8Array should be the same length as the frequencyBinCount
  ///
  /// void analyser.getByteFrequencyData(dataArray); // fill the Uint8Array with data returned from getByteFrequencyData()
  ///
  /// The following example shows basic usage of an AudioContext to create an AnalyserNode, then requestAnimationFrame and <canvas> to collect frequency data repeatedly and draw a "winamp bargraph style" output of the current audio input. For more examples/information, check out our Voice-change-O-matic demo (see app.js lines 128–205 for relevant code).
  ///
  /// var audioCtx = new (window.AudioContext || window.webkitAudioContext)();
  /// var analyser = audioCtx.createAnalyser();
  ///
  ///  ...
  ///
  /// analyser.fftSize = 256;
  /// var bufferLength = analyser.frequencyBinCount;
  /// console.log(bufferLength);
  /// var dataArray = new Uint8Array(bufferLength);
  ///
  /// canvasCtx.clearRect(0, 0, WIDTH, HEIGHT);
  ///
  /// function draw() {
  ///  drawVisual = requestAnimationFrame(draw);
  ///
  ///  analyser.getByteFrequencyData(dataArray);
  ///
  ///  canvasCtx.fillStyle = 'rgb(0, 0, 0)';
  ///  canvasCtx.fillRect(0, 0, WIDTH, HEIGHT);
  ///
  ///  var barWidth = (WIDTH / bufferLength) * 2.5;
  ///  var barHeight;
  ///  var x = 0;
  ///
  ///  for(var i = 0; i < bufferLength; i++) {
  ///   barHeight = dataArray[i];
  ///
  ///   canvasCtx.fillStyle = 'rgb(' + (barHeight+100) + ',50,50)';
  ///   canvasCtx.fillRect(x,HEIGHT-barHeight/2,barWidth,barHeight/2);
  ///
  ///   x += barWidth + 1;
  ///  }
  /// };
  ///
  /// draw();
  external Object getByteFrequencyData(Uint8List array);

  ///  Copies the current waveform, or time-domain, data into a
  /// [Float32Array] array passed into it.
  /// var audioCtx = new AudioContext();
  /// var analyser = audioCtx.createAnalyser();
  /// var dataArray = new Float32Array(analyser.fftSize); // Float32Array needs to be the same length as the fftSize
  /// analyser.getFloatTimeDomainData(dataArray); // fill the Float32Array with data returned from getFloatTimeDomainData()
  ///
  /// The following example shows basic usage of an AudioContext to create an AnalyserNode, then requestAnimationFrame and <canvas> to collect time domain data repeatedly and draw an "oscilloscope style" output of the current audio input. For more complete applied examples/information, check out our Voice-change-O-matic-float-data demo (see the source code too).
  ///
  /// var audioCtx = new (window.AudioContext || window.webkitAudioContext)();
  /// var analyser = audioCtx.createAnalyser();
  ///
  ///  ...
  ///
  /// analyser.fftSize = 1024;
  /// var bufferLength = analyser.fftSize;
  /// console.log(bufferLength);
  /// var dataArray = new Float32Array(bufferLength);
  ///
  /// canvasCtx.clearRect(0, 0, WIDTH, HEIGHT);
  ///
  /// function draw() {
  ///  drawVisual = requestAnimationFrame(draw);
  ///  analyser.getFloatTimeDomainData(dataArray);
  ///
  ///  canvasCtx.fillStyle = 'rgb(200, 200, 200)';
  ///  canvasCtx.fillRect(0, 0, WIDTH, HEIGHT);
  ///  canvasCtx.lineWidth = 2;
  ///  canvasCtx.strokeStyle = 'rgb(0, 0, 0)';
  ///  canvasCtx.beginPath();
  ///
  ///  var sliceWidth = WIDTH * 1.0 / bufferLength;
  ///  var x = 0;
  ///
  ///  for(var i = 0; i < bufferLength; i++) {
  ///   var v = dataArray[i] * 200.0;
  ///   var y = HEIGHT/2 + v;
  ///
  ///   if(i === 0) {
  ///    canvasCtx.moveTo(x, y);
  ///   } else {
  ///    canvasCtx.lineTo(x, y);
  ///   }
  ///   x += sliceWidth;
  ///  }
  ///
  ///  canvasCtx.lineTo(canvas.width, canvas.height/2);
  ///  canvasCtx.stroke();
  /// };
  ///
  /// draw();
  external Object getFloatTimeDomainData(Float32List array);

  ///  Copies the current waveform, or time-domain, data into a
  /// [Uint8Array] (unsigned byte array) passed into it.
  /// const audioCtx = new AudioContext();
  /// const analyser = audioCtx.createAnalyser();
  /// const dataArray = new Uint8Array(analyser.fftSize); // Uint8Array should be the same length as the fftSize
  /// analyser.getByteTimeDomainData(dataArray); // fill the Uint8Array with data returned from getByteTimeDomainData()
  ///
  /// The following example shows basic usage of an AudioContext to create an AnalyserNode, then requestAnimationFrame and <canvas> to collect time domain data repeatedly and draw an "oscilloscope style" output of the current audio input. For more complete applied examples/information, check out our Voice-change-O-matic demo (see app.js lines 128–205 for relevant code).
  ///
  /// const audioCtx = new (window.AudioContext || window.webkitAudioContext)();
  /// const analyser = audioCtx.createAnalyser();
  ///
  ///  ...
  ///
  /// analyser.fftSize = 2048;
  /// const bufferLength = analyser.fftSize;
  /// const dataArray = new Uint8Array(bufferLength);
  /// analyser.getByteTimeDomainData(dataArray);
  ///
  /// // draw an oscilloscope of the current audio source
  /// function draw() {
  ///  drawVisual = requestAnimationFrame(draw);
  ///  analyser.getByteTimeDomainData(dataArray);
  ///
  ///  canvasCtx.fillStyle = 'rgb(200, 200, 200)';
  ///  canvasCtx.fillRect(0, 0, WIDTH, HEIGHT);
  ///
  ///  canvasCtx.lineWidth = 2;
  ///  canvasCtx.strokeStyle = 'rgb(0, 0, 0)';
  ///
  ///  const sliceWidth = WIDTH * 1.0 / bufferLength;
  ///  let x = 0;
  ///
  ///  canvasCtx.beginPath();
  ///  for(var i = 0; i < bufferLength; i++) {
  ///   const v = dataArray[i]/128.0;
  ///   const y = v * HEIGHT/2;
  ///
  ///   if(i === 0)
  ///    canvasCtx.moveTo(x, y);
  ///   else
  ///    canvasCtx.lineTo(x, y);
  ///
  ///   x += sliceWidth;
  ///  }
  ///
  ///  canvasCtx.lineTo(WIDTH, HEIGHT/2);
  ///  canvasCtx.stroke();
  /// };
  ///
  /// draw();
  ///
  external Object getByteTimeDomainData(Uint8List array);

  ///  Is an unsigned long value representing the size of the FFT (Fast
  /// Fourier Transform) to be used to determine the frequency domain.
  external int get fftSize;
  external set fftSize(int newValue);

  ///  Is an unsigned long value half that of the FFT size. This
  /// generally equates to the number of data values you will have to
  /// play with for the visualization.
  external int get frequencyBinCount;

  ///  Is a double value representing the minimum power value in the
  /// scaling range for the FFT analysis data, for conversion to
  /// unsigned byte values — basically, this specifies the minimum
  /// value for the range of results when using
  /// [getByteFrequencyData()].
  external double get minDecibels;
  external set minDecibels(double newValue);

  ///  Is a double value representing the maximum power value in the
  /// scaling range for the FFT analysis data, for conversion to
  /// unsigned byte values — basically, this specifies the maximum
  /// value for the range of results when using
  /// [getByteFrequencyData()].
  external double get maxDecibels;
  external set maxDecibels(double newValue);

  ///  Is a double value representing the averaging constant with the
  /// last analysis frame — basically, it makes the transition between
  /// values over time smoother.
  external double get smoothingTimeConstant;
  external set smoothingTimeConstant(double newValue);
}

@anonymous
@JS()
class AnalyserOptions extends AudioNodeOptions {
  external int get fftSize;
  external set fftSize(int newValue);
  external double get maxDecibels;
  external set maxDecibels(double newValue);
  external double get minDecibels;
  external set minDecibels(double newValue);
  external double get smoothingTimeConstant;
  external set smoothingTimeConstant(double newValue);

  external factory AnalyserOptions(
      {int fftSize = 2048,
      double maxDecibels = -30,
      double minDecibels = -100,
      double smoothingTimeConstant = 0.8});
}

///
///
///  The interface is an [AudioScheduledSourceNode] which represents
/// an audio source consisting of in-memory audio data, stored in an
/// [AudioBuffer]. It's especially useful for playing back audio
/// which has particularly stringent timing accuracy requirements,
/// such as for sounds that must match a specific rhythm and can be
/// kept in memory rather than being played from disk or the network.
/// To play sounds which require accurate timing but must be streamed
/// from the network or played from disk, use a [AudioWorkletNode] to
/// implement its playback.
///
///  An has no inputs and exactly one output, which has the same
/// number of channels as the [AudioBuffer] indicated by its [buffer]
/// property. If there's no buffer set—that is, if [buffer] is
/// [null]—the output contains a single channel of silence (every
/// sample is 0).
///
///  An can only be played once; after each call to [start()], you
/// have to create a new node if you want to play the same sound
/// again. Fortunately, these nodes are very inexpensive to create,
/// and the actual [AudioBuffer]s can be reused for multiple plays of
/// the sound. Indeed, you can use these nodes in a "fire and forget"
/// manner: create the node, call [start()] to begin playing the
/// sound, and don't even bother to hold a reference to it. It will
/// automatically be garbage-collected at an appropriate time, which
/// won't be until sometime after the sound has finished playing.
///
///  Multiple calls to [stop()] are allowed. The most recent call
/// replaces the previous one, if the has not already reached the end
/// of the buffer.
///
///
///
///   Number of inputs
///   [0]
///
///
///   Number of outputs
///   [1]
///
///
///   Channel count
///   defined by the associated [AudioBuffer]
///
///
///
@JS()
class AudioBufferSourceNode extends AudioScheduledSourceNode {
  external factory AudioBufferSourceNode(
      {BaseAudioContext context, AudioBufferSourceOptions? options});

  ///  An [AudioBuffer] that defines the audio asset to be played, or
  /// when set to the value [null], defines a single channel of silence
  /// (in which every sample is 0.0).
  external AudioBuffer? get buffer;
  external set buffer(AudioBuffer? newValue);

  ///  An a-rate [AudioParam] that defines the speed factor at which
  /// the audio asset will be played, where a value of 1.0 is the
  /// sound's natural sampling rate. Since no pitch correction is
  /// applied on the output, this can be used to change the pitch of
  /// the sample. This value is compounded with [detune] to determine
  /// the final playback rate.
  external AudioParam get playbackRate;

  ///  Is a k-rate [AudioParam] representing detuning of playback in
  /// cents. This value is compounded with [playbackRate] to determine
  /// the speed at which the sound is played. Its default value is [0]
  /// (meaning no detuning), and its nominal range is -∞ to ∞.
  external AudioParam get detune;

  ///  A Boolean attribute indicating if the audio asset must be
  /// replayed when the end of the [AudioBuffer] is reached. Its
  /// default value is [false].
  external bool get loop;
  external set loop(bool newValue);

  ///  A floating-point value indicating the time, in seconds, at which
  /// playback of the [AudioBuffer] must begin when [loop] is [true].
  /// Its default value is [0] (meaning that at the beginning of each
  /// loop, playback begins at the start of the audio buffer).
  external double get loopStart;
  external set loopStart(double newValue);

  ///  A floating-point number indicating the time, in seconds, at
  /// which playback of the [AudioBuffer] stops and loops back to the
  /// time indicated by [loopStart], if [loop] is [true]. The default
  /// value is [0].
  external double get loopEnd;
  external set loopEnd(double newValue);
  @override
  external Object start([double? when = 0, double? offset, double? duration]);
}

@anonymous
@JS()
class AudioBufferSourceOptions {
  external AudioBuffer? get buffer;
  external set buffer(AudioBuffer? newValue);
  external double get detune;
  external set detune(double newValue);
  external bool get loop;
  external set loop(bool newValue);
  external double get loopEnd;
  external set loopEnd(double newValue);
  external double get loopStart;
  external set loopStart(double newValue);
  external double get playbackRate;
  external set playbackRate(double newValue);

  external factory AudioBufferSourceOptions(
      {AudioBuffer? buffer,
      double detune = 0,
      bool loop = false,
      double loopEnd = 0,
      double loopStart = 0,
      double playbackRate = 1});
}

///
///
///  The interface represents the end destination of an audio graph
/// in a given context — usually the speakers of your device. It can
/// also be the node that will "record" the audio data when used with
/// an [OfflineAudioContext].
///
///   has no output (as it is the output, no more [AudioNode] can be
/// linked after it in the audio graph) and one input. The number of
/// channels in the input must be between [0] and the
/// [maxChannelCount] value or an exception is raised.
///
///  The of a given [AudioContext] can be retrieved using the
/// [AudioContext.destination] property.
///
///
///   Number of inputs
///   [1]
///
///
///   Number of outputs
///   [0]
///
///
///   Channel count mode
///   ["explicit"]
///
///
///   Channel count
///   [2]
///
///
///   Channel interpretation
///   ["speakers"]
///
///
///
@JS()
class AudioDestinationNode extends AudioNode {
  ///  Is an [unsigned long] defining the maximum number of channels
  /// that the physical device can handle.
  external int get maxChannelCount;

  external factory AudioDestinationNode();
}

///
///
///  The interface represents the position and orientation of the
/// unique person listening to the audio scene, and is used in audio
/// spatialization. All [PannerNode]s spatialize in relation to the
/// stored in the [BaseAudioContext.listener] attribute.
///
///  It is important to note that there is only one listener per
/// context and that it isn't an [AudioNode].
///
///
@JS()
class AudioListener {
  ///  Represents the horizontal position of the listener in a
  /// right-hand cartesian coordinate system. The default is 0.
  external AudioParam get positionX;

  ///  Represents the vertical position of the listener in a right-hand
  /// cartesian coordinate system. The default is 0.
  external AudioParam get positionY;

  ///  Represents the longitudinal (back and forth) position of the
  /// listener in a right-hand cartesian coordinate system. The default
  /// is 0.
  external AudioParam get positionZ;

  ///  Represents the horizontal position of the listener's forward
  /// direction in the same cartesian coordinate system as the position
  /// ([positionX], [positionY], and [positionZ]) values. The forward
  /// and up values are linearly independent of each other. The default
  /// is 0.
  external AudioParam get forwardX;

  ///  Represents the vertical position of the listener's forward
  /// direction in the same cartesian coordinate system as the position
  /// ([positionX], [positionY], and [positionZ]) values. The forward
  /// and up values are linearly independent of each other. The default
  /// is 0.
  external AudioParam get forwardY;

  ///  Represents the longitudinal (back and forth) position of the
  /// listener's forward direction in the same cartesian coordinate
  /// system as the position ([positionX], [positionY], and
  /// [positionZ]) values. The forward and up values are linearly
  /// independent of each other. The default is -1.
  external AudioParam get forwardZ;

  ///  Represents the horizontal position of the top of the listener's
  /// head in the same cartesian coordinate system as the position
  /// ([positionX], [positionY], and [positionZ]) values. The forward
  /// and up values are linearly independent of each other. The default
  /// is 0.
  external AudioParam get upX;

  ///  Represents the vertical position of the top of the listener's
  /// head in the same cartesian coordinate system as the position
  /// ([positionX], [positionY], and [positionZ]) values. The forward
  /// and up values are linearly independent of each other. The default
  /// is 1.
  external AudioParam get upY;

  ///  Represents the longitudinal (back and forth) position of the top
  /// of the listener's head in the same cartesian coordinate system as
  /// the position ([positionX], [positionY], and [positionZ]) values.
  /// The forward and up values are linearly independent of each other.
  /// The default is 0.
  external AudioParam get upZ;

  /// Sets the position of the listener.
  /// var audioCtx = new AudioContext();
  /// var myListener = audioCtx.listener;
  /// myListener.setPosition(1,1,1);
  /// See BaseAudioContext.createPanner() for example code.
  @deprecated
  external Object setPosition(double x, double y, double z);

  /// Sets the orientation of the listener.
  /// var audioCtx = new AudioContext();
  /// var myListener = audioCtx.listener;
  /// myListener.setOrientation(0,0,-1,0,1,0);
  /// See BaseAudioContext.createPanner() for example code.
  @deprecated
  external Object setOrientation(
      double x, double y, double z, double xUp, double yUp, double zUp);

  external factory AudioListener();
}

///
///       Deprecated
///        This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///
///  The Web Audio API represents events that occur when a
/// [ScriptProcessorNode] input buffer is ready to be processed.
///   Note: As of the August 29 2014 Web Audio API spec publication,
/// this feature has been marked as deprecated, and is soon to be
/// replaced by AudioWorklet.
///
@deprecated
@JS()
class AudioProcessingEvent extends Event {
  external factory AudioProcessingEvent(
      {String type, AudioProcessingEventInit eventInitDict});
  external double get playbackTime;
  external AudioBuffer get inputBuffer;
  external AudioBuffer get outputBuffer;
}

@anonymous
@JS()
class AudioProcessingEventInit extends EventInit {
  external double get playbackTime;
  external set playbackTime(double newValue);
  external AudioBuffer get inputBuffer;
  external set inputBuffer(AudioBuffer newValue);
  external AudioBuffer get outputBuffer;
  external set outputBuffer(AudioBuffer newValue);

  external factory AudioProcessingEventInit(
      {double playbackTime, AudioBuffer inputBuffer, AudioBuffer outputBuffer});
}

@JS()
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

///
///  The interface represents a simple low-order filter, and is
/// created using the [BaseAudioContext/createBiquadFilter] method.
/// It is an [AudioNode] that can represent different kinds of
/// filters, tone control devices, and graphic equalizers. A always
/// has exactly one input and one output.
///
///
///
///   Number of inputs
///   [1]
///
///
///   Number of outputs
///   [1]
///
///
///   Channel count mode
///   ["max"]
///
///
///   Channel count
///   [2] (not used in the default count mode)
///
///
///   Channel interpretation
///   ["speakers"]
///
///
///
@JS()
class BiquadFilterNode extends AudioNode {
  external factory BiquadFilterNode(
      {BaseAudioContext context, BiquadFilterOptions? options});

  ///  Is a string value defining the kind of filtering algorithm the
  /// node is implementing.
  ///
  ///
  ///   The meaning of the different parameters depending of the type
  /// of the filter (detune has the same meaning regardless, so isn't
  /// listed below)
  ///
  ///
  ///
  ///   Description
  ///   [frequency]
  ///   [Q]
  ///   [gain]
  ///
  ///
  ///
  ///
  ///   [lowpass]
  ///    Standard second-order resonant lowpass filter with 12dB/octave
  /// rolloff. Frequencies below the cutoff pass through; frequencies
  /// above it are attenuated.
  ///   The cutoff frequency.
  ///    Indicates how peaked the frequency is around the cutoff. The
  /// greater the value is, the greater is the peak.
  ///   Not used
  ///
  ///
  ///   [highpass]
  ///    Standard second-order resonant highpass filter with
  /// 12dB/octave rolloff. Frequencies below the cutoff are attenuated;
  /// frequencies above it pass through.
  ///   The cutoff frequency.
  ///    Indicates how peaked the frequency is around the cutoff. The
  /// greater the value, the greater the peak.
  ///   Not used
  ///
  ///
  ///   [bandpass]
  ///    Standard second-order bandpass filter. Frequencies outside the
  /// given range of frequencies are attenuated; the frequencies inside
  /// it pass through.
  ///   The center of the range of frequencies.
  ///    Controls the width of the frequency band. The greater the [Q]
  /// value, the smaller the frequency band.
  ///   Not used
  ///
  ///
  ///   [lowshelf]
  ///    Standard second-order lowshelf filter. Frequencies lower than
  /// the frequency get a boost, or an attenuation; frequencies over it
  /// are unchanged.
  ///    The upper limit of the frequencies getting a boost or an
  /// attenuation.
  ///   Not used
  ///    The boost, in dB, to be applied; if negative, it will be an
  /// attenuation.
  ///
  ///
  ///   [highshelf]
  ///    Standard second-order highshelf filter. Frequencies higher
  /// than the frequency get a boost or an attenuation; frequencies
  /// lower than it are unchanged.
  ///    The lower limit of the frequencies getting a boost or an
  /// attenuation.
  ///   Not used
  ///    The boost, in dB, to be applied; if negative, it will be an
  /// attenuation.
  ///
  ///
  ///   [peaking]
  ///    Frequencies inside the range get a boost or an attenuation;
  /// frequencies outside it are unchanged.
  ///    The middle of the frequency range getting a boost or an
  /// attenuation.
  ///    Controls the width of the frequency band. The greater the [Q]
  /// value, the smaller the frequency band.
  ///    The boost, in dB, to be applied; if negative, it will be an
  /// attenuation.
  ///
  ///
  ///   [notch]
  ///    Standard notch filter, also called a band-stop or
  /// band-rejection filter. It is the opposite of a bandpass filter:
  /// frequencies outside the give range of frequencies pass through;
  /// frequencies inside it are attenuated.
  ///   The center of the range of frequencies.
  ///    Controls the width of the frequency band. The greater the [Q]
  /// value, the smaller the frequency band.
  ///   Not used
  ///
  ///
  ///   [allpass]
  ///    Standard second-order allpass filter. It lets all frequencies
  /// through, but changes the phase-relationship between the various
  /// frequencies.
  ///    The frequency with the maximal group delay, that is, the
  /// frequency where the center of the phase transition occurs.
  ///    Controls how sharp the transition is at the medium frequency.
  /// The larger this parameter is, the sharper and larger the
  /// transition will be.
  ///   Not used
  ///
  ///
  ///
  ///
  external BiquadFilterType get type;
  external set type(BiquadFilterType newValue);

  ///  Is an a-rate [AudioParam], a double representing a frequency in
  /// the current filtering algorithm measured in hertz (Hz).
  external AudioParam get frequency;

  ///  Is an a-rate [AudioParam] representing detuning of the frequency
  /// in cents.
  external AudioParam get detune;

  ///  Is an a-rate [AudioParam], a double representing a Q factor, or
  /// quality factor.
  external AudioParam get Q;

  ///  Is an a-rate [AudioParam], a double representing the gain used
  /// in the current filtering algorithm.
  external AudioParam get gain;

  ///  From the current filter parameter settings this method
  /// calculates the frequency response for frequencies specified in
  /// the provided array of frequencies.
  /// BiquadFilterNode.getFrequencyResponse(frequencyArray, magResponseOutput, phaseResponseOutput);
  ///
  /// In the following example we are using a biquad filter on a media stream (for the full
  ///  demo, see our stream-source-buffer
  ///   demo live, or read the
  ///   source.) As part of this demo, we get the frequency responses for this biquad
  ///  filter, for five sample frequencies. We first create the Float32Arrays we
  ///  need, one containing the input frequencies, and two to receive the output magnitude and
  ///  phase values:
  ///
  /// var myFrequencyArray = new Float32Array(5);
  /// myFrequencyArray[0] = 1000;
  /// myFrequencyArray[1] = 2000;
  /// myFrequencyArray[2] = 3000;
  /// myFrequencyArray[3] = 4000;
  /// myFrequencyArray[4] = 5000;
  ///
  /// var magResponseOutput = new Float32Array(5);
  /// var phaseResponseOutput = new Float32Array(5);
  ///
  /// Next we create a <ul> element in our HTML to contain our results,
  ///  and grab a reference to it in our JavaScript:
  ///
  /// <p>Biquad filter frequency response for: </p>
  /// <ul class="freq-response-output">
  /// </ul>
  ///
  /// var freqResponseOutput = document.querySelector('.freq-response-output');
  ///
  /// Finally, after creating our biquad filter, we use getFrequencyResponse()
  ///  to generate the response data and put it in our arrays, then loop through each data set
  ///  and output them in a human-readable list at the bottom of the page:
  ///
  /// var biquadFilter = audioCtx.createBiquadFilter();
  /// biquadFilter.type = "lowshelf";
  /// biquadFilter.frequency.value = 1000;
  /// biquadFilter.gain.value = range.value;
  ///
  ///  ...
  ///
  /// function calcFrequencyResponse() {
  ///  biquadFilter.getFrequencyResponse(myFrequencyArray,magResponseOutput,phaseResponseOutput);
  ///
  ///  for(i = 0; i <= myFrequencyArray.length-1;i++){
  ///   var listItem = document.createElement('li');
  ///   listItem.innerHTML = '<strong>' + myFrequencyArray[i] + 'Hz</strong>: Magnitude ' + magResponseOutput[i] + ', Phase ' + phaseResponseOutput[i] + ' radians.';
  ///   freqResponseOutput.appendChild(listItem);
  ///  }
  /// }
  ///
  /// calcFrequencyResponse();
  external Object getFrequencyResponse(Float32List frequencyHz,
      Float32List magResponse, Float32List phaseResponse);
}

@anonymous
@JS()
class BiquadFilterOptions extends AudioNodeOptions {
  external BiquadFilterType get type;
  external set type(BiquadFilterType newValue);
  external double get Q;
  external set Q(double newValue);
  external double get detune;
  external set detune(double newValue);
  external double get frequency;
  external set frequency(double newValue);
  external double get gain;
  external set gain(double newValue);

  external factory BiquadFilterOptions(
      {BiquadFilterType type = BiquadFilterType.lowpass,
      double Q = 1,
      double detune = 0,
      double frequency = 350,
      double gain = 0});
}

///
///
///  The interface, often used in conjunction with its opposite,
/// [ChannelSplitterNode], reunites different mono inputs into a
/// single output. Each input is used to fill a channel of the
/// output. This is useful for accessing each channels separately,
/// e.g. for performing channel mixing where gain must be separately
/// controlled on each channel.
///
///  If has one single output, but as many inputs as there are
/// channels to merge; the number of inputs is defined as a parameter
/// of its constructor and the call to
/// [AudioContext.createChannelMerger()]. In the case that no value
/// is given, it will default to [6].
///
///  Using a , it is possible to create outputs with more channels
/// than the rendering hardware is able to process. In that case,
/// when the signal is sent to the [AudioContext.listener] object,
/// supernumerary channels will be ignored.
///
///
///   Number of inputs
///   variable; default to [6].
///
///
///   Number of outputs
///   [1]
///
///
///   Channel count mode
///   ["max"]
///
///
///   Channel count
///   [2 ](not used in the default count mode)
///
///
///   Channel interpretation
///   ["speakers"]
///
///
///
@JS()
class ChannelMergerNode extends AudioNode {
  external factory ChannelMergerNode(
      {BaseAudioContext context, ChannelMergerOptions? options});
}

@anonymous
@JS()
class ChannelMergerOptions extends AudioNodeOptions {
  external int get numberOfInputs;
  external set numberOfInputs(int newValue);

  external factory ChannelMergerOptions({int numberOfInputs = 6});
}

///
///
///  The interface, often used in conjunction with its opposite,
/// [ChannelMergerNode], separates the different channels of an audio
/// source into a set of mono outputs. This is useful for accessing
/// each channel separately, e.g. for performing channel mixing where
/// gain must be separately controlled on each channel.
///
///  If your always has one single input, the amount of outputs is
/// defined by a parameter on its constructor and the call to
/// [AudioContext.createChannelSplitter()]. In the case that no value
/// is given, it will default to [6]. If there are fewer channels in
/// the input than there are outputs, supernumerary outputs are
/// silent.
///
///
///   Number of inputs
///   [1]
///
///
///   Number of outputs
///   variable; default to [6].
///
///
///   Channel count mode
///    ["explicit]" Older implementations, as per earlier versions of
/// the spec use ["max"].
///
///
///   Channel count
///    Fixed to the number of outputs. Older implementations, as per
/// earlier versions of the spec use [2 ](not used in the default
/// count mode).
///
///
///   Channel interpretation
///   ["discrete"]
///
///
///
@JS()
class ChannelSplitterNode extends AudioNode {
  external factory ChannelSplitterNode(
      {BaseAudioContext context, ChannelSplitterOptions? options});
}

@anonymous
@JS()
class ChannelSplitterOptions extends AudioNodeOptions {
  external int get numberOfOutputs;
  external set numberOfOutputs(int newValue);

  external factory ChannelSplitterOptions({int numberOfOutputs = 6});
}

///
///
///  The interface—part of the Web Audio API—represents an audio
/// source (based upon [AudioScheduledSourceNode]) whose output is
/// single unchanging value. This makes it useful for cases in which
/// you need a constant value coming in from an audio source. In
/// addition, it can be used like a constructible [AudioParam] by
/// automating the value of its [offset] or by connecting another
/// node to it; see Controlling multiple parameters with
/// ConstantSourceNode.
///
///  A has no inputs and exactly one monaural (one-channel) output.
/// The output's value is always the same as the value of the
/// [offset] parameter.
///
///
///   Number of inputs
///   [0]
///
///
///   Number of outputs
///   [1]
///
///
///
@JS()
class ConstantSourceNode extends AudioScheduledSourceNode {
  external factory ConstantSourceNode(
      {BaseAudioContext context, ConstantSourceOptions? options});

  ///  An [AudioParam] which specifies the value that this source
  /// continuously outputs. The default value is 1.0.
  external AudioParam get offset;
}

@anonymous
@JS()
class ConstantSourceOptions {
  external double get offset;
  external set offset(double newValue);

  external factory ConstantSourceOptions({double offset = 1});
}

///
///
///  The interface is an [AudioNode] that performs a Linear
/// Convolution on a given [AudioBuffer], often used to achieve a
/// reverb effect. A always has exactly one input and one output.
///  Note: For more information on the theory behind Linear
/// Convolution, see the Convolution article on Wikipedia.
///
///
///
/// 			Number of inputs
/// 			[1]
///
///
/// 			Number of outputs
/// 			[1]
///
///
/// 			Channel count mode
/// 			["clamped-max"]
///
///
/// 			Channel count
/// 			[1], [2], or [4]
///
///
/// 			Channel interpretation
/// 			["speakers"]
///
///
///
@JS()
class ConvolverNode extends AudioNode {
  external factory ConvolverNode(
      {BaseAudioContext context, ConvolverOptions? options});

  ///  A mono, stereo, or 4-channel [AudioBuffer] containing the
  /// (possibly multichannel) impulse response used by the
  /// [ConvolverNode] to create the reverb effect.
  external AudioBuffer? get buffer;
  external set buffer(AudioBuffer? newValue);

  ///  A boolean that controls whether the impulse response from the
  /// buffer will be scaled by an equal-power normalization when the
  /// [buffer] attribute is set, or not.
  external bool get normalize;
  external set normalize(bool newValue);
}

@anonymous
@JS()
class ConvolverOptions extends AudioNodeOptions {
  external AudioBuffer? get buffer;
  external set buffer(AudioBuffer? newValue);
  external bool get disableNormalization;
  external set disableNormalization(bool newValue);

  external factory ConvolverOptions(
      {AudioBuffer? buffer, bool disableNormalization = false});
}

///
///
///  The interface represents a delay-line; an [AudioNode]
/// audio-processing module that causes a delay between the arrival
/// of an input data and its propagation to the output. A always has
/// exactly one input and one output, both with the same amount of
/// channels.
///
///  When creating a graph that has a cycle, it is mandatory to have
/// at least one in the cycle, or the nodes taking part in the cycle
/// will be muted.
///
///
/// 			Number of inputs
/// 			[1]
///
///
/// 			Number of outputs
/// 			[1]
///
///
/// 			Channel count mode
/// 			["max"]
///
///
/// 			Channel count
/// 			[2] (not used in the default count mode)
///
///
/// 			Channel interpretation
/// 			["speakers"]
///
///
///
@JS()
class DelayNode extends AudioNode {
  external factory DelayNode({BaseAudioContext context, DelayOptions? options});

  ///  Is an a-rate [AudioParam] representing the amount of delay to
  /// apply, specified in seconds.
  external AudioParam get delayTime;
}

@anonymous
@JS()
class DelayOptions extends AudioNodeOptions {
  external double get maxDelayTime;
  external set maxDelayTime(double newValue);
  external double get delayTime;
  external set delayTime(double newValue);

  external factory DelayOptions(
      {double maxDelayTime = 1, double delayTime = 0});
}

///
///  The interface provides a compression effect, which lowers the
/// volume of the loudest parts of the signal in order to help
/// prevent clipping and distortion that can occur when multiple
/// sounds are played and multiplexed together at once. This is often
/// used in musical production and game audio. is an [AudioNode] that
/// has exactly one input and one output; it is created using the
/// [BaseAudioContext.createDynamicsCompressor] method.
///
///
///
///   Number of inputs
///   [1]
///
///
///   Number of outputs
///   [1]
///
///
///   Channel count mode
///   ["clamped-max"]
///
///
///   Channel count
///   [2]
///
///
///   Channel interpretation
///   ["speakers"]
///
///
///
@JS()
class DynamicsCompressorNode extends AudioNode {
  external factory DynamicsCompressorNode(
      {BaseAudioContext context, DynamicsCompressorOptions? options});

  ///  Is a k-rate [AudioParam] representing the decibel value above
  /// which the compression will start taking effect.
  external AudioParam get threshold;

  ///  Is a k-rate [AudioParam] containing a decibel value representing
  /// the range above the threshold where the curve smoothly
  /// transitions to the compressed portion.
  external AudioParam get knee;

  ///  Is a k-rate [AudioParam] representing the amount of change, in
  /// dB, needed in the input for a 1 dB change in the output.
  external AudioParam get ratio;

  ///  Is a [float] representing the amount of gain reduction currently
  /// applied by the compressor to the signal.
  external double get reduction;

  ///  Is a k-rate [AudioParam] representing the amount of time, in
  /// seconds, required to reduce the gain by 10 dB.
  external AudioParam get attack;

  ///  Is a k-rate [AudioParam] representing the amount of time, in
  /// seconds, required to increase the gain by 10 dB.
  external AudioParam get release;
}

@anonymous
@JS()
class DynamicsCompressorOptions extends AudioNodeOptions {
  external double get attack;
  external set attack(double newValue);
  external double get knee;
  external set knee(double newValue);
  external double get ratio;
  external set ratio(double newValue);
  external double get release;
  external set release(double newValue);
  external double get threshold;
  external set threshold(double newValue);

  external factory DynamicsCompressorOptions(
      {double attack = 0.003,
      double knee = 30,
      double ratio = 12,
      double release = 0.25,
      double threshold = -24});
}

///
///
///  The interface represents a change in volume. It is an
/// [AudioNode] audio-processing module that causes a given gain to
/// be applied to the input data before its propagation to the
/// output. A always has exactly one input and one output, both with
/// the same number of channels.
///
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
///   Number of inputs
///   [1]
///
///
///   Number of outputs
///   [1]
///
///
///   Channel count mode
///   ["max"]
///
///
///   Channel count
///   [2] (not used in the default count mode)
///
///
///   Channel interpretation
///   ["speakers"]
///
///
///
@JS()
class GainNode extends AudioNode {
  external factory GainNode({BaseAudioContext context, GainOptions? options});

  ///  Is an a-rate [AudioParam] representing the amount of gain to
  /// apply. You have to set [AudioParam.value] or use the methods of
  /// [AudioParam] to change the effect of gain.
  external AudioParam get gain;
}

@anonymous
@JS()
class GainOptions extends AudioNodeOptions {
  external double get gain;
  external set gain(double newValue);

  external factory GainOptions({double gain = 1.0});
}

///
///
///  The interface of the Web Audio API is a [AudioNode] processor
/// which implements a general infinite impulse response (IIR)
/// filter; this type of filter can be used to implement tone control
/// devices and graphic equalizers as well. It lets the parameters of
/// the filter response be specified, so that it can be tuned as
/// needed.
///
///
///   Number of inputs
///   [1]
///
///
///   Number of outputs
///   [1]
///
///
///   Channel count mode
///   ["max"]
///
///
///   Channel count
///   Same as on the input
///
///
///   Channel interpretation
///   ["speakers"]
///
///
///  Typically, it's best to use the [BiquadFilterNode] interface to
/// implement higher-order filters. There are several reasons why:
///  Biquad filters are typically less sensitive to numeric quirks.
///  The filter parameters of biquad filters can be automated.
///   All even-ordered IIR filters can be created using
/// [BiquadFilterNode].
///  However, if you need to create an odd-ordered IIR filter, you'll
/// need to use . You may also find this interface useful if you
/// don't need automation, or for other reasons.
///  Once the node has been created, you can't change its
/// coefficients.
///  s have a tail-time reference; they continue to output non-silent
/// audio with zero input. As an IIR filter, the non-zero input
/// continues forever, but this can be limited after some finite time
/// in practice, when the output has approached zero closely enough.
/// The actual time that takes depends on the filter coefficients
/// provided.
@JS()
class IIRFilterNode extends AudioNode {
  external factory IIRFilterNode(
      {BaseAudioContext context, IIRFilterOptions options});

  ///  Uses the filter's current parameter settings to calculate the
  /// response for frequencies specified in the provided array of
  /// frequencies.
  /// IIRFilterNode.getFrequencyResponse(frequencyArray, magResponseOutput, phaseResponseOutput);
  ///
  /// In the following example we are using an IIR filter on a media stream (for a complete
  ///  full demo, see our stream-source-buffer demo live,
  ///  or read
  ///   its source.) As part of this demo, we get the frequency responses for this IIR
  ///  filter, for five sample frequencies. We first create the Float32Array
  ///  objects we need, one containing the input frequencies, and two to receive the output
  ///  magnitude and phase values:
  ///
  /// var myFrequencyArray = new Float32Array(5);
  /// myFrequencyArray[0] = 1000;
  /// myFrequencyArray[1] = 2000;
  /// myFrequencyArray[2] = 3000;
  /// myFrequencyArray[3] = 4000;
  /// myFrequencyArray[4] = 5000;
  ///
  /// var magResponseOutput = new Float32Array(5);
  /// var phaseResponseOutput = new Float32Array(5);
  ///
  /// Next we create a <ul> element in our HTML to contain our results,
  ///  and grab a reference to it in our JavaScript:
  ///
  /// <p>IIR filter frequency response for: </p>
  /// <ul class="freq-response-output">
  /// </ul>
  ///
  /// var freqResponseOutput = document.querySelector('.freq-response-output');
  ///
  /// Finally, after creating our filter, we use getFrequencyResponse() to
  ///  generate the response data and put it in our arrays, then loop through each data set and
  ///  output them in a human-readable list at the bottom of the page:
  ///
  /// var feedforwardCoefficients = [0.1, 0.2, 0.3, 0.4, 0.5];
  /// var feedbackCoefficients = [0.5, 0.4, 0.3, 0.2, 0.1];
  ///
  /// var iirFilter = audioCtx.createIIRFilter(feedforwardCoefficients, feedbackCoefficients);
  ///
  ///  ...
  ///
  /// function calcFrequencyResponse() {
  ///  iirFilter.getFrequencyResponse(myFrequencyArray, magResponseOutput, phaseResponseOutput);
  ///
  ///  for(i = 0; i <= myFrequencyArray.length-1;i++){
  ///   var listItem = document.createElement('li');
  ///   listItem.innerHTML = '<strong>' + myFrequencyArray[i] + 'Hz</strong>: Magnitude ' + magResponseOutput[i] + ', Phase ' + phaseResponseOutput[i] + ' radians.';
  ///   freqResponseOutput.appendChild(listItem);
  ///  }
  /// }
  ///
  /// calcFrequencyResponse();
  external Object getFrequencyResponse(Float32List frequencyHz,
      Float32List magResponse, Float32List phaseResponse);
}

@anonymous
@JS()
class IIRFilterOptions extends AudioNodeOptions {
  external Iterable<double> get feedforward;
  external set feedforward(Iterable<double> newValue);
  external Iterable<double> get feedback;
  external set feedback(Iterable<double> newValue);

  external factory IIRFilterOptions(
      {Iterable<double> feedforward, Iterable<double> feedback});
}

///
///  The interface represents an audio source consisting of an HTML5
/// [<audio>] or [<video>] element. It is an [AudioNode] that acts as
/// an audio source.
///  A [MediaElementSourceNode] has no inputs and exactly one output,
/// and is created using the
/// [AudioContext.createMediaElementSource()] method. The amount of
/// channels in the output equals the number of channels of the audio
/// referenced by the [HTMLMediaElement] used in the creation of the
/// node, or is 1 if the [HTMLMediaElement] has no audio.
///
///
///   Number of inputs
///   [0]
///
///
///   Number of outputs
///   [1]
///
///
///   Channel count
///    defined by the media in the [HTMLMediaElement] passed to the
/// [AudioContext.createMediaElementSource] method that created it.
///
///
///
@JS()
class MediaElementAudioSourceNode extends AudioNode {
  external factory MediaElementAudioSourceNode(
      {AudioContext context, MediaElementAudioSourceOptions options});

  ///  The [HTMLMediaElement] used when constructing this
  /// [MediaStreamAudioSourceNode].
  external HTMLMediaElement get mediaElement;
}

@anonymous
@JS()
class MediaElementAudioSourceOptions {
  external HTMLMediaElement get mediaElement;
  external set mediaElement(HTMLMediaElement newValue);

  external factory MediaElementAudioSourceOptions(
      {HTMLMediaElement mediaElement});
}

///
///  The interface represents an audio destination consisting of a
/// WebRTC [MediaStream] with a single [AudioMediaStreamTrack], which
/// can be used in a similar way to a [MediaStream] obtained from
/// [Navigator.getUserMedia()].
///
///  It is an [AudioNode] that acts as an audio destination, created
/// using the [AudioContext.createMediaStreamDestination()] method.
///
///
///
///   Number of inputs
///   [1]
///
///
///   Number of outputs
///   [0]
///
///
///   Channel count
///   [2]
///
///
///   Channel count mode
///   ["explicit"]
///
///
///   Channel count interpretation
///   ["speakers"]
///
///
///
@JS()
class MediaStreamAudioDestinationNode extends AudioNode {
  external factory MediaStreamAudioDestinationNode(
      {AudioContext context, AudioNodeOptions? options});

  ///  A [MediaStream] containing a single [MediaStreamTrack] whose
  /// [kind] is [audio] and with the same number of channels as the
  /// node. You can use this property to get a stream out of the audio
  /// graph and feed it into another construct, such as a Media
  /// Recorder.
  external MediaStream get stream;
}

///
///
///  The interface is a type of [AudioNode] which operates as an
/// audio source whose media is received from a [MediaStream]
/// obtained using the WebRTC or Media Capture and Streams APIs. This
/// media could be from a microphone (through [getUserMedia()]) or
/// from a remote peer on a WebRTC call (using the
/// [RTCPeerConnection]'s audio tracks).
///
///  A has no inputs and exactly one output, and is created using the
/// [AudioContext.createMediaStreamSource()] method.
///
///  The takes the audio from the first [MediaStreamTrack] whose
/// [kind] attribute's value is [audio]. See Track ordering for more
/// information about the order of tracks.
///
///  The number of channels output by the node matches the number of
/// tracks found in the selected audio track.
///
///
///   Number of inputs
///   [0]
///
///
///   Number of outputs
///   [1]
///
///
///   Channel count
///    defined by the first audio [MediaStreamTrack] passed to the
/// [AudioContext.createMediaStreamSource()] method that created it.
///
///
///
@JS()
class MediaStreamAudioSourceNode extends AudioNode {
  external factory MediaStreamAudioSourceNode(
      {AudioContext context, MediaStreamAudioSourceOptions options});

  ///  The [MediaStream] used when constructing this
  /// [MediaStreamAudioSourceNode].
  external MediaStream get mediaStream;
}

///
///
///  The [MediaStreamAudioSourceOptions] dictionary provides
/// configuration options used when creating a
/// [MediaStreamAudioSourceNode] using its constructor. It is not
/// needed when using the [AudioContext.createMediaStreamSource()]
/// method.
@anonymous
@JS()
class MediaStreamAudioSourceOptions {
  ///  A required property which specifies the [MediaStream] from which
  /// to obtain audio for the node.
  external MediaStream get mediaStream;
  external set mediaStream(MediaStream newValue);

  external factory MediaStreamAudioSourceOptions({MediaStream mediaStream});
}

///
///
///  The interface is a type of [AudioNode] which represents a source
/// of audio data taken from a specific [MediaStreamTrack] obtained
/// through the WebRTC or Media Capture and Streams APIs. The audio
/// itself might be input from a microphone or other audio sampling
/// device, or might be received through a [RTCPeerConnection], among
/// other posible options.
///
///  A has no inputs and exactly one output, and is created using the
/// [AudioContext.createMediaStreamTrackSource()] method. This
/// interface is similar to [MediaStreamAudioSourceNode], except it
/// lets you specifically state the track to use, rather than
/// assuming the first audio track on a stream.
///
///
///   Number of inputs
///   [0]
///
///
///   Number of outputs
///   [1]
///
///
///   Channel count
///    defined by the first audio [MediaStreamTrack] passed to the
/// [AudioContext.createMediaStreamTrackSource()] method that created
/// it.
///
///
///
@JS()
class MediaStreamTrackAudioSourceNode extends AudioNode {
  external factory MediaStreamTrackAudioSourceNode(
      {AudioContext context, MediaStreamTrackAudioSourceOptions options});
}

///
///
///  The [MediaStreamTrackAudioSourceOptions] dictionary is used when
/// specifying options to the [MediaStreamTrackAudioSourceNode()]
/// constructor. It isn't needed when using the
/// [AudioContext.createMediaStreamTrackSource()] method.
@anonymous
@JS()
class MediaStreamTrackAudioSourceOptions {
  ///  The [MediaStreamTrack] from which to take audio data for this
  /// node's output.
  external MediaStreamTrack get mediaStreamTrack;
  external set mediaStreamTrack(MediaStreamTrack newValue);

  external factory MediaStreamTrackAudioSourceOptions(
      {MediaStreamTrack mediaStreamTrack});
}

@JS()
enum OscillatorType { sine, square, sawtooth, triangle, custom }

///
///
///  The interface represents a periodic waveform, such as a sine
/// wave. It is an [AudioScheduledSourceNode] audio-processing module
/// that causes a specified frequency of a given wave to be
/// created—in effect, a constant tone.
///
///  An is created using the [BaseAudioContext.createOscillator()]
/// method. It always has exactly one output and no inputs. Its basic
/// property defaults (see [AudioNode] for definitions) are:
///
///
///   Number of inputs
///   [0]
///
///
///   Number of outputs
///   [1]
///
///
///   Channel count mode
///   [max]
///
///
///   Channel count
///   [2] (not used in the default count mode)
///
///
///   Channel interpretation
///   [speakers]
///
///
///
@JS()
class OscillatorNode extends AudioScheduledSourceNode {
  external factory OscillatorNode(
      {BaseAudioContext context, OscillatorOptions? options});

  ///  A string which specifies the shape of waveform to play; this can
  /// be one of a number of standard values, or [custom] to use a
  /// [PeriodicWave] to describe a custom waveform. Different waves
  /// will produce different tones. Standard values are ["sine"],
  /// ["square"], ["sawtooth"], ["triangle"] and ["custom"]. The
  /// default is ["sine"].
  external OscillatorType get type;
  external set type(OscillatorType newValue);

  ///  An a-rate [AudioParam] representing the frequency of oscillation
  /// in hertz (though the [AudioParam] returned is read-only, the
  /// value it represents is not). The default value is 440 Hz (a
  /// standard middle-A note).
  external AudioParam get frequency;

  ///  An a-rate [AudioParam] representing detuning of oscillation in
  /// cents (though the [AudioParam] returned is read-only, the value
  /// it represents is not). The default value is 0.
  external AudioParam get detune;

  ///  Sets a [PeriodicWave] which describes a periodic waveform to be
  /// used instead of one of the standard waveforms; calling this sets
  /// the [type] to [custom].
  /// OscillatorNode.setPeriodicWave(wave);
  /// The following example illustrates simple usage of createPeriodicWave(),
  ///  recreating a sine wave from a periodic wave.
  ///
  /// var real = new Float32Array(2);
  /// var imag = new Float32Array(2);
  /// var ac = new AudioContext();
  /// var osc = ac.createOscillator();
  ///
  /// real[0] = 0;
  /// imag[0] = 0;
  /// real[1] = 1;
  /// imag[1] = 0;
  ///
  /// var wave = ac.createPeriodicWave(real, imag);
  ///
  /// osc.setPeriodicWave(wave);
  ///
  /// osc.connect(ac.destination);
  ///
  /// osc.start();
  /// osc.stop(2);
  ///
  /// This works because a sound that contains only a fundamental tone is by definition a
  ///  sine wave.
  ///
  ///  Here, we create a PeriodicWave with two values. The first value is the DC
  ///  offset, which is the value at which the oscillator starts. 0 is good here, because we
  ///  want to start the curve at the middle of the [-1.0; 1.0] range.
  /// The second and subsequent values are sine and cosine components. You can think of it as
  ///  the result of a Fourier transform, where you get frequency domain values from time
  ///  domain value. Here, with createPeriodicWave(), you specify the frequencies,
  ///  and the browser performs a an inverse Fourier transform to get a time domain buffer for
  ///  the frequency of the oscillator. Here, we only set one component at full volume (1.0) on
  ///  the fundamental tone, so we get a sine wave.
  external Object setPeriodicWave(PeriodicWave periodicWave);
}

@anonymous
@JS()
class OscillatorOptions extends AudioNodeOptions {
  external OscillatorType get type;
  external set type(OscillatorType newValue);
  external double get frequency;
  external set frequency(double newValue);
  external double get detune;
  external set detune(double newValue);
  external PeriodicWave get periodicWave;
  external set periodicWave(PeriodicWave newValue);

  external factory OscillatorOptions(
      {OscillatorType type = OscillatorType.sine,
      double frequency = 440,
      double detune = 0,
      PeriodicWave periodicWave});
}

@JS()
enum PanningModelType {
  equalpower,
  @JS('HRTF')
  hrtf
}

@JS()
enum DistanceModelType { linear, inverse, exponential }

///
///  The interface represents the position and behavior of an audio
/// source signal in space. It is an [AudioNode] audio-processing
/// module describing its position with right-hand Cartesian
/// coordinates, its movement using a velocity vector and its
/// directionality using a directionality cone.
///  A always has exactly one input and one output: the input can be
/// mono or stereo but the output is always stereo (2 channels); you
/// can't have panning effects without at least two audio channels!
///
///
///
///
///   Number of inputs
///   [1]
///
///
///   Number of outputs
///   [1]
///
///
///   Channel count mode
///   ["clamped-max"]
///
///
///   Channel count
///   [2]
///
///
///   Channel interpretation
///   ["speakers"]
///
///
///
@JS()
class PannerNode extends AudioNode {
  external factory PannerNode(
      {BaseAudioContext context, PannerOptions? options});

  ///  An enumerated value determining which spatialisation algorithm
  /// to use to position the audio in 3D space.
  external PanningModelType get panningModel;
  external set panningModel(PanningModelType newValue);

  ///  Represents the horizontal position of the audio in a right-hand
  /// cartesian coordinate system. The default is 0. While this
  /// [AudioParam] cannot be directly changed, its value can be altered
  /// using its [value] property. The default is value is 0.
  external AudioParam get positionX;

  ///  Represents the vertical position of the audio in a right-hand
  /// cartesian coordinate system. The default is 0. While this
  /// [AudioParam] cannot be directly changed, its value can be altered
  /// using its [value] property. The default is value is 0.
  external AudioParam get positionY;

  ///  Represents the longitudinal (back and forth) position of the
  /// audio in a right-hand cartesian coordinate system. The default is
  /// 0. While this [AudioParam] cannot be directly changed, its value
  /// can be altered using its [value] property. The default is value
  /// is 0.
  external AudioParam get positionZ;

  ///  Represents the horizontal position of the audio source's vector
  /// in a right-hand cartesian coordinate system. While this
  /// [AudioParam] cannot be directly changed, its value can be altered
  /// using its [value] property. The default is value is 1.
  external AudioParam get orientationX;

  ///  Represents the vertical position of the audio source's vector in
  /// a right-hand cartesian coordinate system. The default is 0. While
  /// this [AudioParam] cannot be directly changed, its value can be
  /// altered using its [value] property. The default is value is 0.
  external AudioParam get orientationY;

  ///  Represents the longitudinal (back and forth) position of the
  /// audio source's vector in a right-hand cartesian coordinate
  /// system. The default is 0. While this [AudioParam] cannot be
  /// directly changed, its value can be altered using its [value]
  /// property. The default is value is 0.
  external AudioParam get orientationZ;

  ///  An enumerated value determining which algorithm to use to reduce
  /// the volume of the audio source as it moves away from the
  /// listener. Possible values are ["linear"], ["inverse"] and
  /// ["exponential"]. The default value is ["inverse"].
  external DistanceModelType get distanceModel;
  external set distanceModel(DistanceModelType newValue);

  ///  A double value representing the reference distance for reducing
  /// volume as the audio source moves further from the listener. For
  /// distances greater than this the volume will be reduced based on
  /// [rolloffFactor] and [distanceModel].
  external double get refDistance;
  external set refDistance(double newValue);

  ///  A double value representing the maximum distance between the
  /// audio source and the listener, after which the volume is not
  /// reduced any further.
  external double get maxDistance;
  external set maxDistance(double newValue);

  ///  A double value describing how quickly the volume is reduced as
  /// the source moves away from the listener. This value is used by
  /// all distance models.
  external double get rolloffFactor;
  external set rolloffFactor(double newValue);

  ///  Is a double value describing the angle, in degrees, of a cone
  /// inside of which there will be no volume reduction.
  external double get coneInnerAngle;
  external set coneInnerAngle(double newValue);

  ///  A double value describing the angle, in degrees, of a cone
  /// outside of which the volume will be reduced by a constant value,
  /// defined by the [coneOuterGain] attribute.
  external double get coneOuterAngle;
  external set coneOuterAngle(double newValue);

  ///  A double value describing the amount of volume reduction outside
  /// the cone defined by the [coneOuterAngle] attribute. Its default
  /// value is [0], meaning that no sound can be heard.
  external double get coneOuterGain;
  external set coneOuterGain(double newValue);

  ///  Defines the position of the audio source relative to the
  /// listener (represented by an [AudioListener] object stored in the
  /// [BaseAudioContext.listener] attribute.)
  /// var audioCtx = new AudioContext();
  /// var panner = audioCtx.createPanner();
  /// panner.setPosition(0,0,0);
  /// In the following example, you can see an example of how the createPanner()
  ///  method, AudioListener and PannerNode would be used to
  ///  control audio spatialisation. Generally you will define the position in 3D space that
  ///  your audio listener and panner (source) occupy initially, and then update the position
  ///  of one or both of these as the application is used. You might be moving a character
  ///  around inside a game world for example, and wanting delivery of audio to change
  ///  realistically as your character moves closer to or further away from a music player such
  ///  as a stereo. In the example you can see this being controlled by the functions
  ///  moveRight(), moveLeft(), etc., which set new values for the
  ///  panner position via the PositionPanner() function.To see a complete implementation, check out our panner-node example
  ///  (view the
  ///   source code) — this demo transports you to the 2.5D "Room of metal", where you can
  ///  play a track on a boom box and then walk around the boom box to see how the sound
  ///  changes!Note how we have used some feature detection to either give the browser the newer
  ///  property values (like AudioListener.forwardX) for setting position, etc.
  ///  if it supports those, or older methods (like
  ///  AudioListener.setOrientation()) if it still supports those but not the
  ///  new properties.// set up listener and panner position information
  /// var WIDTH = window.innerWidth;
  /// var HEIGHT = window.innerHeight;
  ///
  /// var xPos = Math.floor(WIDTH/2);
  /// var yPos = Math.floor(HEIGHT/2);
  /// var zPos = 295;
  ///
  /// // define other variables
  ///
  /// var AudioContext = window.AudioContext || window.webkitAudioContext;
  /// var audioCtx = new AudioContext();
  ///
  /// var panner = audioCtx.createPanner();
  /// panner.panningModel = 'HRTF';
  /// panner.distanceModel = 'inverse';
  /// panner.refDistance = 1;
  /// panner.maxDistance = 10000;
  /// panner.rolloffFactor = 1;
  /// panner.coneInnerAngle = 360;
  /// panner.coneOuterAngle = 0;
  /// panner.coneOuterGain = 0;
  ///
  /// if(panner.orientationX) {
  ///  panner.orientationX.setValueAtTime(1, audioCtx.currentTime);
  ///  panner.orientationY.setValueAtTime(0, audioCtx.currentTime);
  ///  panner.orientationZ.setValueAtTime(0, audioCtx.currentTime);
  /// } else {
  ///  panner.setOrientation(1,0,0);
  /// }
  ///
  /// var listener = audioCtx.listener;
  ///
  /// if(listener.forwardX) {
  ///  listener.forwardX.setValueAtTime(0, audioCtx.currentTime);
  ///  listener.forwardY.setValueAtTime(0, audioCtx.currentTime);
  ///  listener.forwardZ.setValueAtTime(-1, audioCtx.currentTime);
  ///  listener.upX.setValueAtTime(0, audioCtx.currentTime);
  ///  listener.upY.setValueAtTime(1, audioCtx.currentTime);
  ///  listener.upZ.setValueAtTime(0, audioCtx.currentTime);
  /// } else {
  ///  listener.setOrientation(0,0,-1,0,1,0);
  /// }
  ///
  /// var source;
  ///
  /// var play = document.querySelector('.play');
  /// var stop = document.querySelector('.stop');
  ///
  /// var boomBox = document.querySelector('.boom-box');
  ///
  /// var listenerData = document.querySelector('.listener-data');
  /// var pannerData = document.querySelector('.panner-data');
  ///
  /// leftBound = (-xPos) + 50;
  /// rightBound = xPos - 50;
  ///
  /// xIterator = WIDTH/150;
  ///
  /// // listener will always be in the same place for this demo
  ///
  /// if(listener.positionX) {
  ///  listener.positionX.setValueAtTime(xPos, audioCtx.currentTime);
  ///  listener.positionY.setValueAtTime(yPos, audioCtx.currentTime);
  ///  listener.positionZ.setValueAtTime(300, audioCtx.currentTime);
  /// } else {
  ///  listener.setPosition(xPos,yPos,300);
  /// }
  ///
  /// listenerData.textContent = `Listener data: X ${xPos} Y ${yPos} Z 300`;
  ///
  /// // panner will move as the boombox graphic moves around on the screen
  /// function positionPanner() {
  ///  if(panner.positionX) {
  ///   panner.positionX.setValueAtTime(xPos, audioCtx.currentTime);
  ///   panner.positionY.setValueAtTime(yPos, audioCtx.currentTime);
  ///   panner.positionZ.setValueAtTime(zPos, audioCtx.currentTime);
  ///  } else {
  ///   panner.setPosition(xPos,yPos,zPos);
  ///  }
  ///  pannerData.textContent = `Panner data: X ${xPos} Y ${yPos} Z ${zPos}`;
  /// }
  ///  Note
  ///  In terms of working out what position values to apply to the
  ///   listener and panner, to make the sound appropriate to what the visuals are doing on
  ///   screen, there is quite a bit of math involved, but you will soon get used to it with a
  ///   bit of experimentation.
  ///
  @deprecated
  external Object setPosition(double x, double y, double z);

  /// Defines the direction the audio source is playing in.
  /// var audioCtx = new AudioContext();
  /// var panner = audioCtx.createPanner();
  /// panner.setOrientation(1,0,0);
  /// In the following example, you can see an example of how the createPanner()
  ///  method, AudioListener and PannerNode would be used to
  ///  control audio spatialisation. Generally you will define the position in 3D space that
  ///  your audio listener and panner (source) occupy initially, and then update the position
  ///  of one or both of these as the application is used. You might be moving a character
  ///  around inside a game world for example, and wanting delivery of audio to change
  ///  realistically as your character moves closer to or further away from a music player such
  ///  as a stereo. In the example you can see this being controlled by the functions
  ///  moveRight(), moveLeft(), etc., which set new values for the
  ///  panner position via the PositionPanner() function.To see a complete implementation, check out our panner-node example
  ///  (view the
  ///   source code) — this demo transports you to the 2.5D "Room of metal", where you can
  ///  play a track on a boom box and then walk around the boom box to see how the sound
  ///  changes!Note how we have used some feature detection to either give the browser the newer
  ///  property values (like AudioListener.forwardX) for setting position, etc.
  ///  if it supports those, or older methods (like
  ///  AudioListener.setOrientation()) if it still supports those but not the
  ///  new properties.// set up listener and panner position information
  /// var WIDTH = window.innerWidth;
  /// var HEIGHT = window.innerHeight;
  ///
  /// var xPos = Math.floor(WIDTH/2);
  /// var yPos = Math.floor(HEIGHT/2);
  /// var zPos = 295;
  ///
  /// // define other variables
  ///
  /// var AudioContext = window.AudioContext || window.webkitAudioContext;
  /// var audioCtx = new AudioContext();
  ///
  /// var panner = audioCtx.createPanner();
  /// panner.panningModel = 'HRTF';
  /// panner.distanceModel = 'inverse';
  /// panner.refDistance = 1;
  /// panner.maxDistance = 10000;
  /// panner.rolloffFactor = 1;
  /// panner.coneInnerAngle = 360;
  /// panner.coneOuterAngle = 0;
  /// panner.coneOuterGain = 0;
  ///
  /// if(panner.orientationX) {
  ///  panner.orientationX.setValueAtTime(1, audioCtx.currentTime);
  ///  panner.orientationY.setValueAtTime(0, audioCtx.currentTime);
  ///  panner.orientationZ.setValueAtTime(0, audioCtx.currentTime);
  /// } else {
  ///  panner.setOrientation(1,0,0);
  /// }
  ///
  /// var listener = audioCtx.listener;
  ///
  /// if(listener.forwardX) {
  ///  listener.forwardX.setValueAtTime(0, audioCtx.currentTime);
  ///  listener.forwardY.setValueAtTime(0, audioCtx.currentTime);
  ///  listener.forwardZ.setValueAtTime(-1, audioCtx.currentTime);
  ///  listener.upX.setValueAtTime(0, audioCtx.currentTime);
  ///  listener.upY.setValueAtTime(1, audioCtx.currentTime);
  ///  listener.upZ.setValueAtTime(0, audioCtx.currentTime);
  /// } else {
  ///  listener.setOrientation(0,0,-1,0,1,0);
  /// }
  ///
  /// var source;
  ///
  /// var play = document.querySelector('.play');
  /// var stop = document.querySelector('.stop');
  ///
  /// var boomBox = document.querySelector('.boom-box');
  ///
  /// var listenerData = document.querySelector('.listener-data');
  /// var pannerData = document.querySelector('.panner-data');
  ///
  /// leftBound = (-xPos) + 50;
  /// rightBound = xPos - 50;
  ///
  /// xIterator = WIDTH/150;
  ///
  /// // listener will always be in the same place for this demo
  ///
  /// if(listener.positionX) {
  ///  listener.positionX.setValueAtTime(xPos, audioCtx.currentTime);
  ///  listener.positionY.setValueAtTime(yPos, audioCtx.currentTime);
  ///  listener.positionZ.setValueAtTime(300, audioCtx.currentTime);
  /// } else {
  ///  listener.setPosition(xPos,yPos,300);
  /// }
  ///
  /// listenerData.textContent = `Listener data: X ${xPos} Y ${yPos} Z 300`;
  ///
  /// // panner will move as the boombox graphic moves around on the screen
  /// function positionPanner() {
  ///  if(panner.positionX) {
  ///   panner.positionX.setValueAtTime(xPos, audioCtx.currentTime);
  ///   panner.positionY.setValueAtTime(yPos, audioCtx.currentTime);
  ///   panner.positionZ.setValueAtTime(zPos, audioCtx.currentTime);
  ///  } else {
  ///   panner.setPosition(xPos,yPos,zPos);
  ///  }
  ///  pannerData.textContent = `Panner data: X ${xPos} Y ${yPos} Z ${zPos}`;
  /// }
  ///  Note
  ///  In terms of working out what position values to apply to the
  ///   listener and panner, to make the sound appropriate to what the visuals are doing on
  ///   screen, there is quite a bit of math involved, but you will soon get used to it with a
  ///   bit of experimentation.
  ///
  @deprecated
  external Object setOrientation(double x, double y, double z);
}

@anonymous
@JS()
class PannerOptions extends AudioNodeOptions {
  external PanningModelType get panningModel;
  external set panningModel(PanningModelType newValue);
  external DistanceModelType get distanceModel;
  external set distanceModel(DistanceModelType newValue);
  external double get positionX;
  external set positionX(double newValue);
  external double get positionY;
  external set positionY(double newValue);
  external double get positionZ;
  external set positionZ(double newValue);
  external double get orientationX;
  external set orientationX(double newValue);
  external double get orientationY;
  external set orientationY(double newValue);
  external double get orientationZ;
  external set orientationZ(double newValue);
  external double get refDistance;
  external set refDistance(double newValue);
  external double get maxDistance;
  external set maxDistance(double newValue);
  external double get rolloffFactor;
  external set rolloffFactor(double newValue);
  external double get coneInnerAngle;
  external set coneInnerAngle(double newValue);
  external double get coneOuterAngle;
  external set coneOuterAngle(double newValue);
  external double get coneOuterGain;
  external set coneOuterGain(double newValue);

  external factory PannerOptions(
      {PanningModelType panningModel = PanningModelType.equalpower,
      DistanceModelType distanceModel = DistanceModelType.inverse,
      double positionX = 0,
      double positionY = 0,
      double positionZ = 0,
      double orientationX = 1,
      double orientationY = 0,
      double orientationZ = 0,
      double refDistance = 1,
      double maxDistance = 10000,
      double rolloffFactor = 1,
      double coneInnerAngle = 360,
      double coneOuterAngle = 360,
      double coneOuterGain = 0});
}

///
///  The interface defines a periodic waveform that can be used to
/// shape the output of an [OscillatorNode].
///   has no inputs or outputs; it is used to define custom
/// oscillators when calling [OscillatorNode.setPeriodicWave()]. The
/// itself is created/returned by
/// [BaseAudioContext.createPeriodicWave].
@JS()
class PeriodicWave {
  external factory PeriodicWave(
      {BaseAudioContext context, PeriodicWaveOptions? options});
}

@anonymous
@JS()
class PeriodicWaveConstraints {
  external bool get disableNormalization;
  external set disableNormalization(bool newValue);

  external factory PeriodicWaveConstraints({bool disableNormalization = false});
}

@anonymous
@JS()
class PeriodicWaveOptions extends PeriodicWaveConstraints {
  external Iterable<double> get real;
  external set real(Iterable<double> newValue);
  external Iterable<double> get imag;
  external set imag(Iterable<double> newValue);

  external factory PeriodicWaveOptions(
      {Iterable<double> real, Iterable<double> imag});
}

///
///       Deprecated
///        This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///
///  The interface allows the generation, processing, or analyzing of
/// audio using JavaScript.
///  Note: As of the August 29 2014 Web Audio API spec publication,
/// this feature has been marked as deprecated, and was replaced by
/// AudioWorklet (see [AudioWorkletNode]).
///  The interface is an [AudioNode] audio-processing module that is
/// linked to two buffers, one containing the input audio data, one
/// containing the processed output audio data. An event,
/// implementing the [AudioProcessingEvent] interface, is sent to the
/// object each time the input buffer contains new data, and the
/// event handler terminates when it has filled the output buffer
/// with data.
///
///  The size of the input and output buffer are defined at the
/// creation time, when the [BaseAudioContext.createScriptProcessor]
/// method is called (both are defined by
/// [BaseAudioContext.createScriptProcessor]'s [bufferSize]
/// parameter). The buffer size must be a power of 2 between [256]
/// and [16384], that is [256], [512], [1024], [2048], [4096], [8192]
/// or [16384]. Small numbers lower the latency, but large number may
/// be necessary to avoid audio breakup and glitches.
///
///  If the buffer size is not defined, which is recommended, the
/// browser will pick one that its heuristic deems appropriate.
///
///
///   Number of inputs
///   [1]
///
///
///   Number of outputs
///   [1]
///
///
///   Channel count mode
///   ["max"]
///
///
///   Channel count
///   [2] (not used in the default count mode)
///
///
///   Channel interpretation
///   ["speakers"]
///
///
///
@deprecated
@JS()
class ScriptProcessorNode extends AudioNode {
  external EventHandlerNonNull? get onaudioprocess;
  external set onaudioprocess(EventHandlerNonNull? newValue);

  ///  Returns an integer representing both the input and output buffer
  /// size. Its value can be a power of 2 value in the range
  /// [256]–[16384].
  external int get bufferSize;

  external factory ScriptProcessorNode();
}

///
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
///   Number of inputs
///   [1]
///
///
///   Number of outputs
///   [1]
///
///
///   Channel count mode
///   ["clamped-max"]
///
///
///   Channel count
///   [2]
///
///
///   Channel interpretation
///   ["speakers"]
///
///
///
@JS()
class StereoPannerNode extends AudioNode {
  external factory StereoPannerNode(
      {BaseAudioContext context, StereoPannerOptions? options});

  ///  Is an a-rate [AudioParam] representing the amount of panning to
  /// apply.
  external AudioParam get pan;
}

@anonymous
@JS()
class StereoPannerOptions extends AudioNodeOptions {
  external double get pan;
  external set pan(double newValue);

  external factory StereoPannerOptions({double pan = 0});
}

@JS()
enum OverSampleType {
  none,
  @JS('2x')
  value2x,
  @JS('4x')
  value4x
}

///
///
///  The interface represents a non-linear distorter. It is an
/// [AudioNode] that uses a curve to apply a wave shaping distortion
/// to the signal. Beside obvious distortion effects, it is often
/// used to add a warm feeling to the signal.
///
/// A always has exactly one input and one output.
///
///
///   Number of inputs
///   [1]
///
///
///   Number of outputs
///   [1]
///
///
///   Channel count mode
///   ["max"]
///
///
///   Channel count
///   [2] (not used in the default count mode)
///
///
///   Channel interpretation
///   ["speakers"]
///
///
///
@JS()
class WaveShaperNode extends AudioNode {
  external factory WaveShaperNode(
      {BaseAudioContext context, WaveShaperOptions? options});

  ///  Is a [Float32Array] of numbers describing the distortion to
  /// apply.
  external Float32List? get curve;
  external set curve(Float32List? newValue);

  ///  Is an enumerated value indicating if oversampling must be used.
  /// Oversampling is a technique for creating more samples
  /// (up-sampling) before applying the distortion effect to the audio
  /// signal.
  external OverSampleType get oversample;
  external set oversample(OverSampleType newValue);
}

@anonymous
@JS()
class WaveShaperOptions extends AudioNodeOptions {
  external Iterable<double> get curve;
  external set curve(Iterable<double> newValue);
  external OverSampleType get oversample;
  external set oversample(OverSampleType newValue);

  external factory WaveShaperOptions(
      {Iterable<double> curve,
      OverSampleType oversample = OverSampleType.none});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the Web Audio API is used to supply custom
/// audio processing scripts that execute in a separate thread to
/// provide very low latency audio processing. The worklet's code is
/// run in the [AudioWorkletGlobalScope] global execution context,
/// using a separate Web Audio thread which is shared by the worklet
/// and other audio nodes.
///
///  Access the audio context's instance of through the
/// [BaseAudioContext.audioWorklet] property.
@JS()
class AudioWorklet extends Worklet {
  external factory AudioWorklet();
}

///
///
///  The interface of the Web Audio API represents a global execution
/// context for user-supplied code, which defines custom
/// [AudioWorkletProcessor]-derived classes. Each [BaseAudioContext]
/// has a single [AudioWorklet] available under the [audioWorklet]
/// property, which runs its code in a single .
///
///  As the global execution context is shared across the current
/// [BaseAudioContext], it's possible to define any other variables
/// and perform any actions allowed in worklets — apart from defining
/// [AudioWorkletProcessor]-derived classes.
@JS()
class AudioWorkletGlobalScope extends WorkletGlobalScope {
  ///  Registers a class derived from the [AudioWorkletProcessor]
  /// interface. The class can then be used by creating an
  /// [AudioWorkletNode], providing its registered name.
  /// AudioWorkletGlobalScope.registerProcessor(name, processorCtor);
  ///
  external Object registerProcessor(
      String name, AudioWorkletProcessorConstructor processorCtor);

  ///  Returns an integer that represents the ever-increasing current
  /// sample-frame of the audio block being processed. It is
  /// incremented by 128 (the size of a render quantum) after the
  /// processing of each audio block.
  external int get currentFrame;

  ///  Returns a double that represents the ever-increasing context
  /// time of the audio block being processed. It is equal to the
  /// property of the [BaseAudioContext] the worklet belongs to.
  external double get currentTime;

  ///  Returns a float that represents the sample rate of the
  /// associated [BaseAudioContext].
  external double get sampleRate;

  external factory AudioWorkletGlobalScope();
}

///
///   Draft
///   This page is not complete.
///
///  The Web Audio API interface [AudioParamMap] represents a set of
/// multiple audio parameters, each described as a mapping of a
/// [DOMString] identifying the parameter to the [AudioParam] object
/// representing its value.
@experimental
@JS()
class AudioParamMap {
  external AudioParam operator [](String index);

  external factory AudioParamMap();
}

///
///
///  Although the interface is available outside secure contexts, the
/// [BaseAudioContext.audioWorklet] property is not, thus custom
/// [AudioWorkletProcessor]s cannot be defined outside them.
///
///  The interface of the Web Audio API represents a base class for a
/// user-defined [AudioNode], which can be connected to an audio
/// routing graph along with other nodes. It has an associated
/// [AudioWorkletProcessor], which does the actual audio processing
/// in a Web Audio rendering thread.
@experimental
@JS()
class AudioWorkletNode extends AudioNode {
  external factory AudioWorkletNode(
      {BaseAudioContext context,
      String name,
      AudioWorkletNodeOptions? options});

  ///  Returns an [AudioParamMap] — a collection of [AudioParam]
  /// objects. They are instantiated during the creation of the
  /// underlying [AudioWorkletProcessor]. If the
  /// [AudioWorkletProcessor] has a static [parameterDescriptors]
  /// getter, the [AudioParamDescriptor] array returned from it is used
  /// to create [AudioParam] objects on the [AudioWorkletNode]. With
  /// this mechanism it is possible to make your own [AudioParam]
  /// objects accessible from your [AudioWorkletNode]. You can then use
  /// their values in the associated [AudioWorkletProcessor].
  external AudioParamMap get parameters;

  ///  Returns a [MessagePort] used for bidirectional communication
  /// between the node and its associated [AudioWorkletProcessor]. The
  /// other end is available under the property of the processor.
  external MessagePort get port;
  external EventHandlerNonNull? get onprocessorerror;
  external set onprocessorerror(EventHandlerNonNull? newValue);
}

///
///
///  The [AudioWorkletNodeOptions] dictionary of the Web Audio API is
/// used to specify configuration options when constructing a new
/// [AudioWorkletNode] object for custom audio processing. It is only
/// used when calling the [AudioWorkletNode()] constructor. During
/// internal instantiation of the underlying [AudioWorkletProcessor],
/// the structured clone algorithm is applied to the options object
/// and the result is passed into [AudioWorkletProcessor]'s
/// constructor.
@anonymous
@JS()
class AudioWorkletNodeOptions extends AudioNodeOptions {
  /// The value to initialize the property to. Defaults to 1.
  external int get numberOfInputs;
  external set numberOfInputs(int newValue);

  /// The value to initialize the property to. Defaults to 1.
  external int get numberOfOutputs;
  external set numberOfOutputs(int newValue);

  ///  An array defining the number of channels for each output. For
  /// example, outputChannelCount: [n, m] specifies the number of
  /// channels in the first output to be n and the second output to be
  /// m. The array length must match [numberOfOutputs].
  external Iterable<int> get outputChannelCount;
  external set outputChannelCount(Iterable<int> newValue);

  ///  An object containing the initial values of custom [AudioParam]
  /// objects on this node (in its [parameters] property), with [key]
  /// being the name of a custom parameter and [value] being its
  /// initial value.
  external dynamic get parameterData;
  external set parameterData(dynamic newValue);

  ///  Any additional data that can be used for custom initialization
  /// of the underlying [AudioWorkletProcessor].
  external dynamic get processorOptions;
  external set processorOptions(dynamic newValue);

  external factory AudioWorkletNodeOptions(
      {int numberOfInputs = 1,
      int numberOfOutputs = 1,
      Iterable<int> outputChannelCount,
      dynamic parameterData,
      dynamic processorOptions});
}

///
///
///  The interface of the Web Audio API represents an audio
/// processing code behind a custom [AudioWorkletNode]. It lives in
/// the [AudioWorkletGlobalScope] and runs on the Web Audio rendering
/// thread. In turn, an [AudioWorkletNode] based on it runs on the
/// main thread.
@JS()
class AudioWorkletProcessor {
  external factory AudioWorkletProcessor();

  ///  Returns a [MessagePort] used for bidirectional communication
  /// between the processor and the [AudioWorkletNode] which it belongs
  /// to. The other end is available under the property of the node.
  external MessagePort get port;
}

///
///
///  The [AudioParamDescriptor] dictionary of the Web Audio API
/// specifies properties for [AudioParam] objects. It is used to
/// create custom [AudioParam]s on an [AudioWorkletNode]. If the
/// underlying [AudioWorkletProcessor] has a [parameterDescriptors]
/// static getter, then the returned array of objects based on this
/// dictionary is used internally by [AudioWorkletNode] constructor
/// to populate its [parameters] property accordingly.
///
///
@anonymous
@JS()
class AudioParamDescriptor {
  ///  The [DOMString] which represents the name of the [AudioParam].
  /// Under this name the [AudioParam] will be available in the
  /// [parameters] property of the node, and under this name the
  /// [AudioWorkletProcessor.process] method will acquire the
  /// calculated values of this [AudioParam].
  external String get name;
  external set name(String newValue);

  ///  A [float] which represents initial value of the [AudioParam].
  /// Defaults to [0].
  external double get defaultValue;
  external set defaultValue(double newValue);

  ///  A [float] which represents minimum value of the [AudioParam].
  /// Defaults to [-3.4028235e38].
  external double get minValue;
  external set minValue(double newValue);

  ///  A [float] which represents maximum value of the [AudioParam].
  /// Defaults to [3.4028235e38].
  external double get maxValue;
  external set maxValue(double newValue);

  ///  Either ["a-rate"], or ["k-rate"] string which represents an
  /// automation rate of this [AudioParam]. Defaults to ["a-rate"].
  external AutomationRate get automationRate;
  external set automationRate(AutomationRate newValue);

  external factory AudioParamDescriptor(
      {String name,
      double defaultValue = 0,
      double minValue = -3.4028235e38,
      double maxValue = 3.4028235e38,
      AutomationRate automationRate = AutomationRate.aRate});
}
