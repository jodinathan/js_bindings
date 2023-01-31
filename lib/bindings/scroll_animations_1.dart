/// Scroll-linked Animations
///
/// https://drafts.csswg.org/scroll-animations-1/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library scroll_animations_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum ScrollAxis {
  block('block'),
  inline('inline'),
  horizontal('horizontal'),
  vertical('vertical');

  final String value;
  static ScrollAxis fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ScrollAxis> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ScrollAxis(this.value);
}

@anonymous
@JS()
@staticInterop
class ScrollTimelineOptions {
  external factory ScrollTimelineOptions._({Element? source, String? axis});

  factory ScrollTimelineOptions(
          {Element? source, ScrollAxis? axis = ScrollAxis.block}) =>
      ScrollTimelineOptions._(source: source, axis: axis?.value);
}

extension PropsScrollTimelineOptions on ScrollTimelineOptions {
  Element? get source => js_util.getProperty(this, 'source');
  set source(Element? newValue) {
    js_util.setProperty(this, 'source', newValue);
  }

  ScrollAxis get axis =>
      ScrollAxis.fromValue(js_util.getProperty(this, 'axis'));
  set axis(ScrollAxis newValue) {
    js_util.setProperty(this, 'axis', newValue.value);
  }
}

@JS()
@staticInterop
class ScrollTimeline implements AnimationTimeline {
  external factory ScrollTimeline([ScrollTimelineOptions? options]);
}

extension PropsScrollTimeline on ScrollTimeline {
  Element? get source => js_util.getProperty(this, 'source');
  ScrollAxis get axis =>
      ScrollAxis.fromValue(js_util.getProperty(this, 'axis'));
}

@anonymous
@JS()
@staticInterop
class ViewTimelineOptions {
  external factory ViewTimelineOptions._({Element? subject, String? axis});

  factory ViewTimelineOptions(
          {Element? subject, ScrollAxis? axis = ScrollAxis.block}) =>
      ViewTimelineOptions._(subject: subject, axis: axis?.value);
}

extension PropsViewTimelineOptions on ViewTimelineOptions {
  Element get subject => js_util.getProperty(this, 'subject');
  set subject(Element newValue) {
    js_util.setProperty(this, 'subject', newValue);
  }

  ScrollAxis get axis =>
      ScrollAxis.fromValue(js_util.getProperty(this, 'axis'));
  set axis(ScrollAxis newValue) {
    js_util.setProperty(this, 'axis', newValue.value);
  }
}

@JS()
@staticInterop
class ViewTimeline implements ScrollTimeline {
  external factory ViewTimeline([ViewTimelineOptions? options]);
}

extension PropsViewTimeline on ViewTimeline {
  Element get subject => js_util.getProperty(this, 'subject');
  CSSNumericValue get startOffset => js_util.getProperty(this, 'startOffset');
  CSSNumericValue get endOffset => js_util.getProperty(this, 'endOffset');
}
