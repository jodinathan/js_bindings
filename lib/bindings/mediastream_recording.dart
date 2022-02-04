/// MediaStream Recording
///
/// https://w3c.github.io/mediacapture-record/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library mediastream_recording;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the MediaStream Recording API provides
/// functionality to easily record media. It is created using the
/// [MediaRecorder()] constructor.
@JS()
@staticInterop
class MediaRecorder implements EventTarget {
  external MediaRecorder(MediaStream stream, [MediaRecorderOptions? options]);
}

extension PropsMediaRecorder on MediaRecorder {
  ///  Returns the stream that was passed into the constructor when the
  /// [MediaRecorder] was created.
  ///
  MediaStream get stream => js_util.getProperty(this, 'stream');

  ///  Returns the MIME type that was selected as the recording
  /// container for the [MediaRecorder] object when it was created.
  ///
  String get mimeType => js_util.getProperty(this, 'mimeType');

  ///  Returns the current state of the [MediaRecorder] object
  /// ([inactive], [recording], or [paused].)
  ///
  RecordingState get state =>
      RecordingState.values.byName(js_util.getProperty(this, 'state'));
  EventHandlerNonNull? get onstart => js_util.getProperty(this, 'onstart');
  set onstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstart', newValue);
  }

  EventHandlerNonNull? get onstop => js_util.getProperty(this, 'onstop');
  set onstop(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstop', newValue);
  }

  EventHandlerNonNull? get ondataavailable =>
      js_util.getProperty(this, 'ondataavailable');
  set ondataavailable(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondataavailable', newValue);
  }

  EventHandlerNonNull? get onpause => js_util.getProperty(this, 'onpause');
  set onpause(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpause', newValue);
  }

  EventHandlerNonNull? get onresume => js_util.getProperty(this, 'onresume');
  set onresume(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onresume', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  ///  Returns the video encoding bit rate in use. This may differ from
  /// the bit rate specified in the constructor (if it was provided).
  ///
  @experimental
  int get videoBitsPerSecond => js_util.getProperty(this, 'videoBitsPerSecond');

  ///  Returns the audio encoding bit rate in use. This may differ from
  /// the bit rate specified in the constructor (if it was provided).
  ///
  @experimental
  int get audioBitsPerSecond => js_util.getProperty(this, 'audioBitsPerSecond');
  BitrateMode get audioBitrateMode =>
      BitrateMode.values.byName(js_util.getProperty(this, 'audioBitrateMode'));

  ///  Begins recording media; this method can optionally be passed a
  /// [timeslice] argument with a value in milliseconds. If this is
  /// specified, the media will be captured in separate chunks of that
  /// duration, rather than the default behavior of recording the media
  /// in a single large chunk.
  ///
  /// mediaRecorder.start(timeslice)
  ///
  /// ...
  ///
  ///  record.onclick = function() {
  ///   mediaRecorder.start();
  ///   console.log("recorder started");
  ///  }
  ///
  /// ...
  ///
  Object start(
          [

          ///
          ///     The number of milliseconds to record into each [Blob]. If
          /// this
          ///     parameter isn't included, the entire media duration is
          /// recorded into a single
          ///    [Blob] unless the [requestData()]
          ///     method is called to obtain the [Blob] and trigger the
          /// creation of a new
          ///    [Blob] into which the media continues to be recorded.
          ///
          ///
          int? timeslice]) =>
      js_util.callMethod(this, 'start', [timeslice]);

  ///  Stops recording, at which point a [dataavailable] event
  /// containing the final [Blob] of saved data is fired. No more
  /// recording occurs.
  ///
  /// MediaRecorder.stop()
  ///
  /// ...
  ///
  ///  stop.onclick = function() {
  ///   mediaRecorder.stop();
  ///   console.log("recorder stopped, data available");
  ///  }
  ///
  /// ...
  ///
  Object stop() => js_util.callMethod(this, 'stop', []);

  /// Pauses the recording of media.
  ///
  /// MediaRecorder.pause()
  ///
  /// ...
  ///
  ///  pause.onclick = function() {
  ///    mediaRecorder.pause();
  ///    console.log("recording paused");
  ///  }
  ///
  /// ...
  ///
  Object pause() => js_util.callMethod(this, 'pause', []);

  /// Resumes recording of media after having been paused.
  ///
  /// MediaRecorder.resume()
  ///
  /// ...
  ///
  ///  pause.onclick = function() {
  ///   if(MediaRecorder.state === "recording") {
  ///    mediaRecorder.pause();
  ///    // recording paused
  ///   } else if(MediaRecorder.state === "paused") {
  ///    mediaRecorder.resume();
  ///    // resume recording
  ///   }
  ///  }
  ///
  /// ...
  ///
  Object resume() => js_util.callMethod(this, 'resume', []);

  ///  Requests a [Blob] containing the saved data received thus far
  /// (or since the last time [requestData()] was called. After calling
  /// this method, recording continues, but in a new [Blob].
  ///
  /// MediaRecorder.requestData()
  ///
  /// ...
  ///
  ///  captureMedia.onclick = function() {
  ///   mediaRecorder.requestData();
  ///   // makes snapshot available of data so far
  ///   // ondataavailable fires, then capturing continues
  ///   // in new Blob
  ///  }
  ///
  /// ...
  ///
  Object requestData() => js_util.callMethod(this, 'requestData', []);

  static bool isTypeSupported(String type) =>
      js_util.callMethod(MediaRecorder, 'isTypeSupported', [type]);
}

