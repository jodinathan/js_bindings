/// Identity for WebRTC 1.0
///
/// https://w3c.github.io/webrtc-identity/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webrtc_identity;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class RTCIdentityProviderGlobalScope implements WorkerGlobalScope {
  external factory RTCIdentityProviderGlobalScope();
}

extension PropsRTCIdentityProviderGlobalScope
    on RTCIdentityProviderGlobalScope {
  RTCIdentityProviderRegistrar get rtcIdentityProvider =>
      js_util.getProperty(this, 'rtcIdentityProvider');
}

@JS()
@staticInterop
class RTCIdentityProviderRegistrar {
  external factory RTCIdentityProviderRegistrar();
}

extension PropsRTCIdentityProviderRegistrar on RTCIdentityProviderRegistrar {
  void register(RTCIdentityProvider idp) =>
      js_util.callMethod(this, 'register', [idp]);
}

@anonymous
@JS()
@staticInterop
class RTCIdentityProvider {
  external factory RTCIdentityProvider(
      {required GenerateAssertionCallback generateAssertion,
      required ValidateAssertionCallback validateAssertion});
}

extension PropsRTCIdentityProvider on RTCIdentityProvider {
  GenerateAssertionCallback get generateAssertion =>
      js_util.getProperty(this, 'generateAssertion');
  set generateAssertion(GenerateAssertionCallback newValue) {
    js_util.setProperty(this, 'generateAssertion', newValue);
  }

  ValidateAssertionCallback get validateAssertion =>
      js_util.getProperty(this, 'validateAssertion');
  set validateAssertion(ValidateAssertionCallback newValue) {
    js_util.setProperty(this, 'validateAssertion', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCIdentityAssertionResult {
  external factory RTCIdentityAssertionResult(
      {required RTCIdentityProviderDetails idp, required String assertion});
}

extension PropsRTCIdentityAssertionResult on RTCIdentityAssertionResult {
  RTCIdentityProviderDetails get idp => js_util.getProperty(this, 'idp');
  set idp(RTCIdentityProviderDetails newValue) {
    js_util.setProperty(this, 'idp', newValue);
  }

  String get assertion => js_util.getProperty(this, 'assertion');
  set assertion(String newValue) {
    js_util.setProperty(this, 'assertion', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCIdentityProviderDetails {
  external factory RTCIdentityProviderDetails._(
      {required String domain, String? protocol});

  factory RTCIdentityProviderDetails(
          {required String domain, String? protocol}) =>
      RTCIdentityProviderDetails._(
          domain: domain, protocol: protocol ?? 'default');
}

extension PropsRTCIdentityProviderDetails on RTCIdentityProviderDetails {
  String get domain => js_util.getProperty(this, 'domain');
  set domain(String newValue) {
    js_util.setProperty(this, 'domain', newValue);
  }

  String get protocol => js_util.getProperty(this, 'protocol');
  set protocol(String newValue) {
    js_util.setProperty(this, 'protocol', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCIdentityValidationResult {
  external factory RTCIdentityValidationResult(
      {required String identity, required String contents});
}

extension PropsRTCIdentityValidationResult on RTCIdentityValidationResult {
  String get identity => js_util.getProperty(this, 'identity');
  set identity(String newValue) {
    js_util.setProperty(this, 'identity', newValue);
  }

  String get contents => js_util.getProperty(this, 'contents');
  set contents(String newValue) {
    js_util.setProperty(this, 'contents', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCIdentityProviderOptions {
  external factory RTCIdentityProviderOptions._(
      {String? protocol, String? usernameHint, String? peerIdentity});

  factory RTCIdentityProviderOptions(
          {String? protocol, String? usernameHint, String? peerIdentity}) =>
      RTCIdentityProviderOptions._(
          protocol: protocol ?? 'default',
          usernameHint: usernameHint ?? undefined,
          peerIdentity: peerIdentity ?? undefined);
}

extension PropsRTCIdentityProviderOptions on RTCIdentityProviderOptions {
  String get protocol => js_util.getProperty(this, 'protocol');
  set protocol(String newValue) {
    js_util.setProperty(this, 'protocol', newValue);
  }

  String get usernameHint => js_util.getProperty(this, 'usernameHint');
  set usernameHint(String newValue) {
    js_util.setProperty(this, 'usernameHint', newValue);
  }

  String get peerIdentity => js_util.getProperty(this, 'peerIdentity');
  set peerIdentity(String newValue) {
    js_util.setProperty(this, 'peerIdentity', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the WebRTC API represents the identity of a
/// remote peer of the current connection. If no peer has yet been
/// set and verified, then this interface returns [null]. Once set it
/// can't be changed.
@experimental
@JS()
@staticInterop
class RTCIdentityAssertion {
  external factory RTCIdentityAssertion(String idp, String name);
}

extension PropsRTCIdentityAssertion on RTCIdentityAssertion {
  String get idp => js_util.getProperty(this, 'idp');
  set idp(String newValue) {
    js_util.setProperty(this, 'idp', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }
}

enum RTCErrorDetailTypeIdp {
  idpBadScriptFailure('idp-bad-script-failure'),
  idpExecutionFailure('idp-execution-failure'),
  idpLoadFailure('idp-load-failure'),
  idpNeedLogin('idp-need-login'),
  idpTimeout('idp-timeout'),
  idpTlsFailure('idp-tls-failure'),
  idpTokenExpired('idp-token-expired'),
  idpTokenInvalid('idp-token-invalid');

  final String value;
  static RTCErrorDetailTypeIdp fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCErrorDetailTypeIdp> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCErrorDetailTypeIdp(this.value);
}
