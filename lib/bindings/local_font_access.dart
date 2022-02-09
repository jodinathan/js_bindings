/// Local Font Access API
///
/// https://wicg.github.io/local-font-access/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library local_font_access;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class NavigatorFonts {
  external NavigatorFonts();
}

extension PropsNavigatorFonts on NavigatorFonts {
  FontManager get fonts => js_util.getProperty(this, 'fonts');
}

@JS()
@staticInterop
class FontManager {
  external FontManager();
}

extension PropsFontManager on FontManager {
  Future<Iterable<FontMetadata>> query([QueryOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'query', [options]));
}

@anonymous
@JS()
@staticInterop
class QueryOptions {
  external factory QueryOptions({Iterable<String>? select = const []});
}

extension PropsQueryOptions on QueryOptions {
  Iterable<String> get select => js_util.getProperty(this, 'select');
  set select(Iterable<String> newValue) {
    js_util.setProperty(this, 'select', newValue);
  }
}

@JS()
@staticInterop
class FontMetadata {
  external FontMetadata();
}

extension PropsFontMetadata on FontMetadata {
  Future<Blob> blob() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'blob', []));

  String get postscriptName => js_util.getProperty(this, 'postscriptName');
  String get fullName => js_util.getProperty(this, 'fullName');
  String get family => js_util.getProperty(this, 'family');
  String get style => js_util.getProperty(this, 'style');
}
