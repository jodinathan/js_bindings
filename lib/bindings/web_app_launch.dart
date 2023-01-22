/// Web App Launch Handler API
///
/// https://wicg.github.io/web-app-launch/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library web_app_launch;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface is used when implementing custom launch navigation
/// handling in a PWA. When [window.launchQueue.setConsumer()] is
/// invoked to set up the launch navigation handling functionality,
/// the callback function inside [setConsumer()] is passed a object
/// instance.
@experimental
@JS()
@staticInterop
class LaunchParams {
  external factory LaunchParams();
}

extension PropsLaunchParams on LaunchParams {
  String? get targetURL => js_util.getProperty(this, 'targetURL');
  Iterable<FileSystemHandle> get files => js_util.getProperty(this, 'files');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface is available via the [Window.launchQueue]
/// property. When a progressive web app (PWA) is launched with a
/// [launch_handler] [client_mode] value set, provides access to
/// functionality that allows custom launch navigation handling to be
/// implemented in the PWA. This functionality is controlled by the
/// properties of the [LaunchParams] object passed into the
/// [setConsumer()] callback function.
@experimental
@JS()
@staticInterop
class LaunchQueue {
  external factory LaunchQueue();
}

extension PropsLaunchQueue on LaunchQueue {
  void setConsumer(LaunchConsumer consumer) =>
      js_util.callMethod(this, 'setConsumer', [allowInterop(consumer)]);
}
