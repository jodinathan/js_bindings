/// Media Source Extensions™
///
/// https://w3c.github.io/media-source/
@JS('window')
@staticInterop
library media_source;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html */

enum ReadyState { closed, open, ended }

enum EndOfStreamError { network, decode }

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
  external MediaSource();
}

extension PropsMediaSource on MediaSource {
  ///  Returns a [SourceBufferList] object containing the list of
  /// [SourceBuffer] objects associated with this [MediaSource].
  ///
  SourceBufferList get sourceBuffers =>
      js_util.getProperty(this, 'sourceBuffers');

  ///  Returns a [SourceBufferList] object containing a subset of the
  /// [SourceBuffer] objects contained within
  /// [MediaSource.sourceBuffers] — the list of objects providing the
  /// selected video track, enabled audio tracks, and shown/hidden text
  /// tracks.
  ///
  SourceBufferList get activeSourceBuffers =>
      js_util.getProperty(this, 'activeSourceBuffers');

  ///  Returns an enum representing the state of the current
  /// [MediaSource], whether it is not currently attached to a media
  /// element ([closed]), attached and ready to receive [SourceBuffer]
  /// objects ([open]), or attached but the stream has been ended via
  /// [MediaSource.endOfStream()] ([ended].)
  ///
  ReadyState get readyState => js_util.getProperty(this, 'readyState');

  /// Gets and sets the duration of the current media being presented.
  ///
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

  ///  Creates a new [SourceBuffer] of the given MIME type and adds it
  /// to the [MediaSource.sourceBuffers] list.
  ///
  /// var sourceBuffer = mediaSource.addSourceBuffer(mimeType);
  ///
  /// The following snippet is from a simple example written by Nick Desaulniers (view the full demo
  /// live, or download
  /// the source for further investigation.)
  /// var assetURL = 'frag_bunny.mp4';
  /// // Need to be specific for Blink regarding codecs
  /// // ./mp4info frag_bunny.mp4 | grep Codec
  /// var mimeCodec = 'video/mp4; codecs="avc1.42E01E, mp4a.40.2"';
  ///
  /// if ('MediaSource' in window && MediaSource.isTypeSupported(mimeCodec)) {
  ///  var mediaSource = new MediaSource;
  ///  //console.log(mediaSource.readyState); // closed
  ///  video.src = URL.createObjectURL(mediaSource);
  ///  mediaSource.addEventListener('sourceopen', sourceOpen);
  /// } else {
  ///  console.error('Unsupported MIME type or codec: ', mimeCodec);
  /// }
  ///
  /// function sourceOpen (_) {
  ///  //console.log(this.readyState); // open
  ///  var mediaSource = this;
  ///  var sourceBuffer = mediaSource.addSourceBuffer(mimeCodec);
  ///  fetchAB(assetURL, function (buf) {
  ///   sourceBuffer.addEventListener('updateend', function (_) {
  ///    mediaSource.endOfStream();
  ///    video.play();
  ///    //console.log(mediaSource.readyState); // ended
  ///   });
  ///   sourceBuffer.appendBuffer(buf);
  ///  });
  /// };
  ///
  SourceBuffer addSourceBuffer(String type) =>
      js_util.callMethod(this, 'addSourceBuffer', [type]);

  ///  Removes the given [SourceBuffer] from the
  /// [MediaSource.sourceBuffers] list.
  ///
  /// mediaSource.removeSourceBuffer(sourceBuffer);
  ///
  Object removeSourceBuffer(SourceBuffer sourceBuffer) =>
      js_util.callMethod(this, 'removeSourceBuffer', [sourceBuffer]);

  /// Signals the end of the stream.
  ///
  /// mediaSource.endOfStream(endOfStreamError);
  ///
  /// The following snippet is from a simple example written by Nick Desaulniers (view the full demo
  /// live, or download
  /// the source for further investigation.)
  /// var assetURL = 'frag_bunny.mp4';
  /// // Need to be specific for Blink regarding codecs
  /// // ./mp4info frag_bunny.mp4 | grep Codec
  /// var mimeCodec = 'video/mp4; codecs="avc1.42E01E, mp4a.40.2"';
  ///
  /// if ('MediaSource' in window && MediaSource.isTypeSupported(mimeCodec)) {
  ///  var mediaSource = new MediaSource;
  ///  //console.log(mediaSource.readyState); // closed
  ///  video.src = URL.createObjectURL(mediaSource);
  ///  mediaSource.addEventListener('sourceopen', sourceOpen);
  /// } else {
  ///  console.error('Unsupported MIME type or codec: ', mimeCodec);
  /// }
  ///
  /// function sourceOpen (_) {
  ///  //console.log(this.readyState); // open
  ///  var mediaSource = this;
  ///  var sourceBuffer = mediaSource.addSourceBuffer(mimeCodec);
  ///  fetchAB(assetURL, function (buf) {
  ///   sourceBuffer.addEventListener('updateend', function (_) {
  ///    mediaSource.endOfStream();
  ///    video.play();
  ///    //console.log(mediaSource.readyState); // ended
  ///   });
  ///   sourceBuffer.appendBuffer(buf);
  ///  });
  /// };
  ///
  Object endOfStream([EndOfStreamError? error]) =>
      js_util.callMethod(this, 'endOfStream', [error]);

