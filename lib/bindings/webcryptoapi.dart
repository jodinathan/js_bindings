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
  external Crypto();
}

extension PropsCrypto on Crypto {
  ///  Returns a [SubtleCrypto] object providing access to common
  /// cryptographic primitives, like hashing, signing, encryption, or
  /// decryption.
  ///
  SubtleCrypto get subtle => js_util.getProperty(this, 'subtle');

  ///  Fills the passed [TypedArray] with cryptographically sound
  /// random values.
  ///
  /// crypto.getRandomValues(typedArray)
  ///
  dynamic getRandomValues(dynamic array) =>
      js_util.callMethod(this, 'getRandomValues', [array]);
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
  external CryptoKey();
}

extension PropsCryptoKey on CryptoKey {
  /// String which may take one of the following values:
  ///
  ///     ["secret"]: This key is a secret key for use with a symmetric
  /// algorithm.
  ///     ["private"]: This key is the private half of an asymmetric
  /// algorithm's [CryptoKeyPair].
  ///     ["public"]: This key is the public half of an asymmetric
  /// algorithm's [CryptoKeyPair].
  ///
  ///
  KeyType get type => KeyType.values.byName(js_util.getProperty(this, 'type'));

  ///  A boolean value indicating whether or not the key may be
  /// extracted using [SubtleCrypto.exportKey()] or
  /// [SubtleCrypto.wrapKey()].
  ///
  ///    [true]: The key may be extracted.
  ///     [false] The key may not be extracted. [exportKey()] or
  /// [wrapKey()] will throw an exception if used to extract this key.
  ///
  ///
  bool get extractable => js_util.getProperty(this, 'extractable');

  ///  An object describing the algorithm for which this key can be
  /// used and any associated extra parameters.
  ///
  ///     [AesKeyGenParams] if the algorithm is any of the AES
  /// variants.
  ///     [RsaHashedKeyGenParams] if the algorithm is any of the RSA
  /// variants.
  ///    [EcKeyGenParams] if the algorithm is any of the EC variants.
  ///    [HmacKeyGenParams] if the algorithm is HMAC.
  ///
  ///
  dynamic get algorithm => js_util.getProperty(this, 'algorithm');

  ///  An [Array] of strings, indicating what can be done with the key.
  /// Possible values for array elements are:
  ///
  ///    ["encrypt"]: The key may be used to [encrypt] messages.
  ///    ["decrypt"]: The key may be used to [decrypt] messages.
  ///    ["sign"]: The key may be used to [sign] messages.
  ///    ["verify"]: The key may be used to [verify] signatures.
  ///    ["deriveKey"]: The key may be used in [deriving a new key].
  ///    ["deriveBits"]: The key may be used in [deriving bits].
  ///    ["wrapKey"]: The key may be used to [wrap a key].
  ///    ["unwrapKey"]: The key may be used to [unwrap a key].
  ///
  ///
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
  external SubtleCrypto();
}

