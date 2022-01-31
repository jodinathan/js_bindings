/// Web Share Target API
///
/// https://w3c.github.io/web-share-target/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library web_share_target;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class ShareTargetParams {
  external factory ShareTargetParams({String title, String text, String url});
}

extension PropsShareTargetParams on ShareTargetParams {
  String get title => js_util.getProperty(this, 'title');
  set title(String newValue) {
    js_util.setProperty(this, 'title', newValue);
  }

  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }

  String get url => js_util.getProperty(this, 'url');
  set url(String newValue) {
    js_util.setProperty(this, 'url', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ShareTarget {
  external factory ShareTarget(
      {String action,
      String method = 'GET',
      String? enctype = 'application/x-www-form-urlencoded',
      ShareTargetParams? params});
}

extension PropsShareTarget on ShareTarget {
  String get action => js_util.getProperty(this, 'action');
  set action(String newValue) {
    js_util.setProperty(this, 'action', newValue);
  }

  String get method => js_util.getProperty(this, 'method');
  set method(String newValue) {
    js_util.setProperty(this, 'method', newValue);
  }

  String get enctype => js_util.getProperty(this, 'enctype');
  set enctype(String newValue) {
    js_util.setProperty(this, 'enctype', newValue);
  }

  ShareTargetParams get params => js_util.getProperty(this, 'params');
  set params(ShareTargetParams newValue) {
    js_util.setProperty(this, 'params', newValue);
  }
}
