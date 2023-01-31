/// Web Share API
///
/// https://w3c.github.io/web-share/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library web_share;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class ShareData {
  external factory ShareData(
      {Iterable<File>? files, String? title, String? text, String? url});
}

extension PropsShareData on ShareData {
  Iterable<File> get files => js_util.getProperty(this, 'files');
  set files(Iterable<File> newValue) {
    js_util.setProperty(this, 'files', newValue);
  }

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
