/// Web IDL
///
/// https://heycam.github.io/webidl/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webidl_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
  @JS('INDEX_SIZE_ERR')
  external static int get indexSizeErr;

  @JS('DOMSTRING_SIZE_ERR')
  external static int get domstringSizeErr;

  @JS('HIERARCHY_REQUEST_ERR')
  external static int get hierarchyRequestErr;

  @JS('WRONG_DOCUMENT_ERR')
  external static int get wrongDocumentErr;

  @JS('INVALID_CHARACTER_ERR')
  external static int get invalidCharacterErr;

  @JS('NO_DATA_ALLOWED_ERR')
  external static int get noDataAllowedErr;

  @JS('NO_MODIFICATION_ALLOWED_ERR')
  external static int get noModificationAllowedErr;

  @JS('NOT_FOUND_ERR')
  external static int get notFoundErr;

  @JS('NOT_SUPPORTED_ERR')
  external static int get notSupportedErr;

  @JS('INUSE_ATTRIBUTE_ERR')
  external static int get inuseAttributeErr;

  @JS('INVALID_STATE_ERR')
  external static int get invalidStateErr;

  @JS('SYNTAX_ERR')
  external static int get syntaxErr;

  @JS('INVALID_MODIFICATION_ERR')
  external static int get invalidModificationErr;

  @JS('NAMESPACE_ERR')
  external static int get namespaceErr;

  @JS('INVALID_ACCESS_ERR')
  external static int get invalidAccessErr;

  @JS('VALIDATION_ERR')
  external static int get validationErr;

  @JS('TYPE_MISMATCH_ERR')
  external static int get typeMismatchErr;

  @JS('SECURITY_ERR')
  external static int get securityErr;

  @JS('NETWORK_ERR')
  external static int get networkErr;

  @JS('ABORT_ERR')
  external static int get abortErr;

  @JS('URL_MISMATCH_ERR')
  external static int get urlMismatchErr;

  @JS('QUOTA_EXCEEDED_ERR')
  external static int get quotaExceededErr;

  @JS('TIMEOUT_ERR')
  external static int get timeoutErr;

  @JS('INVALID_NODE_TYPE_ERR')
  external static int get invalidNodeTypeErr;

  @JS('DATA_CLONE_ERR')
  external static int get dataCloneErr;
}

extension PropsDOMException on DOMException {
  ///  Returns a [String] that contains one of the strings associated
  /// with an error name.
  ///
  String get name => js_util.getProperty(this, 'name');

  ///  Returns a [String] representing a message or description
  /// associated with the given error name.
  ///
  String get message => js_util.getProperty(this, 'message');

  ///  Returns a [int] that contains one of the error code constants,
  /// or [0] if none match. This field is used for historical reasons.
  /// New DOM exceptions don't use this anymore: they put this info in
  /// the [DOMException.name] attribute.
  ///
  @Deprecated('Not official in the specs')
  int get code => js_util.getProperty(this, 'code');
}
