/// Web Authentication: An API for accessing Public Key Credentials - Level 3
///
/// https://w3c.github.io/webauthn/
@JS('window')
library webauthn_3;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'credential_management_1.dart';

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The [PublicKeyCredential] interface provides information about a
/// public key / private key pair, which is a credential for logging
/// in to a service using an un-phishable and data-breach resistant
/// asymmetric key pair instead of a password. It inherits from
/// [Credential], and was created by the Web Authentication API
/// extension to the Credential Management API. Other interfaces that
/// inherit from [Credential] are [PasswordCredential] and
/// [FederatedCredential].
///  Note: This API is restricted to top-level contexts. Use from
/// within an [<iframe>] element will not have any effect.
///
@JS()
class PublicKeyCredential extends Credential {
  ///  An [ArrayBuffer] that holds the globally unique identifier for
  /// this [PublicKeyCredential]. This identifier can be used to look
  /// up credentials for future calls to [CredentialsContainer.get].
  external ByteBuffer get rawId;

  ///  An instance of an [AuthenticatorResponse] object. It is either
  /// of type [AuthenticatorAttestationResponse] if the
  /// [PublicKeyCredential] was the results of a
  /// [navigator.credentials.create()] call, or of type
  /// [AuthenticatorAssertionResponse] if the [PublicKeyCredential] was
  /// the result of a [navigator.credentials.get()] call.
  external AuthenticatorResponse get response;

  ///  If any extensions were requested, this method will return the
  /// results of processing those extensions.
  /// mapArrayBuffer = publicKeyCredential.getClientExtensionResults()
  external AuthenticationExtensionsClientOutputs getClientExtensionResults();
  external static Promise<bool> isUserVerifyingPlatformAuthenticatorAvailable();

  external factory PublicKeyCredential();
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The [AuthenticatorResponse] interface of the Web Authentication
/// API is the base interface for interfaces that provide a
/// cryptographic root of trust for a key pair. The child interfaces
/// include information from the browser such as the challenge origin
/// and either may be returned from [PublicKeyCredential.response].
@JS()
class AuthenticatorResponse {
  ///  A JSON string in an [ArrayBuffer], representing the client data
  /// that was passed to [CredentialsContainer.create()] or
  /// [CredentialsContainer.get()].
  external ByteBuffer get clientDataJSON;

  external factory AuthenticatorResponse();
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the Web Authentication API is returned by
/// [CredentialsContainer.create()] when a [PublicKeyCredential] is
/// passed, and provides a cryptographic root of trust for the new
/// key pair that has been generated. This response should be sent to
/// the relying party's server to complete the creation of the
/// credential.
///
/// This interface inherites from [AuthenticatorResponse].
///  Note: This interface is restricted to top-level contexts. Use
/// from within an [<iframe>] element will not have any effect.
///
@JS()
class AuthenticatorAttestationResponse extends AuthenticatorResponse {
  ///  An [ArrayBuffer] containing authenticator data and an
  /// attestation statement for a newly-created key pair.
  external ByteBuffer get attestationObject;

  ///  Returns an [Array] of strings describing which transport methods
  /// (e.g. [usb], [nfc]) are believed to be supported with the
  /// authenticator. The array may be empty if the information is not
  /// available.
  /// arrTransports = authenticatorAttestationResponse.getTransports()
  external Iterable<String> getTransports();
  external ByteBuffer getAuthenticatorData();
  external ByteBuffer? getPublicKey();
  external int getPublicKeyAlgorithm();

  external factory AuthenticatorAttestationResponse();
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The [AuthenticatorAssertionResponse] interface of the Web
/// Authentication API is returned by [CredentialsContainer.get()]
/// when a [PublicKeyCredential] is passed, and provides proof to a
/// service that it has a key pair and that the authentication
/// request is valid and approved.
///
/// This interface inherites from [AuthenticatorResponse].
///  Note: This interface is restricted to top-level contexts. Use
/// from within an [<iframe>] element will not have any effect.
///
@JS()
class AuthenticatorAssertionResponse extends AuthenticatorResponse {
  ///  An [ArrayBuffer] containing information from the authenticator
  /// such as the Relying Party ID Hash (rpIdHash), a signature
  /// counter, test of user presence and user verification flags, and
  /// any extensions processed by the authenticator.
  external ByteBuffer get authenticatorData;

  ///  An assertion signature over
  /// [AuthenticatorAssertionResponse.authenticatorData] and
  /// [AuthenticatorResponse.clientDataJSON]. The assertion signature
  /// is created with the private key of keypair that was created
  /// during the [navigator.credentials.create()] call and verified
  /// using the public key of that same keypair.
  external ByteBuffer get signature;

