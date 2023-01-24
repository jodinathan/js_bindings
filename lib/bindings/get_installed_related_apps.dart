/// Get Installed Related Apps API
///
/// https://wicg.github.io/get-installed-related-apps/spec/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library get_installed_related_apps;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class RelatedApplication {
  external factory RelatedApplication(
      {required String platform,
      required String url,
      required String id,
      required String version});
}

extension PropsRelatedApplication on RelatedApplication {
  String get platform => js_util.getProperty(this, 'platform');
  set platform(String newValue) {
    js_util.setProperty(this, 'platform', newValue);
  }

  String get url => js_util.getProperty(this, 'url');
  set url(String newValue) {
    js_util.setProperty(this, 'url', newValue);
  }

  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  String get version => js_util.getProperty(this, 'version');
  set version(String newValue) {
    js_util.setProperty(this, 'version', newValue);
  }
}
