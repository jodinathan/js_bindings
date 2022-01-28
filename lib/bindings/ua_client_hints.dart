/// User-Agent Client Hints
///
/// https://wicg.github.io/ua-client-hints/
@JS('window')
@staticInterop
library ua_client_hints;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

@anonymous
@JS()
@staticInterop
class NavigatorUABrandVersion {
  external factory NavigatorUABrandVersion({String brand, String version});
}

extension PropsNavigatorUABrandVersion on NavigatorUABrandVersion {
  external String get brand;
  external set brand(String newValue);
  external String get version;
  external set version(String newValue);
}

@anonymous
@JS()
@staticInterop
class UADataValues {
  external factory UADataValues(
      {Iterable<NavigatorUABrandVersion> brands,
      bool mobile,
      String platform,
      String architecture,
      String bitness,
      String model,
      String platformVersion,
      String uaFullVersion});
}

extension PropsUADataValues on UADataValues {
  external Iterable<NavigatorUABrandVersion> get brands;
  external set brands(Iterable<NavigatorUABrandVersion> newValue);
  external bool get mobile;
  external set mobile(bool newValue);
  external String get platform;
  external set platform(String newValue);
  external String get architecture;
  external set architecture(String newValue);
  external String get bitness;
  external set bitness(String newValue);
  external String get model;
  external set model(String newValue);
  external String get platformVersion;
  external set platformVersion(String newValue);
  external String get uaFullVersion;
  external set uaFullVersion(String newValue);
}

@anonymous
@JS()
@staticInterop
class UALowEntropyJSON {
  external factory UALowEntropyJSON(
      {Iterable<NavigatorUABrandVersion> brands, bool mobile, String platform});
}

extension PropsUALowEntropyJSON on UALowEntropyJSON {
  external Iterable<NavigatorUABrandVersion> get brands;
  external set brands(Iterable<NavigatorUABrandVersion> newValue);
  external bool get mobile;
  external set mobile(bool newValue);
  external String get platform;
  external set platform(String newValue);
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
/// [Promise], allowing time for the browser to request user
/// permission, or make other checks.
///
@JS()
@staticInterop
class NavigatorUAData {
  external factory NavigatorUAData();
}

extension PropsNavigatorUAData on NavigatorUAData {
  ///  Returns an array of brand information containing the browser
  /// name and version.
  ///
  external Iterable<NavigatorUABrandVersion> get brands;

  /// Returns [true] if the user-agent is running on a mobile device.
  ///
  external bool get mobile;

  /// Returns the platform brand the user-agent is running on.
  ///
  external String get platform;

  ///  Returns a [Promise] that resolves with a dictionary object
  /// containing the high entropy values the user-agent returns.
  ///
  /// NavigatorUAData.getHighEntropyValues(hints);
  ///
  external Promise<UADataValues> getHighEntropyValues(Iterable<String> hints);

  ///  A serializer that returns a JSON representation of the low
  /// entropy properties of the [NavigatorUAData] object.
  ///
  /// NavigatorUAData.toJSON();
  ///
  external UALowEntropyJSON toJSON();
}

@JS()
@staticInterop
class NavigatorUA {
  external factory NavigatorUA();
}

extension PropsNavigatorUA on NavigatorUA {
  external NavigatorUAData get userAgentData;
}