  /// An [ArrayBuffer] containing an opaque user identifier.
  external ByteBuffer? get userHandle;

  external factory AuthenticatorAssertionResponse();
}

@anonymous
@JS()
class PublicKeyCredentialParameters {
  external String get type;
  external set type(String newValue);
  external int get alg;
  external set alg(int newValue);

  external factory PublicKeyCredentialParameters({String type, int alg});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The [PublicKeyCredentialCreationOptions] dictionary of the Web
/// Authentication API holds options passed to
/// [navigators.credentials.create()] in order to create a
/// [PublicKeyCredential].
@anonymous
@JS()
class PublicKeyCredentialCreationOptions {
  ///  An object describing the relying party which requested the
  /// credential creation.
  external PublicKeyCredentialRpEntity get rp;
  external set rp(PublicKeyCredentialRpEntity newValue);

  ///  An object describing the user account for which the credential
  /// is generated.
  external PublicKeyCredentialUserEntity get user;
  external set user(PublicKeyCredentialUserEntity newValue);

  ///  A [BufferSource], emitted by the relying party's server and used
  /// as a cryptographic challenge. This value will be signed by the
  /// authenticator and the signature will be sent back as part of
  /// [AuthenticatorAttestationResponse.attestationObject].
  external dynamic get challenge;
  external set challenge(dynamic newValue);

  ///  An [Array] of element which specify the desired features of the
  /// credential, including its type and the algorithm used for the
  /// cryptographic signature operations. This array is sorted by
  /// descending order of preference.
  external Iterable<PublicKeyCredentialParameters> get pubKeyCredParams;
  external set pubKeyCredParams(
      Iterable<PublicKeyCredentialParameters> newValue);

  ///  A numerical hint, in milliseconds, which indicates the time the
  /// caller is willing to wait for the creation operation to complete.
  /// This hint may be overridden by the browser.
  external int get timeout;
  external set timeout(int newValue);

  ///  An [Array] of descriptors for existing credentials. This is
  /// provided by the relying party to avoid creating new public key
  /// credentials for an existing user who already have some.
  external Iterable<PublicKeyCredentialDescriptor> get excludeCredentials;
  external set excludeCredentials(
      Iterable<PublicKeyCredentialDescriptor> newValue);

  ///  An object whose properties are criteria used to filter out the
  /// potential authenticators for the creation operation.
  external AuthenticatorSelectionCriteria get authenticatorSelection;
  external set authenticatorSelection(AuthenticatorSelectionCriteria newValue);

  ///  A [String] which indicates how the attestation (for the
  /// authenticator's origin) should be transported.
  external String get attestation;
  external set attestation(String newValue);

  ///  An object with several client extensions' inputs. Those
  /// extensions are used to request additional processing (e.g.
  /// dealing with legacy FIDO APIs credentials, prompting a specific
  /// text on the authenticator, etc.).
  external AuthenticationExtensionsClientInputs get extensions;
  external set extensions(AuthenticationExtensionsClientInputs newValue);

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

@anonymous
@JS()
class PublicKeyCredentialEntity {
  external String get name;
  external set name(String newValue);

  external factory PublicKeyCredentialEntity({String name});
}

@anonymous
@JS()
class PublicKeyCredentialRpEntity extends PublicKeyCredentialEntity {
  external String get id;
  external set id(String newValue);

  external factory PublicKeyCredentialRpEntity({String id});
}

@anonymous
@JS()
class PublicKeyCredentialUserEntity extends PublicKeyCredentialEntity {
  external dynamic get id;
  external set id(dynamic newValue);
  external String get displayName;
  external set displayName(String newValue);

  external factory PublicKeyCredentialUserEntity(
      {dynamic id, String displayName});
}

@anonymous
@JS()
class AuthenticatorSelectionCriteria {
  external String get authenticatorAttachment;
  external set authenticatorAttachment(String newValue);
  external String get residentKey;
  external set residentKey(String newValue);
  external bool get requireResidentKey;
  external set requireResidentKey(bool newValue);
  external String get userVerification;
  external set userVerification(String newValue);

