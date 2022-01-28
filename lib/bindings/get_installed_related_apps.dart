/// Get Installed Related Apps API
///
/// https://wicg.github.io/get-installed-related-apps/spec/
@JS('window')
@staticInterop
library get_installed_related_apps;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html */

@anonymous
@JS()
@staticInterop
class RelatedApplication {
  external factory RelatedApplication(
      {String platform, String url, String id, String version});
}

extension PropsRelatedApplication on RelatedApplication {
  external String get platform;
  external set platform(String newValue);
  external String get url;
  external set url(String newValue);
  external String get id;
  external set id(String newValue);
  external String get version;
  external set version(String newValue);
}
