/// User-Agent Client Hints
///
/// https://wicg.github.io/ua-client-hints/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ua_client_hints;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class NavigatorUABrandVersion {
  external factory NavigatorUABrandVersion(
      {required String brand, required String version});
}

extension PropsNavigatorUABrandVersion on NavigatorUABrandVersion {
  String get brand => js_util.getProperty(this, 'brand');
  set brand(String newValue) {
    js_util.setProperty(this, 'brand', newValue);
  }

  String get version => js_util.getProperty(this, 'version');
  set version(String newValue) {
    js_util.setProperty(this, 'version', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class UADataValues {
  external factory UADataValues(
      {required Iterable<NavigatorUABrandVersion> brands,
      required bool mobile,
      required String platform,
      required String architecture,
      required String bitness,
      required String model,
      required String platformVersion,
      required String uaFullVersion});
}

extension PropsUADataValues on UADataValues {
  Iterable<NavigatorUABrandVersion> get brands =>
      js_util.getProperty(this, 'brands');
  set brands(Iterable<NavigatorUABrandVersion> newValue) {
    js_util.setProperty(this, 'brands', newValue);
  }

  bool get mobile => js_util.getProperty(this, 'mobile');
  set mobile(bool newValue) {
    js_util.setProperty(this, 'mobile', newValue);
  }

  String get platform => js_util.getProperty(this, 'platform');
  set platform(String newValue) {
    js_util.setProperty(this, 'platform', newValue);
  }

  String get architecture => js_util.getProperty(this, 'architecture');
  set architecture(String newValue) {
    js_util.setProperty(this, 'architecture', newValue);
  }

  String get bitness => js_util.getProperty(this, 'bitness');
  set bitness(String newValue) {
    js_util.setProperty(this, 'bitness', newValue);
  }

  String get model => js_util.getProperty(this, 'model');
  set model(String newValue) {
    js_util.setProperty(this, 'model', newValue);
  }

  String get platformVersion => js_util.getProperty(this, 'platformVersion');
  set platformVersion(String newValue) {
    js_util.setProperty(this, 'platformVersion', newValue);
  }

  String get uaFullVersion => js_util.getProperty(this, 'uaFullVersion');
  set uaFullVersion(String newValue) {
    js_util.setProperty(this, 'uaFullVersion', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class UALowEntropyJSON {
  external factory UALowEntropyJSON(
      {required Iterable<NavigatorUABrandVersion> brands,
      required bool mobile,
      required String platform});
}

extension PropsUALowEntropyJSON on UALowEntropyJSON {
  Iterable<NavigatorUABrandVersion> get brands =>
      js_util.getProperty(this, 'brands');
  set brands(Iterable<NavigatorUABrandVersion> newValue) {
    js_util.setProperty(this, 'brands', newValue);
  }

  bool get mobile => js_util.getProperty(this, 'mobile');
  set mobile(bool newValue) {
    js_util.setProperty(this, 'mobile', newValue);
  }

  String get platform => js_util.getProperty(this, 'platform');
  set platform(String newValue) {
    js_util.setProperty(this, 'platform', newValue);
  }
}

///  The interface of the [User-Agent Client Hints API] returns
/// information about the browser and operating system of a user.
///  An instance of this object is returned by calling
/// [Navigator.userAgentData]. Therefore, this interface has no
/// constructor.
///
///   Note: The terms high entropy and low entropy refer to the
/// amount of information these values reveal about the browser. The
/// values returned as properties are deemed low entropy, and
/// unlikely to identify a user. The values returned by
/// [NavigatorUAData.getHighEntropyValues()] could potentially reveal
/// more information. These values are therefore retrieved via a
/// [Future], allowing time for the browser to request user
/// permission, or make other checks.
///
@JS()
@staticInterop
class NavigatorUAData {
  external NavigatorUAData();
}

extension PropsNavigatorUAData on NavigatorUAData {
  ///  Returns an array of brand information containing the browser
  /// name and version.
  ///
  Iterable<NavigatorUABrandVersion> get brands =>
      js_util.getProperty(this, 'brands');

  /// Returns [true] if the user-agent is running on a mobile device.
  ///
  bool get mobile => js_util.getProperty(this, 'mobile');

  /// Returns the platform brand the user-agent is running on.
  ///
  String get platform => js_util.getProperty(this, 'platform');

  ///  Returns a [Future] that resolves with a dictionary object
  /// containing the high entropy values the user-agent returns.
  ///
  /// NavigatorUAData.getHighEntropyValues(hints);
  ///
  Future<UADataValues> getHighEntropyValues(

          /// An array containing the hints to be returned, one or more of:
          ///
          ///    ["architecture"]
          ///    ["bitness"]
          ///    ["model"]
          ///    ["platformVersion"]
          ///    ["uaFullVersion"]
          ///
          ///
          Iterable<String> hints) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getHighEntropyValues', [hints]));

  ///  A serializer that returns a JSON representation of the low
  /// entropy properties of the [NavigatorUAData] object.
  ///
  /// NavigatorUAData.toJSON();
  ///
  UALowEntropyJSON toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@JS()
@staticInterop
class NavigatorUA {
  external NavigatorUA();
}

extension PropsNavigatorUA on NavigatorUA {
  NavigatorUAData get userAgentData =>
      js_util.getProperty(this, 'userAgentData');
}