  external factory AuthenticatorSelectionCriteria(
      {String authenticatorAttachment,
      String residentKey,
      bool requireResidentKey = false,
      String userVerification = 'preferred'});
}

@JS()
enum AuthenticatorAttachment {
  platform,
  @JS('cross-platform')
  crossPlatform
}

@JS()
enum ResidentKeyRequirement {
  discouraged,
  preferred,
  @JS('required')
  valueRequired
}

@JS()
enum AttestationConveyancePreference { none, indirect, direct, enterprise }

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The [PublicKeyCredentialRequestOptions] dictionary of the Web
/// Authentication API holds the options passed to
/// [navigator.credentials.get()] in order to fetch a given
/// [PublicKeyCredential].
@anonymous
@JS()
class PublicKeyCredentialRequestOptions {
  ///  A [BufferSource], emitted by the relying party's server and used
  /// as a cryptographic challenge. This value will be signed by the
  /// authenticator and the signature will be sent back as part of
  /// [AuthenticatorAssertionResponse.signature].
  external dynamic get challenge;
  external set challenge(dynamic newValue);

  ///  A numerical hint, in milliseconds, which indicates the time the
  /// caller is willing to wait for the retrieval operation to
  /// complete. This hint may be overridden by the browser.
  external int get timeout;
  external set timeout(int newValue);

  ///  A [USVString] which indicates the relying party's identifier
  /// (ex. ["login.example.org"]). If this option is not provided, the
  /// client will use the current origin's domain.
  external String get rpId;
  external set rpId(String newValue);

  ///  An [Array] of credentials descriptor which restricts the
  /// acceptable existing credentials for retrieval.
  external Iterable<PublicKeyCredentialDescriptor> get allowCredentials;
  external set allowCredentials(
      Iterable<PublicKeyCredentialDescriptor> newValue);

  ///  A string qualifying how the user verification should be part of
  /// the authentication process.
  external String get userVerification;
  external set userVerification(String newValue);

  ///  An object with several client extensions' inputs. Those
  /// extensions are used to request additional processing (e.g.
  /// dealing with legacy FIDO APIs credentials, prompting a specific
  /// text on the authenticator, etc.).
  external AuthenticationExtensionsClientInputs get extensions;
  external set extensions(AuthenticationExtensionsClientInputs newValue);

  external factory PublicKeyCredentialRequestOptions(
      {dynamic challenge,
      int timeout,
      String rpId,
      Iterable<PublicKeyCredentialDescriptor> allowCredentials = const [],
      String userVerification = 'preferred',
      AuthenticationExtensionsClientInputs extensions});
}

@anonymous
@JS()
class AuthenticationExtensionsClientInputs {
  external factory AuthenticationExtensionsClientInputs();
}

@anonymous
@JS()
class AuthenticationExtensionsClientOutputs {
  external factory AuthenticationExtensionsClientOutputs();
}

@anonymous
@JS()
class CollectedClientData {
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

  external factory CollectedClientData(
      {String type,
      String challenge,
      String origin,
      bool crossOrigin,
      TokenBinding tokenBinding});
}

@anonymous
@JS()
class TokenBinding {
  external String get status;
  external set status(String newValue);
  external String get id;
  external set id(String newValue);

  external factory TokenBinding({String status, String id});
}

@JS()
enum TokenBindingStatus { present, supported }

@JS()
enum PublicKeyCredentialType {
  @JS('public-key')
  publicKey
}

@anonymous
@JS()
class PublicKeyCredentialDescriptor {
  external String get type;
  external set type(String newValue);
  external dynamic get id;
  external set id(dynamic newValue);
  external Iterable<String> get transports;
  external set transports(Iterable<String> newValue);

  external factory PublicKeyCredentialDescriptor(
      {String type, dynamic id, Iterable<String> transports});
}

@JS()
enum AuthenticatorTransport { usb, nfc, ble, internal }

@JS()
enum UserVerificationRequirement {
  @JS('required')
  valueRequired,
  preferred,
  discouraged
}

@anonymous
@JS()
class CredentialPropertiesOutput {
  external bool get rk;
  external set rk(bool newValue);

  external factory CredentialPropertiesOutput({bool rk});
}

@JS()
enum LargeBlobSupport {
  @JS('required')
  valueRequired,
  preferred
}

@anonymous
@JS()
class AuthenticationExtensionsLargeBlobInputs {
  external String get support;
  external set support(String newValue);
  external bool get read;
  external set read(bool newValue);
  external dynamic get write;
  external set write(dynamic newValue);

  external factory AuthenticationExtensionsLargeBlobInputs(
      {String support, bool read, dynamic write});
}

@anonymous
@JS()
class AuthenticationExtensionsLargeBlobOutputs {
  external bool get supported;
  external set supported(bool newValue);
  external ByteBuffer get blob;
  external set blob(ByteBuffer newValue);
  external bool get written;
  external set written(bool newValue);

  external factory AuthenticationExtensionsLargeBlobOutputs(
      {bool supported, ByteBuffer blob, bool written});
}
