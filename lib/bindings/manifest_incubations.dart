/// Manifest Incubations
///
/// https://wicg.github.io/manifest-incubations/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library manifest_incubations;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class BeforeInstallPromptEvent implements Event {
  external BeforeInstallPromptEvent(String type, [EventInit? eventInitDict]);
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
