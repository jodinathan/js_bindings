/// Web Authentication: An API for accessing Public Key Credentials - Level 3
///
/// https://w3c.github.io/webauthn/
@JS('window')
@staticInterop
library webauthn_3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: credential_management_1 */

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface provides information about a public key / private
/// key pair, which is a credential for logging in to a service using
/// an un-phishable and data-breach resistant asymmetric key pair
/// instead of a password. It inherits from [Credential], and was
/// created by the Web Authentication API extension to the Credential
/// Management API. Other interfaces that inherit from [Credential]
/// are [PasswordCredential] and [FederatedCredential].
///
///   Note: This API is restricted to top-level contexts. Use from
/// within an [<iframe>] element will not have any effect.
///
@JS()
@staticInterop
class PublicKeyCredential implements Credential {
  external PublicKeyCredential();
}

extension PropsPublicKeyCredential on PublicKeyCredential {
  ///  An [ArrayBuffer] that holds the globally unique identifier for
  /// this [PublicKeyCredential]. This identifier can be used to look
  /// up credentials for future calls to [CredentialsContainer.get].
  ///
  ByteBuffer get rawId => js_util.getProperty(this, 'rawId');

  ///  An instance of an [AuthenticatorResponse] object. It is either
  /// of type [AuthenticatorAttestationResponse] if the
  /// [PublicKeyCredential] was the results of a
  /// [navigator.credentials.create()] call, or of type
  /// [AuthenticatorAssertionResponse] if the [PublicKeyCredential] was
  /// the result of a [navigator.credentials.get()] call.
  ///
  AuthenticatorResponse get response => js_util.getProperty(this, 'response');

  ///  If any extensions were requested, this method will return the
  /// results of processing those extensions.
  ///
  /// mapArrayBuffer = publicKeyCredential.getClientExtensionResults()
  ///
  AuthenticationExtensionsClientOutputs getClientExtensionResults() =>
      js_util.callMethod(this, 'getClientExtensionResults', []);

