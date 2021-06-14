/// User-Agent Client Hints
///
/// https://wicg.github.io/ua-client-hints/
@JS('window')
library ua_client_hints;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

@anonymous
@JS()
class NavigatorUABrandVersion {
  external String get brand;
  external set brand(String newValue);
  external String get version;
  external set version(String newValue);

  external factory NavigatorUABrandVersion({String brand, String version});
}

@anonymous
@JS()
class UADataValues {
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

@anonymous
@JS()
class UALowEntropyJSON {
  external Iterable<NavigatorUABrandVersion> get brands;
  external set brands(Iterable<NavigatorUABrandVersion> newValue);
  external bool get mobile;
  external set mobile(bool newValue);
  external String get platform;
  external set platform(String newValue);

  external factory UALowEntropyJSON(
      {Iterable<NavigatorUABrandVersion> brands, bool mobile, String platform});
}

@JS()
class NavigatorUAData {
  external Iterable<NavigatorUABrandVersion> get brands;
  external bool get mobile;
  external String get platform;
  external Promise<UADataValues> getHighEntropyValues(Iterable<String> hints);
  external UALowEntropyJSON toJSON();

  external factory NavigatorUAData();
}

@JS()
abstract class NavigatorUA {
  external NavigatorUAData get userAgentData;
}
