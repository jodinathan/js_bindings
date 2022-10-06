/// Web Cryptography API
///
/// https://w3c.github.io/webcrypto/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webcryptoapi;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

///
///   The interface represents basic cryptography features available
/// in the current context.
///   It allows access to a cryptographically strong random number
/// generator and to cryptographic primitives.
///
///  Note: This feature is available in Web Workers
///
///  The Web Crypto API is accessed through the global [crypto]
/// property, which is a object.
@JS()
@staticInterop
class Crypto {
  external factory Crypto();
}

extension PropsCrypto on Crypto {
  SubtleCrypto get subtle => js_util.getProperty(this, 'subtle');
  dynamic getRandomValues(dynamic array) =>
      js_util.callMethod(this, 'getRandomValues', [array]);

  String randomUUID() => js_util.callMethod(this, 'randomUUID', []);
}

@anonymous
@JS()
@staticInterop
class Algorithm {
  external factory Algorithm({required String name});
}

extension PropsAlgorithm on Algorithm {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class KeyAlgorithm {
  external factory KeyAlgorithm({required String name});
}

extension PropsKeyAlgorithm on KeyAlgorithm {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }
}

enum KeyType { public, private, secret }

enum KeyUsage {
  encrypt,
  decrypt,
  sign,
  verify,
  deriveKey,
  deriveBits,
  wrapKey,
  unwrapKey
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web Crypto API represents a cryptographic
/// key obtained from one of the [SubtleCrypto] methods
/// [generateKey()], [deriveKey()], [importKey()], or [unwrapKey()].
///  For security reasons, the interface can only be used in a secure
/// context.
@JS()
@staticInterop
class CryptoKey {
  external factory CryptoKey();
}

extension PropsCryptoKey on CryptoKey {
  KeyType get type => KeyType.values.byName(js_util.getProperty(this, 'type'));
  bool get extractable => js_util.getProperty(this, 'extractable');
  dynamic get algorithm => js_util.getProperty(this, 'algorithm');
  dynamic get usages => js_util.getProperty(this, 'usages');
}

enum KeyFormat { raw, spki, pkcs8, jwk }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web Crypto API provides a number of
/// low-level cryptographic functions. Access to the features of is
/// obtained through the [subtle] property of the [Crypto] object you
/// get from the [crypto] property.
///
///   Warning: This API provides a number of low-level cryptographic
/// primitives. It's very easy to misuse them, and the pitfalls
/// involved can be very subtle.
///   Even assuming you use the basic cryptographic functions
/// correctly, secure key management and overall security system
/// design are extremely hard to get right, and are generally the
/// domain of specialist security experts.
///   Errors in security system design and implementation can make
/// the security of the system completely ineffective.
///   Please learn and experiment, but don't guarantee or imply the
/// security of your work before an individual knowledgeable in this
/// subject matter thoroughly reviews it. The Crypto 101 Course can
/// be a great place to start learning about the design and
/// implementation of secure systems.
///
@JS()
@staticInterop
class SubtleCrypto {
  external factory SubtleCrypto();
}

extension PropsSubtleCrypto on SubtleCrypto {
  Future<dynamic> encrypt(dynamic algorithm, CryptoKey key, dynamic data) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'encrypt', [algorithm, key, data]));

  Future<dynamic> decrypt(dynamic algorithm, CryptoKey key, dynamic data) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'decrypt', [algorithm, key, data]));

  Future<dynamic> sign(dynamic algorithm, CryptoKey key, dynamic data) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'sign', [algorithm, key, data]));

  Future<dynamic> verify(
          dynamic algorithm, CryptoKey key, dynamic signature, dynamic data) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'verify', [algorithm, key, signature, data]));

  Future<dynamic> digest(dynamic algorithm, dynamic data) => js_util
      .promiseToFuture(js_util.callMethod(this, 'digest', [algorithm, data]));

  Future<dynamic> generateKey(
          dynamic algorithm, bool extractable, Iterable<KeyUsage> keyUsages) =>
      js_util.promiseToFuture(js_util.callMethod(
          this, 'generateKey', [algorithm, extractable, keyUsages.names]));

  Future<dynamic> deriveKey(
          dynamic algorithm,
          CryptoKey baseKey,
          dynamic derivedKeyType,
          bool extractable,
          Iterable<KeyUsage> keyUsages) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'deriveKey',
          [algorithm, baseKey, derivedKeyType, extractable, keyUsages.names]));

  Future<ByteBuffer> deriveBits(
          dynamic algorithm, CryptoKey baseKey, int length) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'deriveBits', [algorithm, baseKey, length]));

  Future<CryptoKey> importKey(KeyFormat format, dynamic keyData,
          dynamic algorithm, bool extractable, Iterable<KeyUsage> keyUsages) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'importKey',
          [format.name, keyData, algorithm, extractable, keyUsages.names]));

  Future<dynamic> exportKey(KeyFormat format, CryptoKey key) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'exportKey', [format.name, key]));

  Future<dynamic> wrapKey(KeyFormat format, CryptoKey key,
          CryptoKey wrappingKey, dynamic wrapAlgorithm) =>
      js_util.promiseToFuture(js_util.callMethod(
          this, 'wrapKey', [format.name, key, wrappingKey, wrapAlgorithm]));

  Future<CryptoKey> unwrapKey(
          KeyFormat format,
          dynamic wrappedKey,
          CryptoKey unwrappingKey,
          dynamic unwrapAlgorithm,
          dynamic unwrappedKeyAlgorithm,
          bool extractable,
          Iterable<KeyUsage> keyUsages) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'unwrapKey', [
        format.name,
        wrappedKey,
        unwrappingKey,
        unwrapAlgorithm,
        unwrappedKeyAlgorithm,
        extractable,
        keyUsages.names
      ]));
}

