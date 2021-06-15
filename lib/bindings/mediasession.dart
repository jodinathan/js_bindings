/// Media Session Standard
///
/// https://w3c.github.io/mediasession/
@JS('window')
library mediasession;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';

@JS()
enum MediaSessionPlaybackState { none, paused, playing }

@JS()
enum MediaSessionAction {
  play,
  pause,
  seekbackward,
  seekforward,
  previoustrack,
  nexttrack,
  skipad,
  stop,
  seekto,
  togglemicrophone,
  togglecamera,
  hangup
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Media Session API allows a web page to
/// provide custom behaviors for standard media playback
/// interactions, and to report metadata that can be sent by the user
/// agent to the device or operating system for presentation in
/// standardized user interface elements.
///
///  For example, a smartphone might have a standard panel in its
/// lock screen that provides controls for media playback and
/// information display. A browser on the device can use to make
/// browser playback controllable from that standard/global user
/// interface.
@JS()
class MediaSession {
  ///  Returns an instance of [MediaMetadata], which contains rich
  /// media metadata for display in a platform UI.
  external MediaMetadata? get metadata;
  external set metadata(MediaMetadata? newValue);

  ///  Indicates whether the current media session is playing. Valid
  /// values are [none], [paused], or [playing].
  external MediaSessionPlaybackState get playbackState;
  external set playbackState(MediaSessionPlaybackState newValue);

  ///  Sets an action handler for a media session action, such as play
  /// or pause.
  /// navigator.mediaSession.setActionHandler(type, callback)
  external Object setActionHandler(
      MediaSessionAction action, MediaSessionActionHandler? handler);

  ///  Sets the current playback position and speed of the media
  /// currently being presented.
  /// navigator.mediaSession.setPositionState(stateDict);
  ///
  /// Below is a function which updates the position state of the current
  ///  MediaSession track.
  ///
  /// function updatePositionState() {
  ///  navigator.mediaSession.setPositionState({
  ///   duration: audioEl.duration,
  ///   playbackRate: audioEl.playbackRate,
  ///   position: audioEl.currentTime
  ///  });
  /// }
  /// We can use this function when updating media session
  ///  metadata and within callbacks for actions, such as below.
  ///
  /// navigator.mediaSession.setActionHandler('seekbackward', details => {
  ///
  ///  // our time to skip
  ///  const skipTime = details.seekOffset || 10;
  ///
  ///  // set our position
  ///  audioEl.currentTime = Math.max(audioEl.currentTime - skipTime, 0);
  ///  updatePositionState();
  ///
  /// });
  ///
  external Object setPositionState([MediaPositionState? state]);
  external Object setMicrophoneActive(bool active);
  external Object setCameraActive(bool active);

  external factory MediaSession();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Media Session API allows a web page to
/// provide rich media metadata for display in a platform UI.
@JS()
class MediaMetadata {
  external factory MediaMetadata([MediaMetadataInit? init]);

  /// Returns or sets the title of the media to be played.
  external String get title;
  external set title(String newValue);

  ///  Returns or sets the name of the artist, group, creator, etc. of
  /// the media to be played.
  external String get artist;
  external set artist(String newValue);

  ///  Returns or sets the name of the album or collection containing
  /// the media to be played.
  external String get album;
  external set album(String newValue);

  ///  Returns or sets an array of images associated with playing
  /// media.
  external Iterable<MediaImage> get artwork;
  external set artwork(Iterable<MediaImage> newValue);
}

@anonymous
@JS()
class MediaMetadataInit {
  external String get title;
  external set title(String newValue);
  external String get artist;
  external set artist(String newValue);
  external String get album;
  external set album(String newValue);
  external Iterable<MediaImage> get artwork;
  external set artwork(Iterable<MediaImage> newValue);

