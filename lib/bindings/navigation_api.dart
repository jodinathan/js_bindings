/// Navigation API
///
/// https://wicg.github.io/navigation-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library navigation_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Navigation API allows control over all
/// navigation actions for the current [window] in one central place,
/// including initiating navigations programmatically, examining
/// navigation history entries, and managing navigations as they
/// happen.
/// It is accessed via the [Window.navigation] property.
///  The Navigation API only exposes history entries created in the
/// current browsing context that have the same origin as the current
/// page (e.g. not navigations inside embedded [<iframe>]s, or
/// cross-origin navigations), providing an accurate list of all
/// previous history entries just for your app. This makes traversing
/// the history a much less fragile proposition than with the older
/// History API.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    Navigation
///
///
@experimental
@JS()
@staticInterop
class Navigation implements EventTarget {
  external factory Navigation();
}

extension PropsNavigation on Navigation {
  Iterable<NavigationHistoryEntry> entries() =>
      js_util.callMethod(this, 'entries', []);

  NavigationHistoryEntry? get currentEntry =>
      js_util.getProperty(this, 'currentEntry');
  void updateCurrentEntry(NavigationUpdateCurrentEntryOptions options) =>
      js_util.callMethod(this, 'updateCurrentEntry', [options]);

  NavigationTransition? get transition =>
      js_util.getProperty(this, 'transition');
  bool get canGoBack => js_util.getProperty(this, 'canGoBack');
  bool get canGoForward => js_util.getProperty(this, 'canGoForward');
  NavigationResult navigate(String url, [NavigationNavigateOptions? options]) =>
      js_util.callMethod(this, 'navigate', [url, options]);

  NavigationResult reload([NavigationReloadOptions? options]) =>
      js_util.callMethod(this, 'reload', [options]);

  NavigationResult traverseTo(String key, [NavigationOptions? options]) =>
      js_util.callMethod(this, 'traverseTo', [key, options]);

  NavigationResult back([NavigationOptions? options]) =>
      js_util.callMethod(this, 'back', [options]);

  NavigationResult forward([NavigationOptions? options]) =>
      js_util.callMethod(this, 'forward', [options]);

  EventHandlerNonNull? get onnavigate =>
      js_util.getProperty(this, 'onnavigate');
  set onnavigate(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onnavigate', newValue);
  }

  EventHandlerNonNull? get onnavigatesuccess =>
      js_util.getProperty(this, 'onnavigatesuccess');
  set onnavigatesuccess(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onnavigatesuccess', newValue);
  }

  EventHandlerNonNull? get onnavigateerror =>
      js_util.getProperty(this, 'onnavigateerror');
  set onnavigateerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onnavigateerror', newValue);
  }

  EventHandlerNonNull? get oncurrententrychange =>
      js_util.getProperty(this, 'oncurrententrychange');
  set oncurrententrychange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncurrententrychange', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class NavigationUpdateCurrentEntryOptions {
  external factory NavigationUpdateCurrentEntryOptions({dynamic state});
}

