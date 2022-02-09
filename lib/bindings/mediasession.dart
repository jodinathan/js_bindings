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

@JS()
@staticInterop
class MediaSession {
  external MediaSession();
}

extension PropsMediaSession on MediaSession {
  MediaMetadata? get metadata => js_util.getProperty(this, 'metadata');
  set metadata(MediaMetadata? newValue) {
    js_util.setProperty(this, 'metadata', newValue);
  }

  MediaSessionPlaybackState get playbackState =>
      MediaSessionPlaybackState.values
          .byName(js_util.getProperty(this, 'playbackState'));
  set playbackState(MediaSessionPlaybackState newValue) {
    js_util.setProperty(this, 'playbackState', newValue.name);
  }

  Object setActionHandler(
          MediaSessionAction action, MediaSessionActionHandler? handler) =>
      js_util.callMethod(this, 'setActionHandler',
          [action.name, handler == null ? null : allowInterop(handler)]);

  Object setPositionState([MediaPositionState? state]) =>
      js_util.callMethod(this, 'setPositionState', [state]);

  Object setMicrophoneActive(bool active) =>
      js_util.callMethod(this, 'setMicrophoneActive', [active]);

  Object setCameraActive(bool active) =>
      js_util.callMethod(this, 'setCameraActive', [active]);
}

@JS()
@staticInterop
class MediaMetadata {
  external MediaMetadata([MediaMetadataInit? init]);
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
