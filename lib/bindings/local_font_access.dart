/// Local Font Access API
///
/// https://wicg.github.io/local-font-access/
@JS('window')
@staticInterop
library local_font_access;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: file_a_p_i */

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
  Iterable<Promise<FontMetadata>> query([QueryOptions? options]) =>
      js_util.callMethod(this, 'query', [options]);
}

@anonymous
@JS()
@staticInterop
class QueryOptions {
  external factory QueryOptions(
      {bool persistentAccess = false, Iterable<String> select = const []});
}

extension PropsQueryOptions on QueryOptions {
  bool get persistentAccess => js_util.getProperty(this, 'persistentAccess');
  set persistentAccess(bool newValue) {
    js_util.setProperty(this, 'persistentAccess', newValue);
  }

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
  Promise<Blob> blob() => js_util.callMethod(this, 'blob', []);

  String get postscriptName => js_util.getProperty(this, 'postscriptName');
  String get fullName => js_util.getProperty(this, 'fullName');
  String get family => js_util.getProperty(this, 'family');
  String get style => js_util.getProperty(this, 'style');
}
