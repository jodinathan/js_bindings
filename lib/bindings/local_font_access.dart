/// Local Font Access API
///
/// https://wicg.github.io/local-font-access/
@JS('window')
library local_font_access;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'file_a_p_i.dart';

@JS()
mixin NavigatorFonts {
  external FontManager get fonts;
}

@JS()
class FontManager {
  external Iterable<Promise<FontMetadata>> query([QueryOptions? options]);

  external factory FontManager();
}

@anonymous
@JS()
class QueryOptions {
  external bool get persistentAccess;
  external set persistentAccess(bool newValue);
  external Iterable<String> get select;
  external set select(Iterable<String> newValue);

  external factory QueryOptions(
      {bool persistentAccess = false, Iterable<String> select = const []});
}

@JS()
class FontMetadata {
  external Promise<Blob> blob();
  external String get postscriptName;
  external String get fullName;
  external String get family;
  external String get style;

  external factory FontMetadata();
}
