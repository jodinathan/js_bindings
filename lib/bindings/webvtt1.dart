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

@JS()
@staticInterop
class VTTCue implements TextTrackCue {
  external VTTCue(
      double startTime, /* double | NaN */ dynamic endTime, String text);
}

extension PropsVTTCue on VTTCue {
  VTTRegion? get region => js_util.getProperty(this, 'region');
  set region(VTTRegion? newValue) {
    js_util.setProperty(this, 'region', newValue);
  }

  DirectionSetting get vertical =>
      DirectionSetting.values.byName(js_util.getProperty(this, 'vertical'));
  set vertical(DirectionSetting newValue) {
    js_util.setProperty(this, 'vertical', newValue.name);
  }

  bool get snapToLines => js_util.getProperty(this, 'snapToLines');
  set snapToLines(bool newValue) {
    js_util.setProperty(this, 'snapToLines', newValue);
  }

  dynamic get line => js_util.getProperty(this, 'line');
  set line(dynamic newValue) {
    js_util.setProperty(this, 'line', newValue);
  }

  LineAlignSetting get lineAlign =>
      LineAlignSetting.values.byName(js_util.getProperty(this, 'lineAlign'));
  set lineAlign(LineAlignSetting newValue) {
    js_util.setProperty(this, 'lineAlign', newValue.name);
  }

  dynamic get position => js_util.getProperty(this, 'position');
  set position(dynamic newValue) {
    js_util.setProperty(this, 'position', newValue);
  }

  PositionAlignSetting get positionAlign => PositionAlignSetting.values
      .byName(js_util.getProperty(this, 'positionAlign'));
  set positionAlign(PositionAlignSetting newValue) {
    js_util.setProperty(this, 'positionAlign', newValue.name);
  }

  double get size => js_util.getProperty(this, 'size');
  set size(double newValue) {
    js_util.setProperty(this, 'size', newValue);
  }

  AlignSetting get align =>
      AlignSetting.values.byName(js_util.getProperty(this, 'align'));
  set align(AlignSetting newValue) {
    js_util.setProperty(this, 'align', newValue.name);
  }

  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }

  DocumentFragment getCueAsHTML() =>
      js_util.callMethod(this, 'getCueAsHTML', []);
}

enum ScrollSetting { empty, up }

@JS()
@staticInterop
class VTTRegion {
  external VTTRegion();
}

extension PropsVTTRegion on VTTRegion {
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  double get width => js_util.getProperty(this, 'width');
  set width(double newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  int get lines => js_util.getProperty(this, 'lines');
  set lines(int newValue) {
    js_util.setProperty(this, 'lines', newValue);
  }

  double get regionAnchorX => js_util.getProperty(this, 'regionAnchorX');
  set regionAnchorX(double newValue) {
    js_util.setProperty(this, 'regionAnchorX', newValue);
  }

  double get regionAnchorY => js_util.getProperty(this, 'regionAnchorY');
  set regionAnchorY(double newValue) {
    js_util.setProperty(this, 'regionAnchorY', newValue);
  }

  double get viewportAnchorX => js_util.getProperty(this, 'viewportAnchorX');
  set viewportAnchorX(double newValue) {
    js_util.setProperty(this, 'viewportAnchorX', newValue);
  }

  double get viewportAnchorY => js_util.getProperty(this, 'viewportAnchorY');
  set viewportAnchorY(double newValue) {
    js_util.setProperty(this, 'viewportAnchorY', newValue);
  }

  ScrollSetting get scroll =>
      ScrollSetting.values.byName(js_util.getProperty(this, 'scroll'));
  set scroll(ScrollSetting newValue) {
    js_util.setProperty(this, 'scroll', newValue.name);
  }
}