  static Future<bool> isUserVerifyingPlatformAuthenticatorAvailable() =>
      js_util.promiseToFuture(js_util.callMethod(PublicKeyCredential,
          'isUserVerifyingPlatformAuthenticatorAvailable', []));
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web Authentication API is the base
/// interface for interfaces that provide a cryptographic root of
/// trust for a key pair. The child interfaces include information
/// from the browser such as the challenge origin and either may be
/// returned from [PublicKeyCredential.response].
@JS()
@staticInterop
class AuthenticatorResponse {
  external AuthenticatorResponse();
}

extension PropsAuthenticatorResponse on AuthenticatorResponse {
  ///  A JSON string in an [ArrayBuffer], representing the client data
  /// that was passed to [CredentialsContainer.create()] or
  /// [CredentialsContainer.get()].
  ///
  ByteBuffer get clientDataJSON => js_util.getProperty(this, 'clientDataJSON');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web Authentication API is returned by
/// [CredentialsContainer.create()] when a [PublicKeyCredential] is
/// passed, and provides a cryptographic root of trust for the new
/// key pair that has been generated. This response should be sent to
/// the relying party's server to complete the creation of the
/// credential.
/// This interface inherits from [AuthenticatorResponse].
///
///   Note: This interface is restricted to top-level contexts. Use
/// from within an [<iframe>] element will not have any effect.
///
@JS()
@staticInterop
class AuthenticatorAttestationResponse implements AuthenticatorResponse {
  external AuthenticatorAttestationResponse();
}

extension PropsAuthenticatorAttestationResponse
    on AuthenticatorAttestationResponse {
  ///  An [ArrayBuffer] containing authenticator data and an
  /// attestation statement for a newly-created key pair.
  ///
  ByteBuffer get attestationObject =>
      js_util.getProperty(this, 'attestationObject');

  ///  Returns an [Array] of strings describing which transport methods
  /// (e.g. [usb], [nfc]) are believed to be supported with the
  /// authenticator. The array may be empty if the information is not
  /// available.
  ///
  /// arrTransports = authenticatorAttestationResponse.getTransports()
  ///
  Iterable<String> getTransports() =>
      js_util.callMethod(this, 'getTransports', []);

  ByteBuffer getAuthenticatorData() =>
      js_util.callMethod(this, 'getAuthenticatorData', []);

  ByteBuffer? getPublicKey() => js_util.callMethod(this, 'getPublicKey', []);

  int getPublicKeyAlgorithm() =>
      js_util.callMethod(this, 'getPublicKeyAlgorithm', []);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web Authentication API is returned by
/// [CredentialsContainer.get()] when a [PublicKeyCredential] is
/// passed, and provides proof to a service that it has a key pair
/// and that the authentication request is valid and approved.
/// This interface inherits from [AuthenticatorResponse].
///
///   Note: This interface is restricted to top-level contexts. Use
/// from within an [<iframe>] element will not have any effect.
///
@JS()
@staticInterop
class AuthenticatorAssertionResponse implements AuthenticatorResponse {
  external AuthenticatorAssertionResponse();
}

extension PropsAuthenticatorAssertionResponse
    on AuthenticatorAssertionResponse {
  ///  An [ArrayBuffer] containing information from the authenticator
  /// such as the Relying Party ID Hash (rpIdHash), a signature
  /// counter, test of user presence and user verification flags, and
  /// any extensions processed by the authenticator.
  ///
  ByteBuffer get authenticatorData =>
      js_util.getProperty(this, 'authenticatorData');

  ///  An assertion signature over
  /// [AuthenticatorAssertionResponse.authenticatorData] and
  /// [AuthenticatorResponse.clientDataJSON]. The assertion signature
  /// is created with the private key of keypair that was created
  /// during the [navigator.credentials.create()] call and verified
  /// using the public key of that same keypair.
  ///
  ByteBuffer get signature => js_util.getProperty(this, 'signature');

  /// An [ArrayBuffer] containing an opaque user identifier.
  ///
  ByteBuffer? get userHandle => js_util.getProperty(this, 'userHandle');
}

@anonymous
@JS()
@staticInterop
class PublicKeyCredentialParameters {
  external factory PublicKeyCredentialParameters({String type, int alg});
}

extension PropsPublicKeyCredentialParameters on PublicKeyCredentialParameters {
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  int get alg => js_util.getProperty(this, 'alg');
  set alg(int newValue) {
    js_util.setProperty(this, 'alg', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PublicKeyCredentialCreationOptions {
  external factory PublicKeyCredentialCreationOptions(
      {PublicKeyCredentialRpEntity rp,
      PublicKeyCredentialUserEntity user,
      dynamic challenge,
      Iterable<PublicKeyCredentialParameters> pubKeyCredParams,
      int timeout,
      Iterable<PublicKeyCredentialDescriptor> excludeCredentials = const [],
      AuthenticatorSelectionCriteria? authenticatorSelection,
      String? attestation = 'none',
      AuthenticationExtensionsClientInputs? extensions});
}

extension PropsPublicKeyCredentialCreationOptions
    on PublicKeyCredentialCreationOptions {
  PublicKeyCredentialRpEntity get rp => js_util.getProperty(this, 'rp');
  set rp(PublicKeyCredentialRpEntity newValue) {
    js_util.setProperty(this, 'rp', newValue);
  }

  PublicKeyCredentialUserEntity get user => js_util.getProperty(this, 'user');
  set user(PublicKeyCredentialUserEntity newValue) {
    js_util.setProperty(this, 'user', newValue);
  }

  dynamic get challenge => js_util.getProperty(this, 'challenge');
  set challenge(dynamic newValue) {
    js_util.setProperty(this, 'challenge', newValue);
  }

  Iterable<PublicKeyCredentialParameters> get pubKeyCredParams =>
      js_util.getProperty(this, 'pubKeyCredParams');
  set pubKeyCredParams(Iterable<PublicKeyCredentialParameters> newValue) {
    js_util.setProperty(this, 'pubKeyCredParams', newValue);
  }

  int get timeout => js_util.getProperty(this, 'timeout');
  set timeout(int newValue) {
    js_util.setProperty(this, 'timeout', newValue);
  }

  Iterable<PublicKeyCredentialDescriptor> get excludeCredentials =>
      js_util.getProperty(this, 'excludeCredentials');
  set excludeCredentials(Iterable<PublicKeyCredentialDescriptor> newValue) {
    js_util.setProperty(this, 'excludeCredentials', newValue);
  }

  AuthenticatorSelectionCriteria get authenticatorSelection =>
      js_util.getProperty(this, 'authenticatorSelection');
  set authenticatorSelection(AuthenticatorSelectionCriteria newValue) {
    js_util.setProperty(this, 'authenticatorSelection', newValue);
  }

  String get attestation => js_util.getProperty(this, 'attestation');
  set attestation(String newValue) {
    js_util.setProperty(this, 'attestation', newValue);
  }

  AuthenticationExtensionsClientInputs get extensions =>
      js_util.getProperty(this, 'extensions');
  set extensions(AuthenticationExtensionsClientInputs newValue) {
    js_util.setProperty(this, 'extensions', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PublicKeyCredentialEntity {
  external factory PublicKeyCredentialEntity({String name});
}

extension PropsPublicKeyCredentialEntity on PublicKeyCredentialEntity {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PublicKeyCredentialRpEntity implements PublicKeyCredentialEntity {
  external factory PublicKeyCredentialRpEntity({String id});
}

extension PropsPublicKeyCredentialRpEntity on PublicKeyCredentialRpEntity {
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PublicKeyCredentialUserEntity implements PublicKeyCredentialEntity {
  external factory PublicKeyCredentialUserEntity(
      {dynamic id, String displayName});
}

extension PropsPublicKeyCredentialUserEntity on PublicKeyCredentialUserEntity {
  dynamic get id => js_util.getProperty(this, 'id');
  set id(dynamic newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  String get displayName => js_util.getProperty(this, 'displayName');
  set displayName(String newValue) {
    js_util.setProperty(this, 'displayName', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AuthenticatorSelectionCriteria {
  external factory AuthenticatorSelectionCriteria(
      {String authenticatorAttachment,
      String residentKey,
      bool requireResidentKey = false,
      String? userVerification = 'preferred'});
}

extension PropsAuthenticatorSelectionCriteria
    on AuthenticatorSelectionCriteria {
  String get authenticatorAttachment =>
      js_util.getProperty(this, 'authenticatorAttachment');
  set authenticatorAttachment(String newValue) {
    js_util.setProperty(this, 'authenticatorAttachment', newValue);
  }

  String get residentKey => js_util.getProperty(this, 'residentKey');
  set residentKey(String newValue) {
    js_util.setProperty(this, 'residentKey', newValue);
  }

  bool get requireResidentKey =>
      js_util.getProperty(this, 'requireResidentKey');
  set requireResidentKey(bool newValue) {
    js_util.setProperty(this, 'requireResidentKey', newValue);
  }

  String get userVerification => js_util.getProperty(this, 'userVerification');
  set userVerification(String newValue) {
    js_util.setProperty(this, 'userVerification', newValue);
  }
}

enum AuthenticatorAttachment { platform, crossPlatform }

enum ResidentKeyRequirement { discouraged, preferred, valueRequired }

enum AttestationConveyancePreference { none, indirect, direct, enterprise }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The dictionary of the Web Authentication API holds the options
/// passed to [navigator.credentials.get()] in order to fetch a given
/// [PublicKeyCredential].
@anonymous
@JS()
@staticInterop
class PublicKeyCredentialRequestOptions {
  external factory PublicKeyCredentialRequestOptions(
      {dynamic challenge,
      int timeout,
      String rpId,
      Iterable<PublicKeyCredentialDescriptor> allowCredentials = const [],
      String? userVerification = 'preferred',
      AuthenticationExtensionsClientInputs? extensions});
}

extension PropsPublicKeyCredentialRequestOptions
    on PublicKeyCredentialRequestOptions {
  ///  A [BufferSource], emitted by the relying party's server and used
  /// as a cryptographic challenge. This value will be signed by the
  /// authenticator and the signature will be sent back as part of
  /// [AuthenticatorAssertionResponse.signature].
  ///
  dynamic get challenge => js_util.getProperty(this, 'challenge');
  set challenge(dynamic newValue) {
    js_util.setProperty(this, 'challenge', newValue);
  }

  ///  A numerical hint, in milliseconds, which indicates the time the
  /// caller is willing to wait for the retrieval operation to
  /// complete. This hint may be overridden by the browser.
  ///
  int get timeout => js_util.getProperty(this, 'timeout');
  set timeout(int newValue) {
    js_util.setProperty(this, 'timeout', newValue);
  }

  ///  A [String] which indicates the relying party's identifier (ex.
  /// ["login.example.org"]). If this option is not provided, the
  /// client will use the current origin's domain.
  ///
  String get rpId => js_util.getProperty(this, 'rpId');
  set rpId(String newValue) {
    js_util.setProperty(this, 'rpId', newValue);
  }

  ///  An [Array] of credentials descriptor which restricts the
  /// acceptable existing credentials for retrieval.
  ///
  Iterable<PublicKeyCredentialDescriptor> get allowCredentials =>
      js_util.getProperty(this, 'allowCredentials');
  set allowCredentials(Iterable<PublicKeyCredentialDescriptor> newValue) {
    js_util.setProperty(this, 'allowCredentials', newValue);
  }

  ///  A string qualifying how the user verification should be part of
  /// the authentication process.
  ///
  String get userVerification => js_util.getProperty(this, 'userVerification');
  set userVerification(String newValue) {
    js_util.setProperty(this, 'userVerification', newValue);
  }

  ///  An object with several client extensions' inputs. Those
  /// extensions are used to request additional processing (e.g.
  /// dealing with legacy FIDO APIs credentials, prompting a specific
  /// text on the authenticator, etc.).
  ///
  AuthenticationExtensionsClientInputs get extensions =>
      js_util.getProperty(this, 'extensions');
  set extensions(AuthenticationExtensionsClientInputs newValue) {
    js_util.setProperty(this, 'extensions', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AuthenticationExtensionsClientInputs {
  external factory AuthenticationExtensionsClientInputs();
}

@anonymous
@JS()
@staticInterop
class AuthenticationExtensionsClientOutputs {
  external factory AuthenticationExtensionsClientOutputs();
}

@anonymous
@JS()
@staticInterop
class CollectedClientData {
  external factory CollectedClientData(
      {String type,
      String challenge,
      String origin,
      bool crossOrigin,
      TokenBinding tokenBinding});
}

extension PropsCollectedClientData on CollectedClientData {
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  String get challenge => js_util.getProperty(this, 'challenge');
  set challenge(String newValue) {
    js_util.setProperty(this, 'challenge', newValue);
  }

  String get origin => js_util.getProperty(this, 'origin');
  set origin(String newValue) {
    js_util.setProperty(this, 'origin', newValue);
  }

  bool get crossOrigin => js_util.getProperty(this, 'crossOrigin');
  set crossOrigin(bool newValue) {
    js_util.setProperty(this, 'crossOrigin', newValue);
  }

  TokenBinding get tokenBinding => js_util.getProperty(this, 'tokenBinding');
  set tokenBinding(TokenBinding newValue) {
    js_util.setProperty(this, 'tokenBinding', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class TokenBinding {
  external factory TokenBinding({String status, String id});
}

extension PropsTokenBinding on TokenBinding {
  String get status => js_util.getProperty(this, 'status');
  set status(String newValue) {
    js_util.setProperty(this, 'status', newValue);
  }

  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }
}

enum TokenBindingStatus { present, supported }

enum PublicKeyCredentialType { publicKey }

@anonymous
@JS()
@staticInterop
class PublicKeyCredentialDescriptor {
  external factory PublicKeyCredentialDescriptor(
      {String type, dynamic id, Iterable<String> transports});
}

extension PropsPublicKeyCredentialDescriptor on PublicKeyCredentialDescriptor {
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  dynamic get id => js_util.getProperty(this, 'id');
  set id(dynamic newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  Iterable<String> get transports => js_util.getProperty(this, 'transports');
  set transports(Iterable<String> newValue) {
    js_util.setProperty(this, 'transports', newValue);
  }
}

enum AuthenticatorTransport { usb, nfc, ble, internal }

enum UserVerificationRequirement { valueRequired, preferred, discouraged }

@anonymous
@JS()
@staticInterop
class CredentialPropertiesOutput {
  external factory CredentialPropertiesOutput({bool rk});
}

extension PropsCredentialPropertiesOutput on CredentialPropertiesOutput {
  bool get rk => js_util.getProperty(this, 'rk');
  set rk(bool newValue) {
    js_util.setProperty(this, 'rk', newValue);
  }
}

enum LargeBlobSupport { valueRequired, preferred }

@anonymous
@JS()
@staticInterop
class AuthenticationExtensionsLargeBlobInputs {
  external factory AuthenticationExtensionsLargeBlobInputs(
      {String support, bool read, dynamic write});
}

extension PropsAuthenticationExtensionsLargeBlobInputs
    on AuthenticationExtensionsLargeBlobInputs {
  String get support => js_util.getProperty(this, 'support');
  set support(String newValue) {
    js_util.setProperty(this, 'support', newValue);
  }

  bool get read => js_util.getProperty(this, 'read');
  set read(bool newValue) {
    js_util.setProperty(this, 'read', newValue);
  }

  dynamic get write => js_util.getProperty(this, 'write');
  set write(dynamic newValue) {
    js_util.setProperty(this, 'write', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AuthenticationExtensionsLargeBlobOutputs {
  external factory AuthenticationExtensionsLargeBlobOutputs(
      {bool supported, ByteBuffer blob, bool written});
}

extension PropsAuthenticationExtensionsLargeBlobOutputs
    on AuthenticationExtensionsLargeBlobOutputs {
  bool get supported => js_util.getProperty(this, 'supported');
  set supported(bool newValue) {
    js_util.setProperty(this, 'supported', newValue);
  }

  ByteBuffer get blob => js_util.getProperty(this, 'blob');
  set blob(ByteBuffer newValue) {
    js_util.setProperty(this, 'blob', newValue);
  }

  bool get written => js_util.getProperty(this, 'written');
  set written(bool newValue) {
    js_util.setProperty(this, 'written', newValue);
  }
}
