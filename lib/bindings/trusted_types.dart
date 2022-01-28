/// Trusted Types
///
/// https://w3c.github.io/webappsec-trusted-types/dist/spec/
@JS('window')
@staticInterop
library trusted_types;

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
  external factory TrustedHTML();
}

extension PropsTrustedHTML on TrustedHTML {
  @JS('toString')
  external String mToString();

  /// Returns a JSON representation of the stored data.
  ///
  /// var json = TrustedHTML.toJSON();
  ///
  external String toJSON();
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
  @JS('toString')
  external String mToString();

  /// Returns a JSON representation of the stored data.
  ///
  /// var json = TrustedScript.toJSON();
  ///
  external String toJSON();
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
  @JS('toString')
  external String mToString();

  /// Returns a JSON representation of the stored data.
  ///
  /// var json = TrustedScriptURL.toJSON();
  ///
  external String toJSON();
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
  ///  Creates a [TrustedTypePolicy] object that implements the rules
  /// passed as [policyOptions].
  ///
  /// var policy = TrustedTypePolicyFactory.createPolicy(policyName,policyOptions);
  ///
  external TrustedTypePolicy createPolicy(String policyName,
      [TrustedTypePolicyOptions? policyOptions]);

  ///  When passed a value checks that it is a valid [TrustedHTML]
  /// object.
  ///
  /// var isHTML = TrustedTypePolicyFactory.isHTML(value);
  ///
  external bool isHTML(dynamic value);

  ///  When passed a value checks that it is a valid [TrustedScript]
  /// object.
  ///
  /// var isScript = TrustedTypePolicyFactory.isScript(value);
  ///
  external bool isScript(dynamic value);

  ///  When passed a value checks that it is a valid [TrustedScriptURL]
  /// object.
  ///
  /// var isScriptURL = TrustedTypePolicyFactory.isScriptURL(value);
  ///
  external bool isScriptURL(dynamic value);

  /// Returns a [TrustedHTML] object containing an empty string.
  ///
  external TrustedHTML get emptyHTML;

  /// Returns a [TrustedScript] object containing an empty string.
  ///
  external TrustedScript get emptyScript;

  ///  Allows web developers to check whether a Trusted Type is
  /// required for an element and attribute, and if so which one.
  ///
  /// TrustedTypePolicyFactory.getAttributeType(tagName, attribute)
  /// TrustedTypePolicyFactory.getAttributeType(tagName, attribute, elementNs)
  /// TrustedTypePolicyFactory.getAttributeType(tagName, attribute, elementNs, attrNs)
  ///
  external String? getAttributeType(String tagName, String attribute,
      [String? elementNs = '', String? attrNs = '']);

  ///  Allows web developers to check whether a Trusted Type is
  /// required for a property, and if so which one.
  ///
  /// TrustedTypePolicyFactory.getPropertyType(tagName, property)
  /// TrustedTypePolicyFactory.getPropertyType(tagName, property, elementNS)
  ///
  external String? getPropertyType(String tagName, String property,
      [String? elementNs = '']);

  ///  Returns the default [TrustedTypePolicy] or null if this is
  /// empty.
  ///
  external TrustedTypePolicy? get defaultPolicy;
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
  /// A [DOMString] containing the name of the policy.
  ///
  external String get name;

  /// Creates a [TrustedHTML] object.
  ///
  /// var str = TrustedTypePolicy.createHTML(input[,args]);
  ///
  external TrustedHTML createHTML(String input, [dynamic arguments]);

  /// Creates a [TrustedScript] object.
  ///
  /// var str = TrustedTypePolicy.createScript(input[,args]);
  ///
  external TrustedScript createScript(String input, [dynamic arguments]);

  /// Creates a [TrustedScriptURL] object.
  ///
  /// var str = TrustedTypePolicy.createScriptURL(input[,args]);
  ///
  external TrustedScriptURL createScriptURL(String input, [dynamic arguments]);
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
  external CreateHTMLCallback? get createHTML;
  external set createHTML(CreateHTMLCallback? newValue);
  external CreateScriptCallback? get createScript;
  external set createScript(CreateScriptCallback? newValue);
  external CreateScriptURLCallback? get createScriptURL;
  external set createScriptURL(CreateScriptURLCallback? newValue);
}
