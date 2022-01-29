/// Web IDL
///
/// https://heycam.github.io/webidl/
@JS('window')
@staticInterop
library web_i_d_l_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

///  The interface represents an abnormal event (called an exception)
/// that occurs as a result of calling a method or accessing a
/// property of a web API. This is how error conditions are described
/// in web APIs.
///  Each exception has a name, which is a short "PascalCase"-style
/// string identifying the error or abnormal condition.
@JS()
@staticInterop
class DOMException {
  external DOMException([String? message = '', String? name = 'Error']);
  external static int get INDEX_SIZE_ERR;
  external static int get DOMSTRING_SIZE_ERR;
  external static int get HIERARCHY_REQUEST_ERR;
  external static int get WRONG_DOCUMENT_ERR;
  external static int get INVALID_CHARACTER_ERR;
  external static int get NO_DATA_ALLOWED_ERR;
  external static int get NO_MODIFICATION_ALLOWED_ERR;
  external static int get NOT_FOUND_ERR;
  external static int get NOT_SUPPORTED_ERR;
  external static int get INUSE_ATTRIBUTE_ERR;
  external static int get INVALID_STATE_ERR;
  external static int get SYNTAX_ERR;
  external static int get INVALID_MODIFICATION_ERR;
  external static int get NAMESPACE_ERR;
  external static int get INVALID_ACCESS_ERR;
  external static int get VALIDATION_ERR;
  external static int get TYPE_MISMATCH_ERR;
  external static int get SECURITY_ERR;
  external static int get NETWORK_ERR;
  external static int get ABORT_ERR;
  external static int get URL_MISMATCH_ERR;
  external static int get QUOTA_EXCEEDED_ERR;
  external static int get TIMEOUT_ERR;
  external static int get INVALID_NODE_TYPE_ERR;
  external static int get DATA_CLONE_ERR;
}

extension PropsDOMException on DOMException {
  ///  Returns a [DOMString] that contains one of the strings
  /// associated with an error name.
  ///
  String get name => js_util.getProperty(this, 'name');

  ///  Returns a [DOMString] representing a message or description
  /// associated with the given error name.
  ///
  String get message => js_util.getProperty(this, 'message');

  ///  Returns a [short] that contains one of the error code constants,
  /// or [0] if none match. This field is used for historical reasons.
  /// New DOM exceptions don't use this anymore: they put this info in
  /// the [DOMException.name] attribute.
  ///
  @deprecated
  int get code => js_util.getProperty(this, 'code');
}