extension PropsSubtleCrypto on SubtleCrypto {
  ///  Returns a [Future] that fufills with the encrypted data
  /// corresponding to the clear text, algorithm, and key given as
  /// parameters.
  ///
  /// const result = crypto.subtle.encrypt(algorithm, key, data);
  ///
  Future<dynamic> encrypt(dynamic algorithm, CryptoKey key, dynamic data) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'encrypt', [algorithm, key, data]));

  ///  Returns a [Future] that fulfills with the clear data
  /// corresponding to the encrypted text, algorithm, and key given as
  /// parameters.
  ///
  /// const result = crypto.subtle.decrypt(algorithm, key, data);
  ///
  Future<dynamic> decrypt(dynamic algorithm, CryptoKey key, dynamic data) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'decrypt', [algorithm, key, data]));

  ///  Returns a [Future] that fulfills with the signature
  /// corresponding to the text, algorithm, and key given as
  /// parameters.
  ///
  /// const signature = crypto.subtle.sign(algorithm, key, data);
  ///
  Future<dynamic> sign(dynamic algorithm, CryptoKey key, dynamic data) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'sign', [algorithm, key, data]));

  ///  Returns a [Future] that fulfills with a boolean value indicating
  /// if the signature given as a parameter matches the text,
  /// algorithm, and key that are also given as parameters.
  ///
  /// const result = crypto.subtle.verify(algorithm, key, signature, data);
  ///
  Future<dynamic> verify(
          dynamic algorithm, CryptoKey key, dynamic signature, dynamic data) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'verify', [algorithm, key, signature, data]));

  ///  Returns a [Future] that fulfills with a digest generated from
  /// the algorithm and text given as parameters.
  ///
  /// const digest = crypto.subtle.digest(algorithm, data);
  ///
  Future<dynamic> digest(dynamic algorithm, dynamic data) => js_util
      .promiseToFuture(js_util.callMethod(this, 'digest', [algorithm, data]));

  ///  Returns a [Future] that fulfills with a newly-generated
  /// [CryptoKey], for symmetrical algorithms, or a [CryptoKeyPair],
  /// containing two newly generated keys, for asymmetrical algorithms.
  /// These will match the algorithm, usages, and extractability given
  /// as parameters.
  ///
  /// const result = crypto.subtle.generateKey(algorithm, extractable, keyUsages);
  ///
  Future<dynamic> generateKey(
          dynamic algorithm, bool extractable, Iterable<KeyUsage> keyUsages) =>
      js_util.promiseToFuture(js_util.callMethod(
          this, 'generateKey', [algorithm, extractable, keyUsages.names]));

  ///  Returns a [Future] that fulfills with a newly generated
  /// [CryptoKey] derived from the master key and specific algorithm
  /// given as parameters.
  ///
  /// const result = crypto.subtle.deriveKey(
  ///   algorithm,
  ///   baseKey,
  ///   derivedKeyAlgorithm,
  ///   extractable,
  ///   keyUsages
  /// );
  ///
  Future<dynamic> deriveKey(
          dynamic algorithm,
          CryptoKey baseKey,
          dynamic derivedKeyType,
          bool extractable,
          Iterable<KeyUsage> keyUsages) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'deriveKey',
          [algorithm, baseKey, derivedKeyType, extractable, keyUsages.names]));

  ///  Returns a [Future] that fulfills with a newly generated buffer
  /// of pseudo-random bits derived from the master key and specific
  /// algorithm given as parameters.
  ///
  /// const result = crypto.subtle.deriveBits(
  ///   algorithm,
  ///   baseKey,
  ///   length
  /// );
  ///
  Future<ByteBuffer> deriveBits(
          dynamic algorithm, CryptoKey baseKey, int length) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'deriveBits', [algorithm, baseKey, length]));

  ///  Returns a [Future] that fulfills with a [CryptoKey]
  /// corresponding to the format, the algorithm, raw key data, usages,
  /// and extractability given as parameters.
  ///
  /// const result = crypto.subtle.importKey(
  ///   format,
  ///   keyData,
  ///   algorithm,
  ///   extractable,
  ///   keyUsages
  /// );
  ///
  Future<CryptoKey> importKey(KeyFormat format, dynamic keyData,
          dynamic algorithm, bool extractable, Iterable<KeyUsage> keyUsages) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'importKey',
          [format.name, keyData, algorithm, extractable, keyUsages.names]));

  ///  Returns a [Future] that fulfills with a buffer containing the
  /// key in the requested format.
  ///
  /// const result = crypto.subtle.exportKey(format, key);
  ///
  Future<dynamic> exportKey(KeyFormat format, CryptoKey key) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'exportKey', [format.name, key]));

  ///  Returns a [Future] that fulfills with a wrapped symmetric key
  /// for usage (transfer and storage) in insecure environments. The
  /// wrapped key matches the format specified in the given parameters,
  /// and wrapping is done by the given wrapping key, using the
  /// specified algorithm.
  ///
  /// const result = crypto.subtle.wrapKey(
  ///   format,
  ///   key,
  ///   wrappingKey,
  ///   wrapAlgo
  /// );
  ///
  Future<dynamic> wrapKey(KeyFormat format, CryptoKey key,
          CryptoKey wrappingKey, dynamic wrapAlgorithm) =>
      js_util.promiseToFuture(js_util.callMethod(
          this, 'wrapKey', [format.name, key, wrappingKey, wrapAlgorithm]));

  ///  Returns a [Future] that fulfills with a [CryptoKey]
  /// corresponding to the wrapped key given in the parameter.
  ///
  /// const result = crypto.subtle.unwrapKey(
  ///   format,
  ///   wrappedKey,
  ///   unwrappingKey,
  ///   unwrapAlgo,
  ///   unwrappedKeyAlgo,
  ///   extractable,
  ///   keyUsages
  /// );
  ///
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
  ///  A [CryptoKey] object representing the public key. For encryption
  /// and decryption algorithms, this key is used to encrypt. For
  /// signing and verification algorithms it is used to verify
  /// signatures.
  ///
  CryptoKey get publicKey => js_util.getProperty(this, 'publicKey');
  set publicKey(CryptoKey newValue) {
    js_util.setProperty(this, 'publicKey', newValue);
  }

  ///  A [CryptoKey] object representing the private key. For
  /// encryption and decryption algorithms, this key is used to
  /// decrypt. For signing and verification algorithms it is used to
  /// sign.
  ///
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
  ///  A [String] representing the name of the digest function to use.
  /// You can pass any of [SHA-256], [SHA-384], or [SHA-512] here.
  ///
  ///     Warning: Although you can technically pass [SHA-1] as a value
  /// here, this is strongly discouraged as SHA-1 is considered
  /// vulnerable.
  ///
  ///
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
  ///  A [String] representing the name of the digest function to use.
  /// This can be one of [SHA-256], [SHA-384], or [SHA-512].
  ///
  ///     Warning: Although you can technically pass [SHA-1] here, this
  /// is strongly discouraged as it is considered vulnerable.
  ///
  ///
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
  ///  A [int] integer representing the length of the random salt to
  /// use, in bytes.
  ///    RFC 3447 says that "Typical salt lengths" are either 0 or the
  /// length of the output of the digest algorithm that was selected
  /// when this key was generated. For example, if you use SHA-256 as
  /// the digest algorithm, this could be 32.
  ///   The maximum size of is given by:
  ///   [Math.ceil((keySizeInBits - 1)/8) - digestSizeInBytes - 2
  /// ]
  ///    So for a key length of 2048 bits and a digest output size of
  /// 32 bytes, the maximum size would be 222.
  ///
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
  ///  A [BufferSource] — an array of bytes that does not itself need
  /// to be encrypted but which should be bound to the ciphertext. A
  /// digest of the label is part of the input to the encryption
  /// operation.
  ///    Unless your application calls for a label, you can just omit
  /// this argument and it will not affect the security of the
  /// encryption operation.
  ///
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
  ///  A [String]. An identifier for the digest algorithm to use. This
  /// should be one of the following:
  ///
  ///    [SHA-256]: selects the SHA-256 algorithm.
  ///    [SHA-384]: selects the SHA-384 algorithm.
  ///    [SHA-512]: selects the SHA-512 algorithm.
  ///
  ///
  ///     Warning: [SHA-1] is also supported here but the SHA-1
  /// algorithm is considered vulnerable and should no longer be used.
  ///
  ///
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
  ///  A [String] representing the name of the elliptic curve to use.
  /// This may be any of the following names for NIST-approved curves:
  ///
  ///    [P-256]
  ///    [P-384]
  ///    [P-521]
  ///
  ///
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
  ///  A [String] representing the name of the elliptic curve to use.
  /// This may be any of the following names for NIST-approved curves:
  ///
  ///    [P-256]
  ///    [P-384]
  ///    [P-521]
  ///
  ///
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
  ///  A [CryptoKey] object representing the public key of the other
  /// entity.
  ///
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
  ///  A [BufferSource] — the initial value of the counter block. This
  /// must be 16 bytes long (the AES block size). The rightmost
  /// [length] bits of this block are used for the counter, and the
  /// rest is used for the nonce. For example, if [length] is set to
  /// 64, then the first half of is the nonce and the second half is
  /// used for the counter.
  ///
  dynamic get counter => js_util.getProperty(this, 'counter');
  set counter(dynamic newValue) {
    js_util.setProperty(this, 'counter', newValue);
  }

  ///  A [Number] — the number of bits in the counter block that are
  /// used for the actual counter. The counter must be big enough that
  /// it doesn't wrap: if the message is [n] blocks and the counter is
  /// [m] bits long, then the following must be true: [n <= 2^m]. The
  /// NIST SP800-38A standard, which defines CTR, suggests that the
  /// counter should occupy half of the counter block (see Appendix
  /// B.2), so for AES it would be 64.
  ///
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
  ///  A [Number] — the length in bits of the key to generate. This
  /// must be one of: 128, 192, or 256.
  ///
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
  ///  A [BufferSource]. The initialization vector. Must be 16 bytes,
  /// unpredictable, and preferably cryptographically random. However,
  /// it need not be secret (for example, it may be transmitted
  /// unencrypted along with the ciphertext).
  ///
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
  ///  A [BufferSource] — the initialization vector. This must be
  /// unique for every encryption operation carried out with a given
  /// key. Put another way: never reuse an IV with the same key. The
  /// AES-GCM specification recommends that the IV should be 96 bits
  /// long, and typically contains bits from a random number generator.
  /// Section 8.2 of the specification outlines methods for
  /// constructing IVs. Note that the IV does not have to be secret,
  /// just unique: so it is OK, for example, to transmit it in the
  /// clear alongside the encrypted message.
  ///
  dynamic get iv => js_util.getProperty(this, 'iv');
  set iv(dynamic newValue) {
    js_util.setProperty(this, 'iv', newValue);
  }

  ///  A [BufferSource]. This contains additional data that will not be
  /// encrypted but will be authenticated along with the encrypted
  /// data. If is given here then the same data must be given in the
  /// corresponding call to [decrypt()]: if the data given to the
  /// [decrypt()] call does not match the original data, the decryption
  /// will throw an exception. This gives you a way to authenticate
  /// associated data without having to encrypt it.
  ///   The bit length of must be smaller than [2^64 - 1].
  ///    The property is optional and may be omitted without
  /// compromising the security of the encryption operation.
  ///
  dynamic get additionalData => js_util.getProperty(this, 'additionalData');
  set additionalData(dynamic newValue) {
    js_util.setProperty(this, 'additionalData', newValue);
  }

  ///  A [Number]. This determines the size in bits of the
  /// authentication tag generated in the encryption operation and used
  /// for authentication in the corresponding decryption.
  ///    According to the Web Crypto specification this must have one
  /// of the following values: 32, 64, 96, 104, 112, 120, or 128. The
  /// AES-GCM specification recommends that it should be 96, 104, 112,
  /// 120 or 128, although 32 or 64 bits may be acceptable in some
  /// applications: Appendix C of the specification provides additional
  /// guidance here.
  ///    is optional and defaults to 128 if it is not specified.
  ///
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
  ///  A [String] representing the name of the digest function to use.
  /// The can take a value of [SHA-256], [SHA-384], or [SHA-512].
  ///
  ///     Warning: Although you can technically pass [SHA-1] here, this
  /// is strongly discouraged as it is considered vulnerable.
  ///
  ///
  @JS('hash')
  @staticInterop
  dynamic get mHash => js_util.getProperty(this, 'hash');
  set mHash(dynamic newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }

  ///  A [Number] representing the length in bits of the key. If this
  /// is omitted the length of the key is equal to the length of the
  /// digest generated by the digest function you have chosen. Unless
  /// you have a good reason to use a different length, omit this
  /// property and use the default.
  ///
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
  ///  A [String] representing the name of the digest function to use.
  /// You can pass any of [SHA-1], [SHA-256], [SHA-384], or [SHA-512]
  /// here.
  ///
  @JS('hash')
  @staticInterop
  dynamic get mHash => js_util.getProperty(this, 'hash');
  set mHash(dynamic newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }

  ///  A [Number] — the length in bits of the key. If this is omitted,
  /// the length of the key is equal to the block size of the hash
  /// function you have chosen. Unless you have a good reason to use a
  /// different length, omit this property and use the default.
  ///
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
  ///  A [String] representing the digest algorithm to use. This may be
  /// one of:
  ///
  ///    [SHA-1]
  ///    [SHA-256]
  ///    [SHA-384]
  ///    [SHA-512]
  ///
  ///
  @JS('hash')
  @staticInterop
  dynamic get mHash => js_util.getProperty(this, 'hash');
  set mHash(dynamic newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }

  ///  A [BufferSource]. The HKDF specification states that adding salt
  /// "adds significantly to the strength of HKDF". Ideally, the salt
  /// is a random or pseudo-random value with the same length as the
  /// output of the digest function. Unlike the input key material
  /// passed into [deriveKey()], salt does not need to be kept secret.
  ///
  dynamic get salt => js_util.getProperty(this, 'salt');
  set salt(dynamic newValue) {
    js_util.setProperty(this, 'salt', newValue);
  }

  ///  A [BufferSource] representing application-specific contextual
  /// information. This is used to bind the derived key to an
  /// application or context, and enables you to derive different keys
  /// for different contexts while using the same input key material.
  /// It's important that this should be independent of the input key
  /// material itself. This property is required but may be an empty
  /// buffer.
  ///
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
  ///  A [BufferSource]. This should be a random or pseudo-random value
  /// of at least 16 bytes. Unlike the input key material passed into
  /// [deriveKey()], does not need to be kept secret.
  ///
  dynamic get salt => js_util.getProperty(this, 'salt');
  set salt(dynamic newValue) {
    js_util.setProperty(this, 'salt', newValue);
  }

  ///  A [Number] representing the number of times the hash function
  /// will be executed in [deriveKey()]. This determines how
  /// computationally expensive (that is, slow) the [deriveKey()]
  /// operation will be. In this context, slow is good, since it makes
  /// it more expensive for an attacker to run a dictionary attack
  /// against the keys. The general guidance here is to use as many
  /// iterations as possible, subject to keeping an acceptable level of
  /// performance for your application.
  ///
  int get iterations => js_util.getProperty(this, 'iterations');
  set iterations(int newValue) {
    js_util.setProperty(this, 'iterations', newValue);
  }

  ///  A [String] representing the digest algorithm to use. This may be
  /// one of:
  ///
  ///    [SHA-1]
  ///    [SHA-256]
  ///    [SHA-384]
  ///    [SHA-512]
  ///
  ///
  ///     Warning: [SHA-1] is considered vulnerable in most
  /// cryptographic applications, but is still considered safe in
  /// PBKDF2. However, it's advisable to transition away from it
  /// everywhere, so unless you need to use [SHA-1], don't. Use a
  /// different digest algorithm instead.
  ///
  ///
  @JS('hash')
  @staticInterop
  dynamic get mHash => js_util.getProperty(this, 'hash');
  set mHash(dynamic newValue) {
    js_util.setProperty(this, 'hash', newValue);
  }
}
