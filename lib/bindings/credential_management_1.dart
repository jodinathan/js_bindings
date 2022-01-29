/// Credential Management Level 1
///
/// https://w3c.github.io/webappsec-credential-management/
@JS('window')
@staticInterop
library credential_management_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: credential_management_1
html
dom
webauthn_3
web_otp */

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.Secure context: This feature is available only in
/// secure contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Credential Management API provides
/// information about an entity (usually a user) as a prerequisite to
/// a trust decision.
///  objects may be of 3 different types:
///
///  [PasswordCredential]
///  [PublicKeyCredential]
///  [FederatedCredential]
///
@experimental
@JS()
@staticInterop
class Credential {
  external Credential();
}

extension PropsCredential on Credential {
  ///  Returns a [DOMString] containing the credential's identifier.
  /// This might be any one of a GUID, username, or email address.
  ///
  String get id => js_util.getProperty(this, 'id');

  ///  Returns a [DOMString] containing the credential's type. Valid
  /// values are [password], [federated] and [public-key]. (For
  /// [PasswordCredential], [FederatedCredential] and
  /// [PublicKeyCredential])
  ///
  String get type => js_util.getProperty(this, 'type');
}

@JS()
@staticInterop
class CredentialUserData {
  external CredentialUserData();
}

extension PropsCredentialUserData on CredentialUserData {
  String get name => js_util.getProperty(this, 'name');
  String get iconURL => js_util.getProperty(this, 'iconURL');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.Secure context: This feature is available only in
/// secure contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Credential Management API exposes methods
/// to request credentials and notify the user agent when events such
/// as successful sign in or sign out happen. This interface is
/// accessible from [Navigator.credentials].
@experimental
@JS()
@staticInterop
class CredentialsContainer {
  external CredentialsContainer();
}

extension PropsCredentialsContainer on CredentialsContainer {
  ///  Returns a [Promise] that resolves with the [Credential] instance
  /// that matches the provided parameters.
  ///
  /// var promise = CredentialsContainer.get([options])
  ///
  @JS('get')
  @staticInterop
  Promise<Credential> mGet([CredentialRequestOptions? options]) =>
      js_util.callMethod(this, 'get', [options]);

  ///  Stores a set of credentials for a user, inside a provided
  /// [Credential] instance and returns that instance in a [Promise].
  ///
  /// CredentialsContainer.store(Credential).then(function(Credential) { /* ... */ } )
  ///
  Promise<Credential> store(Credential credential) =>
      js_util.callMethod(this, 'store', [credential]);

  ///  Returns a [Promise] that resolves with a new [Credential]
  /// instance based on the provided options, or [null] if no
  /// [Credential] object can be created. In exceptional circumstances,
  /// the [Promise] may reject.
  ///
  /// var promise = CredentialsContainer.create([options])
  ///
  Promise<Credential> create([CredentialCreationOptions? options]) =>
      js_util.callMethod(this, 'create', [options]);

