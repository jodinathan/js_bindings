/// Identity for WebRTC 1.0
///
/// https://w3c.github.io/webrtc-identity/
@JS('window')
@staticInterop
library webrtc_identity;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
webrtc
mediacapture_streams */

@JS()
@staticInterop
class RTCIdentityProviderGlobalScope implements WorkerGlobalScope {
  external factory RTCIdentityProviderGlobalScope();
}

extension PropsRTCIdentityProviderGlobalScope
    on RTCIdentityProviderGlobalScope {
  external RTCIdentityProviderRegistrar get rtcIdentityProvider;
}

@JS()
@staticInterop
class RTCIdentityProviderRegistrar {
  external factory RTCIdentityProviderRegistrar();
}

extension PropsRTCIdentityProviderRegistrar on RTCIdentityProviderRegistrar {
  external Object register(RTCIdentityProvider idp);
}

@anonymous
@JS()
@staticInterop
class RTCIdentityProvider {
  external factory RTCIdentityProvider(
      {GenerateAssertionCallback generateAssertion,
      ValidateAssertionCallback validateAssertion});
}

extension PropsRTCIdentityProvider on RTCIdentityProvider {
  external GenerateAssertionCallback get generateAssertion;
  external set generateAssertion(GenerateAssertionCallback newValue);
  external ValidateAssertionCallback get validateAssertion;
  external set validateAssertion(ValidateAssertionCallback newValue);
}

@anonymous
@JS()
@staticInterop
class RTCIdentityAssertionResult {
  external factory RTCIdentityAssertionResult(
      {RTCIdentityProviderDetails idp, String assertion});
}

extension PropsRTCIdentityAssertionResult on RTCIdentityAssertionResult {
  external RTCIdentityProviderDetails get idp;
  external set idp(RTCIdentityProviderDetails newValue);
  external String get assertion;
  external set assertion(String newValue);
}

@anonymous
@JS()
@staticInterop
class RTCIdentityProviderDetails {
  external factory RTCIdentityProviderDetails(
      {String domain, String protocol = 'default'});
}

extension PropsRTCIdentityProviderDetails on RTCIdentityProviderDetails {
  external String get domain;
  external set domain(String newValue);
  external String get protocol;
  external set protocol(String newValue);
}

@anonymous
@JS()
@staticInterop
class RTCIdentityValidationResult {
  external factory RTCIdentityValidationResult(
      {String identity, String contents});
}

extension PropsRTCIdentityValidationResult on RTCIdentityValidationResult {
  external String get identity;
  external set identity(String newValue);
  external String get contents;
  external set contents(String newValue);
}

@anonymous
@JS()
@staticInterop
class RTCIdentityProviderOptions {
  external factory RTCIdentityProviderOptions(
      {String protocol = 'default', String usernameHint, String peerIdentity});
}

extension PropsRTCIdentityProviderOptions on RTCIdentityProviderOptions {
  external String get protocol;
  external set protocol(String newValue);
  external String get usernameHint;
  external set usernameHint(String newValue);
  external String get peerIdentity;
  external set peerIdentity(String newValue);
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
  /// Indicates the provider of the identity assertion.
  ///
  external String get idp;
  external set idp(String newValue);

  /// Indicates the name of the identity assertion provider.
  ///
  external String get name;
  external set name(String newValue);
}

enum RTCErrorDetailTypeIdp {
  idpBadScriptFailure,
  idpExecutionFailure,
  idpLoadFailure,
  idpNeedLogin,
  idpTimeout,
  idpTlsFailure,
  idpTokenExpired,
  idpTokenInvalid
}
