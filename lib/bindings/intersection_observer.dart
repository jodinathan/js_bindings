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

///  The interface of the Intersection Observer API provides a way to
/// asynchronously observe changes in the intersection of a target
/// element with an ancestor element or with a top-level document's
/// viewport. The ancestor element or viewport is referred to as the
/// root.
///  When an is created, it's configured to watch for given ratios of
/// visibility within the root. The configuration cannot be changed
/// once the is created, so a given observer object is only useful
/// for watching for specific changes in degree of visibility;
/// however, you can watch multiple target elements with the same
/// observer.
@JS()
@staticInterop
class IntersectionObserver {
  external IntersectionObserver(IntersectionObserverCallback callback,
      [IntersectionObserverInit? options]);
}

extension PropsIntersectionObserver on IntersectionObserver {
  ///  The [Element] or [Document] whose bounds are used as the
  /// bounding box when testing for intersection. If no value was
  /// passed to the constructor or its value is [null], the top-level
  /// document's viewport is used.
  ///
  dynamic get root => js_util.getProperty(this, 'root');

  ///  An offset rectangle applied to the root's bounding box when
  /// calculating intersections, effectively shrinking or growing the
  /// root for calculation purposes. The value returned by this
  /// property may not be the same as the one specified when calling
  /// the constructor as it may be changed to match internal
  /// requirements. Each offset can be expressed in pixels ([px]) or as
  /// a percentage ([%]). The default is "0px 0px 0px 0px".
  ///
  String get rootMargin => js_util.getProperty(this, 'rootMargin');

  ///  A list of thresholds, sorted in increasing numeric order, where
  /// each threshold is a ratio of intersection area to bounding box
  /// area of an observed target. Notifications for a target are
  /// generated when any of the thresholds are crossed for that target.
  /// If no value was passed to the constructor, 0 is used.
  ///
  Iterable<double> get thresholds => js_util.getProperty(this, 'thresholds');

  /// Tells the [IntersectionObserver] a target element to observe.
  ///
  /// IntersectionObserver.observe(targetElement);
  ///
  Object observe(Element target) =>
      js_util.callMethod(this, 'observe', [target]);

  ///  Tells the [IntersectionObserver] to stop observing a particular
  /// target element.
  ///
  /// IntersectionObserver.unobserve(target);
  ///
  ///
  ///  This snippet shows an observer being created, an element being observed, and then being
  ///  unobserved.
  ///
  /// var observer = new IntersectionObserver(callback);
  /// observer.observe(document.getElementById("elementToObserve"));
  ///
  /// /* ... */
  ///
  /// observer.unobserve(document.getElementById("elementToObserve"));
  ///
  Object unobserve(

          ///
          ///     The [Element] to cease observing. If the specified element
          /// isn't being
          ///     observed, this method does nothing and no exception is
          /// thrown.
          ///
          ///
          Element target) =>
      js_util.callMethod(this, 'unobserve', [target]);

  ///  Stops the [IntersectionObserver] object from observing any
  /// target.
  ///
  /// intersectionObserver.disconnect();
  ///
  Object disconnect() => js_util.callMethod(this, 'disconnect', []);

  ///  Returns an array of [IntersectionObserverEntry] objects for all
  /// observed targets.
  ///
  /// intersectionObserverEntries = intersectionObserver.takeRecords();
  ///
  Iterable<IntersectionObserverEntry> takeRecords() =>
      js_util.callMethod(this, 'takeRecords', []);
}

///  The interface of the Intersection Observer API describes the
/// intersection between the target element and its root container at
/// a specific moment of transition.
///  Instances of are delivered to an [IntersectionObserver] callback
/// in its [entries] parameter; otherwise, these objects can only be
/// obtained by calling [IntersectionObserver.takeRecords()].
@JS()
@staticInterop
class IntersectionObserverEntry {
  external IntersectionObserverEntry(
      IntersectionObserverEntryInit intersectionObserverEntryInit);
}

extension PropsIntersectionObserverEntry on IntersectionObserverEntry {
  ///  A [double] indicating the time at which the intersection was
  /// recorded, relative to the [IntersectionObserver]'s time origin.
  ///
  double get time => js_util.getProperty(this, 'time');

  ///  Returns a [DOMRectReadOnly] for the intersection observer's
  /// root.
  ///
  DOMRectReadOnly? get rootBounds => js_util.getProperty(this, 'rootBounds');

  ///  Returns the bounds rectangle of the target element as a
  /// [DOMRectReadOnly]. The bounds are computed as described in the
  /// documentation for [Element.getBoundingClientRect()].
  ///
  DOMRectReadOnly get boundingClientRect =>
      js_util.getProperty(this, 'boundingClientRect');

  ///  Returns a [DOMRectReadOnly] representing the target's visible
  /// area.
  ///
  DOMRectReadOnly get intersectionRect =>
      js_util.getProperty(this, 'intersectionRect');

  ///  A Boolean value which is [true] if the target element intersects
  /// with the intersection observer's root. If this is [true], then,
  /// the [IntersectionObserverEntry] describes a transition into a
  /// state of intersection; if it's [false], then you know the
  /// transition is from intersecting to not-intersecting.
  ///
  bool get isIntersecting => js_util.getProperty(this, 'isIntersecting');

  ///  Returns the ratio of the [intersectionRect] to the
  /// [boundingClientRect].
  ///
  double get intersectionRatio =>
      js_util.getProperty(this, 'intersectionRatio');

  /// The [Element] whose intersection with the root changed.
  ///
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
