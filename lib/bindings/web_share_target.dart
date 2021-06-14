/// Web Share Target API
///
/// https://w3c.github.io/web-share-target/
@JS('window')
library web_share_target;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'web_share_target.dart';

@anonymous
@JS()
class ShareTargetParams {
  external String get title;
  external set title(String newValue);
  external String get text;
  external set text(String newValue);
  external String get url;
  external set url(String newValue);

  external factory ShareTargetParams({String title, String text, String url});
}

@anonymous
@JS()
class ShareTarget {
  external String get action;
  external set action(String newValue);
  external String get method;
  external set method(String newValue);
  external String get enctype;
  external set enctype(String newValue);
  external ShareTargetParams get params;
  external set params(ShareTargetParams newValue);

  external factory ShareTarget(
      {String action,
      String method = 'GET',
      String enctype = 'application/x-www-form-urlencoded',
      ShareTargetParams params});
}

@JS()
class WebAppManifest {
  external ShareTarget get share_target;
  external set share_target(ShareTarget newValue);

  external factory WebAppManifest();
}
