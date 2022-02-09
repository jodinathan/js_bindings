/// Intersection Observer
///
/// https://w3c.github.io/IntersectionObserver/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library intersection_observer;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class IntersectionObserver {
  external IntersectionObserver(IntersectionObserverCallback callback,
      [IntersectionObserverInit? options]);
}

extension PropsIntersectionObserver on IntersectionObserver {
  dynamic get root => js_util.getProperty(this, 'root');
  String get rootMargin => js_util.getProperty(this, 'rootMargin');
  Iterable<double> get thresholds => js_util.getProperty(this, 'thresholds');
  Object observe(Element target) =>
      js_util.callMethod(this, 'observe', [target]);

  Object unobserve(Element target) =>
      js_util.callMethod(this, 'unobserve', [target]);

  Object disconnect() => js_util.callMethod(this, 'disconnect', []);

  Iterable<IntersectionObserverEntry> takeRecords() =>
      js_util.callMethod(this, 'takeRecords', []);
}

@JS()
@staticInterop
class IntersectionObserverEntry {
  external IntersectionObserverEntry(
      IntersectionObserverEntryInit intersectionObserverEntryInit);
}

extension PropsIntersectionObserverEntry on IntersectionObserverEntry {
  double get time => js_util.getProperty(this, 'time');
  DOMRectReadOnly? get rootBounds => js_util.getProperty(this, 'rootBounds');
  DOMRectReadOnly get boundingClientRect =>
      js_util.getProperty(this, 'boundingClientRect');
  DOMRectReadOnly get intersectionRect =>
      js_util.getProperty(this, 'intersectionRect');
  bool get isIntersecting => js_util.getProperty(this, 'isIntersecting');
  double get intersectionRatio =>
      js_util.getProperty(this, 'intersectionRatio');
  Element get target => js_util.getProperty(this, 'target');
}

@anonymous
@JS()
@staticInterop
class IntersectionObserverEntryInit {
  external factory IntersectionObserverEntryInit(
      {required double time,
      DOMRectInit? rootBounds,
      required DOMRectInit boundingClientRect,
      required DOMRectInit intersectionRect,
      required bool isIntersecting,
      required double intersectionRatio,
      required Element target});
}

extension PropsIntersectionObserverEntryInit on IntersectionObserverEntryInit {
  double get time => js_util.getProperty(this, 'time');
  set time(double newValue) {
    js_util.setProperty(this, 'time', newValue);
  }

  DOMRectInit? get rootBounds => js_util.getProperty(this, 'rootBounds');
  set rootBounds(DOMRectInit? newValue) {
    js_util.setProperty(this, 'rootBounds', newValue);
  }

  DOMRectInit get boundingClientRect =>
      js_util.getProperty(this, 'boundingClientRect');
  set boundingClientRect(DOMRectInit newValue) {
    js_util.setProperty(this, 'boundingClientRect', newValue);
  }

  DOMRectInit get intersectionRect =>
      js_util.getProperty(this, 'intersectionRect');
  set intersectionRect(DOMRectInit newValue) {
    js_util.setProperty(this, 'intersectionRect', newValue);
  }

  bool get isIntersecting => js_util.getProperty(this, 'isIntersecting');
  set isIntersecting(bool newValue) {
    js_util.setProperty(this, 'isIntersecting', newValue);
  }

  double get intersectionRatio =>
      js_util.getProperty(this, 'intersectionRatio');
  set intersectionRatio(double newValue) {
    js_util.setProperty(this, 'intersectionRatio', newValue);
  }

  Element get target => js_util.getProperty(this, 'target');
  set target(Element newValue) {
    js_util.setProperty(this, 'target', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class IntersectionObserverInit {
  external factory IntersectionObserverInit(
      {dynamic root, String? rootMargin = '0px', dynamic threshold = 0});
}

extension PropsIntersectionObserverInit on IntersectionObserverInit {
  dynamic get root => js_util.getProperty(this, 'root');
  set root(dynamic newValue) {
    js_util.setProperty(this, 'root', newValue);
  }

  String get rootMargin => js_util.getProperty(this, 'rootMargin');
  set rootMargin(String newValue) {
    js_util.setProperty(this, 'rootMargin', newValue);
  }

  dynamic get threshold => js_util.getProperty(this, 'threshold');
  set threshold(dynamic newValue) {
    js_util.setProperty(this, 'threshold', newValue);
  }
}
