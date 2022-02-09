/// MediaStreamTrack Insertable Media Processing using Streams
///
/// https://w3c.github.io/mediacapture-transform/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library mediacapture_transform;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class MediaStreamTrackProcessor {
  external MediaStreamTrackProcessor(MediaStreamTrackProcessorInit init);
}

extension PropsMediaStreamTrackProcessor on MediaStreamTrackProcessor {
  ReadableStream get readable => js_util.getProperty(this, 'readable');
  set readable(ReadableStream newValue) {
    js_util.setProperty(this, 'readable', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MediaStreamTrackProcessorInit {
  external factory MediaStreamTrackProcessorInit(
      {required MediaStreamTrack track, required int maxBufferSize});
}

extension PropsMediaStreamTrackProcessorInit on MediaStreamTrackProcessorInit {
  MediaStreamTrack get track => js_util.getProperty(this, 'track');
  set track(MediaStreamTrack newValue) {
    js_util.setProperty(this, 'track', newValue);
  }

  int get maxBufferSize => js_util.getProperty(this, 'maxBufferSize');
  set maxBufferSize(int newValue) {
    js_util.setProperty(this, 'maxBufferSize', newValue);
  }
}

@JS()
@staticInterop
class VideoTrackGenerator {
  external VideoTrackGenerator();
}

extension PropsVideoTrackGenerator on VideoTrackGenerator {
  WritableStream get writable => js_util.getProperty(this, 'writable');
  bool get muted => js_util.getProperty(this, 'muted');
  set muted(bool newValue) {
    js_util.setProperty(this, 'muted', newValue);
  }

  MediaStreamTrack get track => js_util.getProperty(this, 'track');
}
