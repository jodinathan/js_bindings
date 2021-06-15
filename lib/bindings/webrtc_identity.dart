/// Identity for WebRTC 1.0
///
/// https://w3c.github.io/webrtc-identity/
@JS('window')
library webrtc_identity;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'webrtc.dart';
import 'mediacapture_streams.dart';

@JS()
class RTCIdentityProviderGlobalScope // EventTarget -> {css_font_loading_3: {FontFaceSource}, html: {WindowOrWorkerGlobalScope}} -> WorkerGlobalScope
    extends WorkerGlobalScope {
  external RTCIdentityProviderRegistrar get rtcIdentityProvider;

  external factory RTCIdentityProviderGlobalScope();
}

@JS()
class RTCIdentityProviderRegistrar {
  external Object register(RTCIdentityProvider idp);

  external factory RTCIdentityProviderRegistrar();
}

@anonymous
@JS()
class RTCIdentityProvider {
  external GenerateAssertionCallback get generateAssertion;
  external set generateAssertion(GenerateAssertionCallback newValue);
  external ValidateAssertionCallback get validateAssertion;
  external set validateAssertion(ValidateAssertionCallback newValue);

  external factory RTCIdentityProvider(
      {GenerateAssertionCallback generateAssertion,
      ValidateAssertionCallback validateAssertion});
}

@anonymous
@JS()
class RTCIdentityAssertionResult {
  external RTCIdentityProviderDetails get idp;
  external set idp(RTCIdentityProviderDetails newValue);
  external String get assertion;
  external set assertion(String newValue);

  external factory RTCIdentityAssertionResult(
      {RTCIdentityProviderDetails idp, String assertion});
}

@anonymous
@JS()
class RTCIdentityProviderDetails {
  external String get domain;
  external set domain(String newValue);
  external String get protocol;
  external set protocol(String newValue);

  external factory RTCIdentityProviderDetails(
      {String domain, String protocol = 'default'});
}

@anonymous
@JS()
class RTCIdentityValidationResult {
  external String get identity;
  external set identity(String newValue);
  external String get contents;
  external set contents(String newValue);

  external factory RTCIdentityValidationResult(
      {String identity, String contents});
}

@anonymous
@JS()
class RTCIdentityProviderOptions {
  external String get protocol;
  external set protocol(String newValue);
  external String get usernameHint;
  external set usernameHint(String newValue);
  external String get peerIdentity;
  external set peerIdentity(String newValue);

  external factory RTCIdentityProviderOptions(
      {String protocol = 'default', String usernameHint, String peerIdentity});
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the WebRTC API represents the identity of the a
/// remote peer of the current connection. If no peer has yet been
/// set and verified this interface returns [null]. Once set it can't
/// be changed.
@experimental
@JS()
class RTCIdentityAssertion {
  external factory RTCIdentityAssertion(String idp, String name);

  /// Indicates the provider of the identity assertion.
  external String get idp;
  external set idp(String newValue);

  /// Indicates the name of the identity assertion provider.
  external String get name;
  external set name(String newValue);
}

@JS()
enum RTCErrorDetailTypeIdp {
  @JS('idp-bad-script-failure')
  idpBadScriptFailure,
  @JS('idp-execution-failure')
  idpExecutionFailure,
  @JS('idp-load-failure')
  idpLoadFailure,
  @JS('idp-need-login')
  idpNeedLogin,
  @JS('idp-timeout')
  idpTimeout,
  @JS('idp-tls-failure')
  idpTlsFailure,
  @JS('idp-token-expired')
  idpTokenExpired,
  @JS('idp-token-invalid')
  idpTokenInvalid
}
