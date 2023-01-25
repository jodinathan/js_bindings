/// Federated Credential Management API
///
/// https://fedidcg.github.io/FedCM/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library fedcm;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class IdentityProviderWellKnown {
  external factory IdentityProviderWellKnown(
      {required Iterable<String> provider_urls});
}

extension PropsIdentityProviderWellKnown on IdentityProviderWellKnown {
  Iterable<String> get providerUrls =>
      js_util.getProperty(this, 'provider_urls');
  set providerUrls(Iterable<String> newValue) {
    js_util.setProperty(this, 'provider_urls', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class IdentityProviderIcon {
  external factory IdentityProviderIcon(
      {required String url, required int size});
}

extension PropsIdentityProviderIcon on IdentityProviderIcon {
  String get url => js_util.getProperty(this, 'url');
  set url(String newValue) {
    js_util.setProperty(this, 'url', newValue);
  }

  int get size => js_util.getProperty(this, 'size');
  set size(int newValue) {
    js_util.setProperty(this, 'size', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class IdentityProviderBranding {
  external factory IdentityProviderBranding(
      {required String background_color,
      required String color,
      required Iterable<IdentityProviderIcon> icons});
}

extension PropsIdentityProviderBranding on IdentityProviderBranding {
  String get backgroundColor => js_util.getProperty(this, 'background_color');
  set backgroundColor(String newValue) {
    js_util.setProperty(this, 'background_color', newValue);
  }

  String get color => js_util.getProperty(this, 'color');
  set color(String newValue) {
    js_util.setProperty(this, 'color', newValue);
  }

  Iterable<IdentityProviderIcon> get icons =>
      js_util.getProperty(this, 'icons');
  set icons(Iterable<IdentityProviderIcon> newValue) {
    js_util.setProperty(this, 'icons', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class IdentityProviderAPIConfig {
  external factory IdentityProviderAPIConfig(
      {required String accounts_endpoint,
      required String client_metadata_endpoint,
      required String id_assertion_endpoint,
      required IdentityProviderBranding branding});
}

extension PropsIdentityProviderAPIConfig on IdentityProviderAPIConfig {
  String get accountsEndpoint => js_util.getProperty(this, 'accounts_endpoint');
  set accountsEndpoint(String newValue) {
    js_util.setProperty(this, 'accounts_endpoint', newValue);
  }

  String get clientMetadataEndpoint =>
      js_util.getProperty(this, 'client_metadata_endpoint');
  set clientMetadataEndpoint(String newValue) {
    js_util.setProperty(this, 'client_metadata_endpoint', newValue);
  }

  String get idAssertionEndpoint =>
      js_util.getProperty(this, 'id_assertion_endpoint');
  set idAssertionEndpoint(String newValue) {
    js_util.setProperty(this, 'id_assertion_endpoint', newValue);
  }

  IdentityProviderBranding get branding =>
      js_util.getProperty(this, 'branding');
  set branding(IdentityProviderBranding newValue) {
    js_util.setProperty(this, 'branding', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class IdentityProviderAccount {
  external factory IdentityProviderAccount(
      {required String id,
      required String name,
      required String email,
      required String given_name,
      required Iterable<String> approved_clients});
}

extension PropsIdentityProviderAccount on IdentityProviderAccount {
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get email => js_util.getProperty(this, 'email');
  set email(String newValue) {
    js_util.setProperty(this, 'email', newValue);
  }

  String get givenName => js_util.getProperty(this, 'given_name');
  set givenName(String newValue) {
    js_util.setProperty(this, 'given_name', newValue);
  }

  Iterable<String> get approvedClients =>
      js_util.getProperty(this, 'approved_clients');
  set approvedClients(Iterable<String> newValue) {
    js_util.setProperty(this, 'approved_clients', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class IdentityProviderAccountList {
  external factory IdentityProviderAccountList(
      {required Iterable<IdentityProviderAccount> accounts});
}

extension PropsIdentityProviderAccountList on IdentityProviderAccountList {
  Iterable<IdentityProviderAccount> get accounts =>
      js_util.getProperty(this, 'accounts');
  set accounts(Iterable<IdentityProviderAccount> newValue) {
    js_util.setProperty(this, 'accounts', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class IdentityProviderClientMetadata {
  external factory IdentityProviderClientMetadata(
      {required String privacy_policy_url,
      required String terms_of_service_url});
}

extension PropsIdentityProviderClientMetadata
    on IdentityProviderClientMetadata {
  String get privacyPolicyUrl =>
      js_util.getProperty(this, 'privacy_policy_url');
  set privacyPolicyUrl(String newValue) {
    js_util.setProperty(this, 'privacy_policy_url', newValue);
  }

  String get termsOfServiceUrl =>
      js_util.getProperty(this, 'terms_of_service_url');
  set termsOfServiceUrl(String newValue) {
    js_util.setProperty(this, 'terms_of_service_url', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class IdentityProviderToken {
  external factory IdentityProviderToken({required String token});
}

extension PropsIdentityProviderToken on IdentityProviderToken {
  String get token => js_util.getProperty(this, 'token');
  set token(String newValue) {
    js_util.setProperty(this, 'token', newValue);
  }
}

@JS()
@staticInterop
class IdentityCredential implements Credential {
  external factory IdentityCredential();
}

extension PropsIdentityCredential on IdentityCredential {
  String? get token => js_util.getProperty(this, 'token');
  static Future<void> logoutRPs(
          Iterable<IdentityCredentialLogoutRPsRequest> logoutRequests) =>
      js_util.promiseToFuture(js_util
          .callMethod(IdentityCredential, 'logoutRPs', [logoutRequests]));
}

@anonymous
@JS()
@staticInterop
class IdentityCredentialRequestOptions {
  external factory IdentityCredentialRequestOptions(
      {required Iterable<IdentityProviderConfig> providers});
}

extension PropsIdentityCredentialRequestOptions
    on IdentityCredentialRequestOptions {
  Iterable<IdentityProviderConfig> get providers =>
      js_util.getProperty(this, 'providers');
  set providers(Iterable<IdentityProviderConfig> newValue) {
    js_util.setProperty(this, 'providers', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class IdentityProviderConfig {
  external factory IdentityProviderConfig(
      {required String configURL,
      required String clientId,
      required String nonce});
}

extension PropsIdentityProviderConfig on IdentityProviderConfig {
  String get configURL => js_util.getProperty(this, 'configURL');
  set configURL(String newValue) {
    js_util.setProperty(this, 'configURL', newValue);
  }

  String get clientId => js_util.getProperty(this, 'clientId');
  set clientId(String newValue) {
    js_util.setProperty(this, 'clientId', newValue);
  }

  String get nonce => js_util.getProperty(this, 'nonce');
  set nonce(String newValue) {
    js_util.setProperty(this, 'nonce', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class IdentityCredentialLogoutRPsRequest {
  external factory IdentityCredentialLogoutRPsRequest(
      {required String url, required String accountId});
}

extension PropsIdentityCredentialLogoutRPsRequest
    on IdentityCredentialLogoutRPsRequest {
  String get url => js_util.getProperty(this, 'url');
  set url(String newValue) {
    js_util.setProperty(this, 'url', newValue);
  }

  String get accountId => js_util.getProperty(this, 'accountId');
  set accountId(String newValue) {
    js_util.setProperty(this, 'accountId', newValue);
  }
}

@JS()
@staticInterop
class IdentityProvider {
  external factory IdentityProvider();
}

extension PropsIdentityProvider on IdentityProvider {
  static void login() => js_util.callMethod(IdentityProvider, 'login', []);

  static void logout() => js_util.callMethod(IdentityProvider, 'logout', []);
}
