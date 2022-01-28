/// Web Authentication: An API for accessing Public Key Credentials - Level 3
///
/// https://w3c.github.io/webauthn/
@JS('window')
@staticInterop
library webauthn_3;

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
  external factory PublicKeyCredential();
}

extension PropsPublicKeyCredential on PublicKeyCredential {
  ///  An [ArrayBuffer] that holds the globally unique identifier for
  /// this [PublicKeyCredential]. This identifier can be used to look
  /// up credentials for future calls to [CredentialsContainer.get].
  ///
  external ByteBuffer get rawId;

  ///  An instance of an [AuthenticatorResponse] object. It is either
  /// of type [AuthenticatorAttestationResponse] if the
  /// [PublicKeyCredential] was the results of a
  /// [navigator.credentials.create()] call, or of type
  /// [AuthenticatorAssertionResponse] if the [PublicKeyCredential] was
  /// the result of a [navigator.credentials.get()] call.
  ///
  external AuthenticatorResponse get response;

  ///  If any extensions were requested, this method will return the
  /// results of processing those extensions.
  ///
  /// mapArrayBuffer = publicKeyCredential.getClientExtensionResults()
  ///
  external AuthenticationExtensionsClientOutputs getClientExtensionResults();
  external static Promise<bool> isUserVerifyingPlatformAuthenticatorAvailable();
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
  external factory AuthenticatorResponse();
}

extension PropsAuthenticatorResponse on AuthenticatorResponse {
  ///  A JSON string in an [ArrayBuffer], representing the client data
  /// that was passed to [CredentialsContainer.create()] or
  /// [CredentialsContainer.get()].
  ///
  external ByteBuffer get clientDataJSON;
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
  external factory AuthenticatorAttestationResponse();
}

extension PropsAuthenticatorAttestationResponse
    on AuthenticatorAttestationResponse {
  ///  An [ArrayBuffer] containing authenticator data and an
  /// attestation statement for a newly-created key pair.
  ///
  external ByteBuffer get attestationObject;

  ///  Returns an [Array] of strings describing which transport methods
  /// (e.g. [usb], [nfc]) are believed to be supported with the
  /// authenticator. The array may be empty if the information is not
  /// available.
  ///
  /// arrTransports = authenticatorAttestationResponse.getTransports()
  ///
  external Iterable<String> getTransports();
  external ByteBuffer getAuthenticatorData();
  external ByteBuffer? getPublicKey();
  external int getPublicKeyAlgorithm();
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
  external factory AuthenticatorAssertionResponse();
}

extension PropsAuthenticatorAssertionResponse
    on AuthenticatorAssertionResponse {
  ///  An [ArrayBuffer] containing information from the authenticator
  /// such as the Relying Party ID Hash (rpIdHash), a signature
  /// counter, test of user presence and user verification flags, and
  /// any extensions processed by the authenticator.
  ///
  external ByteBuffer get authenticatorData;

  ///  An assertion signature over
  /// [AuthenticatorAssertionResponse.authenticatorData] and
  /// [AuthenticatorResponse.clientDataJSON]. The assertion signature
  /// is created with the private key of keypair that was created
  /// during the [navigator.credentials.create()] call and verified
  /// using the public key of that same keypair.
  ///
  external ByteBuffer get signature;

  /// An [ArrayBuffer] containing an opaque user identifier.
  ///
  external ByteBuffer? get userHandle;
}

@anonymous
@JS()
@staticInterop
class PublicKeyCredentialParameters {
  external factory PublicKeyCredentialParameters({String type, int alg});
}

extension PropsPublicKeyCredentialParameters on PublicKeyCredentialParameters {
  external String get type;
  external set type(String newValue);
  external int get alg;
  external set alg(int newValue);
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
      AuthenticatorSelectionCriteria authenticatorSelection,
      String attestation = 'none',
      AuthenticationExtensionsClientInputs extensions});
}

extension PropsPublicKeyCredentialCreationOptions
    on PublicKeyCredentialCreationOptions {
  external PublicKeyCredentialRpEntity get rp;
  external set rp(PublicKeyCredentialRpEntity newValue);
  external PublicKeyCredentialUserEntity get user;
  external set user(PublicKeyCredentialUserEntity newValue);
  external dynamic get challenge;
  external set challenge(dynamic newValue);
  external Iterable<PublicKeyCredentialParameters> get pubKeyCredParams;
  external set pubKeyCredParams(
      Iterable<PublicKeyCredentialParameters> newValue);
  external int get timeout;
  external set timeout(int newValue);
  external Iterable<PublicKeyCredentialDescriptor> get excludeCredentials;
  external set excludeCredentials(
      Iterable<PublicKeyCredentialDescriptor> newValue);
  external AuthenticatorSelectionCriteria get authenticatorSelection;
  external set authenticatorSelection(AuthenticatorSelectionCriteria newValue);
  external String get attestation;
  external set attestation(String newValue);
  external AuthenticationExtensionsClientInputs get extensions;
  external set extensions(AuthenticationExtensionsClientInputs newValue);
}

