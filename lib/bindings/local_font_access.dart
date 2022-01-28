/// Local Font Access API
///
/// https://wicg.github.io/local-font-access/
@JS('window')
@staticInterop
library local_font_access;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: file_a_p_i */

@JS()
@staticInterop
class NavigatorFonts {
  external factory NavigatorFonts();
}

extension PropsNavigatorFonts on NavigatorFonts {
  external FontManager get fonts;
}

@JS()
@staticInterop
class FontManager {
  external factory FontManager();
}

extension PropsFontManager on FontManager {
  external Iterable<Promise<FontMetadata>> query([QueryOptions? options]);
}

@anonymous
@JS()
@staticInterop
class QueryOptions {
  external factory QueryOptions(
      {bool persistentAccess = false, Iterable<String> select = const []});
}

extension PropsQueryOptions on QueryOptions {
  external bool get persistentAccess;
  external set persistentAccess(bool newValue);
  external Iterable<String> get select;
  external set select(Iterable<String> newValue);
}

@JS()
@staticInterop
class FontMetadata {
  external factory FontMetadata();
}

extension PropsFontMetadata on FontMetadata {
  external Promise<Blob> blob();
  external String get postscriptName;
  external String get fullName;
  external String get family;
  external String get style;
}
