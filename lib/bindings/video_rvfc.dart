/// HTMLVideoElement.requestVideoFrameCallback()
///
/// https://wicg.github.io/video-rvfc/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library video_rvfc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class VideoFrameMetadata {
  external factory VideoFrameMetadata(
      {double presentationTime,
      double expectedDisplayTime,
      int width,
      int height,
      double mediaTime,
      int presentedFrames,
      double processingDuration,
      double captureTime,
      double receiveTime,
      int rtpTimestamp});
}

extension PropsVideoFrameMetadata on VideoFrameMetadata {
  double get presentationTime => js_util.getProperty(this, 'presentationTime');
  set presentationTime(double newValue) {
    js_util.setProperty(this, 'presentationTime', newValue);
  }

  double get expectedDisplayTime =>
      js_util.getProperty(this, 'expectedDisplayTime');
  set expectedDisplayTime(double newValue) {
    js_util.setProperty(this, 'expectedDisplayTime', newValue);
  }

  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  double get mediaTime => js_util.getProperty(this, 'mediaTime');
  set mediaTime(double newValue) {
    js_util.setProperty(this, 'mediaTime', newValue);
  }

  int get presentedFrames => js_util.getProperty(this, 'presentedFrames');
  set presentedFrames(int newValue) {
    js_util.setProperty(this, 'presentedFrames', newValue);
  }

  double get processingDuration =>
      js_util.getProperty(this, 'processingDuration');
  set processingDuration(double newValue) {
    js_util.setProperty(this, 'processingDuration', newValue);
  }

  double get captureTime => js_util.getProperty(this, 'captureTime');
  set captureTime(double newValue) {
    js_util.setProperty(this, 'captureTime', newValue);
  }

  double get receiveTime => js_util.getProperty(this, 'receiveTime');
  set receiveTime(double newValue) {
    js_util.setProperty(this, 'receiveTime', newValue);
  }

  int get rtpTimestamp => js_util.getProperty(this, 'rtpTimestamp');
  set rtpTimestamp(int newValue) {
    js_util.setProperty(this, 'rtpTimestamp', newValue);
  }
}
