/// Web Share Target API
///
/// https://w3c.github.io/web-share-target/
@JS('window')
@staticInterop
library web_share_target;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

@anonymous
@JS()
@staticInterop
class ShareTargetParams {
  external factory ShareTargetParams({String title, String text, String url});
}

extension PropsShareTargetParams on ShareTargetParams {
  external String get title;
  external set title(String newValue);
  external String get text;
  external set text(String newValue);
  external String get url;
  external set url(String newValue);
}

@anonymous
@JS()
@staticInterop
class ShareTarget {
  external factory ShareTarget(
      {String action,
      String method = 'GET',
      String enctype = 'application/x-www-form-urlencoded',
      ShareTargetParams params});
}

extension PropsShareTarget on ShareTarget {
  external String get action;
  external set action(String newValue);
  external String get method;
  external set method(String newValue);
  external String get enctype;
  external set enctype(String newValue);
  external ShareTargetParams get params;
  external set params(ShareTargetParams newValue);
}
