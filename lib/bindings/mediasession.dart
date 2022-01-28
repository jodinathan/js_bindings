/// Media Session Standard
///
/// https://w3c.github.io/mediasession/
@JS('window')
@staticInterop
library mediasession;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html */

enum MediaSessionPlaybackState { none, paused, playing }

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

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Media Session API allows a web page to
/// provide custom behaviors for standard media playback
/// interactions, and to report metadata that can be sent by the user
/// agent to the device or operating system for presentation in
/// standardized user interface elements.
///  For example, a smartphone might have a standard panel in its
/// lock screen that provides controls for media playback and
/// information display. A browser on the device can use to make
/// browser playback controllable from that standard/global user
/// interface.
@JS()
@staticInterop
class MediaSession {
  external factory MediaSession();
}

extension PropsMediaSession on MediaSession {
  ///  Returns an instance of [MediaMetadata], which contains rich
  /// media metadata for display in a platform UI.
  ///
  external MediaMetadata? get metadata;
  external set metadata(MediaMetadata? newValue);

  ///  Indicates whether the current media session is playing. Valid
  /// values are [none], [paused], or [playing].
  ///
  external MediaSessionPlaybackState get playbackState;
  external set playbackState(MediaSessionPlaybackState newValue);

  ///  Sets an action handler for a media session action, such as play
  /// or pause.
  ///
  /// navigator.mediaSession.setActionHandler(type, callback)
  ///
  external Object setActionHandler(
      MediaSessionAction action, MediaSessionActionHandler? handler);

  ///  Sets the current playback position and speed of the media
  /// currently being presented.
  ///
  /// navigator.mediaSession.setPositionState(stateDict);
  ///
  ///
  ///  Below is a function which updates the position state of the current
  ///  MediaSession track.
  ///
  /// function updatePositionState() {
  ///  navigator.mediaSession.setPositionState({
  ///   duration: audioEl.duration,
  ///   playbackRate: audioEl.playbackRate,
  ///   position: audioEl.currentTime
  ///  });
  /// }
  ///
  /// We can use this function when updating media session
  ///  metadata and within callbacks for actions, such as below.
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
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Media Session API allows a web page to
/// provide rich media metadata for display in a platform UI.
@JS()
@staticInterop
class MediaMetadata {
  external factory MediaMetadata([MediaMetadataInit? init]);
}

extension PropsMediaMetadata on MediaMetadata {
  /// Returns or sets the title of the media to be played.
  ///
  external String get title;
  external set title(String newValue);

  ///  Returns or sets the name of the artist, group, creator, etc. of
  /// the media to be played.
  ///
  external String get artist;
  external set artist(String newValue);

  ///  Returns or sets the name of the album or collection containing
  /// the media to be played.
  ///
  external String get album;
  external set album(String newValue);

  ///  Returns or sets an array of images associated with playing
  /// media.
  ///
  external Iterable<MediaImage> get artwork;
  external set artwork(Iterable<MediaImage> newValue);
}

@anonymous
@JS()
@staticInterop
class MediaMetadataInit {
  external factory MediaMetadataInit(
      {String title = '',
      String artist = '',
      String album = '',
      Iterable<MediaImage> artwork = const []});
}

extension PropsMediaMetadataInit on MediaMetadataInit {
  external String get title;
  external set title(String newValue);
  external String get artist;
  external set artist(String newValue);
  external String get album;
  external set album(String newValue);
  external Iterable<MediaImage> get artwork;
  external set artwork(Iterable<MediaImage> newValue);
}

///  The Media Session API's dictionary describes the images
/// associated with a media resource's [MediaMetadata].
///  Its contents can be displayed by the user agent in appropriate
/// contexts like in a player interface to show the current playing
/// video or audio track.
@anonymous
@JS()
@staticInterop
class MediaImage {
  external factory MediaImage(
      {String src, String sizes = '', String type = ''});
}

extension PropsMediaImage on MediaImage {
  /// The URL from which the user agent fetches the image's data.
  ///
  external String get src;
  external set src(String newValue);

  ///  Specifies the resource in multiple sizes so the user agent
  /// doesn't have to scale a single image.
  ///
  external String get sizes;
  external set sizes(String newValue);

  ///  The MIME type hint for the user agent that allows it to ignore
  /// images of types that it doesn't support. However, the user agent
  /// may still use MIME type sniffing after downloading the image to
  /// determine its type.
  ///
  external String get type;
  external set type(String newValue);
}

@anonymous
@JS()
@staticInterop
class MediaPositionState {
  external factory MediaPositionState(
      {double duration, double playbackRate, double position});
}

extension PropsMediaPositionState on MediaPositionState {
  external double get duration;
  external set duration(double newValue);
  external double get playbackRate;
  external set playbackRate(double newValue);
  external double get position;
  external set position(double newValue);
}

@anonymous
@JS()
@staticInterop
class MediaSessionActionDetails {
  external factory MediaSessionActionDetails(
      {MediaSessionAction action,
      double? seekOffset,
      double? seekTime,
      bool? fastSeek});
}

extension PropsMediaSessionActionDetails on MediaSessionActionDetails {
  external MediaSessionAction get action;
  external set action(MediaSessionAction newValue);
  external double? get seekOffset;
  external set seekOffset(double? newValue);
  external double? get seekTime;
  external set seekTime(double? newValue);
  external bool? get fastSeek;
  external set fastSeek(bool? newValue);
}
