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

@JS()
@staticInterop
class IdentityCredential implements Credential {
  external static Future<void> logoutRPs(
      Iterable<IdentityCredentialLogoutRPsRequest> logoutRequests);
  external factory IdentityCredential();
}

extension PropsIdentityCredential on IdentityCredential {
  String? get token => js_util.getProperty(this, 'token');
}

@anonymous
@JS()
@staticInterop
class IdentityCredentialRequestOptions {
  external factory IdentityCredentialRequestOptions(
      {Iterable<IdentityProvider>? providers});
}

extension PropsIdentityCredentialRequestOptions
    on IdentityCredentialRequestOptions {
  Iterable<IdentityProvider> get providers =>
      js_util.getProperty(this, 'providers');
  set providers(Iterable<IdentityProvider> newValue) {
    js_util.setProperty(this, 'providers', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class IdentityProvider {
  external factory IdentityProvider(
      {required String configURL, required String clientId, String? nonce});
}

extension PropsIdentityProvider on IdentityProvider {
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
