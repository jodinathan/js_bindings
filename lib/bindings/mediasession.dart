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

enum MediaSessionPlaybackState {
  none('none'),
  paused('paused'),
  playing('playing');

  final String value;
  static MediaSessionPlaybackState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const MediaSessionPlaybackState(this.value);
}

enum MediaSessionAction {
  play('play'),
  pause('pause'),
  seekbackward('seekbackward'),
  seekforward('seekforward'),
  previoustrack('previoustrack'),
  nexttrack('nexttrack'),
  skipad('skipad'),
  stop('stop'),
  seekto('seekto'),
  togglemicrophone('togglemicrophone'),
  togglecamera('togglecamera'),
  hangup('hangup'),
  previousslide('previousslide'),
  nextslide('nextslide');

  final String value;
  static MediaSessionAction fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const MediaSessionAction(this.value);
}

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
  MediaMetadata? get metadata => js_util.getProperty(this, 'metadata');
  set metadata(MediaMetadata? newValue) {
    js_util.setProperty(this, 'metadata', newValue);
  }

  MediaSessionPlaybackState get playbackState =>
      MediaSessionPlaybackState.fromValue(
          js_util.getProperty(this, 'playbackState'));
  set playbackState(MediaSessionPlaybackState newValue) {
    js_util.setProperty(this, 'playbackState', newValue.value);
  }

  void setActionHandler(
          MediaSessionAction action, MediaSessionActionHandler? handler) =>
      js_util.callMethod(this, 'setActionHandler',
          [action.value, handler == null ? null : allowInterop(handler)]);

  void setPositionState([MediaPositionState? state]) =>
      js_util.callMethod(this, 'setPositionState', [state]);

  void setMicrophoneActive(bool active) =>
      js_util.callMethod(this, 'setMicrophoneActive', [active]);

  void setCameraActive(bool active) =>
      js_util.callMethod(this, 'setCameraActive', [active]);
}

///  The interface of the Media Session API allows a web page to
/// provide rich media metadata for display in a platform UI.
@JS()
@staticInterop
class MediaMetadata {
  external factory MediaMetadata([MediaMetadataInit? init]);
}

extension PropsMediaMetadata on MediaMetadata {
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
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  String get sizes => js_util.getProperty(this, 'sizes');
  set sizes(String newValue) {
    js_util.setProperty(this, 'sizes', newValue);
  }

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
      required double seekOffset,
      required double seekTime,
      required bool fastSeek});

  factory MediaSessionActionDetails(
          {required MediaSessionAction action,
          required double seekOffset,
          required double seekTime,
          required bool fastSeek}) =>
      MediaSessionActionDetails._(
          action: action.value,
          seekOffset: seekOffset,
          seekTime: seekTime,
          fastSeek: fastSeek);
}

extension PropsMediaSessionActionDetails on MediaSessionActionDetails {
  MediaSessionAction get action =>
      MediaSessionAction.fromValue(js_util.getProperty(this, 'action'));
  set action(MediaSessionAction newValue) {
    js_util.setProperty(this, 'action', newValue.value);
  }

  double get seekOffset => js_util.getProperty(this, 'seekOffset');
  set seekOffset(double newValue) {
    js_util.setProperty(this, 'seekOffset', newValue);
  }

  double get seekTime => js_util.getProperty(this, 'seekTime');
  set seekTime(double newValue) {
    js_util.setProperty(this, 'seekTime', newValue);
  }

  bool get fastSeek => js_util.getProperty(this, 'fastSeek');
  set fastSeek(bool newValue) {
    js_util.setProperty(this, 'fastSeek', newValue);
  }
}
