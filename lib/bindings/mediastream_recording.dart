/// MediaStream Recording
///
/// https://w3c.github.io/mediacapture-record/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library mediastream_recording;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the MediaStream Recording API provides
/// functionality to easily record media. It is created using the
/// [MediaRecorder()] constructor.
///
///
///
///    EventTarget
///
///
///
///
///
///    MediaRecorder
///
///
@JS()
@staticInterop
class MediaRecorder implements EventTarget {
  external factory MediaRecorder(MediaStream stream,
      [MediaRecorderOptions? options]);
}

extension PropsMediaRecorder on MediaRecorder {
  MediaStream get stream => js_util.getProperty(this, 'stream');
  String get mimeType => js_util.getProperty(this, 'mimeType');
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

  int get videoBitsPerSecond => js_util.getProperty(this, 'videoBitsPerSecond');
  int get audioBitsPerSecond => js_util.getProperty(this, 'audioBitsPerSecond');
  BitrateMode get audioBitrateMode =>
      BitrateMode.values.byName(js_util.getProperty(this, 'audioBitrateMode'));
  void start([int? timeslice]) =>
      js_util.callMethod(this, 'start', [timeslice]);

  void stop() => js_util.callMethod(this, 'stop', []);

  void pause() => js_util.callMethod(this, 'pause', []);

  void resume() => js_util.callMethod(this, 'resume', []);

  void requestData() => js_util.callMethod(this, 'requestData', []);

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
///
///
///
///    Event
///
///
///
///
///
///    BlobEvent
///
///
@JS()
@staticInterop
class BlobEvent implements Event {
  external factory BlobEvent(String type, BlobEventInit eventInitDict);
}

extension PropsBlobEvent on BlobEvent {
  Blob get data => js_util.getProperty(this, 'data');
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