@anonymous
@JS()
@staticInterop
class PublicKeyCredentialEntity {
  external factory PublicKeyCredentialEntity({String name});
}

extension PropsPublicKeyCredentialEntity on PublicKeyCredentialEntity {
  external String get name;
  external set name(String newValue);
}

@anonymous
@JS()
@staticInterop
class PublicKeyCredentialRpEntity implements PublicKeyCredentialEntity {
  external factory PublicKeyCredentialRpEntity({String id});
}

extension PropsPublicKeyCredentialRpEntity on PublicKeyCredentialRpEntity {
  external String get id;
  external set id(String newValue);
}

@anonymous
@JS()
@staticInterop
class PublicKeyCredentialUserEntity implements PublicKeyCredentialEntity {
  external factory PublicKeyCredentialUserEntity(
      {dynamic id, String displayName});
}

extension PropsPublicKeyCredentialUserEntity on PublicKeyCredentialUserEntity {
  external dynamic get id;
  external set id(dynamic newValue);
  external String get displayName;
  external set displayName(String newValue);
}

@anonymous
@JS()
@staticInterop
class AuthenticatorSelectionCriteria {
  external factory AuthenticatorSelectionCriteria(
      {String authenticatorAttachment,
      String residentKey,
      bool requireResidentKey = false,
      String userVerification = 'preferred'});
}

extension PropsAuthenticatorSelectionCriteria
    on AuthenticatorSelectionCriteria {
  external String get authenticatorAttachment;
  external set authenticatorAttachment(String newValue);
  external String get residentKey;
  external set residentKey(String newValue);
  external bool get requireResidentKey;
  external set requireResidentKey(bool newValue);
  external String get userVerification;
  external set userVerification(String newValue);
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
      String userVerification = 'preferred',
      AuthenticationExtensionsClientInputs extensions});
}

extension PropsPublicKeyCredentialRequestOptions
    on PublicKeyCredentialRequestOptions {
  ///  A [BufferSource], emitted by the relying party's server and used
  /// as a cryptographic challenge. This value will be signed by the
  /// authenticator and the signature will be sent back as part of
  /// [AuthenticatorAssertionResponse.signature].
  ///
  external dynamic get challenge;
  external set challenge(dynamic newValue);

  ///  A numerical hint, in milliseconds, which indicates the time the
  /// caller is willing to wait for the retrieval operation to
  /// complete. This hint may be overridden by the browser.
  ///
  external int get timeout;
  external set timeout(int newValue);

  ///  A [USVString] which indicates the relying party's identifier
  /// (ex. ["login.example.org"]). If this option is not provided, the
  /// client will use the current origin's domain.
  ///
  external String get rpId;
  external set rpId(String newValue);

  ///  An [Array] of credentials descriptor which restricts the
  /// acceptable existing credentials for retrieval.
  ///
  external Iterable<PublicKeyCredentialDescriptor> get allowCredentials;
  external set allowCredentials(
      Iterable<PublicKeyCredentialDescriptor> newValue);

  ///  A string qualifying how the user verification should be part of
  /// the authentication process.
  ///
  external String get userVerification;
  external set userVerification(String newValue);

  ///  An object with several client extensions' inputs. Those
  /// extensions are used to request additional processing (e.g.
  /// dealing with legacy FIDO APIs credentials, prompting a specific
  /// text on the authenticator, etc.).
  ///
  external AuthenticationExtensionsClientInputs get extensions;
  external set extensions(AuthenticationExtensionsClientInputs newValue);
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
  external String get type;
  external set type(String newValue);
  external String get challenge;
  external set challenge(String newValue);
  external String get origin;
  external set origin(String newValue);
  external bool get crossOrigin;
  external set crossOrigin(bool newValue);
  external TokenBinding get tokenBinding;
  external set tokenBinding(TokenBinding newValue);
}

@anonymous
@JS()
@staticInterop
class TokenBinding {
  external factory TokenBinding({String status, String id});
}

extension PropsTokenBinding on TokenBinding {
  external String get status;
  external set status(String newValue);
  external String get id;
  external set id(String newValue);
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
  external String get type;
  external set type(String newValue);
  external dynamic get id;
  external set id(dynamic newValue);
  external Iterable<String> get transports;
  external set transports(Iterable<String> newValue);
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
  external bool get rk;
  external set rk(bool newValue);
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
  external String get support;
  external set support(String newValue);
  external bool get read;
  external set read(bool newValue);
  external dynamic get write;
  external set write(dynamic newValue);
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
  external bool get supported;
  external set supported(bool newValue);
  external ByteBuffer get blob;
  external set blob(ByteBuffer newValue);
  external bool get written;
  external set written(bool newValue);
}
