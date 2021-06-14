/// WebVTT: The Web Video Text Tracks Format
///
/// https://w3c.github.io/webvtt/
@JS('window')
library webvtt1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';

@JS()
enum AutoKeyword { auto }

@JS()
enum DirectionSetting {
  @JS('')
  empty,
  rl,
  lr
}

@JS()
enum LineAlignSetting { start, center, end }

@JS()
enum PositionAlignSetting {
  @JS('line-left')
  lineLeft,
  center,
  @JS('line-right')
  lineRight,
  auto
}

@JS()
enum AlignSetting { start, center, end, left, right }

///
///   The interface—part of the API for handling WebVTT (text tracks
/// on media presentations)—describes and controls the text track
/// associated with a particular [<track>] element.
@JS()
class VTTCue extends TextTrackCue {
  external factory VTTCue(
      {double startTime, /* double | NaN */ dynamic endTime, String text});

  ///  A [VTTRegion] object describing the video's sub-region that the
  /// cue will be drawn onto, or [null] if none is assigned.
  external VTTRegion? get region;
  external set region(VTTRegion? newValue);

  /// Returns an enum representing the cue writing direction.
  external DirectionSetting get vertical;
  external set vertical(DirectionSetting newValue);

  ///  Returns true if the [VTTCue.line] attribute is an integer number
  /// of lines or a percentage of the video size.
  external bool get snapToLines;
  external set snapToLines(bool newValue);

  ///  Returns the line positioning of the cue. This can be the string
  /// [auto] or a number whose interpretation depends on the value of
  /// [VTTCue.snapToLines].
  external dynamic get line;
  external set line(dynamic newValue);

  /// Returns an enum representing the alignment of the [VTTCue.line].
  external LineAlignSetting get lineAlign;
  external set lineAlign(LineAlignSetting newValue);

  ///  Returns the indentation of the cue within the line. This can be
  /// the string [auto] or a number representing the percentage of the
  /// [VTTCue.region], or the video size if [VTTCue.region] is [null].
  external dynamic get position;
  external set position(dynamic newValue);

  ///  Returns an enum representing the alignment of the cue. This is
  /// used to determine what the [VTTCue.position] is anchored to. The
  /// default is [auto].
  external PositionAlignSetting get positionAlign;
  external set positionAlign(PositionAlignSetting newValue);

  ///  Returns a [double] representing the size of the cue, as a
  /// percentage of the video size.
  external double get size;
  external set size(double newValue);
  external AlignSetting get align;
  external set align(AlignSetting newValue);

  /// Returns a [DOMString] with the contents of the cue.
  external String get text;
  external set text(String newValue);

  /// Returns the cue text as a [DocumentFragment].
  external DocumentFragment getCueAsHTML();
}

@JS()
enum ScrollSetting {
  @JS('')
  empty,
  up
}

///
///
///  The interface—part of the API for handling WebVTT (text tracks
/// on media presentations)—describes a portion of the video to
/// render a [VTTCue] onto.
@JS()
class VTTRegion {
  external factory VTTRegion();

  /// A [DOMString] that identifies the region.
  external String get id;
  external set id(String newValue);

  ///  A [double] representing the width of the region, as a percentage
  /// of the video.
  external double get width;
  external set width(double newValue);

  ///  A [double] representing the height of the region, in number of
  /// lines.
  external int get lines;
  external set lines(int newValue);

  ///  A [double] representing the region anchor X offset, as a
  /// percentage of the region.
  external double get regionAnchorX;
  external set regionAnchorX(double newValue);

  ///  A [double] representing the region anchor Y offset, as a
  /// percentage of the region.
  external double get regionAnchorY;
  external set regionAnchorY(double newValue);

  ///  A [double] representing the viewport anchor X offset, as a
  /// percentage of the video.
  external double get viewportAnchorX;
  external set viewportAnchorX(double newValue);

  ///  A [double] representing the viewport anchor Y offset, as a
  /// percentage of the video.
  external double get viewportAnchorY;
  external set viewportAnchorY(double newValue);

  ///  An enum representing how adding new cues will move existing
  /// cues.
  external ScrollSetting get scroll;
  external set scroll(ScrollSetting newValue);
}
