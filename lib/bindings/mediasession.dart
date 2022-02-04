/// Media Session Standard
///
/// https://w3c.github.io/mediasession/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library mediasession;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
  external MediaSession();
}

extension PropsMediaSession on MediaSession {
  ///  Returns an instance of [MediaMetadata], which contains rich
  /// media metadata for display in a platform UI.
  ///
  MediaMetadata? get metadata => js_util.getProperty(this, 'metadata');
  set metadata(MediaMetadata? newValue) {
    js_util.setProperty(this, 'metadata', newValue);
  }

  ///  Indicates whether the current media session is playing. Valid
  /// values are [none], [paused], or [playing].
  ///
  MediaSessionPlaybackState get playbackState =>
      MediaSessionPlaybackState.values
          .byName(js_util.getProperty(this, 'playbackState'));
  set playbackState(MediaSessionPlaybackState newValue) {
    js_util.setProperty(this, 'playbackState', newValue.name);
  }

  ///  Sets an action handler for a media session action, such as play
  /// or pause.
  ///
  /// navigator.mediaSession.setActionHandler(type, callback)
  ///
  Object setActionHandler(
          MediaSessionAction action, MediaSessionActionHandler? handler) =>
      js_util.callMethod(this, 'setActionHandler',
          [action.name, handler == null ? null : allowInterop(handler)]);

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
  Object setPositionState([MediaPositionState? state]) =>
      js_util.callMethod(this, 'setPositionState', [state]);

  Object setMicrophoneActive(bool active) =>
      js_util.callMethod(this, 'setMicrophoneActive', [active]);

  Object setCameraActive(bool active) =>
      js_util.callMethod(this, 'setCameraActive', [active]);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Media Session API allows a web page to
/// provide rich media metadata for display in a platform UI.
@JS()
@staticInterop
class MediaMetadata {
  external MediaMetadata([MediaMetadataInit? init]);
}

extension PropsMediaMetadata on MediaMetadata {
  /// Returns or sets the title of the media to be played.
  ///
  String get title => js_util.getProperty(this, 'title');
  set title(String newValue) {
    js_util.setProperty(this, 'title', newValue);
  }

  ///  Returns or sets the name of the artist, group, creator, etc. of
  /// the media to be played.
  ///
  String get artist => js_util.getProperty(this, 'artist');
  set artist(String newValue) {
    js_util.setProperty(this, 'artist', newValue);
  }

  ///  Returns or sets the name of the album or collection containing
  /// the media to be played.
  ///
  String get album => js_util.getProperty(this, 'album');
  set album(String newValue) {
    js_util.setProperty(this, 'album', newValue);
  }

  ///  Returns or sets an array of images associated with playing
  /// media.
  ///
  Iterable<MediaImage> get artwork => js_util.getProperty(this, 'artwork');
  set artwork(Iterable<MediaImage> newValue) {
    js_util.setProperty(this, 'artwork', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MediaMetadataInit {
  external factory MediaMetadataInit(
      {String? title = '',
      String? artist = '',
      String? album = '',
      Iterable<MediaImage>? artwork = const []});
}

extension PropsMediaMetadataInit on MediaMetadataInit {
  String get title => js_util.getProperty(this, 'title');
  set title(String newValue) {
    js_util.setProperty(this, 'title', newValue);
  }

  String get artist => js_util.getProperty(this, 'artist');
  set artist(String newValue) {
    js_util.setProperty(this, 'artist', newValue);
  }

  String get album => js_util.getProperty(this, 'album');
  set album(String newValue) {
    js_util.setProperty(this, 'album', newValue);
  }

  Iterable<MediaImage> get artwork => js_util.getProperty(this, 'artwork');
  set artwork(Iterable<MediaImage> newValue) {
    js_util.setProperty(this, 'artwork', newValue);
  }
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
      {required String src, String? sizes = '', String? type = ''});
}

extension PropsMediaImage on MediaImage {
  /// The URL from which the user agent fetches the image's data.
  ///
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  ///  Specifies the resource in multiple sizes so the user agent
  /// doesn't have to scale a single image.
  ///
  String get sizes => js_util.getProperty(this, 'sizes');
  set sizes(String newValue) {
    js_util.setProperty(this, 'sizes', newValue);
  }

  ///  The MIME type hint for the user agent that allows it to ignore
  /// images of types that it doesn't support. However, the user agent
  /// may still use MIME type sniffing after downloading the image to
  /// determine its type.
  ///
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MediaPositionState {
  external factory MediaPositionState(
      {required double duration,
      required double playbackRate,
      required double position});
}

extension PropsMediaPositionState on MediaPositionState {
  double get duration => js_util.getProperty(this, 'duration');
  set duration(double newValue) {
    js_util.setProperty(this, 'duration', newValue);
  }

  double get playbackRate => js_util.getProperty(this, 'playbackRate');
  set playbackRate(double newValue) {
    js_util.setProperty(this, 'playbackRate', newValue);
  }

  double get position => js_util.getProperty(this, 'position');
  set position(double newValue) {
    js_util.setProperty(this, 'position', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MediaSessionActionDetails {
  external factory MediaSessionActionDetails._(
      {required String action,
      double? seekOffset,
      double? seekTime,
      bool? fastSeek});

  factory MediaSessionActionDetails(
          {required MediaSessionAction action,
          double? seekOffset,
          double? seekTime,
          bool? fastSeek}) =>
      MediaSessionActionDetails._(
          action: action.name,
          seekOffset: seekOffset,
          seekTime: seekTime,
          fastSeek: fastSeek);
}

extension PropsMediaSessionActionDetails on MediaSessionActionDetails {
  MediaSessionAction get action =>
      MediaSessionAction.values.byName(js_util.getProperty(this, 'action'));
  set action(MediaSessionAction newValue) {
    js_util.setProperty(this, 'action', newValue.name);
  }

  double? get seekOffset => js_util.getProperty(this, 'seekOffset');
  set seekOffset(double? newValue) {
    js_util.setProperty(this, 'seekOffset', newValue);
  }

  double? get seekTime => js_util.getProperty(this, 'seekTime');
  set seekTime(double? newValue) {
    js_util.setProperty(this, 'seekTime', newValue);
  }

  bool? get fastSeek => js_util.getProperty(this, 'fastSeek');
  set fastSeek(bool? newValue) {
    js_util.setProperty(this, 'fastSeek', newValue);
  }
}