  /// Sets the range that the user can seek to in the media element.
  ///
  /// mediaSource.setLiveSeekableRange(start, end)
  ///
  /// // TBD
  ///
  Object setLiveSeekableRange(double start, double end) =>
      js_util.callMethod(this, 'setLiveSeekableRange', [start, end]);

  ///  Clears a seekable range previously set with a call to
  /// [setLiveSeekableRange()].
  ///
  /// mediaSource.clearLiveSeekableRange()
  ///
  Object clearLiveSeekableRange() =>
      js_util.callMethod(this, 'clearLiveSeekableRange', []);

  external static bool isTypeSupported(String type);
}

enum AppendMode { segments, sequence }

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
  external SourceBuffer();
}

extension PropsSourceBuffer on SourceBuffer {
  ///  Controls how the order of media segments in the [SourceBuffer]
  /// is handled, in terms of whether they can be appended in any
  /// order, or they have to be kept in a strict sequence.
  ///
  AppendMode get mode => js_util.getProperty(this, 'mode');
  set mode(AppendMode newValue) {
    js_util.setProperty(this, 'mode', newValue);
  }

  ///  A boolean indicating whether the [SourceBuffer] is currently
  /// being updated — i.e. whether an [SourceBuffer.appendBuffer()],
  /// [SourceBuffer.appendStream()], or [SourceBuffer.remove()]
  /// operation is currently in progress.
  ///
  bool get updating => js_util.getProperty(this, 'updating');

  ///  Returns the time ranges that are currently buffered in the
  /// [SourceBuffer].
  ///
  TimeRanges get buffered => js_util.getProperty(this, 'buffered');

  ///  Controls the offset applied to timestamps inside media segments
  /// that are subsequently appended to the [SourceBuffer].
  ///
  double get timestampOffset => js_util.getProperty(this, 'timestampOffset');
  set timestampOffset(double newValue) {
    js_util.setProperty(this, 'timestampOffset', newValue);
  }

  ///  A list of the audio tracks currently contained inside the
  /// [SourceBuffer].
  ///
  AudioTrackList get audioTracks => js_util.getProperty(this, 'audioTracks');

  ///  A list of the video tracks currently contained inside the
  /// [SourceBuffer].
  ///
  VideoTrackList get videoTracks => js_util.getProperty(this, 'videoTracks');

  ///  A list of the text tracks currently contained inside the
  /// [SourceBuffer].
  ///
  TextTrackList get textTracks => js_util.getProperty(this, 'textTracks');

  ///  Controls the timestamp for the start of the append window. This
  /// is a timestamp range that can be used to filter what media data
  /// is appended to the [SourceBuffer]. Coded media frames with
  /// timestamps within this range will be appended, whereas those
  /// outside the range will be filtered out.
  ///
  double get appendWindowStart =>
      js_util.getProperty(this, 'appendWindowStart');
  set appendWindowStart(double newValue) {
    js_util.setProperty(this, 'appendWindowStart', newValue);
  }

  /// Controls the timestamp for the end of the append window.
  ///
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

  ///  Appends media segment data from an [ArrayBuffer] or
  /// [ArrayBufferView] object to the [SourceBuffer].
  ///
  /// sourceBuffer.appendBuffer(source);
  ///
  /// TBD.
  Object appendBuffer(dynamic data) =>
      js_util.callMethod(this, 'appendBuffer', [data]);

  /// Aborts the current segment and resets the segment parser.
  ///
  /// sourceBuffer.abort();
  ///
  ///
  ///  The spec description of abort() is somewhat confusing — consider for
  ///  example step 1 of reset
  /// parser state. The MSE API is fully asynchronous, but this step seems to suggest a
  ///  synchronous (blocking) operation, which doesn't make sense.
  ///  Saying that, current implementations can be useful in certain situations, when you want
  ///  to stop the current append (or whatever) operation occurring on a sourcebuffer, and then
  ///  immediately start performing operations on it again. For example, consider this code:
  ///
  /// sourceBuffer.addEventListener('updateend', function (_) {
  ///  ...
  /// });
  ///
  /// sourceBuffer.appendBuffer(buf);
  ///  Let's say that after the call to appendBuffer BUT before the
  ///  updateend event fires (i.e. a buffer is being appended but the operation
  ///  has not yet completed) a user "scrubs" the video seeking to a new point in time. In
  ///  this case you would want to manually call abort() on the source buffer to
  ///  stop the decoding of the current buffer, then fetch and append the newly requested
  ///  segment that relates to the current new position of the video.
  ///  You can see something similar in action in Nick Desaulnier's bufferWhenNeeded
  /// demo — in line
  /// 48, an event listener is added to the playing video so a function called
  ///  seek() is run when the seeking event fires. In lines
  /// 92-101, the seek() function is defined — note that abort() is called
  ///  if MediaSource.readyState is set to open, which means that
  ///  it is ready to receive new source buffers — at this point it is worth aborting the
  ///  current segment and just getting the one for the new seek position (see
  ///  checkBuffer()
  ///  and
  ///  getCurrentSegment().)
  ///
  Object abort() => js_util.callMethod(this, 'abort', []);

  ///  Removes media segments within a specific time range from the
  /// [SourceBuffer].
  ///
  /// sourceBuffer.remove(start, end);
  ///
  /// TBD.
  Object remove(double start, /* double | NaN */ dynamic end) =>
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
  external SourceBufferList();
}

extension PropsSourceBufferList on SourceBufferList {
  /// Returns the number of [SourceBuffer] objects in the list.
  ///
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
