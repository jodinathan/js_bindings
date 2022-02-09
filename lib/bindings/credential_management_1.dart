/// Credential Management Level 1
///
/// https://w3c.github.io/webappsec-credential-management/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library credential_management_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class Credential {
  external Credential();
}

extension PropsCredential on Credential {
  String get id => js_util.getProperty(this, 'id');
  String get type => js_util.getProperty(this, 'type');
  static bool isConditionalMediationAvailable() =>
      js_util.callMethod(Credential, 'isConditionalMediationAvailable', []);
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

@JS()
@staticInterop
class CredentialsContainer {
  external CredentialsContainer();
}

extension PropsCredentialsContainer on CredentialsContainer {
  @JS('get')
  @staticInterop
  Future<Credential> mGet([CredentialRequestOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'get', [options]));

  Future<Credential> store(Credential credential) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'store', [credential]));

  Future<Credential> create([CredentialCreationOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'create', [options]));

  Future<Object> preventSilentAccess() => js_util
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
          {CredentialMediationRequirement? mediation =
              CredentialMediationRequirement.optional,
          AbortSignal? signal}) =>
      CredentialRequestOptions._(mediation: mediation?.name, signal: signal);
}

extension PropsCredentialRequestOptions on CredentialRequestOptions {
  CredentialMediationRequirement get mediation =>
      CredentialMediationRequirement.values
          .byName(js_util.getProperty(this, 'mediation'));
  set mediation(CredentialMediationRequirement newValue) {
    js_util.setProperty(this, 'mediation', newValue.name);
  }

  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}

enum CredentialMediationRequirement {
  silent,
  optional,
  conditional,
  valueRequired
}

@anonymous
@JS()
@staticInterop
class CredentialCreationOptions {
  external factory CredentialCreationOptions({required AbortSignal signal});
}

extension PropsCredentialCreationOptions on CredentialCreationOptions {
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}

@JS()
@staticInterop
class PasswordCredential implements Credential, CredentialUserData {
  external PasswordCredential(HTMLFormElement form);
}

extension PropsPasswordCredential on PasswordCredential {
  String get password => js_util.getProperty(this, 'password');
}

@anonymous
@JS()
@staticInterop
class PasswordCredentialData implements CredentialData {
  external factory PasswordCredentialData(
      {required String name,
      required String iconURL,
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

@JS()
@staticInterop
class FederatedCredential implements Credential, CredentialUserData {
  external FederatedCredential(FederatedCredentialInit data);
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
      {required Iterable<String> providers,
      required Iterable<String> protocols});
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
      {required String name,
      required String iconURL,
      required String origin,
      required String provider,
      required String protocol});
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
