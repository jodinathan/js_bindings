/// Web Authentication: An API for accessing Public Key Credentials - Level
///
/// https://w3c.github.io/webauthn/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webauthn_3;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class PublicKeyCredential implements Credential {
  external PublicKeyCredential();
}

extension PropsPublicKeyCredential on PublicKeyCredential {
  ByteBuffer get rawId => js_util.getProperty(this, 'rawId');
  AuthenticatorResponse get response => js_util.getProperty(this, 'response');
  String? get authenticatorAttachment =>
      js_util.getProperty(this, 'authenticatorAttachment');
  AuthenticationExtensionsClientOutputs getClientExtensionResults() =>
      js_util.callMethod(this, 'getClientExtensionResults', []);

  static Future<bool> isUserVerifyingPlatformAuthenticatorAvailable() =>
      js_util.promiseToFuture(js_util.callMethod(PublicKeyCredential,
          'isUserVerifyingPlatformAuthenticatorAvailable', []));
}

@JS()
@staticInterop
class AuthenticatorResponse {
  external AuthenticatorResponse();
}

extension PropsAuthenticatorResponse on AuthenticatorResponse {
  ByteBuffer get clientDataJSON => js_util.getProperty(this, 'clientDataJSON');
}

@JS()
@staticInterop
class AuthenticatorAttestationResponse implements AuthenticatorResponse {
  external AuthenticatorAttestationResponse();
}

extension PropsAuthenticatorAttestationResponse
    on AuthenticatorAttestationResponse {
  ByteBuffer get attestationObject =>
      js_util.getProperty(this, 'attestationObject');
  Iterable<String> getTransports() =>
      js_util.callMethod(this, 'getTransports', []);

  ByteBuffer getAuthenticatorData() =>
      js_util.callMethod(this, 'getAuthenticatorData', []);

  ByteBuffer? getPublicKey() => js_util.callMethod(this, 'getPublicKey', []);

  int getPublicKeyAlgorithm() =>
      js_util.callMethod(this, 'getPublicKeyAlgorithm', []);
}

@JS()
@staticInterop
class AuthenticatorAssertionResponse implements AuthenticatorResponse {
  external AuthenticatorAssertionResponse();
}

extension PropsAuthenticatorAssertionResponse
    on AuthenticatorAssertionResponse {
  ByteBuffer get authenticatorData =>
      js_util.getProperty(this, 'authenticatorData');
  ByteBuffer get signature => js_util.getProperty(this, 'signature');
  ByteBuffer? get userHandle => js_util.getProperty(this, 'userHandle');
}

@anonymous
@JS()
@staticInterop
class PublicKeyCredentialParameters {
  external factory PublicKeyCredentialParameters(
      {required String type, required int alg});
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
      {required PublicKeyCredentialRpEntity rp,
      required PublicKeyCredentialUserEntity user,
      dynamic challenge,
      required Iterable<PublicKeyCredentialParameters> pubKeyCredParams,
      required int timeout,
      Iterable<PublicKeyCredentialDescriptor>? excludeCredentials = const [],
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
  external factory PublicKeyCredentialEntity({required String name});
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
  external factory PublicKeyCredentialRpEntity({required String id});
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
      {dynamic id, required String displayName});
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
      {required String authenticatorAttachment,
      required String residentKey,
      bool? requireResidentKey = false,
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

@anonymous
@JS()
@staticInterop
class PublicKeyCredentialRequestOptions {
  external factory PublicKeyCredentialRequestOptions(
      {dynamic challenge,
      required int timeout,
      required String rpId,
      Iterable<PublicKeyCredentialDescriptor>? allowCredentials = const [],
      String? userVerification = 'preferred',
      AuthenticationExtensionsClientInputs? extensions});
}

extension PropsPublicKeyCredentialRequestOptions
    on PublicKeyCredentialRequestOptions {
  dynamic get challenge => js_util.getProperty(this, 'challenge');
  set challenge(dynamic newValue) {
    js_util.setProperty(this, 'challenge', newValue);
  }

  int get timeout => js_util.getProperty(this, 'timeout');
  set timeout(int newValue) {
    js_util.setProperty(this, 'timeout', newValue);
  }

  String get rpId => js_util.getProperty(this, 'rpId');
  set rpId(String newValue) {
    js_util.setProperty(this, 'rpId', newValue);
  }

  Iterable<PublicKeyCredentialDescriptor> get allowCredentials =>
      js_util.getProperty(this, 'allowCredentials');
  set allowCredentials(Iterable<PublicKeyCredentialDescriptor> newValue) {
    js_util.setProperty(this, 'allowCredentials', newValue);
  }

  String get userVerification => js_util.getProperty(this, 'userVerification');
  set userVerification(String newValue) {
    js_util.setProperty(this, 'userVerification', newValue);
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
      {required String type,
      required String challenge,
      required String origin,
      required bool crossOrigin});
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
}

@anonymous
@JS()
@staticInterop
class TokenBinding {
  external factory TokenBinding({required String status, required String id});
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
      {required String type, dynamic id, required Iterable<String> transports});
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
  external factory CredentialPropertiesOutput({required bool rk});
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
      {required String support, required bool read, dynamic write});
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
      {required bool supported,
      required ByteBuffer blob,
      required bool written});
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
