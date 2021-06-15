/// Media Source Extensions™
///
/// https://w3c.github.io/media-source/
@JS('window')
library media_source;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';

@JS()
enum ReadyState { closed, open, ended }

@JS()
enum EndOfStreamError { network, decode }

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Media Source Extensions API represents a
/// source of media data for an [HTMLMediaElement] object. A object
/// can be attached to a [HTMLMediaElement] to be played in the user
/// agent.
///
///
@experimental
@JS()
class MediaSource // null -> {} -> EventTarget
    with
        EventTarget {
  external factory MediaSource();

  ///  Returns a [SourceBufferList] object containing the list of
  /// [SourceBuffer] objects associated with this [MediaSource].
  external SourceBufferList get sourceBuffers;

  ///  Returns a [SourceBufferList] object containing a subset of the
  /// [SourceBuffer] objects contained within
  /// [MediaSource.sourceBuffers] — the list of objects providing the
  /// selected video track, enabled audio tracks, and shown/hidden text
  /// tracks.
  external SourceBufferList get activeSourceBuffers;

  ///  Returns an enum representing the state of the current
  /// [MediaSource], whether it is not currently attached to a media
  /// element ([closed]), attached and ready to receive [SourceBuffer]
  /// objects ([open]), or attached but the stream has been ended via
  /// [MediaSource.endOfStream()] ([ended].)
  external ReadyState get readyState;

  /// Gets and sets the duration of the current media being presented.
  external /* double | NaN */ dynamic get duration;
  external set duration(/* double | NaN */ dynamic newValue);
  external EventHandlerNonNull? get onsourceopen;
  external set onsourceopen(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onsourceended;
  external set onsourceended(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onsourceclose;
  external set onsourceclose(EventHandlerNonNull? newValue);

  ///  Creates a new [SourceBuffer] of the given MIME type and adds it
  /// to the [MediaSource.sourceBuffers] list.
  /// var sourceBuffer = mediaSource.addSourceBuffer(mimeType);
  /// The following snippet is from a simple example written by Nick Desaulniers (view the full demo
  ///   live, or download
  ///   the source for further investigation.)
  ///
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
  external SourceBuffer addSourceBuffer(String type);

  ///  Removes the given [SourceBuffer] from the
  /// [MediaSource.sourceBuffers] list.
  /// mediaSource.removeSourceBuffer(sourceBuffer);
  external Object removeSourceBuffer(SourceBuffer sourceBuffer);

  /// Signals the end of the stream.
  /// mediaSource.endOfStream(endOfStreamError);
  /// The following snippet is from a simple example written by Nick Desaulniers (view the full demo
  ///   live, or download
  ///   the source for further investigation.)
  ///
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
  external Object endOfStream([EndOfStreamError? error]);

  /// Sets the range that the user can seek to in the media element.
  /// mediaSource.setLiveSeekableRange(start, end)
  /// // TBD
  external Object setLiveSeekableRange(double start, double end);

  ///  Clears a seekable range previously set with a call to
  /// [setLiveSeekableRange()].
  /// mediaSource.clearLiveSeekableRange()
  external Object clearLiveSeekableRange();
  external static bool isTypeSupported(String type);
}

@JS()
enum AppendMode { segments, sequence }

///
///
///  The interface represents a chunk of media to be passed into an
/// [HTMLMediaElement] and played, via a [MediaSource] object. This
/// can be made up of one or several media segments.
///
///
@experimental
@JS()
class SourceBuffer // null -> {} -> EventTarget
    with
        EventTarget {
  ///  Controls how the order of media segments in the [SourceBuffer]
  /// is handled, in terms of whether they can be appended in any
  /// order, or they have to be kept in a strict sequence.
  external AppendMode get mode;
  external set mode(AppendMode newValue);

  ///  A boolean indicating whether the [SourceBuffer] is currently
  /// being updated — i.e. whether an [SourceBuffer.appendBuffer()],
  /// [SourceBuffer.appendStream()], or [SourceBuffer.remove()]
  /// operation is currently in progress.
  external bool get updating;

  ///  Returns the time ranges that are currently buffered in the
  /// [SourceBuffer].
  external TimeRanges get buffered;

  ///  Controls the offset applied to timestamps inside media segments
  /// that are subsequently appended to the [SourceBuffer].
  external double get timestampOffset;
  external set timestampOffset(double newValue);

  ///  A list of the audio tracks currently contained inside the
  /// [SourceBuffer].
  external AudioTrackList get audioTracks;

  ///  A list of the video tracks currently contained inside the
  /// [SourceBuffer].
  external VideoTrackList get videoTracks;

  ///  A list of the text tracks currently contained inside the
  /// [SourceBuffer].
  external TextTrackList get textTracks;

  ///  Controls the timestamp for the start of the append window. This
  /// is a timestamp range that can be used to filter what media data
  /// is appended to the [SourceBuffer]. Coded media frames with
  /// timestamps within this range will be appended, whereas those
  /// outside the range will be filtered out.
  external double get appendWindowStart;
  external set appendWindowStart(double newValue);

  /// Controls the timestamp for the end of the append window.
  external /* double | NaN */ dynamic get appendWindowEnd;
  external set appendWindowEnd(/* double | NaN */ dynamic newValue);
  external EventHandlerNonNull? get onupdatestart;
  external set onupdatestart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onupdate;
  external set onupdate(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onupdateend;
  external set onupdateend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onabort;
  external set onabort(EventHandlerNonNull? newValue);

  ///  Appends media segment data from an [ArrayBuffer] or
  /// [ArrayBufferView] object to the [SourceBuffer].
  /// sourceBuffer.appendBuffer(source);
  ///
  /// TBD.
  external Object appendBuffer(dynamic data);

  /// Aborts the current segment and resets the segment parser.
  /// sourceBuffer.abort();
  ///
  /// The spec description of abort() is somewhat confusing — consider for
  ///  example step 1 of reset
  ///   parser state. The MSE API is fully asynchronous, but this step seems to suggest a
  ///  synchronous (blocking) operation, which doesn't make sense.
  ///
  /// Saying that, current implementations can be useful in certain situations, when you want
  ///  to stop the current append (or whatever) operation occurring on a sourcebuffer, and then
  ///  immediately start performing operations on it again. For example, consider this code:
  /// sourceBuffer.addEventListener('updateend', function (_) {
  ///  ...
  /// });
  ///
  /// sourceBuffer.appendBuffer(buf);
  ///
  /// Let's say that after the call to appendBuffer BUT before the
  ///  updateend event fires (i.e. a buffer is being appended but the operation
  ///  has not yet completed) a user "scrubs" the video seeking to a new point in time. In
  ///  this case you would want to manually call abort() on the source buffer to
  ///  stop the decoding of the current buffer, then fetch and append the newly requested
  ///  segment that relates to the current new position of the video.
  ///
  /// You can see something similar in action in Nick Desaulnier's bufferWhenNeeded
  ///   demo — in line
  ///   48, an event listener is added to the playing video so a function called
  ///  seek() is run when the seeking event fires. In lines
  ///   92-101, the seek() function is defined — note that abort() is called
  ///  if MediaSource.readyState is set to open, which means that
  ///  it is ready to receive new source buffers — at this point it is worth aborting the
  ///  current segment and just getting the one for the new seek position (see
  ///  checkBuffer()
  ///  and
  ///  getCurrentSegment().)
  ///
  external Object abort();

  ///  Removes media segments within a specific time range from the
  /// [SourceBuffer].
  /// sourceBuffer.remove(start, end);
  ///
  /// TBD.
  external Object remove(double start, /* double | NaN */ dynamic end);

  external factory SourceBuffer();
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface represents a simple container list for multiple
/// [SourceBuffer] objects.
///
///  The source buffer list containing the [SourceBuffer]s appended
/// to a particular [MediaSource] can be retrieved using the
/// [MediaSource.sourceBuffers] property. The individual source
/// buffers can be accessed using array operator (i.e. [[]]) or
/// functions such as [forEach()] for example.
///
///
@experimental
@JS()
class SourceBufferList // null -> {} -> EventTarget
    with
        EventTarget {
  /// Returns the number of [SourceBuffer] objects in the list.
  external int get length;
  external EventHandlerNonNull? get onaddsourcebuffer;
  external set onaddsourcebuffer(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onremovesourcebuffer;
  external set onremovesourcebuffer(EventHandlerNonNull? newValue);

  external factory SourceBufferList();
}
