/// Trusted Types
///
/// https://w3c.github.io/webappsec-trusted-types/dist/spec/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library trusted_types;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class TrustedHTML {
  external TrustedHTML();
}

extension PropsTrustedHTML on TrustedHTML {
  String mToString() => js_util.callMethod(this, 'toString', []);

  String toJSON() => js_util.callMethod(this, 'toJSON', []);

  static TrustedHTML fromLiteral(dynamic templateStringsArray) =>
      js_util.callMethod(TrustedHTML, 'fromLiteral', [templateStringsArray]);
}

@JS()
@staticInterop
class TrustedScript {
  external TrustedScript();
}

extension PropsTrustedScript on TrustedScript {
  String mToString() => js_util.callMethod(this, 'toString', []);

  String toJSON() => js_util.callMethod(this, 'toJSON', []);

  static TrustedScript fromLiteral(dynamic templateStringsArray) =>
      js_util.callMethod(TrustedScript, 'fromLiteral', [templateStringsArray]);
}

@JS()
@staticInterop
class TrustedScriptURL {
  external TrustedScriptURL();
}

extension PropsTrustedScriptURL on TrustedScriptURL {
  String mToString() => js_util.callMethod(this, 'toString', []);

  String toJSON() => js_util.callMethod(this, 'toJSON', []);

  static TrustedScriptURL fromLiteral(dynamic templateStringsArray) => js_util
      .callMethod(TrustedScriptURL, 'fromLiteral', [templateStringsArray]);
}

@JS()
@staticInterop
class TrustedTypePolicyFactory {
  external TrustedTypePolicyFactory();
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

@JS()
@staticInterop
class TrustedTypePolicy {
  external TrustedTypePolicy();
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
