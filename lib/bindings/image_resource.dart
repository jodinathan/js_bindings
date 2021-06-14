/// Image Resource
///
/// https://w3c.github.io/image-resource/
@JS('window')
library image_resource;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

@anonymous
@JS()
class ImageResource {
  external String get src;
  external set src(String newValue);
  external String get sizes;
  external set sizes(String newValue);
  external String get type;
  external set type(String newValue);
  external String get label;
  external set label(String newValue);

  external factory ImageResource(
      {String src, String sizes, String type, String label});
}
