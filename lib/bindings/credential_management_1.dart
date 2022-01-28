/// Credential Management Level 1
///
/// https://w3c.github.io/webappsec-credential-management/
@JS('window')
@staticInterop
library credential_management_1;

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
  external factory Credential();
}

extension PropsCredential on Credential {
  ///  Returns a [DOMString] containing the credential's identifier.
  /// This might be any one of a GUID, username, or email address.
  ///
  external String get id;

  ///  Returns a [DOMString] containing the credential's type. Valid
  /// values are [password], [federated] and [public-key]. (For
  /// [PasswordCredential], [FederatedCredential] and
  /// [PublicKeyCredential])
  ///
  external String get type;
}

@JS()
@staticInterop
class CredentialUserData {
  external factory CredentialUserData();
}

extension PropsCredentialUserData on CredentialUserData {
  external String get name;
  external String get iconURL;
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
  external factory CredentialsContainer();
}

extension PropsCredentialsContainer on CredentialsContainer {
  ///  Returns a [Promise] that resolves with the [Credential] instance
  /// that matches the provided parameters.
  ///
  /// var promise = CredentialsContainer.get([options])
  ///
  @JS('get')
  @staticInterop
  external Promise<Credential> mGet([CredentialRequestOptions? options]);

  ///  Stores a set of credentials for a user, inside a provided
  /// [Credential] instance and returns that instance in a [Promise].
  ///
  /// CredentialsContainer.store(Credential).then(function(Credential) { /* ... */ } )
  ///
  external Promise<Credential> store(Credential credential);

  ///  Returns a [Promise] that resolves with a new [Credential]
  /// instance based on the provided options, or [null] if no
  /// [Credential] object can be created. In exceptional circumstances,
  /// the [Promise] may reject.
  ///
  /// var promise = CredentialsContainer.create([options])
  ///
  external Promise<Credential> create([CredentialCreationOptions? options]);

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
  external Promise<Object> preventSilentAccess();
}

@anonymous
@JS()
@staticInterop
class CredentialData {
  external factory CredentialData({String id});
}

extension PropsCredentialData on CredentialData {
  external String get id;
  external set id(String newValue);
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
  external CredentialMediationRequirement get mediation;
  external set mediation(CredentialMediationRequirement newValue);
  external AbortSignal get signal;
  external set signal(AbortSignal newValue);
}

enum CredentialMediationRequirement { silent, optional, valueRequired }

@anonymous
@JS()
@staticInterop
class CredentialCreationOptions {
  external factory CredentialCreationOptions({AbortSignal signal});
}

extension PropsCredentialCreationOptions on CredentialCreationOptions {
  external AbortSignal get signal;
  external set signal(AbortSignal newValue);
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
  external factory PasswordCredential(HTMLFormElement form);
}

extension PropsPasswordCredential on PasswordCredential {
  /// A [USVString] containing the password of the credential.
  ///
  external String get password;
}

@anonymous
@JS()
@staticInterop
class PasswordCredentialData implements CredentialData {
  external factory PasswordCredentialData(
      {String name, String iconURL, String origin, String password});
}

extension PropsPasswordCredentialData on PasswordCredentialData {
  external String get name;
  external set name(String newValue);
  external String get iconURL;
  external set iconURL(String newValue);
  external String get origin;
  external set origin(String newValue);
  external String get password;
  external set password(String newValue);
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
  external factory FederatedCredential(FederatedCredentialInit data);
}

extension PropsFederatedCredential on FederatedCredential {
  ///  Returns a [USVString] containing a credential's federated
  /// identity provider.
  ///
  external String get provider;

  ///  Returns a [DOMString] containing a credential's federated
  /// identity protocol.
  ///
  external String? get protocol;
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
  external Iterable<String> get providers;
  external set providers(Iterable<String> newValue);
  external Iterable<String> get protocols;
  external set protocols(Iterable<String> newValue);
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
  external String get name;
  external set name(String newValue);
  external String get iconURL;
  external set iconURL(String newValue);
  external String get origin;
  external set origin(String newValue);
  external String get provider;
  external set provider(String newValue);
  external String get protocol;
  external set protocol(String newValue);
}
