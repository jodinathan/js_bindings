/// Manifest Incubations
///
/// https://wicg.github.io/manifest-incubations/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library manifest_incubations;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.Non-standard: This feature is non-standard and is not
/// on a standards track. Do not use it on production sites facing
/// the Web: it will not work for every user. There may also be large
/// incompatibilities between implementations and the behavior may
/// change in the future.
///  The is the interface of the [beforeinstallprompt] event fired at
/// the [Window] object before a user is prompted to "install" a
/// website to a home screen on mobile.
/// This interface inherits from the [Event] interface.
@experimental
@JS()
@staticInterop
class BeforeInstallPromptEvent implements Event {
  external factory BeforeInstallPromptEvent(String type,
      [EventInit? eventInitDict]);
}

extension PropsBeforeInstallPromptEvent on BeforeInstallPromptEvent {
  Future<PromptResponseObject> prompt() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'prompt', []));
}

@anonymous
@JS()
@staticInterop
class PromptResponseObject {
  external factory PromptResponseObject._({required String userChoice});

  factory PromptResponseObject({required AppBannerPromptOutcome userChoice}) =>
      PromptResponseObject._(userChoice: userChoice.name);
}

extension PropsPromptResponseObject on PromptResponseObject {
  AppBannerPromptOutcome get userChoice => AppBannerPromptOutcome.values
      .byName(js_util.getProperty(this, 'userChoice'));
  set userChoice(AppBannerPromptOutcome newValue) {
    js_util.setProperty(this, 'userChoice', newValue.name);
  }
}

enum AppBannerPromptOutcome { accepted, dismissed }

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
  Object setConsumer(LaunchConsumer consumer) =>
      js_util.callMethod(this, 'setConsumer', [allowInterop(consumer)]);
}