@anonymous
@JS()
@staticInterop
class MediaRecorderOptions {
  external factory MediaRecorderOptions._(
      {String? mimeType = '',
      int? audioBitsPerSecond,
      int? videoBitsPerSecond,
      int? bitsPerSecond,
      String? audioBitrateMode});

  factory MediaRecorderOptions(
          {String? mimeType = '',
          int? audioBitsPerSecond,
          int? videoBitsPerSecond,
          int? bitsPerSecond,
          BitrateMode? audioBitrateMode = BitrateMode.variable}) =>
      MediaRecorderOptions._(
          mimeType: mimeType,
          audioBitsPerSecond: audioBitsPerSecond,
          videoBitsPerSecond: videoBitsPerSecond,
          bitsPerSecond: bitsPerSecond,
          audioBitrateMode: audioBitrateMode?.name);
}

extension PropsMediaRecorderOptions on MediaRecorderOptions {
  String get mimeType => js_util.getProperty(this, 'mimeType');
  set mimeType(String newValue) {
    js_util.setProperty(this, 'mimeType', newValue);
  }

  int get audioBitsPerSecond => js_util.getProperty(this, 'audioBitsPerSecond');
  set audioBitsPerSecond(int newValue) {
    js_util.setProperty(this, 'audioBitsPerSecond', newValue);
  }

  int get videoBitsPerSecond => js_util.getProperty(this, 'videoBitsPerSecond');
  set videoBitsPerSecond(int newValue) {
    js_util.setProperty(this, 'videoBitsPerSecond', newValue);
  }

  int get bitsPerSecond => js_util.getProperty(this, 'bitsPerSecond');
  set bitsPerSecond(int newValue) {
    js_util.setProperty(this, 'bitsPerSecond', newValue);
  }

  BitrateMode get audioBitrateMode =>
      BitrateMode.values.byName(js_util.getProperty(this, 'audioBitrateMode'));
  set audioBitrateMode(BitrateMode newValue) {
    js_util.setProperty(this, 'audioBitrateMode', newValue.name);
  }
}

enum BitrateMode { constant, variable }

enum RecordingState { inactive, recording, paused }

///  The interface represents events associated with a [Blob]. These
/// blobs are typically, but not necessarily, associated with media
/// content.
@JS()
@staticInterop
class BlobEvent implements Event {
  external BlobEvent(String type, BlobEventInit eventInitDict);
}

extension PropsBlobEvent on BlobEvent {
  ///  A [Blob] representing the data associated with the event. The
  /// event was fired on the [EventTarget] because of something
  /// happening on that specific [Blob].
  ///
  Blob get data => js_util.getProperty(this, 'data');

  ///  A [double] indicating the difference between the timestamp of
  /// the first chunk in data and the timestamp of the first chunk in
  /// the first BlobEvent produced by this recorder. Note that the
  /// timecode in the first produced BlobEvent does not need to be
  /// zero.
  ///
  double get timecode => js_util.getProperty(this, 'timecode');
}

@anonymous
@JS()
@staticInterop
class BlobEventInit {
  external factory BlobEventInit(
      {required Blob data, required double timecode});
}

extension PropsBlobEventInit on BlobEventInit {
  Blob get data => js_util.getProperty(this, 'data');
  set data(Blob newValue) {
    js_util.setProperty(this, 'data', newValue);
  }

  double get timecode => js_util.getProperty(this, 'timecode');
  set timecode(double newValue) {
    js_util.setProperty(this, 'timecode', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MediaRecorderErrorEventInit implements EventInit {
  external factory MediaRecorderErrorEventInit({required Exception error});
}

extension PropsMediaRecorderErrorEventInit on MediaRecorderErrorEventInit {
  Exception get error => js_util.getProperty(this, 'error');
  set error(Exception newValue) {
    js_util.setProperty(this, 'error', newValue);
  }
}

///  The interface represents errors returned by the MediaStream
/// Recording API. It is an [Event] object that encapsulates a
/// reference to a [Exception] describing the error that occurred.
@JS()
@staticInterop
class MediaRecorderErrorEvent implements Event {
  external MediaRecorderErrorEvent(
      String type, MediaRecorderErrorEventInit eventInitDict);
}

extension PropsMediaRecorderErrorEvent on MediaRecorderErrorEvent {
  ///  A [Exception] containing information about the error that
  /// occurred. Read only.
  ///
  Exception get error => js_util.getProperty(this, 'error');
}
