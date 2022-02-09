/// App History API
///
/// https://wicg.github.io/app-history/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library app_history;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class AppHistory implements EventTarget {
  external AppHistory();
}

extension PropsAppHistory on AppHistory {
  Iterable<AppHistoryEntry> entries() =>
      js_util.callMethod(this, 'entries', []);

  AppHistoryEntry? get current => js_util.getProperty(this, 'current');
  Object updateCurrent(AppHistoryUpdateCurrentOptions options) =>
      js_util.callMethod(this, 'updateCurrent', [options]);

  AppHistoryTransition? get transition =>
      js_util.getProperty(this, 'transition');
  bool get canGoBack => js_util.getProperty(this, 'canGoBack');
  bool get canGoForward => js_util.getProperty(this, 'canGoForward');
  AppHistoryResult navigate(String url, [AppHistoryNavigateOptions? options]) =>
      js_util.callMethod(this, 'navigate', [url, options]);

  AppHistoryResult reload([AppHistoryReloadOptions? options]) =>
      js_util.callMethod(this, 'reload', [options]);

  AppHistoryResult goTo(String key, [AppHistoryNavigationOptions? options]) =>
      js_util.callMethod(this, 'goTo', [key, options]);

  AppHistoryResult back([AppHistoryNavigationOptions? options]) =>
      js_util.callMethod(this, 'back', [options]);

  AppHistoryResult forward([AppHistoryNavigationOptions? options]) =>
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

