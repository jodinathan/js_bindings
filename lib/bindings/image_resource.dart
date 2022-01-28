/// Image Resource
///
/// https://w3c.github.io/image-resource/
@JS('window')
@staticInterop
library image_resource;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

@anonymous
@JS()
@staticInterop
class ImageResource {
  external factory ImageResource(
      {String src, String sizes, String type, String label});
}

extension PropsImageResource on ImageResource {
  external String get src;
  external set src(String newValue);
  external String get sizes;
  external set sizes(String newValue);
  external String get type;
  external set type(String newValue);
  external String get label;
  external set label(String newValue);
}
