/// Media Source Extensions™
///
/// https://w3c.github.io/media-source/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library media_source_2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

enum ReadyState {
  closed('closed'),
  open('open'),
  ended('ended');

  final String value;
  static ReadyState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ReadyState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ReadyState(this.value);
}

enum EndOfStreamError {
  network('network'),
  decode('decode');

  final String value;
  static EndOfStreamError fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<EndOfStreamError> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const EndOfStreamError(this.value);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Media Source Extensions API represents a
/// source of media data for an [HTMLMediaElement] object. A object
/// can be attached to a [HTMLMediaElement] to be played in the user
/// agent.
///
///
///
///    EventTarget
///
///
///
///
///
///    MediaSource
///
///
@experimental
@JS()
@staticInterop
class MediaSource implements EventTarget {
  external static bool isTypeSupported(String type);
  external factory MediaSource();
}

extension PropsMediaSource on MediaSource {
  MediaSourceHandle get handle => js_util.getProperty(this, 'handle');
  SourceBufferList get sourceBuffers =>
      js_util.getProperty(this, 'sourceBuffers');
  SourceBufferList get activeSourceBuffers =>
      js_util.getProperty(this, 'activeSourceBuffers');
  ReadyState get readyState =>
      ReadyState.fromValue(js_util.getProperty(this, 'readyState'));
/* double | NaN */ dynamic get duration =>
      js_util.getProperty(this, 'duration');
  set duration(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'duration', newValue);
  }

  EventHandlerNonNull? get onsourceopen =>
      js_util.getProperty(this, 'onsourceopen');
  set onsourceopen(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsourceopen', newValue);
  }

  EventHandlerNonNull? get onsourceended =>
      js_util.getProperty(this, 'onsourceended');
  set onsourceended(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsourceended', newValue);
  }

  EventHandlerNonNull? get onsourceclose =>
      js_util.getProperty(this, 'onsourceclose');
  set onsourceclose(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsourceclose', newValue);
  }

  external static bool get canConstructInDedicatedWorker;

  SourceBuffer addSourceBuffer(String type) =>
      js_util.callMethod(this, 'addSourceBuffer', [type]);

  void removeSourceBuffer(SourceBuffer sourceBuffer) =>
      js_util.callMethod(this, 'removeSourceBuffer', [sourceBuffer]);

  void endOfStream([EndOfStreamError? error]) =>
      js_util.callMethod(this, 'endOfStream', [error?.value]);

  void setLiveSeekableRange(double start, double end) =>
      js_util.callMethod(this, 'setLiveSeekableRange', [start, end]);

  void clearLiveSeekableRange() =>
      js_util.callMethod(this, 'clearLiveSeekableRange', []);
}

@JS()
@staticInterop
class MediaSourceHandle {
  external factory MediaSourceHandle();
}

enum AppendMode {
  segments('segments'),
  sequence('sequence');

  final String value;
  static AppendMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<AppendMode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const AppendMode(this.value);
}

///  The interface represents a chunk of media to be passed into an
/// [HTMLMediaElement] and played, via a [MediaSource] object. This
/// can be made up of one or several media segments.
///
///
///
///    EventTarget
///
///
///
///
///
///    SourceBuffer
///
///
@experimental
@JS()
@staticInterop
class SourceBuffer implements EventTarget {
  external factory SourceBuffer();
}

extension PropsSourceBuffer on SourceBuffer {
  AppendMode get mode =>
      AppendMode.fromValue(js_util.getProperty(this, 'mode'));
  set mode(AppendMode newValue) {
    js_util.setProperty(this, 'mode', newValue.value);
  }

  bool get updating => js_util.getProperty(this, 'updating');
  TimeRanges get buffered => js_util.getProperty(this, 'buffered');
  double get timestampOffset => js_util.getProperty(this, 'timestampOffset');
  set timestampOffset(double newValue) {
    js_util.setProperty(this, 'timestampOffset', newValue);
  }

  AudioTrackList get audioTracks => js_util.getProperty(this, 'audioTracks');
  VideoTrackList get videoTracks => js_util.getProperty(this, 'videoTracks');
  TextTrackList get textTracks => js_util.getProperty(this, 'textTracks');
  double get appendWindowStart =>
      js_util.getProperty(this, 'appendWindowStart');
  set appendWindowStart(double newValue) {
    js_util.setProperty(this, 'appendWindowStart', newValue);
  }

/* double | NaN */ dynamic get appendWindowEnd =>
      js_util.getProperty(this, 'appendWindowEnd');
  set appendWindowEnd(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'appendWindowEnd', newValue);
  }

  EventHandlerNonNull? get onupdatestart =>
      js_util.getProperty(this, 'onupdatestart');
  set onupdatestart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onupdatestart', newValue);
  }

  EventHandlerNonNull? get onupdate => js_util.getProperty(this, 'onupdate');
  set onupdate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onupdate', newValue);
  }

  EventHandlerNonNull? get onupdateend =>
      js_util.getProperty(this, 'onupdateend');
  set onupdateend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onupdateend', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  EventHandlerNonNull? get onabort => js_util.getProperty(this, 'onabort');
  set onabort(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onabort', newValue);
  }

  void appendBuffer(dynamic data) =>
      js_util.callMethod(this, 'appendBuffer', [data]);

  void abort() => js_util.callMethod(this, 'abort', []);

  void changeType(String type) =>
      js_util.callMethod(this, 'changeType', [type]);

  void remove(double start, /* double | NaN */ dynamic end) =>
      js_util.callMethod(this, 'remove', [start, end]);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface represents a simple container list for multiple
/// [SourceBuffer] objects.
///  The source buffer list containing the [SourceBuffer]s appended
/// to a particular [MediaSource] can be retrieved using the
/// [MediaSource.sourceBuffers] property.
///  The individual source buffers can be accessed using the array
/// operator [[]].
///
///
///
///    EventTarget
///
///
///
///
///
///    SourceBufferList
///
///
@experimental
@JS()
@staticInterop
class SourceBufferList implements EventTarget {
  external factory SourceBufferList();
}

extension PropsSourceBufferList on SourceBufferList {
  int get length => js_util.getProperty(this, 'length');
  EventHandlerNonNull? get onaddsourcebuffer =>
      js_util.getProperty(this, 'onaddsourcebuffer');
  set onaddsourcebuffer(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onaddsourcebuffer', newValue);
  }

  EventHandlerNonNull? get onremovesourcebuffer =>
      js_util.getProperty(this, 'onremovesourcebuffer');
  set onremovesourcebuffer(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onremovesourcebuffer', newValue);
  }
}