  ///  Sets a flag that specifies whether automatic log in is allowed
  /// for future visits to the current origin, then returns an empty
  /// [Promise]. For example, you might call this, after a user signs
  /// out of a website to ensure that they aren't automatically signed
  /// in on the next site visit. Earlier versions of the spec called
  /// this method [requireUserMediation()]. See Browser compatibility
  /// for support details.
  ///
  /// var Promise = CredentialsContainer.preventSilentAccess()
  ///
  Promise<Object> preventSilentAccess() =>
      js_util.callMethod(this, 'preventSilentAccess', []);
}

@anonymous
@JS()
@staticInterop
class CredentialData {
  external factory CredentialData({String id});
}

extension PropsCredentialData on CredentialData {
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class CredentialRequestOptions {
  external factory CredentialRequestOptions(
      {CredentialMediationRequirement mediation =
          CredentialMediationRequirement.optional,
      AbortSignal signal});
}

extension PropsCredentialRequestOptions on CredentialRequestOptions {
  CredentialMediationRequirement get mediation =>
      js_util.getProperty(this, 'mediation');
  set mediation(CredentialMediationRequirement newValue) {
    js_util.setProperty(this, 'mediation', newValue);
  }

  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}

enum CredentialMediationRequirement { silent, optional, valueRequired }

@anonymous
@JS()
@staticInterop
class CredentialCreationOptions {
  external factory CredentialCreationOptions({AbortSignal signal});
}

extension PropsCredentialCreationOptions on CredentialCreationOptions {
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.Secure context: This feature is available only in
/// secure contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Credential Management API provides
/// information about a username/password pair. In supporting
/// browsers an instance of this class may be passed in the
/// [credential] member of the [init] object for global [fetch()].
///
///   Note: This interface is restricted to top-level contexts and
/// cannot be used from an [<iframe>].
///
@JS()
@staticInterop
class PasswordCredential implements Credential, CredentialUserData {
  external PasswordCredential(HTMLFormElement form);
}

extension PropsPasswordCredential on PasswordCredential {
  /// A [USVString] containing the password of the credential.
  ///
  String get password => js_util.getProperty(this, 'password');
}

@anonymous
@JS()
@staticInterop
class PasswordCredentialData implements CredentialData {
  external factory PasswordCredentialData(
      {String name, String iconURL, String origin, String password});
}

extension PropsPasswordCredentialData on PasswordCredentialData {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get iconURL => js_util.getProperty(this, 'iconURL');
  set iconURL(String newValue) {
    js_util.setProperty(this, 'iconURL', newValue);
  }

  String get origin => js_util.getProperty(this, 'origin');
  set origin(String newValue) {
    js_util.setProperty(this, 'origin', newValue);
  }

  String get password => js_util.getProperty(this, 'password');
  set password(String newValue) {
    js_util.setProperty(this, 'password', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Credential Management API provides
/// information about credentials from a federated identity provider.
/// A federated identity provider is an entity that a website trusts
/// to correctly authenticate a user, and that provides an API for
/// that purpose. OpenID Connect is an example of a federated
/// identity provider framework.
///  In browsers that support it, an instance of this interface may
/// be passed in the [credential] member of the [init] object for
/// global [fetch()].
@JS()
@staticInterop
class FederatedCredential implements Credential, CredentialUserData {
  external FederatedCredential(FederatedCredentialInit data);
}

extension PropsFederatedCredential on FederatedCredential {
  ///  Returns a [USVString] containing a credential's federated
  /// identity provider.
  ///
  String get provider => js_util.getProperty(this, 'provider');

  ///  Returns a [DOMString] containing a credential's federated
  /// identity protocol.
  ///
  String? get protocol => js_util.getProperty(this, 'protocol');
}

@anonymous
@JS()
@staticInterop
class FederatedCredentialRequestOptions {
  external factory FederatedCredentialRequestOptions(
      {Iterable<String> providers, Iterable<String> protocols});
}

extension PropsFederatedCredentialRequestOptions
    on FederatedCredentialRequestOptions {
  Iterable<String> get providers => js_util.getProperty(this, 'providers');
  set providers(Iterable<String> newValue) {
    js_util.setProperty(this, 'providers', newValue);
  }

  Iterable<String> get protocols => js_util.getProperty(this, 'protocols');
  set protocols(Iterable<String> newValue) {
    js_util.setProperty(this, 'protocols', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class FederatedCredentialInit implements CredentialData {
  external factory FederatedCredentialInit(
      {String name,
      String iconURL,
      String origin,
      String provider,
      String protocol});
}

extension PropsFederatedCredentialInit on FederatedCredentialInit {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get iconURL => js_util.getProperty(this, 'iconURL');
  set iconURL(String newValue) {
    js_util.setProperty(this, 'iconURL', newValue);
  }

  String get origin => js_util.getProperty(this, 'origin');
  set origin(String newValue) {
    js_util.setProperty(this, 'origin', newValue);
  }

  String get provider => js_util.getProperty(this, 'provider');
  set provider(String newValue) {
    js_util.setProperty(this, 'provider', newValue);
  }

  String get protocol => js_util.getProperty(this, 'protocol');
  set protocol(String newValue) {
    js_util.setProperty(this, 'protocol', newValue);
  }
}
