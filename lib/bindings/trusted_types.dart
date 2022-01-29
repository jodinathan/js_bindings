/// Trusted Types
///
/// https://w3c.github.io/webappsec-trusted-types/dist/spec/
@JS('window')
@staticInterop
library trusted_types;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html */

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
  external TrustedHTML();
}

extension PropsTrustedHTML on TrustedHTML {
  String mToString() => js_util.callMethod(this, 'toString', []);

  /// Returns a JSON representation of the stored data.
  ///
  /// var json = TrustedHTML.toJSON();
  ///
  String toJSON() => js_util.callMethod(this, 'toJSON', []);
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
  external TrustedScript();
}

extension PropsTrustedScript on TrustedScript {
  String mToString() => js_util.callMethod(this, 'toString', []);

  /// Returns a JSON representation of the stored data.
  ///
  /// var json = TrustedScript.toJSON();
  ///
  String toJSON() => js_util.callMethod(this, 'toJSON', []);
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
  external TrustedScriptURL();
}

extension PropsTrustedScriptURL on TrustedScriptURL {
  String mToString() => js_util.callMethod(this, 'toString', []);

  /// Returns a JSON representation of the stored data.
  ///
  /// var json = TrustedScriptURL.toJSON();
  ///
  String toJSON() => js_util.callMethod(this, 'toJSON', []);
}

///  The interface of the [Trusted Types API] creates policies and
/// allows the verification of Trusted Type objects against created
/// policies.
@JS()
@staticInterop
class TrustedTypePolicyFactory {
  external TrustedTypePolicyFactory();
}

extension PropsTrustedTypePolicyFactory on TrustedTypePolicyFactory {
  ///  Creates a [TrustedTypePolicy] object that implements the rules
  /// passed as [policyOptions].
  ///
  /// var policy = TrustedTypePolicyFactory.createPolicy(policyName,policyOptions);
  ///
  TrustedTypePolicy createPolicy(String policyName,
          [TrustedTypePolicyOptions? policyOptions]) =>
      js_util.callMethod(this, 'createPolicy', [policyName, policyOptions]);

  ///  When passed a value checks that it is a valid [TrustedHTML]
  /// object.
  ///
  /// var isHTML = TrustedTypePolicyFactory.isHTML(value);
  ///
  bool isHTML(dynamic value) => js_util.callMethod(this, 'isHTML', [value]);

  ///  When passed a value checks that it is a valid [TrustedScript]
  /// object.
  ///
  /// var isScript = TrustedTypePolicyFactory.isScript(value);
  ///
  bool isScript(dynamic value) => js_util.callMethod(this, 'isScript', [value]);

  ///  When passed a value checks that it is a valid [TrustedScriptURL]
  /// object.
  ///
  /// var isScriptURL = TrustedTypePolicyFactory.isScriptURL(value);
  ///
  bool isScriptURL(dynamic value) =>
      js_util.callMethod(this, 'isScriptURL', [value]);

  /// Returns a [TrustedHTML] object containing an empty string.
  ///
  TrustedHTML get emptyHTML => js_util.getProperty(this, 'emptyHTML');

  /// Returns a [TrustedScript] object containing an empty string.
  ///
  TrustedScript get emptyScript => js_util.getProperty(this, 'emptyScript');

  ///  Allows web developers to check whether a Trusted Type is
  /// required for an element and attribute, and if so which one.
  ///
  /// TrustedTypePolicyFactory.getAttributeType(tagName, attribute)
  /// TrustedTypePolicyFactory.getAttributeType(tagName, attribute, elementNs)
  /// TrustedTypePolicyFactory.getAttributeType(tagName, attribute, elementNs, attrNs)
  ///
  String? getAttributeType(String tagName, String attribute,
          [String? elementNs = '', String? attrNs = '']) =>
      js_util.callMethod(
          this, 'getAttributeType', [tagName, attribute, elementNs, attrNs]);

  ///  Allows web developers to check whether a Trusted Type is
  /// required for a property, and if so which one.
  ///
  /// TrustedTypePolicyFactory.getPropertyType(tagName, property)
  /// TrustedTypePolicyFactory.getPropertyType(tagName, property, elementNS)
  ///
  String? getPropertyType(String tagName, String property,
          [String? elementNs = '']) =>
      js_util
          .callMethod(this, 'getPropertyType', [tagName, property, elementNs]);

  ///  Returns the default [TrustedTypePolicy] or null if this is
  /// empty.
  ///
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
  external TrustedTypePolicy();
}

extension PropsTrustedTypePolicy on TrustedTypePolicy {
  /// A [DOMString] containing the name of the policy.
  ///
  String get name => js_util.getProperty(this, 'name');

  /// Creates a [TrustedHTML] object.
  ///
  /// var str = TrustedTypePolicy.createHTML(input[,args]);
  ///
  TrustedHTML createHTML(String input, [dynamic arguments]) =>
      js_util.callMethod(this, 'createHTML', [input, arguments]);

  /// Creates a [TrustedScript] object.
  ///
  /// var str = TrustedTypePolicy.createScript(input[,args]);
  ///
  TrustedScript createScript(String input, [dynamic arguments]) =>
      js_util.callMethod(this, 'createScript', [input, arguments]);

  /// Creates a [TrustedScriptURL] object.
  ///
  /// var str = TrustedTypePolicy.createScriptURL(input[,args]);
  ///
  TrustedScriptURL createScriptURL(String input, [dynamic arguments]) =>
      js_util.callMethod(this, 'createScriptURL', [input, arguments]);
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
