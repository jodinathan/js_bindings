/// Get Installed Related Apps API
///
/// https://wicg.github.io/get-installed-related-apps/spec/
@JS('window')
library get_installed_related_apps;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';

@anonymous
@JS()
class RelatedApplication {
  external String get platform;
  external set platform(String newValue);
  external String get url;
  external set url(String newValue);
  external String get id;
  external set id(String newValue);
  external String get version;
  external set version(String newValue);

  external factory RelatedApplication(
      {String platform, String url, String id, String version});
}
