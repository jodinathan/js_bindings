/// WebVTT: The Web Video Text Tracks Format
///
/// https://w3c.github.io/webvtt/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webvtt1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum AutoKeyword { auto }

enum DirectionSetting { empty, rl, lr }

enum LineAlignSetting { start, center, end }

enum PositionAlignSetting { lineLeft, center, lineRight, auto }

enum AlignSetting { start, center, end, left, right }

///  The interface—part of the API for handling WebVTT (text tracks
/// on media presentations)—describes and controls the text track
/// associated with a particular [<track>] element.
@JS()
@staticInterop
class VTTCue implements TextTrackCue {
  external VTTCue(
      double startTime, /* double | NaN */ dynamic endTime, String text);
}

extension PropsVTTCue on VTTCue {
  ///  A [VTTRegion] object describing the video's sub-region that the
  /// cue will be drawn onto, or [null] if none is assigned.
  ///
  VTTRegion? get region => js_util.getProperty(this, 'region');
  set region(VTTRegion? newValue) {
    js_util.setProperty(this, 'region', newValue);
  }

  /// Returns an enum representing the cue writing direction.
  ///
  DirectionSetting get vertical => js_util.getProperty(this, 'vertical');
  set vertical(DirectionSetting newValue) {
    js_util.setProperty(this, 'vertical', newValue);
  }

  ///  Returns true if the [VTTCue.line] attribute is an integer number
  /// of lines or a percentage of the video size.
  ///
  bool get snapToLines => js_util.getProperty(this, 'snapToLines');
  set snapToLines(bool newValue) {
    js_util.setProperty(this, 'snapToLines', newValue);
  }

  ///  Returns the line positioning of the cue. This can be the string
  /// [auto] or a number whose interpretation depends on the value of
  /// [VTTCue.snapToLines].
  ///
  dynamic get line => js_util.getProperty(this, 'line');
  set line(dynamic newValue) {
    js_util.setProperty(this, 'line', newValue);
  }

  /// Returns an enum representing the alignment of the [VTTCue.line].
  ///
  LineAlignSetting get lineAlign => js_util.getProperty(this, 'lineAlign');
  set lineAlign(LineAlignSetting newValue) {
    js_util.setProperty(this, 'lineAlign', newValue);
  }

  ///  Returns the indentation of the cue within the line. This can be
  /// the string [auto] or a number representing the percentage of the
  /// [VTTCue.region], or the video size if [VTTCue.region] is [null].
  ///
  dynamic get position => js_util.getProperty(this, 'position');
  set position(dynamic newValue) {
    js_util.setProperty(this, 'position', newValue);
  }

  ///  Returns an enum representing the alignment of the cue. This is
  /// used to determine what the [VTTCue.position] is anchored to. The
  /// default is [auto].
  ///
  PositionAlignSetting get positionAlign =>
      js_util.getProperty(this, 'positionAlign');
  set positionAlign(PositionAlignSetting newValue) {
    js_util.setProperty(this, 'positionAlign', newValue);
  }

  ///  Returns a [double] representing the size of the cue, as a
  /// percentage of the video size.
  ///
  double get size => js_util.getProperty(this, 'size');
  set size(double newValue) {
    js_util.setProperty(this, 'size', newValue);
  }

  ///  Returns an enum representing the alignment of all the lines of
  /// text within the cue box.
  ///
  AlignSetting get align => js_util.getProperty(this, 'align');
  set align(AlignSetting newValue) {
    js_util.setProperty(this, 'align', newValue);
  }

  /// Returns a [String] with the contents of the cue.
  ///
  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }

  /// Returns the cue text as a [DocumentFragment].
  ///
  /// VTTCue.getCueAsHTML();
  ///
  DocumentFragment getCueAsHTML() =>
      js_util.callMethod(this, 'getCueAsHTML', []);
}

enum ScrollSetting { empty, up }

///  The interface—part of the API for handling WebVTT (text tracks
/// on media presentations)—describes a portion of the video to
/// render a [VTTCue] onto.
@JS()
@staticInterop
class VTTRegion {
  external VTTRegion();
}

extension PropsVTTRegion on VTTRegion {
  /// A [String] that identifies the region.
  ///
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  ///  A [double] representing the width of the region, as a percentage
  /// of the video.
  ///
  double get width => js_util.getProperty(this, 'width');
  set width(double newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  ///  A [double] representing the height of the region, in number of
  /// lines.
  ///
  int get lines => js_util.getProperty(this, 'lines');
  set lines(int newValue) {
    js_util.setProperty(this, 'lines', newValue);
  }

  ///  A [double] representing the region anchor X offset, as a
  /// percentage of the region.
  ///
  double get regionAnchorX => js_util.getProperty(this, 'regionAnchorX');
  set regionAnchorX(double newValue) {
    js_util.setProperty(this, 'regionAnchorX', newValue);
  }

  ///  A [double] representing the region anchor Y offset, as a
  /// percentage of the region.
  ///
  double get regionAnchorY => js_util.getProperty(this, 'regionAnchorY');
  set regionAnchorY(double newValue) {
    js_util.setProperty(this, 'regionAnchorY', newValue);
  }

  ///  A [double] representing the viewport anchor X offset, as a
  /// percentage of the video.
  ///
  double get viewportAnchorX => js_util.getProperty(this, 'viewportAnchorX');
  set viewportAnchorX(double newValue) {
    js_util.setProperty(this, 'viewportAnchorX', newValue);
  }

  ///  A [double] representing the viewport anchor Y offset, as a
  /// percentage of the video.
  ///
  double get viewportAnchorY => js_util.getProperty(this, 'viewportAnchorY');
  set viewportAnchorY(double newValue) {
    js_util.setProperty(this, 'viewportAnchorY', newValue);
  }

  ///  An enum representing how adding new cues will move existing
  /// cues.
  ///
  ScrollSetting get scroll => js_util.getProperty(this, 'scroll');
  set scroll(ScrollSetting newValue) {
    js_util.setProperty(this, 'scroll', newValue);
  }
}
