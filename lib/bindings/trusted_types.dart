/// Trusted Types
///
/// https://w3c.github.io/trusted-types/dist/spec/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library trusted_types;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the [Trusted Types API] represents a string
/// that a developer can insert into an injection sink that will
/// render it as HTML. These objects are created via
/// [TrustedTypePolicy.createHTML()] and therefore have no
/// constructor.
///  The value of a TrustedHTML object is set when the object is
/// created and cannot be changed by JavaScript as there is no setter
/// exposed.
@JS()
@staticInterop
class TrustedHTML {
  external factory TrustedHTML();
}

extension PropsTrustedHTML on TrustedHTML {
  String mToString() => js_util.callMethod(this, 'toString', []);

  String toJSON() => js_util.callMethod(this, 'toJSON', []);

  static TrustedHTML fromLiteral(dynamic templateStringsArray) =>
      js_util.callMethod(TrustedHTML, 'fromLiteral', [templateStringsArray]);
}

///  The interface of the [Trusted Types API] represents a string
/// with an uncompiled script body that a developer can insert into
/// an injection sink that might execute the script. These objects
/// are created via [TrustedTypePolicy.createScript()] and therefore
/// have no constructor.
///  The value of a TrustedScript object is set when the object is
/// created and cannot be changed by JavaScript as there is no setter
/// exposed.
@JS()
@staticInterop
class TrustedScript {
  external factory TrustedScript();
}

extension PropsTrustedScript on TrustedScript {
  String mToString() => js_util.callMethod(this, 'toString', []);

  String toJSON() => js_util.callMethod(this, 'toJSON', []);

  static TrustedScript fromLiteral(dynamic templateStringsArray) =>
      js_util.callMethod(TrustedScript, 'fromLiteral', [templateStringsArray]);
}

///  The interface of the [Trusted Types API] represents a string
/// that a developer can insert into an injection sink that will
/// parse it as a URL of an external script. These objects are
/// created via [TrustedTypePolicy.createScriptURL()] and therefore
/// have no constructor.
///  The value of a TrustedScriptURL object is set when the object is
/// created and cannot be changed by JavaScript as there is no setter
/// exposed.
@JS()
@staticInterop
class TrustedScriptURL {
  external factory TrustedScriptURL();
}

extension PropsTrustedScriptURL on TrustedScriptURL {
  String mToString() => js_util.callMethod(this, 'toString', []);

  String toJSON() => js_util.callMethod(this, 'toJSON', []);

  static TrustedScriptURL fromLiteral(dynamic templateStringsArray) => js_util
      .callMethod(TrustedScriptURL, 'fromLiteral', [templateStringsArray]);
}

///  The interface of the [Trusted Types API] creates policies and
/// allows the verification of Trusted Type objects against created
/// policies.
@JS()
@staticInterop
class TrustedTypePolicyFactory {
  external factory TrustedTypePolicyFactory();
}

extension PropsTrustedTypePolicyFactory on TrustedTypePolicyFactory {
  TrustedTypePolicy createPolicy(String policyName,
          [TrustedTypePolicyOptions? policyOptions]) =>
      js_util.callMethod(this, 'createPolicy', [policyName, policyOptions]);

  bool isHTML(dynamic value) => js_util.callMethod(this, 'isHTML', [value]);

  bool isScript(dynamic value) => js_util.callMethod(this, 'isScript', [value]);

  bool isScriptURL(dynamic value) =>
      js_util.callMethod(this, 'isScriptURL', [value]);

  TrustedHTML get emptyHTML => js_util.getProperty(this, 'emptyHTML');
  TrustedScript get emptyScript => js_util.getProperty(this, 'emptyScript');
  String? getAttributeType(String tagName, String attribute,
          [String? elementNs = '', String? attrNs = '']) =>
      js_util.callMethod(
          this, 'getAttributeType', [tagName, attribute, elementNs, attrNs]);

  String? getPropertyType(String tagName, String property,
          [String? elementNs = '']) =>
      js_util
          .callMethod(this, 'getPropertyType', [tagName, property, elementNs]);

  TrustedTypePolicy? get defaultPolicy =>
      js_util.getProperty(this, 'defaultPolicy');
}

///  The interface of the [Trusted Types API] defines a group of
/// functions which create [TrustedType] objects.
///  A object is created by [TrustedTypePolicyFactory.createPolicy()]
/// to define a policy for enforcing security rules on input.
/// Therefore, has no constructor.
@JS()
@staticInterop
class TrustedTypePolicy {
  external factory TrustedTypePolicy();
}

extension PropsTrustedTypePolicy on TrustedTypePolicy {
  String get name => js_util.getProperty(this, 'name');
  TrustedHTML createHTML(String input,
          [dynamic arguments1, dynamic arguments2, dynamic arguments3]) =>
      js_util.callMethod(
          this, 'createHTML', [input, arguments1, arguments2, arguments3]);

  TrustedScript createScript(String input,
          [dynamic arguments1, dynamic arguments2, dynamic arguments3]) =>
      js_util.callMethod(
          this, 'createScript', [input, arguments1, arguments2, arguments3]);

  TrustedScriptURL createScriptURL(String input,
          [dynamic arguments1, dynamic arguments2, dynamic arguments3]) =>
      js_util.callMethod(
          this, 'createScriptURL', [input, arguments1, arguments2, arguments3]);
}

@anonymous
@JS()
@staticInterop
class TrustedTypePolicyOptions {
  external factory TrustedTypePolicyOptions(
      {CreateHTMLCallback? createHTML,
      CreateScriptCallback? createScript,
      CreateScriptURLCallback? createScriptURL});
}

extension PropsTrustedTypePolicyOptions on TrustedTypePolicyOptions {
  CreateHTMLCallback? get createHTML => js_util.getProperty(this, 'createHTML');
  set createHTML(CreateHTMLCallback? newValue) {
    js_util.setProperty(this, 'createHTML', newValue);
  }

  CreateScriptCallback? get createScript =>
      js_util.getProperty(this, 'createScript');
  set createScript(CreateScriptCallback? newValue) {
    js_util.setProperty(this, 'createScript', newValue);
  }

  CreateScriptURLCallback? get createScriptURL =>
      js_util.getProperty(this, 'createScriptURL');
  set createScriptURL(CreateScriptURLCallback? newValue) {
    js_util.setProperty(this, 'createScriptURL', newValue);
  }
}
