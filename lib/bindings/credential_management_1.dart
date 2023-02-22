/// Credential Management Level 1
///
/// https://w3c.github.io/webappsec-credential-management/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library credential_management_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

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
  external static Future<bool> isConditionalMediationAvailable();
  external factory Credential();
}

extension PropsCredential on Credential {
  String get id => js_util.getProperty(this, 'id');
  String get type => js_util.getProperty(this, 'type');
}

@JS()
@staticInterop
class CredentialUserData {
  external factory CredentialUserData();
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
  external factory CredentialsContainer();
}

extension PropsCredentialsContainer on CredentialsContainer {
  Future<Credential> get([CredentialRequestOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'get', [options]));

  Future<Credential> store(Credential credential) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'store', [credential]));

  Future<Credential> create([CredentialCreationOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'create', [options]));

  Future<void> preventSilentAccess() => js_util
      .promiseToFuture(js_util.callMethod(this, 'preventSilentAccess', []));
}

@anonymous
@JS()
@staticInterop
class CredentialData {
  external factory CredentialData({required String id});
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
  external factory CredentialRequestOptions._(
      {String? mediation, AbortSignal? signal});

  factory CredentialRequestOptions(
          {CredentialMediationRequirement? mediation, AbortSignal? signal}) =>
      CredentialRequestOptions._(
          mediation:
              mediation?.value ?? CredentialMediationRequirement.optional.value,
          signal: signal ?? undefined);
}

extension PropsCredentialRequestOptions on CredentialRequestOptions {
  CredentialMediationRequirement get mediation =>
      CredentialMediationRequirement.fromValue(
          js_util.getProperty(this, 'mediation'));
  set mediation(CredentialMediationRequirement newValue) {
    js_util.setProperty(this, 'mediation', newValue.value);
  }

  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}

enum CredentialMediationRequirement {
  silent('silent'),
  optional('optional'),
  conditional('conditional'),
  required('required');

  final String value;
  static CredentialMediationRequirement fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<CredentialMediationRequirement> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const CredentialMediationRequirement(this.value);
}

@anonymous
@JS()
@staticInterop
class CredentialCreationOptions {
  external factory CredentialCreationOptions({AbortSignal? signal});
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
///
///
///
///    Credential
///
///
///
///
///
///    PasswordCredential
///
///
@JS()
@staticInterop
class PasswordCredential implements Credential, CredentialUserData {
  external factory PasswordCredential(HTMLFormElement form);
}

extension PropsPasswordCredential on PasswordCredential {
  String get password => js_util.getProperty(this, 'password');
}

@anonymous
@JS()
@staticInterop
class PasswordCredentialData implements CredentialData {
  external factory PasswordCredentialData(
      {String? name,
      String? iconURL,
      required String origin,
      required String password});
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
///
///
///
///    Credential
///
///
///
///
///
///    FederatedCredential
///
///
@JS()
@staticInterop
class FederatedCredential implements Credential, CredentialUserData {
  external factory FederatedCredential(FederatedCredentialInit data);
}

extension PropsFederatedCredential on FederatedCredential {
  String get provider => js_util.getProperty(this, 'provider');
  String? get protocol => js_util.getProperty(this, 'protocol');
}

@anonymous
@JS()
@staticInterop
class FederatedCredentialRequestOptions {
  external factory FederatedCredentialRequestOptions(
      {Iterable<String>? providers, Iterable<String>? protocols});
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
      {String? name,
      String? iconURL,
      required String origin,
      required String provider,
      String? protocol});
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
