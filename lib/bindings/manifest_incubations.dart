/// Manifest Incubations
///
/// https://wicg.github.io/manifest-incubations/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library manifest_incubations;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  The is fired at the [Window.onbeforeinstallprompt] handler
/// before a user is prompted to "install" a web site to a home
/// screen on mobile.
/// This interface inherits from the [Event] interface.
@experimental
@JS()
@staticInterop
class BeforeInstallPromptEvent implements Event {
  external factory BeforeInstallPromptEvent._(String type,
      [EventInit? eventInitDict]);

  factory BeforeInstallPromptEvent(String type, [EventInit? eventInitDict]) =>
      BeforeInstallPromptEvent._(type, eventInitDict ?? undefined);
}

extension PropsBeforeInstallPromptEvent on BeforeInstallPromptEvent {
  Future<PromptResponseObject> prompt() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'prompt', []));
}

@anonymous
@JS()
@staticInterop
class PromptResponseObject {
  external factory PromptResponseObject._({String? userChoice});

  factory PromptResponseObject({AppBannerPromptOutcome? userChoice}) =>
      PromptResponseObject._(userChoice: userChoice?.value ?? undefined);
}

extension PropsPromptResponseObject on PromptResponseObject {
  AppBannerPromptOutcome get userChoice =>
      AppBannerPromptOutcome.fromValue(js_util.getProperty(this, 'userChoice'));
  set userChoice(AppBannerPromptOutcome newValue) {
    js_util.setProperty(this, 'userChoice', newValue.value);
  }
}

enum AppBannerPromptOutcome {
  accepted('accepted'),
  dismissed('dismissed');

  final String value;
  static AppBannerPromptOutcome fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<AppBannerPromptOutcome> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const AppBannerPromptOutcome(this.value);
}

@JS()
@staticInterop
class LaunchParams {
  external factory LaunchParams();
}

extension PropsLaunchParams on LaunchParams {
  String? get targetURL => js_util.getProperty(this, 'targetURL');
  Iterable<FileSystemHandle> get files => js_util.getProperty(this, 'files');
}

@JS()
@staticInterop
class LaunchQueue {
  external factory LaunchQueue();
}

extension PropsLaunchQueue on LaunchQueue {
  void setConsumer(LaunchConsumer consumer) =>
      js_util.callMethod(this, 'setConsumer', [allowInterop(consumer)]);
}