@anonymous
@JS()
@staticInterop
class RsaOtherPrimesInfo {
  external factory RsaOtherPrimesInfo(
      {required String r, required String d, required String t});
}

extension PropsRsaOtherPrimesInfo on RsaOtherPrimesInfo {
  String get r => js_util.getProperty(this, 'r');
  set r(String newValue) {
    js_util.setProperty(this, 'r', newValue);
  }

  String get d => js_util.getProperty(this, 'd');
  set d(String newValue) {
    js_util.setProperty(this, 'd', newValue);
  }

  String get t => js_util.getProperty(this, 't');
  set t(String newValue) {
    js_util.setProperty(this, 't', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class JsonWebKey {
  external factory JsonWebKey(
      {required String kty,
      required String use,
      required Iterable<String> key_ops,
      required String alg,
      required bool ext,
      required String crv,
      required String x,
      required String y,
      required String d,
      required String n,
      required String e,
      required String p,
      required String q,
      required String dp,
      required String dq,
      required String qi,
      required Iterable<RsaOtherPrimesInfo> oth,
      required String k});
}

extension PropsJsonWebKey on JsonWebKey {
  String get kty => js_util.getProperty(this, 'kty');
  set kty(String newValue) {
    js_util.setProperty(this, 'kty', newValue);
  }

  String get use => js_util.getProperty(this, 'use');
  set use(String newValue) {
    js_util.setProperty(this, 'use', newValue);
  }

  Iterable<String> get keyOps => js_util.getProperty(this, 'key_ops');
  set keyOps(Iterable<String> newValue) {
    js_util.setProperty(this, 'key_ops', newValue);
  }

  String get alg => js_util.getProperty(this, 'alg');
  set alg(String newValue) {
    js_util.setProperty(this, 'alg', newValue);
  }

  bool get ext => js_util.getProperty(this, 'ext');
  set ext(bool newValue) {
    js_util.setProperty(this, 'ext', newValue);
  }

  String get crv => js_util.getProperty(this, 'crv');
  set crv(String newValue) {
    js_util.setProperty(this, 'crv', newValue);
  }

  String get x => js_util.getProperty(this, 'x');
  set x(String newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  String get y => js_util.getProperty(this, 'y');
  set y(String newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

  String get d => js_util.getProperty(this, 'd');
  set d(String newValue) {
    js_util.setProperty(this, 'd', newValue);
  }

  String get n => js_util.getProperty(this, 'n');
  set n(String newValue) {
    js_util.setProperty(this, 'n', newValue);
  }

  String get e => js_util.getProperty(this, 'e');
  set e(String newValue) {
    js_util.setProperty(this, 'e', newValue);
  }

  String get p => js_util.getProperty(this, 'p');
  set p(String newValue) {
    js_util.setProperty(this, 'p', newValue);
  }

  String get q => js_util.getProperty(this, 'q');
  set q(String newValue) {
    js_util.setProperty(this, 'q', newValue);
  }

  String get dp => js_util.getProperty(this, 'dp');
  set dp(String newValue) {
    js_util.setProperty(this, 'dp', newValue);
  }

  String get dq => js_util.getProperty(this, 'dq');
  set dq(String newValue) {
    js_util.setProperty(this, 'dq', newValue);
  }

  String get qi => js_util.getProperty(this, 'qi');
  set qi(String newValue) {
    js_util.setProperty(this, 'qi', newValue);
  }

  Iterable<RsaOtherPrimesInfo> get oth => js_util.getProperty(this, 'oth');
  set oth(Iterable<RsaOtherPrimesInfo> newValue) {
    js_util.setProperty(this, 'oth', newValue);
  }

  String get k => js_util.getProperty(this, 'k');
  set k(String newValue) {
    js_util.setProperty(this, 'k', newValue);
  }
}

///  The dictionary of the Web Crypto API represents a key pair for
/// an asymmetric cryptography algorithm, also known as a public-key
/// algorithm.
///  A object can be obtained using [SubtleCrypto.generateKey()],
/// when the selected algorithm is one of the asymmetric algorithms:
/// RSASSA-PKCS1-v1_5, RSA-PSS, RSA-OAEP, ECDSA, or ECDH.
///  It contains two properties, which are both [CryptoKey] objects:
/// a [privateKey] property containing the private key and a
/// [publicKey] property containing the public key.
@anonymous
@JS()
@staticInterop
class CryptoKeyPair {
  external factory CryptoKeyPair(
      {required CryptoKey publicKey, required CryptoKey privateKey});
}

extension PropsCryptoKeyPair on CryptoKeyPair {
  CryptoKey get publicKey => js_util.getProperty(this, 'publicKey');
  set publicKey(CryptoKey newValue) {
    js_util.setProperty(this, 'publicKey', newValue);
  }

  CryptoKey get privateKey => js_util.getProperty(this, 'privateKey');
  set privateKey(CryptoKey newValue) {
    js_util.setProperty(this, 'privateKey', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RsaKeyGenParams implements Algorithm {
  external factory RsaKeyGenParams(
      {required int modulusLength, required Uint8List publicExponent});
}

extension PropsRsaKeyGenParams on RsaKeyGenParams {
  int get modulusLength => js_util.getProperty(this, 'modulusLength');
  set modulusLength(int newValue) {
    js_util.setProperty(this, 'modulusLength', newValue);
  }

  Uint8List get publicExponent => js_util.getProperty(this, 'publicExponent');
  set publicExponent(Uint8List newValue) {
    js_util.setProperty(this, 'publicExponent', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.generateKey()], when generating any RSA-based key
/// pair: that is, when the algorithm is identified as any of
/// RSASSA-PKCS1-v1_5, RSA-PSS, or RSA-OAEP.
@anonymous
@JS()
@staticInterop
class RsaHashedKeyGenParams implements RsaKeyGenParams {
  external factory RsaHashedKeyGenParams({dynamic hash});
}

extension PropsRsaHashedKeyGenParams on RsaHashedKeyGenParams {
  @JS('hash')
  @staticInterop
  dynamic get mHash => js_util.getProperty(this, 'hash');
  set mHash(dynamic newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RsaKeyAlgorithm implements KeyAlgorithm {
  external factory RsaKeyAlgorithm(
      {required int modulusLength, required Uint8List publicExponent});
}

extension PropsRsaKeyAlgorithm on RsaKeyAlgorithm {
  int get modulusLength => js_util.getProperty(this, 'modulusLength');
  set modulusLength(int newValue) {
    js_util.setProperty(this, 'modulusLength', newValue);
  }

  Uint8List get publicExponent => js_util.getProperty(this, 'publicExponent');
  set publicExponent(Uint8List newValue) {
    js_util.setProperty(this, 'publicExponent', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RsaHashedKeyAlgorithm implements RsaKeyAlgorithm {
  external factory RsaHashedKeyAlgorithm({required KeyAlgorithm hash});
}

extension PropsRsaHashedKeyAlgorithm on RsaHashedKeyAlgorithm {
  @JS('hash')
  @staticInterop
  KeyAlgorithm get mHash => js_util.getProperty(this, 'hash');
  set mHash(KeyAlgorithm newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.importKey()] or [SubtleCrypto.unwrapKey()], when
/// importing any RSA-based key pair: that is, when the algorithm is
/// identified as any of RSASSA-PKCS1-v1_5, RSA-PSS, or RSA-OAEP.
@anonymous
@JS()
@staticInterop
class RsaHashedImportParams implements Algorithm {
  external factory RsaHashedImportParams({dynamic hash});
}

extension PropsRsaHashedImportParams on RsaHashedImportParams {
  @JS('hash')
  @staticInterop
  dynamic get mHash => js_util.getProperty(this, 'hash');
  set mHash(dynamic newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.sign()] or [SubtleCrypto.verify()], when using the
/// RSA-PSS algorithm.
@anonymous
@JS()
@staticInterop
class RsaPssParams implements Algorithm {
  external factory RsaPssParams({required int saltLength});
}

extension PropsRsaPssParams on RsaPssParams {
  int get saltLength => js_util.getProperty(this, 'saltLength');
  set saltLength(int newValue) {
    js_util.setProperty(this, 'saltLength', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.encrypt()], [SubtleCrypto.decrypt()],
/// [SubtleCrypto.wrapKey()], or [SubtleCrypto.unwrapKey()], when
/// using the RSA_OAEP algorithm.
@anonymous
@JS()
@staticInterop
class RsaOaepParams implements Algorithm {
  external factory RsaOaepParams({dynamic label});
}

extension PropsRsaOaepParams on RsaOaepParams {
  dynamic get label => js_util.getProperty(this, 'label');
  set label(dynamic newValue) {
    js_util.setProperty(this, 'label', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.sign()] or [SubtleCrypto.verify()] when using the
/// ECDSA algorithm.
@anonymous
@JS()
@staticInterop
class EcdsaParams implements Algorithm {
  external factory EcdsaParams({dynamic hash});
}

extension PropsEcdsaParams on EcdsaParams {
  @JS('hash')
  @staticInterop
  dynamic get mHash => js_util.getProperty(this, 'hash');
  set mHash(dynamic newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.generateKey()], when generating any
/// elliptic-curve-based key pair: that is, when the algorithm is
/// identified as either of ECDSA or ECDH.
@anonymous
@JS()
@staticInterop
class EcKeyGenParams implements Algorithm {
  external factory EcKeyGenParams({required String namedCurve});
}

extension PropsEcKeyGenParams on EcKeyGenParams {
  String get namedCurve => js_util.getProperty(this, 'namedCurve');
  set namedCurve(String newValue) {
    js_util.setProperty(this, 'namedCurve', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class EcKeyAlgorithm implements KeyAlgorithm {
  external factory EcKeyAlgorithm({required String namedCurve});
}

extension PropsEcKeyAlgorithm on EcKeyAlgorithm {
  String get namedCurve => js_util.getProperty(this, 'namedCurve');
  set namedCurve(String newValue) {
    js_util.setProperty(this, 'namedCurve', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.importKey()] or [SubtleCrypto.unwrapKey()], when
/// generating any elliptic-curve-based key pair: that is, when the
/// algorithm is identified as either of ECDSA or ECDH.
@anonymous
@JS()
@staticInterop
class EcKeyImportParams implements Algorithm {
  external factory EcKeyImportParams({required String namedCurve});
}

extension PropsEcKeyImportParams on EcKeyImportParams {
  String get namedCurve => js_util.getProperty(this, 'namedCurve');
  set namedCurve(String newValue) {
    js_util.setProperty(this, 'namedCurve', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.deriveKey()], when using the ECDH algorithm.
///  ECDH enables two people who each have a key pair consisting of a
/// public and a private key to derive a shared secret. They exchange
/// public keys and use the combination of their private key and the
/// other entity's public key to derive a secret key that they — and
/// noone else — share.
///  The parameters for ECDH [deriveKey()] therefore include the
/// other entity's public key, which is combined with this entity's
/// private key to derive the shared secret.
@anonymous
@JS()
@staticInterop
class EcdhKeyDeriveParams implements Algorithm {
  external factory EcdhKeyDeriveParams({required CryptoKey public});
}

extension PropsEcdhKeyDeriveParams on EcdhKeyDeriveParams {
  CryptoKey get public => js_util.getProperty(this, 'public');
  set public(CryptoKey newValue) {
    js_util.setProperty(this, 'public', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.encrypt()], [SubtleCrypto.decrypt()],
/// [SubtleCrypto.wrapKey()], or [SubtleCrypto.unwrapKey()], when
/// using the AES-CTR algorithm.
///  AES is a block cipher, meaning that it splits the message into
/// blocks and encrypts it a block at a time. In CTR mode, every time
/// a block of the message is encrypted, an extra block of data is
/// mixed in. This extra block is called the "counter block".
///  A given counter block value must never be used more than once
/// with the same key:
///
///   Given a message n blocks long, a different counter block must
/// be used for every block.
///   If the same key is used to encrypt more than one message, a
/// different counter block must be used for all blocks across all
/// messages.
///
///  Typically this is achieved by splitting the initial counter
/// block value into two concatenated parts:
///
///   A nonce (that is, a number that may only be used once). The
/// nonce part of the block stays the same for every block in the
/// message. Each time a new message is to be encrypted, a new nonce
/// is chosen. Nonces don't have to be secret, but they must not be
/// reused with the same key.
///   A counter. This part of the block gets incremented each time a
/// block is encrypted.
///
///  Essentially: the nonce should ensure that counter blocks are not
/// reused from one message to the next, while the counter should
/// ensure that counter blocks are not reused within a single
/// message.
///
///   Note: See Appendix B of the NIST SP800-38A standard for more
/// information.
///
@anonymous
@JS()
@staticInterop
class AesCtrParams implements Algorithm {
  external factory AesCtrParams({dynamic counter, required int length});
}

extension PropsAesCtrParams on AesCtrParams {
  dynamic get counter => js_util.getProperty(this, 'counter');
  set counter(dynamic newValue) {
    js_util.setProperty(this, 'counter', newValue);
  }

  int get length => js_util.getProperty(this, 'length');
  set length(int newValue) {
    js_util.setProperty(this, 'length', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AesKeyAlgorithm implements KeyAlgorithm {
  external factory AesKeyAlgorithm({required int length});
}

extension PropsAesKeyAlgorithm on AesKeyAlgorithm {
  int get length => js_util.getProperty(this, 'length');
  set length(int newValue) {
    js_util.setProperty(this, 'length', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.generateKey()], when generating an AES key: that
/// is, when the algorithm is identified as any of AES-CBC, AES-CTR,
/// AES-GCM, or AES-KW.
@anonymous
@JS()
@staticInterop
class AesKeyGenParams implements Algorithm {
  external factory AesKeyGenParams({required int length});
}

extension PropsAesKeyGenParams on AesKeyGenParams {
  int get length => js_util.getProperty(this, 'length');
  set length(int newValue) {
    js_util.setProperty(this, 'length', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AesDerivedKeyParams implements Algorithm {
  external factory AesDerivedKeyParams({required int length});
}

extension PropsAesDerivedKeyParams on AesDerivedKeyParams {
  int get length => js_util.getProperty(this, 'length');
  set length(int newValue) {
    js_util.setProperty(this, 'length', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.encrypt()], [SubtleCrypto.decrypt()],
/// [SubtleCrypto.wrapKey()], or [SubtleCrypto.unwrapKey()], when
/// using the AES-CBC algorithm.
@anonymous
@JS()
@staticInterop
class AesCbcParams implements Algorithm {
  external factory AesCbcParams({dynamic iv});
}

extension PropsAesCbcParams on AesCbcParams {
  dynamic get iv => js_util.getProperty(this, 'iv');
  set iv(dynamic newValue) {
    js_util.setProperty(this, 'iv', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.encrypt()], [SubtleCrypto.decrypt()],
/// [SubtleCrypto.wrapKey()], or [SubtleCrypto.unwrapKey()], when
/// using the AES-GCM algorithm.
///  For details of how to supply appropriate values for this
/// parameter, see the specification for AES-GCM: NIST SP800-38D, in
/// particular section 5.2.1.1 on Input Data.
@anonymous
@JS()
@staticInterop
class AesGcmParams implements Algorithm {
  external factory AesGcmParams(
      {dynamic iv, dynamic additionalData, required int tagLength});
}

extension PropsAesGcmParams on AesGcmParams {
  dynamic get iv => js_util.getProperty(this, 'iv');
  set iv(dynamic newValue) {
    js_util.setProperty(this, 'iv', newValue);
  }

  dynamic get additionalData => js_util.getProperty(this, 'additionalData');
  set additionalData(dynamic newValue) {
    js_util.setProperty(this, 'additionalData', newValue);
  }

  int get tagLength => js_util.getProperty(this, 'tagLength');
  set tagLength(int newValue) {
    js_util.setProperty(this, 'tagLength', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.importKey()] or [SubtleCrypto.unwrapKey()], when
/// generating a key for the HMAC algorithm.
@anonymous
@JS()
@staticInterop
class HmacImportParams implements Algorithm {
  external factory HmacImportParams({dynamic hash, required int length});
}

extension PropsHmacImportParams on HmacImportParams {
  @JS('hash')
  @staticInterop
  dynamic get mHash => js_util.getProperty(this, 'hash');
  set mHash(dynamic newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }

  int get length => js_util.getProperty(this, 'length');
  set length(int newValue) {
    js_util.setProperty(this, 'length', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class HmacKeyAlgorithm implements KeyAlgorithm {
  external factory HmacKeyAlgorithm(
      {required KeyAlgorithm hash, required int length});
}

extension PropsHmacKeyAlgorithm on HmacKeyAlgorithm {
  @JS('hash')
  @staticInterop
  KeyAlgorithm get mHash => js_util.getProperty(this, 'hash');
  set mHash(KeyAlgorithm newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }

  int get length => js_util.getProperty(this, 'length');
  set length(int newValue) {
    js_util.setProperty(this, 'length', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.generateKey()], when generating a key for the HMAC
/// algorithm.
@anonymous
@JS()
@staticInterop
class HmacKeyGenParams implements Algorithm {
  external factory HmacKeyGenParams({dynamic hash, required int length});
}

extension PropsHmacKeyGenParams on HmacKeyGenParams {
  @JS('hash')
  @staticInterop
  dynamic get mHash => js_util.getProperty(this, 'hash');
  set mHash(dynamic newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }

  int get length => js_util.getProperty(this, 'length');
  set length(int newValue) {
    js_util.setProperty(this, 'length', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.deriveKey()], when using the HKDF algorithm.
@anonymous
@JS()
@staticInterop
class HkdfParams implements Algorithm {
  external factory HkdfParams({dynamic hash, dynamic salt, dynamic info});
}

extension PropsHkdfParams on HkdfParams {
  @JS('hash')
  @staticInterop
  dynamic get mHash => js_util.getProperty(this, 'hash');
  set mHash(dynamic newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }

  dynamic get salt => js_util.getProperty(this, 'salt');
  set salt(dynamic newValue) {
    js_util.setProperty(this, 'salt', newValue);
  }

  dynamic get info => js_util.getProperty(this, 'info');
  set info(dynamic newValue) {
    js_util.setProperty(this, 'info', newValue);
  }
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.deriveKey()], when using the PBKDF2 algorithm.
@anonymous
@JS()
@staticInterop
class Pbkdf2Params implements Algorithm {
  external factory Pbkdf2Params(
      {dynamic salt, required int iterations, dynamic hash});
}

extension PropsPbkdf2Params on Pbkdf2Params {
  dynamic get salt => js_util.getProperty(this, 'salt');
  set salt(dynamic newValue) {
    js_util.setProperty(this, 'salt', newValue);
  }

  int get iterations => js_util.getProperty(this, 'iterations');
  set iterations(int newValue) {
    js_util.setProperty(this, 'iterations', newValue);
  }

  @JS('hash')
  @staticInterop
  dynamic get mHash => js_util.getProperty(this, 'hash');
  set mHash(dynamic newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }
}
