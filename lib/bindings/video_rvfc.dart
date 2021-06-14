/// HTMLVideoElement.requestVideoFrameCallback()
///
/// https://wicg.github.io/video-rvfc/
@JS('window')
library video_rvfc;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'hr_time_3.dart';
import 'html.dart';

@anonymous
@JS()
class VideoFrameMetadata {
  external double get presentationTime;
  external set presentationTime(double newValue);
  external double get expectedDisplayTime;
  external set expectedDisplayTime(double newValue);
  external int get width;
  external set width(int newValue);
  external int get height;
  external set height(int newValue);
  external double get mediaTime;
  external set mediaTime(double newValue);
  external int get presentedFrames;
  external set presentedFrames(int newValue);
  external double get processingDuration;
  external set processingDuration(double newValue);
  external double get captureTime;
  external set captureTime(double newValue);
  external double get receiveTime;
  external set receiveTime(double newValue);
  external int get rtpTimestamp;
  external set rtpTimestamp(int newValue);

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
