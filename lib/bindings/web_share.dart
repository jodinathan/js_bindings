/// Web Share API
///
/// https://w3c.github.io/web-share/
@JS('window')
@staticInterop
library web_share;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
file_a_p_i */

@anonymous
@JS()
@staticInterop
class ShareData {
  external factory ShareData(
      {Iterable<File> files, String title, String text, String url});
}

extension PropsShareData on ShareData {
  external Iterable<File> get files;
  external set files(Iterable<File> newValue);
  external String get title;
  external set title(String newValue);
  external String get text;
  external set text(String newValue);
  external String get url;
  external set url(String newValue);
}