extension PropsNavigationUpdateCurrentEntryOptions
    on NavigationUpdateCurrentEntryOptions {
  dynamic get state => js_util.getProperty(this, 'state');
  set state(dynamic newValue) {
    js_util.setProperty(this, 'state', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class NavigationOptions {
  external factory NavigationOptions({dynamic info});
}

extension PropsNavigationOptions on NavigationOptions {
  dynamic get info => js_util.getProperty(this, 'info');
  set info(dynamic newValue) {
    js_util.setProperty(this, 'info', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class NavigationNavigateOptions implements NavigationOptions {
  external factory NavigationNavigateOptions._(
      {dynamic state, String? history});

  factory NavigationNavigateOptions(
          {dynamic state,
          NavigationHistoryBehavior? history =
              NavigationHistoryBehavior.auto}) =>
      NavigationNavigateOptions._(state: state, history: history?.value);
}

extension PropsNavigationNavigateOptions on NavigationNavigateOptions {
  dynamic get state => js_util.getProperty(this, 'state');
  set state(dynamic newValue) {
    js_util.setProperty(this, 'state', newValue);
  }

  NavigationHistoryBehavior get history =>
      NavigationHistoryBehavior.fromValue(js_util.getProperty(this, 'history'));
  set history(NavigationHistoryBehavior newValue) {
    js_util.setProperty(this, 'history', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class NavigationReloadOptions implements NavigationOptions {
  external factory NavigationReloadOptions({dynamic state});
}

extension PropsNavigationReloadOptions on NavigationReloadOptions {
  dynamic get state => js_util.getProperty(this, 'state');
  set state(dynamic newValue) {
    js_util.setProperty(this, 'state', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class NavigationResult {
  external factory NavigationResult(
      {required Future<NavigationHistoryEntry> committed,
      required Future<NavigationHistoryEntry> finished});
}

extension PropsNavigationResult on NavigationResult {
  Future<NavigationHistoryEntry> get committed =>
      js_util.promiseToFuture(js_util.getProperty(this, 'committed'));
  set committed(Future<NavigationHistoryEntry> newValue) {
    js_util.setProperty(this, 'committed', newValue);
  }

  Future<NavigationHistoryEntry> get finished =>
      js_util.promiseToFuture(js_util.getProperty(this, 'finished'));
  set finished(Future<NavigationHistoryEntry> newValue) {
    js_util.setProperty(this, 'finished', newValue);
  }
}

enum NavigationHistoryBehavior {
  auto('auto'),
  push('push'),
  replace('replace');

  final String value;
  static NavigationHistoryBehavior fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<NavigationHistoryBehavior> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const NavigationHistoryBehavior(this.value);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Navigation API is the event object for the
/// [currententrychange] event, which fires when the
/// [Navigation.currentEntry] has changed.
///  This event will fire for same-document navigations (e.g.
/// [back()] or [traverseTo()]), replacements (i.e. a [navigate()]
/// call with [history] set to [replace]), or other calls that change
/// the entry's state (e.g. [updateCurrentEntry()], or the History
/// API's [History.replaceState()]).
///  This event fires after the navigation is committed, meaning that
/// the visible URL has changed and the [NavigationHistoryEntry]
/// update has occurred. It is useful for migrating from usage of
/// older API features like the [hashchange] or [popstate] events.
///
///
///
///    Event
///
///
///
///
///
///
///
///    NavigationCurrentEntryChangeEvent
///
///
@experimental
@JS()
@staticInterop
class NavigationCurrentEntryChangeEvent implements Event {
  external factory NavigationCurrentEntryChangeEvent(
      String type, NavigationCurrentEntryChangeEventInit eventInit);
}

extension PropsNavigationCurrentEntryChangeEvent
    on NavigationCurrentEntryChangeEvent {
  NavigationType? get navigationType {
    final ret = js_util.getProperty(this, 'navigationType');

    return ret == null ? null : NavigationType.fromValue(ret);
  }

  NavigationHistoryEntry get from => js_util.getProperty(this, 'from');
}

@anonymous
@JS()
@staticInterop
class NavigationCurrentEntryChangeEventInit implements EventInit {
  external factory NavigationCurrentEntryChangeEventInit._(
      {String? navigationType, required NavigationHistoryEntry destination});

  factory NavigationCurrentEntryChangeEventInit(
          {NavigationType? navigationType,
          required NavigationHistoryEntry destination}) =>
      NavigationCurrentEntryChangeEventInit._(
          navigationType: navigationType?.value, destination: destination);
}

extension PropsNavigationCurrentEntryChangeEventInit
    on NavigationCurrentEntryChangeEventInit {
  NavigationType? get navigationType {
    final ret = js_util.getProperty(this, 'navigationType');

    return ret == null ? null : NavigationType.fromValue(ret);
  }

  set navigationType(NavigationType? newValue) {
    js_util.setProperty(this, 'navigationType', newValue?.value);
  }

  NavigationHistoryEntry get destination =>
      js_util.getProperty(this, 'destination');
  set destination(NavigationHistoryEntry newValue) {
    js_util.setProperty(this, 'destination', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Navigation API represents an ongoing
/// navigation, that is, a navigation that hasn't yet reached the
/// [navigatesuccess] or [navigateerror] stage.
/// It is accessed via the [Navigation.transition] property.
@experimental
@JS()
@staticInterop
class NavigationTransition {
  external factory NavigationTransition();
}

extension PropsNavigationTransition on NavigationTransition {
  NavigationType get navigationType =>
      NavigationType.fromValue(js_util.getProperty(this, 'navigationType'));
  NavigationHistoryEntry get from => js_util.getProperty(this, 'from');
  Future<void> get finished =>
      js_util.promiseToFuture(js_util.getProperty(this, 'finished'));
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Navigation API is the event object for the
/// [navigate] event, which fires when any type of navigation is
/// initiated (this includes usage of History API features like
/// [History.go()]). provides access to information about that
/// navigation, and allows developers to intercept and control the
/// navigation handling.
///
///
///
///    Event
///
///
///
///
///
///
///
///    NavigateEvent
///
///
@experimental
@JS()
@staticInterop
class NavigateEvent implements Event {
  external factory NavigateEvent(String type, NavigateEventInit eventInit);
}

extension PropsNavigateEvent on NavigateEvent {
  NavigationType get navigationType =>
      NavigationType.fromValue(js_util.getProperty(this, 'navigationType'));
  NavigationDestination get destination =>
      js_util.getProperty(this, 'destination');
  bool get canIntercept => js_util.getProperty(this, 'canIntercept');
  bool get userInitiated => js_util.getProperty(this, 'userInitiated');
  bool get hashChange => js_util.getProperty(this, 'hashChange');
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  FormData? get formData => js_util.getProperty(this, 'formData');
  String? get downloadRequest => js_util.getProperty(this, 'downloadRequest');
  dynamic get info => js_util.getProperty(this, 'info');
  void intercept([NavigationInterceptOptions? options]) =>
      js_util.callMethod(this, 'intercept', [options]);

  void scroll() => js_util.callMethod(this, 'scroll', []);
}

@anonymous
@JS()
@staticInterop
class NavigateEventInit implements EventInit {
  external factory NavigateEventInit._(
      {String? navigationType,
      NavigationDestination? destination,
      bool? canIntercept = false,
      bool? userInitiated = false,
      bool? hashChange = false,
      AbortSignal? signal,
      FormData? formData,
      String? downloadRequest,
      dynamic info});

  factory NavigateEventInit(
          {NavigationType? navigationType = NavigationType.push,
          NavigationDestination? destination,
          bool? canIntercept = false,
          bool? userInitiated = false,
          bool? hashChange = false,
          AbortSignal? signal,
          FormData? formData,
          String? downloadRequest,
          dynamic info}) =>
      NavigateEventInit._(
          navigationType: navigationType?.value,
          destination: destination,
          canIntercept: canIntercept,
          userInitiated: userInitiated,
          hashChange: hashChange,
          signal: signal,
          formData: formData,
          downloadRequest: downloadRequest,
          info: info);
}

extension PropsNavigateEventInit on NavigateEventInit {
  NavigationType get navigationType =>
      NavigationType.fromValue(js_util.getProperty(this, 'navigationType'));
  set navigationType(NavigationType newValue) {
    js_util.setProperty(this, 'navigationType', newValue.value);
  }

  NavigationDestination get destination =>
      js_util.getProperty(this, 'destination');
  set destination(NavigationDestination newValue) {
    js_util.setProperty(this, 'destination', newValue);
  }

  bool get canIntercept => js_util.getProperty(this, 'canIntercept');
  set canIntercept(bool newValue) {
    js_util.setProperty(this, 'canIntercept', newValue);
  }

  bool get userInitiated => js_util.getProperty(this, 'userInitiated');
  set userInitiated(bool newValue) {
    js_util.setProperty(this, 'userInitiated', newValue);
  }

  bool get hashChange => js_util.getProperty(this, 'hashChange');
  set hashChange(bool newValue) {
    js_util.setProperty(this, 'hashChange', newValue);
  }

  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }

  FormData? get formData => js_util.getProperty(this, 'formData');
  set formData(FormData? newValue) {
    js_util.setProperty(this, 'formData', newValue);
  }

  String? get downloadRequest => js_util.getProperty(this, 'downloadRequest');
  set downloadRequest(String? newValue) {
    js_util.setProperty(this, 'downloadRequest', newValue);
  }

  dynamic get info => js_util.getProperty(this, 'info');
  set info(dynamic newValue) {
    js_util.setProperty(this, 'info', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class NavigationInterceptOptions {
  external factory NavigationInterceptOptions._(
      {required NavigationInterceptHandler handler,
      required String focusReset,
      required String scroll});

  factory NavigationInterceptOptions(
          {required NavigationInterceptHandler handler,
          required NavigationFocusReset focusReset,
          required NavigationScrollBehavior scroll}) =>
      NavigationInterceptOptions._(
          handler: handler, focusReset: focusReset.value, scroll: scroll.value);
}

extension PropsNavigationInterceptOptions on NavigationInterceptOptions {
  NavigationInterceptHandler get handler =>
      js_util.getProperty(this, 'handler');
  set handler(NavigationInterceptHandler newValue) {
    js_util.setProperty(this, 'handler', newValue);
  }

  NavigationFocusReset get focusReset =>
      NavigationFocusReset.fromValue(js_util.getProperty(this, 'focusReset'));
  set focusReset(NavigationFocusReset newValue) {
    js_util.setProperty(this, 'focusReset', newValue.value);
  }

  NavigationScrollBehavior get scroll =>
      NavigationScrollBehavior.fromValue(js_util.getProperty(this, 'scroll'));
  set scroll(NavigationScrollBehavior newValue) {
    js_util.setProperty(this, 'scroll', newValue.value);
  }
}

enum NavigationFocusReset {
  afterTransition('after-transition'),
  manual('manual');

  final String value;
  static NavigationFocusReset fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<NavigationFocusReset> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const NavigationFocusReset(this.value);
}

enum NavigationScrollBehavior {
  afterTransition('after-transition'),
  manual('manual');

  final String value;
  static NavigationScrollBehavior fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<NavigationScrollBehavior> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const NavigationScrollBehavior(this.value);
}

enum NavigationType {
  reload('reload'),
  push('push'),
  replace('replace'),
  traverse('traverse');

  final String value;
  static NavigationType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<NavigationType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const NavigationType(this.value);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Navigation API represents the destination
/// being navigated to in the current navigation.
/// It is accessed via the [NavigateEvent.destination] property.
@experimental
@JS()
@staticInterop
class NavigationDestination {
  external factory NavigationDestination();
}

extension PropsNavigationDestination on NavigationDestination {
  String get url => js_util.getProperty(this, 'url');
  String? get key => js_util.getProperty(this, 'key');
  String? get id => js_util.getProperty(this, 'id');
  int get index => js_util.getProperty(this, 'index');
  bool get sameDocument => js_util.getProperty(this, 'sameDocument');
  dynamic getState() => js_util.callMethod(this, 'getState', []);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Navigation API represents a single
/// navigation history entry.
///  These objects are commonly accessed via the
/// [Navigation.currentEntry] property and [Navigation.entries()]
/// method.
///  The Navigation API only exposes history entries created in the
/// current browsing context that have the same origin as the current
/// page (e.g. not navigations inside embedded [<iframe>]s, or
/// cross-origin navigations), providing an accurate list of all
/// previous history entries just for your app. This makes traversing
/// the history a much less fragile proposition than with the older
/// History API.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    NavigationHistoryEntry
///
///
@experimental
@JS()
@staticInterop
class NavigationHistoryEntry implements EventTarget {
  external factory NavigationHistoryEntry();
}

extension PropsNavigationHistoryEntry on NavigationHistoryEntry {
  String? get url => js_util.getProperty(this, 'url');
  String get key => js_util.getProperty(this, 'key');
  String get id => js_util.getProperty(this, 'id');
  int get index => js_util.getProperty(this, 'index');
  bool get sameDocument => js_util.getProperty(this, 'sameDocument');
  dynamic getState() => js_util.callMethod(this, 'getState', []);

  EventHandlerNonNull? get ondispose => js_util.getProperty(this, 'ondispose');
  set ondispose(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondispose', newValue);
  }
}