  external factory MediaMetadataInit(
      {String title = '',
      String artist = '',
      String album = '',
      Iterable<MediaImage> artwork = const []});
}

///
///
///  The Media Session API's [MediaImage] dictionary describes the
/// images associated with a media resource's [MediaMetadata]. Its
/// contents can be displayed by the user agent in appropriate
/// contexts like in a player interface to show the current playing
/// video or audio track.
@anonymous
@JS()
class MediaImage {
  /// The URL from which the user agent fetches the image's data.
  external String get src;
  external set src(String newValue);

  ///  Specifies the resource in multiple sizes so the user agent
  /// doesn't have to scale a single image.
  external String get sizes;
  external set sizes(String newValue);

  ///  The MIME type hint for the user agent that allows it to ignore
  /// images of types that it doesn't support. However, the user agent
  /// may still use MIME type sniffing after downloading the image to
  /// determine its type.
  external String get type;
  external set type(String newValue);

  external factory MediaImage(
      {String src, String sizes = '', String type = ''});
}

///
///
///  The Media Session API's [MediaPositionState] dictionary is used
/// to represent the current playback position of a media session.
/// Its contents can be used by the user agent to provide a user
/// interface displaying information about the playback position and
/// duration of the media currently being performed.
@anonymous
@JS()
class MediaPositionState {
  ///  A floating-point value giving the total duration of the current
  /// media in seconds. This should always be a positive number, with
  /// positive infinity ([Infinity]) indicating media without a defined
  /// end, such as a live stream.
  external double get duration;
  external set duration(double newValue);

  ///  A floating-point value indicating the rate at which the media is
  /// being played, as a ratio relative to its normal playback speed.
  /// Thus, a value of 1 is playing at normal speed, 2 is playing at
  /// double speed, and so forth. Negative values indicate that the
  /// media is playing in reverse; -1 indicates playback at the normal
  /// speed but backward, -2 is double speed in reverse, and so on.
  external double get playbackRate;
  external set playbackRate(double newValue);

  ///  A floating-point value indicating the last reported playback
  /// position of the media in seconds. This must always be a positive
  /// value.
  external double get position;
  external set position(double newValue);

  external factory MediaPositionState(
      {double duration, double playbackRate, double position});
}

///
///
///  The Media Session API's dictionary is the type used by the sole
/// input parameter into the callback which is executed when a media
/// session action occurs. It specifies the type of action which
/// needs to be performed as well as the data needed to perform the
/// action.
@anonymous
@JS()
class MediaSessionActionDetails {
  ///  A Media Session action type string taken from the
  /// [MediaSessionAction] enumerated type, indicating which type of
  /// action needs to be performed. See Media action types below for
  /// possible values.
  external MediaSessionAction get action;
  external set action(MediaSessionAction newValue);

  ///  If the [action] is either [seekforward] or [seekbackward] and
  /// this property is present, it is a floating point value which
  /// indicates the number of seconds to move the play position forward
  /// or backward. If this property isn't present, those actions should
  /// choose a reasonable default distance to skip forward or backward
  /// (such as 7 or 10 seconds).
  external double? get seekOffset;
  external set seekOffset(double? newValue);

  ///  If the [action] is [seekto], this property must be present and
  /// must be a floating-point value indicating the absolute time
  /// within the media to move the playback position to, where 0
  /// indicates the beginning of the media. This property is not
  /// present for other action types.
  external double? get seekTime;
  external set seekTime(double? newValue);

  ///  An [seekto] action may optionally include this property, which
  /// is a Boolean value indicating whether or not to perform a "fast"
  /// seek. A "fast" seek is a seek being performed in a rapid
  /// sequence, such as when fast-forwarding or reversing through the
  /// media, rapidly skipping through it. This property can be used to
  /// indicate that you should use the shortest possible method to seek
  /// the media. is not included on the final action in the seek
  /// sequence in this situation.
  external bool? get fastSeek;
  external set fastSeek(bool? newValue);

  external factory MediaSessionActionDetails(
      {MediaSessionAction action,
      double? seekOffset,
      double? seekTime,
      bool? fastSeek});
}
