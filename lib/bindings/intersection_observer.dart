/// Intersection Observer
///
/// https://w3c.github.io/IntersectionObserver/
@JS('window')
@staticInterop
library intersection_observer;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
hr_time_3
geometry_1 */

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
  external factory IntersectionObserver(IntersectionObserverCallback callback,
      [IntersectionObserverInit? options]);
}

extension PropsIntersectionObserver on IntersectionObserver {
  ///  The [Element] or [Document] whose bounds are used as the
  /// bounding box when testing for intersection. If no value was
  /// passed to the constructor or its value is [null], the top-level
  /// document's viewport is used.
  ///
  external dynamic get root;

  ///  An offset rectangle applied to the root's bounding box when
  /// calculating intersections, effectively shrinking or growing the
  /// root for calculation purposes. The value returned by this
  /// property may not be the same as the one specified when calling
  /// the constructor as it may be changed to match internal
  /// requirements. Each offset can be expressed in pixels ([px]) or as
  /// a percentage ([%]). The default is "0px 0px 0px 0px".
  ///
  external String get rootMargin;

  ///  A list of thresholds, sorted in increasing numeric order, where
  /// each threshold is a ratio of intersection area to bounding box
  /// area of an observed target. Notifications for a target are
  /// generated when any of the thresholds are crossed for that target.
  /// If no value was passed to the constructor, 0 is used.
  ///
  external Iterable<double> get thresholds;

  /// Tells the [IntersectionObserver] a target element to observe.
  ///
  /// IntersectionObserver.observe(targetElement);
  ///
  external Object observe(Element target);

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
  external Object unobserve(Element target);

  ///  Stops the [IntersectionObserver] object from observing any
  /// target.
  ///
  /// intersectionObserver.disconnect();
  ///
  external Object disconnect();

  ///  Returns an array of [IntersectionObserverEntry] objects for all
  /// observed targets.
  ///
  /// intersectionObserverEntries = intersectionObserver.takeRecords();
  ///
  external Iterable<IntersectionObserverEntry> takeRecords();
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
  external factory IntersectionObserverEntry(
      IntersectionObserverEntryInit intersectionObserverEntryInit);
}

extension PropsIntersectionObserverEntry on IntersectionObserverEntry {
  ///  A [DOMHighResTimeStamp] indicating the time at which the
  /// intersection was recorded, relative to the
  /// [IntersectionObserver]'s time origin.
  ///
  external double get time;

  ///  Returns a [DOMRectReadOnly] for the intersection observer's
  /// root.
  ///
  external DOMRectReadOnly? get rootBounds;

  ///  Returns the bounds rectangle of the target element as a
  /// [DOMRectReadOnly]. The bounds are computed as described in the
  /// documentation for [Element.getBoundingClientRect()].
  ///
  external DOMRectReadOnly get boundingClientRect;

  ///  Returns a [DOMRectReadOnly] representing the target's visible
  /// area.
  ///
  external DOMRectReadOnly get intersectionRect;

  ///  A Boolean value which is [true] if the target element intersects
  /// with the intersection observer's root. If this is [true], then,
  /// the [IntersectionObserverEntry] describes a transition into a
  /// state of intersection; if it's [false], then you know the
  /// transition is from intersecting to not-intersecting.
  ///
  external bool get isIntersecting;

  ///  Returns the ratio of the [intersectionRect] to the
  /// [boundingClientRect].
  ///
  external double get intersectionRatio;

  /// The [Element] whose intersection with the root changed.
  ///
  external Element get target;
}

@anonymous
@JS()
@staticInterop
class IntersectionObserverEntryInit {
  external factory IntersectionObserverEntryInit(
      {double time,
      DOMRectInit? rootBounds,
      DOMRectInit boundingClientRect,
      DOMRectInit intersectionRect,
      bool isIntersecting,
      double intersectionRatio,
      Element target});
}

extension PropsIntersectionObserverEntryInit on IntersectionObserverEntryInit {
  external double get time;
  external set time(double newValue);
  external DOMRectInit? get rootBounds;
  external set rootBounds(DOMRectInit? newValue);
  external DOMRectInit get boundingClientRect;
  external set boundingClientRect(DOMRectInit newValue);
  external DOMRectInit get intersectionRect;
  external set intersectionRect(DOMRectInit newValue);
  external bool get isIntersecting;
  external set isIntersecting(bool newValue);
  external double get intersectionRatio;
  external set intersectionRatio(double newValue);
  external Element get target;
  external set target(Element newValue);
}

@anonymous
@JS()
@staticInterop
class IntersectionObserverInit {
  external factory IntersectionObserverInit(
      {dynamic root, String rootMargin = '0px', dynamic threshold = 0});
}

extension PropsIntersectionObserverInit on IntersectionObserverInit {
  external dynamic get root;
  external set root(dynamic newValue);
  external String get rootMargin;
  external set rootMargin(String newValue);
  external dynamic get threshold;
  external set threshold(dynamic newValue);
}