  EventHandlerNonNull? get oncurrentchange =>
      js_util.getProperty(this, 'oncurrentchange');
  set oncurrentchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'oncurrentchange', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AppHistoryUpdateCurrentOptions {
  external factory AppHistoryUpdateCurrentOptions({dynamic state});
}

extension PropsAppHistoryUpdateCurrentOptions
    on AppHistoryUpdateCurrentOptions {
  dynamic get state => js_util.getProperty(this, 'state');
  set state(dynamic newValue) {
    js_util.setProperty(this, 'state', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AppHistoryNavigationOptions {
  external factory AppHistoryNavigationOptions({dynamic info});
}

extension PropsAppHistoryNavigationOptions on AppHistoryNavigationOptions {
  dynamic get info => js_util.getProperty(this, 'info');
  set info(dynamic newValue) {
    js_util.setProperty(this, 'info', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AppHistoryNavigateOptions implements AppHistoryNavigationOptions {
  external factory AppHistoryNavigateOptions(
      {dynamic state, bool? replace = false});
}

extension PropsAppHistoryNavigateOptions on AppHistoryNavigateOptions {
  dynamic get state => js_util.getProperty(this, 'state');
  set state(dynamic newValue) {
    js_util.setProperty(this, 'state', newValue);
  }

  bool get replace => js_util.getProperty(this, 'replace');
  set replace(bool newValue) {
    js_util.setProperty(this, 'replace', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AppHistoryReloadOptions implements AppHistoryNavigationOptions {
  external factory AppHistoryReloadOptions({dynamic state});
}

extension PropsAppHistoryReloadOptions on AppHistoryReloadOptions {
  dynamic get state => js_util.getProperty(this, 'state');
  set state(dynamic newValue) {
    js_util.setProperty(this, 'state', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AppHistoryResult {
  external factory AppHistoryResult(
      {required Future<AppHistoryEntry> committed,
      required Future<AppHistoryEntry> finished});
}

extension PropsAppHistoryResult on AppHistoryResult {
  Future<AppHistoryEntry> get committed =>
      js_util.promiseToFuture(js_util.getProperty(this, 'committed'));
  set committed(Future<AppHistoryEntry> newValue) {
    js_util.setProperty(this, 'committed', newValue);
  }

  Future<AppHistoryEntry> get finished =>
      js_util.promiseToFuture(js_util.getProperty(this, 'finished'));
  set finished(Future<AppHistoryEntry> newValue) {
    js_util.setProperty(this, 'finished', newValue);
  }
}

@JS()
@staticInterop
class AppHistoryCurrentChangeEvent implements Event {
  external AppHistoryCurrentChangeEvent(
      String type, AppHistoryCurrentChangeEventInit eventInit);
}

extension PropsAppHistoryCurrentChangeEvent on AppHistoryCurrentChangeEvent {
  AppHistoryNavigationType? get navigationType {
    final ret = js_util.getProperty(this, 'navigationType');

    return ret == null ? null : AppHistoryNavigationType.values.byName(ret);
  }

  AppHistoryEntry get from => js_util.getProperty(this, 'from');
}

@anonymous
@JS()
@staticInterop
class AppHistoryCurrentChangeEventInit implements EventInit {
  external factory AppHistoryCurrentChangeEventInit._(
      {String? navigationType, required AppHistoryEntry destination});

  factory AppHistoryCurrentChangeEventInit(
          {AppHistoryNavigationType? navigationType,
          required AppHistoryEntry destination}) =>
      AppHistoryCurrentChangeEventInit._(
          navigationType: navigationType?.name, destination: destination);
}

extension PropsAppHistoryCurrentChangeEventInit
    on AppHistoryCurrentChangeEventInit {
  AppHistoryNavigationType? get navigationType {
    final ret = js_util.getProperty(this, 'navigationType');

    return ret == null ? null : AppHistoryNavigationType.values.byName(ret);
  }

  set navigationType(AppHistoryNavigationType? newValue) {
    js_util.setProperty(this, 'navigationType', newValue?.name);
  }

  AppHistoryEntry get destination => js_util.getProperty(this, 'destination');
  set destination(AppHistoryEntry newValue) {
    js_util.setProperty(this, 'destination', newValue);
  }
}

@JS()
@staticInterop
class AppHistoryTransition {
  external AppHistoryTransition();
}

extension PropsAppHistoryTransition on AppHistoryTransition {
  AppHistoryNavigationType get navigationType => AppHistoryNavigationType.values
      .byName(js_util.getProperty(this, 'navigationType'));
  AppHistoryEntry get from => js_util.getProperty(this, 'from');
  Future<Object> get finished =>
      js_util.promiseToFuture(js_util.getProperty(this, 'finished'));
  AppHistoryResult rollback([AppHistoryNavigationOptions? options]) =>
      js_util.callMethod(this, 'rollback', [options]);
}

@JS()
@staticInterop
class AppHistoryNavigateEvent implements Event {
  external AppHistoryNavigateEvent(
      String type, AppHistoryNavigateEventInit eventInit);
}

extension PropsAppHistoryNavigateEvent on AppHistoryNavigateEvent {
  AppHistoryNavigationType get navigationType => AppHistoryNavigationType.values
      .byName(js_util.getProperty(this, 'navigationType'));
  AppHistoryDestination get destination =>
      js_util.getProperty(this, 'destination');
  bool get canTransition => js_util.getProperty(this, 'canTransition');
  bool get userInitiated => js_util.getProperty(this, 'userInitiated');
  bool get hashChange => js_util.getProperty(this, 'hashChange');
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  FormData? get formData => js_util.getProperty(this, 'formData');
  dynamic get info => js_util.getProperty(this, 'info');
  Object transitionWhile(Future<Object> newNavigationAction) =>
      js_util.callMethod(this, 'transitionWhile', [newNavigationAction]);
}

@anonymous
@JS()
@staticInterop
class AppHistoryNavigateEventInit implements EventInit {
  external factory AppHistoryNavigateEventInit._(
      {String? navigationType,
      AppHistoryDestination? destination,
      bool? canTransition = false,
      bool? userInitiated = false,
      bool? hashChange = false,
      AbortSignal? signal,
      FormData? formData,
      dynamic info});

  factory AppHistoryNavigateEventInit(
          {AppHistoryNavigationType? navigationType =
              AppHistoryNavigationType.push,
          AppHistoryDestination? destination,
          bool? canTransition = false,
          bool? userInitiated = false,
          bool? hashChange = false,
          AbortSignal? signal,
          FormData? formData,
          dynamic info}) =>
      AppHistoryNavigateEventInit._(
          navigationType: navigationType?.name,
          destination: destination,
          canTransition: canTransition,
          userInitiated: userInitiated,
          hashChange: hashChange,
          signal: signal,
          formData: formData,
          info: info);
}

extension PropsAppHistoryNavigateEventInit on AppHistoryNavigateEventInit {
  AppHistoryNavigationType get navigationType => AppHistoryNavigationType.values
      .byName(js_util.getProperty(this, 'navigationType'));
  set navigationType(AppHistoryNavigationType newValue) {
    js_util.setProperty(this, 'navigationType', newValue.name);
  }

  AppHistoryDestination get destination =>
      js_util.getProperty(this, 'destination');
  set destination(AppHistoryDestination newValue) {
    js_util.setProperty(this, 'destination', newValue);
  }

  bool get canTransition => js_util.getProperty(this, 'canTransition');
  set canTransition(bool newValue) {
    js_util.setProperty(this, 'canTransition', newValue);
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

  dynamic get info => js_util.getProperty(this, 'info');
  set info(dynamic newValue) {
    js_util.setProperty(this, 'info', newValue);
  }
}

enum AppHistoryNavigationType { reload, push, replace, traverse }

@JS()
@staticInterop
class AppHistoryDestination {
  external AppHistoryDestination();
}

extension PropsAppHistoryDestination on AppHistoryDestination {
  String get url => js_util.getProperty(this, 'url');
  String? get key => js_util.getProperty(this, 'key');
  String? get id => js_util.getProperty(this, 'id');
  int get index => js_util.getProperty(this, 'index');
  bool get sameDocument => js_util.getProperty(this, 'sameDocument');
  dynamic getState() => js_util.callMethod(this, 'getState', []);
}

@JS()
@staticInterop
class AppHistoryEntry implements EventTarget {
  external AppHistoryEntry();
}

extension PropsAppHistoryEntry on AppHistoryEntry {
  String? get url => js_util.getProperty(this, 'url');
  String get key => js_util.getProperty(this, 'key');
  String get id => js_util.getProperty(this, 'id');
  int get index => js_util.getProperty(this, 'index');
  bool get sameDocument => js_util.getProperty(this, 'sameDocument');
  dynamic getState() => js_util.callMethod(this, 'getState', []);

  EventHandlerNonNull? get onnavigateto =>
      js_util.getProperty(this, 'onnavigateto');
  set onnavigateto(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onnavigateto', newValue);
  }

  EventHandlerNonNull? get onnavigatefrom =>
      js_util.getProperty(this, 'onnavigatefrom');
  set onnavigatefrom(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onnavigatefrom', newValue);
  }

  EventHandlerNonNull? get onfinish => js_util.getProperty(this, 'onfinish');
  set onfinish(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onfinish', newValue);
  }

  EventHandlerNonNull? get ondispose => js_util.getProperty(this, 'ondispose');
  set ondispose(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ondispose', newValue);
  }
}
