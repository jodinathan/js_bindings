/// Web Cryptography API
///
/// https://w3c.github.io/webcrypto/
@JS('window')
library web_crypto_a_p_i;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';

///
///
///  The [Crypto] interface represents basic cryptography features
/// available in the current context. It allows access to a
/// cryptographically strong random number generator and to
/// cryptographic primitives.
///  Note: This feature is available in Web Workers
///  The Web Crypto API is accessed through the [Window.crypto]
/// property, which is a object.
@JS()
class Crypto {
  ///  Returns a [SubtleCrypto] object providing access to common
  /// cryptographic primitives, like hashing, signing, encryption, or
  /// decryption.
  external SubtleCrypto get subtle;

  ///  Fills the passed [TypedArray] with cryptographically sound
  /// random values.
  /// typedArray = cryptoObj.getRandomValues(typedArray);
  external dynamic getRandomValues(dynamic array);

  external factory Crypto();
}

@anonymous
@JS()
class Algorithm {
  external String get name;
  external set name(String newValue);

  external factory Algorithm({String name});
}

@anonymous
@JS()
class KeyAlgorithm {
  external String get name;
  external set name(String newValue);

  external factory KeyAlgorithm({String name});
}

@JS()
enum KeyType { public, private, secret }

@JS()
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

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the Web Crypto API represents a cryptographic
/// key obtained from one of the [SubtleCrypto] methods
/// [generateKey()], [deriveKey()], [importKey()], or [unwrapKey()].
///
///  For security reasons, the interface can only be used in a secure
/// context.
@JS()
class CryptoKey {
  /// String which may take one of the following values:
  ///
  ///
  ///   ["secret"]: This key is a secret key for use with a symmetric
  /// algorithm.
  ///   ["private"]: This key is the private half of an asymmetric
  /// algorithm's [CryptoKeyPair].
  ///   ["public"]: This key is the public half of an asymmetric
  /// algorithm's [CryptoKeyPair].
  ///
  ///
  external KeyType get type;

  ///  [Boolean] indicating whether or not the key may be extracted
  /// using [SubtleCrypto.exportKey()] or [SubtleCrypto.wrapKey()].
  ///
  ///
  ///  [true]: The key may be extracted.
  ///   [false] The key may not be extracted. [exportKey()] or
  /// [wrapKey()] will throw an exception if used to extract this key.
  ///
  ///
  external bool get extractable;

  ///  An object describing the algorithm for which this key can be
  /// used and any associated extra parameters.
  ///
  ///
  ///  [AesKeyGenParams] if the algorithm is any of the AES variants.
  ///   [RsaHashedKeyGenParams] if the algorithm is any of the RSA
  /// variants.
  ///  [EcKeyGenParams] if the algorithm is any of the EC variants.
  ///  [HmacKeyGenParams] if the algorithm is HMAC.
  ///
  ///
  external dynamic get algorithm;

  ///  An [Array] of strings, indicating what can be done with the key.
  /// Possible values for array elements are:
  ///
  ///
  ///  ["encrypt"]: The key may be used to [encrypt] messages.
  ///  ["decrypt"]: The key may be used to [decrypt] messages.
  ///  ["sign"]: The key may be used to [sign] messages.
  ///  ["verify"]: The key may be used to [verify] signatures.
  ///  ["deriveKey"]: The key may be used in [deriving a new key].
  ///  ["deriveBits"]: The key may be used in [deriving bits].
  ///  ["wrapKey"]: The key may be used to [wrap a key].
  ///  ["unwrapKey"]: The key may be used to [unwrap a key].
  ///
  ///
  external dynamic get usages;

  external factory CryptoKey();
}

@JS()
enum KeyFormat { raw, spki, pkcs8, jwk }

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The [SubtleCrypto] interface of the Web Crypto API provides a
/// number of low-level cryptographic functions. Access to the
/// features of is obtained through the [subtle] property of the
/// [Crypto] object you get from [Window.crypto].
///  Warning: This API provides a number of low-level cryptographic
/// primitives. It's very easy to misuse them, and the pitfalls
/// involved can be very subtle.
///
///  Even assuming you use the basic cryptographic functions
/// correctly, secure key management and overall security system
/// design are extremely hard to get right, and are generally the
/// domain of specialist security experts.
///
///  Errors in security system design and implementation can make the
/// security of the system completely ineffective.
///
///  If you're not sure you know what you are doing, you probably
/// shouldn't be using this API.
///
@JS()
class SubtleCrypto {
  ///  Returns a [Promise] that fufills with the encrypted data
  /// corresponding to the clear text, algorithm, and key given as
  /// parameters.
  /// const result = crypto.subtle.encrypt(algorithm, key, data);
  ///
  external Promise<dynamic> encrypt(
      dynamic algorithm, CryptoKey key, dynamic data);

  ///  Returns a [Promise] that fulfills with the clear data
  /// corresponding to the encrypted text, algorithm, and key given as
  /// parameters.
  /// const result = crypto.subtle.decrypt(algorithm, key, data);
  ///
  external Promise<dynamic> decrypt(
      dynamic algorithm, CryptoKey key, dynamic data);

  ///  Returns a [Promise] that fulfills with the signature
  /// corresponding to the text, algorithm, and key given as
  /// parameters.
  /// const signature = crypto.subtle.sign(algorithm, key, data);
  ///
  external Promise<dynamic> sign(
      dynamic algorithm, CryptoKey key, dynamic data);

  ///  Returns a [Promise] that fulfills with a [Boolean] value
  /// indicating if the signature given as a parameter matches the
  /// text, algorithm, and key that are also given as parameters.
  /// const result = crypto.subtle.verify(algorithm, key, signature, data);
  ///
  external Promise<dynamic> verify(
      dynamic algorithm, CryptoKey key, dynamic signature, dynamic data);

  ///  Returns a [Promise] that fulfills with a digest generated from
  /// the algorithm and text given as parameters.
  /// const digest = crypto.subtle.digest(algorithm, data);
  ///
  external Promise<dynamic> digest(dynamic algorithm, dynamic data);

  ///  Returns a [Promise] that fulfills with a newly-generated
  /// [CryptoKey], for symmetrical algorithms, or a [CryptoKeyPair],
  /// containing two newly generated keys, for asymmetrical algorithms.
  /// These will match the algorithm, usages, and extractability given
  /// as parameters.
  /// const result = crypto.subtle.generateKey(algorithm, extractable, keyUsages);
  ///
  external Promise<dynamic> generateKey(
      dynamic algorithm, bool extractable, Iterable<KeyUsage> keyUsages);

  ///  Returns a [Promise] that fulfills with a newly generated
  /// [CryptoKey] derived from the master key and specific algorithm
  /// given as parameters.
  /// const result = crypto.subtle.deriveKey(
  ///   algorithm,
  ///   baseKey,
  ///   derivedKeyAlgorithm,
  ///   extractable,
  ///   keyUsages
  /// );
  ///
  external Promise<dynamic> deriveKey(dynamic algorithm, CryptoKey baseKey,
      dynamic derivedKeyType, bool extractable, Iterable<KeyUsage> keyUsages);

  ///  Returns a [Promise] that fulfills with a newly generated buffer
  /// of pseudo-random bits derived from the master key and specific
  /// algorithm given as parameters.
  /// const result = crypto.subtle.deriveBits(
  ///   algorithm,
  ///   baseKey,
  ///   length
  /// );
  ///
  external Promise<ByteBuffer> deriveBits(
      dynamic algorithm, CryptoKey baseKey, int length);

  ///  Returns a [Promise] that fulfills with a [CryptoKey]
  /// corresponding to the format, the algorithm, raw key data, usages,
  /// and extractability given as parameters.
  /// const result = crypto.subtle.importKey(
  ///   format,
  ///   keyData,
  ///   algorithm,
  ///   extractable,
  ///   keyUsages
  /// );
  ///
  external Promise<CryptoKey> importKey(KeyFormat format, dynamic keyData,
      dynamic algorithm, bool extractable, Iterable<KeyUsage> keyUsages);

  ///  Returns a [Promise] that fulfills with a buffer containing the
  /// key in the requested format.
  /// const result = crypto.subtle.exportKey(format, key);
  ///
  external Promise<dynamic> exportKey(KeyFormat format, CryptoKey key);

  ///  Returns a [Promise] that fulfills with a wrapped symmetric key
  /// for usage (transfer and storage) in insecure environments. The
  /// wrapped key matches the format specified in the given parameters,
  /// and wrapping is done by the given wrapping key, using the
  /// specified algorithm.
  /// const result = crypto.subtle.wrapKey(
  ///   format,
  ///   key,
  ///   wrappingKey,
  ///   wrapAlgo
  /// );
  ///
  external Promise<dynamic> wrapKey(KeyFormat format, CryptoKey key,
      CryptoKey wrappingKey, dynamic wrapAlgorithm);

  ///  Returns a [Promise] that fulfills with a [CryptoKey]
  /// corresponding to the wrapped key given in the parameter.
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
  external Promise<CryptoKey> unwrapKey(
      KeyFormat format,
      dynamic wrappedKey,
      CryptoKey unwrappingKey,
      dynamic unwrapAlgorithm,
      dynamic unwrappedKeyAlgorithm,
      bool extractable,
      Iterable<KeyUsage> keyUsages);

  external factory SubtleCrypto();
}

@anonymous
@JS()
class RsaOtherPrimesInfo {
  external String get r;
  external set r(String newValue);
  external String get d;
  external set d(String newValue);
  external String get t;
  external set t(String newValue);

  external factory RsaOtherPrimesInfo({String r, String d, String t});
}

@anonymous
@JS()
class JsonWebKey {
  external String get kty;
  external set kty(String newValue);
  external String get use;
  external set use(String newValue);
  external Iterable<String> get key_ops;
  external set key_ops(Iterable<String> newValue);
  external String get alg;
  external set alg(String newValue);
  external bool get ext;
  external set ext(bool newValue);
  external String get crv;
  external set crv(String newValue);
  external String get x;
  external set x(String newValue);
  external String get y;
  external set y(String newValue);
  external String get d;
  external set d(String newValue);
  external String get n;
  external set n(String newValue);
  external String get e;
  external set e(String newValue);
  external String get p;
  external set p(String newValue);
  external String get q;
  external set q(String newValue);
  external String get dp;
  external set dp(String newValue);
  external String get dq;
  external set dq(String newValue);
  external String get qi;
  external set qi(String newValue);
  external Iterable<RsaOtherPrimesInfo> get oth;
  external set oth(Iterable<RsaOtherPrimesInfo> newValue);
  external String get k;
  external set k(String newValue);

  external factory JsonWebKey(
      {String kty,
      String use,
      Iterable<String> key_ops,
      String alg,
      bool ext,
      String crv,
      String x,
      String y,
      String d,
      String n,
      String e,
      String p,
      String q,
      String dp,
      String dq,
      String qi,
      Iterable<RsaOtherPrimesInfo> oth,
      String k});
}

///
///
///  The dictionary of the Web Crypto API represents a key pair for
/// an asymmetric cryptography algorithm, also known as a public-key
/// algorithm.
///
///  A object can be obtained using [SubtleCrypto.generateKey()],
/// when the selected algorithm is one of the asymmetric algorithms:
/// RSASSA-PKCS1-v1_5, RSA-PSS, RSA-OAEP, ECDSA, or ECDH.
///
///  It contains two properties, which are both [CryptoKey] objects:
/// a [privateKey] property containing the private key and a
/// [publicKey] property containing the public key.
@anonymous
@JS()
class CryptoKeyPair {
  ///  A [CryptoKey] object representing the public key. For encryption
  /// and decryption algorithms, this key is used to encrypt. For
  /// signing and verification algorithms it is used to verify
  /// signatures.
  external CryptoKey get publicKey;
  external set publicKey(CryptoKey newValue);

  ///  A [CryptoKey] object representing the private key. For
  /// encryption and decryption algorithms, this key is used to
  /// decrypt. For signing and verification algorithms it is used to
  /// sign.
  external CryptoKey get privateKey;
  external set privateKey(CryptoKey newValue);

  external factory CryptoKeyPair({CryptoKey publicKey, CryptoKey privateKey});
}

@anonymous
@JS()
class RsaKeyGenParams extends Algorithm {
  external int get modulusLength;
  external set modulusLength(int newValue);
  external Uint8List get publicExponent;
  external set publicExponent(Uint8List newValue);

  external factory RsaKeyGenParams(
      {int modulusLength, Uint8List publicExponent});
}

///
///
///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.generateKey()], when generating any RSA-based key
/// pair: that is, when the algorithm is identified as any of
/// RSASSA-PKCS1-v1_5, RSA-PSS, or RSA-OAEP.
@anonymous
@JS()
class RsaHashedKeyGenParams extends RsaKeyGenParams {
  ///  A [DOMString] representing the name of the digest function to
  /// use. You can pass any of [SHA-256], [SHA-384], or [SHA-512] here.
  ///
  ///
  ///   Warning: Although you can technically pass [SHA-1] as a value
  /// here, this is strongly discouraged as SHA-1 is considered
  /// vulnerable.
  ///
  ///
  external dynamic get hash;
  external set hash(dynamic newValue);

  external factory RsaHashedKeyGenParams({dynamic hash});
}

@anonymous
@JS()
class RsaKeyAlgorithm extends KeyAlgorithm {
  external int get modulusLength;
  external set modulusLength(int newValue);
  external Uint8List get publicExponent;
  external set publicExponent(Uint8List newValue);

  external factory RsaKeyAlgorithm(
      {int modulusLength, Uint8List publicExponent});
}

@anonymous
@JS()
class RsaHashedKeyAlgorithm extends RsaKeyAlgorithm {
  external KeyAlgorithm get hash;
  external set hash(KeyAlgorithm newValue);

  external factory RsaHashedKeyAlgorithm({KeyAlgorithm hash});
}

///
///
///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.importKey()] or [SubtleCrypto.unwrapKey()], when
/// importing any RSA-based key pair: that is, when the algorithm is
/// identified as any of RSASSA-PKCS1-v1_5, RSA-PSS, or RSA-OAEP.
@anonymous
@JS()
class RsaHashedImportParams extends Algorithm {
  ///  A [DOMString] representing the name of the digest function to
  /// use. This can be one of [SHA-256], [SHA-384], or [SHA-512].
  ///
  ///
  ///   Warning: Although you can technically pass [SHA-1] here, this
  /// is strongly discouraged as it is considered vulnerable.
  ///
  ///
  external dynamic get hash;
  external set hash(dynamic newValue);

  external factory RsaHashedImportParams({dynamic hash});
}

///
///
///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.sign()] or [SubtleCrypto.verify()], when using the
/// RSA-PSS algorithm.
@anonymous
@JS()
class RsaPssParams extends Algorithm {
  ///  A [long] integer representing the length of the random salt to
  /// use, in bytes.
  ///
  ///   RFC 3447 says that "Typical salt lengths" are either 0 or the
  /// length of the output of the digest algorithm that was selected
  /// when this key was generated. For example, if you use SHA-256 as
  /// the digest algorithm, this could be 32.
  ///
  ///  The maximum size of is given by:
  ///
  ///  [Math.ceil((keySizeInBits - 1)/8) - digestSizeInBytes - 2]
  ///
  ///   So for a key length of 2048 bits and a digest output size of 32
  /// bytes, the maximum size would be 222.
  ///
  external int get saltLength;
  external set saltLength(int newValue);

  external factory RsaPssParams({int saltLength});
}

///
///
///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.encrypt()], [SubtleCrypto.decrypt()],
/// [SubtleCrypto.wrapKey()], or [SubtleCrypto.unwrapKey()], when
/// using the RSA_OAEP algorithm.
@anonymous
@JS()
class RsaOaepParams extends Algorithm {
  ///  A [BufferSource] — an array of bytes that does not itself need
  /// to be encrypted but which should be bound to the ciphertext. A
  /// digest of the label is part of the input to the encryption
  /// operation.
  ///
  ///   Unless your application calls for a label, you can just omit
  /// this argument and it will not affect the security of the
  /// encryption operation.
  ///
  external dynamic get label;
  external set label(dynamic newValue);

  external factory RsaOaepParams({dynamic label});
}

///
///
///  The [EcdsaParams] dictionary of the Web Crypto API represents
/// the object that should be passed as the [algorithm] parameter
/// into [SubtleCrypto.sign()] or [SubtleCrypto.verify()] when using
/// the ECDSA algorithm.
@anonymous
@JS()
class EcdsaParams extends Algorithm {
  ///  A [DOMString]. An identifier for the digest algorithm to use.
  /// This should be one of the following:
  ///
  ///  [SHA-256]: selects the SHA-256 algorithm.
  ///  [SHA-384]: selects the SHA-384 algorithm.
  ///  [SHA-512]: selects the SHA-512 algorithm.
  ///
  ///
  ///
  ///   Warning: [SHA-1] is also supported here but the SHA-1 algorithm
  /// is considered vulnerable and should no longer be used.
  ///
  ///
  external dynamic get hash;
  external set hash(dynamic newValue);

  external factory EcdsaParams({dynamic hash});
}

///
///
///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.generateKey()], when generating any
/// elliptic-curve-based key pair: that is, when the algorithm is
/// identified as either of ECDSA or ECDH.
@anonymous
@JS()
class EcKeyGenParams extends Algorithm {
  ///  A [DOMString] representing the name of the elliptic curve to
  /// use. This may be any of the following names for NIST-approved
  /// curves:
  ///
  ///
  ///  [P-256]
  ///  [P-384]
  ///  [P-521]
  ///
  ///
  external String get namedCurve;
  external set namedCurve(String newValue);

  external factory EcKeyGenParams({String namedCurve});
}

@anonymous
@JS()
class EcKeyAlgorithm extends KeyAlgorithm {
  external String get namedCurve;
  external set namedCurve(String newValue);

  external factory EcKeyAlgorithm({String namedCurve});
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.importKey()] or [SubtleCrypto.unwrapKey()], when
/// generating any elliptic-curve-based key pair: that is, when the
/// algorithm is identified as either of ECDSA or ECDH.
@anonymous
@JS()
class EcKeyImportParams extends Algorithm {
  ///  A [DOMString] representing the name of the elliptic curve to
  /// use. This may be any of the following names for NIST-approved
  /// curves:
  ///
  ///
  ///  [P-256]
  ///  [P-384]
  ///  [P-521]
  ///
  ///
  external String get namedCurve;
  external set namedCurve(String newValue);

  external factory EcKeyImportParams({String namedCurve});
}

///
///
///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.deriveKey()], when using the ECDH algorithm.
///
///  ECDH enables two people who each have a key pair consisting of a
/// public and a private key to derive a shared secret. They exchange
/// public keys and use the combination of their private key and the
/// other entity's public key to derive a secret key that they — and
/// noone else — share.
///
///  The parameters for ECDH [deriveKey()] therefore include the
/// other entity's public key, which is combined with this entity's
/// private key to derive the shared secret.
@anonymous
@JS()
class EcdhKeyDeriveParams extends Algorithm {
  ///  A [CryptoKey] object representing the public key of the other
  /// entity.
  external CryptoKey get public;
  external set public(CryptoKey newValue);

  external factory EcdhKeyDeriveParams({CryptoKey public});
}

///
///
///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.encrypt()], [SubtleCrypto.decrypt()],
/// [SubtleCrypto.wrapKey()], or [SubtleCrypto.unwrapKey()], when
/// using the AES-CTR algorithm.
///
///  AES is a block cipher, meaning that it splits the message into
/// blocks and encrypts it a block at a time. In CTR mode, every time
/// a block of the message is encrypted, an extra block of data is
/// mixed in. This extra block is called the "counter block".
///
///  A given counter block value must never be used more than once
/// with the same key:
///   Given a message n blocks long, a different counter block must
/// be used for every block.
///   If the same key is used to encrypt more than one message, a
/// different counter block must be used for all blocks across all
/// messages.
///  Typically this is achieved by splitting the initial counter
/// block value into two concatenated parts:
///   A nonce (that is, a number that may only be used once). The
/// nonce part of the block stays the same for every block in the
/// message. Each time a new message is to be encrypted, a new nonce
/// is chosen. Nonces don't have to be secret, but they must not be
/// reused with the same key.
///   A counter. This part of the block gets incremented each time a
/// block is encrypted.
///  Essentially: the nonce should ensure that counter blocks are not
/// reused from one message to the next, while the counter should
/// ensure that counter blocks are not reused within a single
/// message.
///  Note: See Appendix B of the NIST SP800-38A standard for more
/// information.
///
@anonymous
@JS()
class AesCtrParams extends Algorithm {
  ///  A [BufferSource] — the initial value of the counter block. This
  /// must be 16 bytes long (the AES block size). The rightmost
  /// [length] bits of this block are used for the counter, and the
  /// rest is used for the nonce. For example, if [length] is set to
  /// 64, then the first half of is the nonce and the second half is
  /// used for the counter.
  external dynamic get counter;
  external set counter(dynamic newValue);

  ///  A [Number] — the number of bits in the counter block that are
  /// used for the actual counter. The counter must be big enough that
  /// it doesn't wrap: if the message is [n] blocks and the counter is
  /// [m] bits long, then the following must be true: [n <= 2m]. The
  /// NIST SP800-38A standard, which defines CTR, suggests that the
  /// counter should occupy half of the counter block (see Appendix
  /// B.2), so for AES it would be 64.
  external int get length;
  external set length(int newValue);

  external factory AesCtrParams({dynamic counter, int length});
}

@anonymous
@JS()
class AesKeyAlgorithm extends KeyAlgorithm {
  external int get length;
  external set length(int newValue);

  external factory AesKeyAlgorithm({int length});
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.generateKey()], when generating an AES key: that
/// is, when the algorithm is identified as any of AES-CBC, AES-CTR,
/// AES-GCM, or AES-KW.
@anonymous
@JS()
class AesKeyGenParams extends Algorithm {
  ///  A [Number] — the length in bits of the key to generate. This
  /// must be one of: 128, 192, or 256.
  ///
  external int get length;
  external set length(int newValue);

  external factory AesKeyGenParams({int length});
}

@anonymous
@JS()
class AesDerivedKeyParams extends Algorithm {
  external int get length;
  external set length(int newValue);

  external factory AesDerivedKeyParams({int length});
}

///
///
///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.encrypt()], [SubtleCrypto.decrypt()],
/// [SubtleCrypto.wrapKey()], or [SubtleCrypto.unwrapKey()], when
/// using the AES-CBC algorithm.
@anonymous
@JS()
class AesCbcParams extends Algorithm {
  ///  A [BufferSource]. The initialization vector. Must be 16 bytes,
  /// unpredictable, and preferably cryptographically random. However,
  /// it need not be secret (for example, it may be transmitted
  /// unencrypted along with the ciphertext).
  external dynamic get iv;
  external set iv(dynamic newValue);

  external factory AesCbcParams({dynamic iv});
}

///
///
///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.encrypt()], [SubtleCrypto.decrypt()],
/// [SubtleCrypto.wrapKey()], or [SubtleCrypto.unwrapKey()], when
/// using the AES-GCM algorithm.
///
///  For details of how to supply appropriate values for this
/// parameter, see the specification for AES-GCM: NIST SP800-38D, in
/// particular section 5.2.1.1 on Input Data.
@anonymous
@JS()
class AesGcmParams extends Algorithm {
  ///  A [BufferSource] — the initialization vector. This must be
  /// unique for every encryption operation carried out with a given
  /// key. Put another way: never reuse an IV with the same key. The
  /// AES-GCM specification recommends that the IV should be 96 bits
  /// long, and typically contains bits from a random number generator.
  /// Section 8.2 of the specification outlines methods for
  /// constructing IVs. Note that the IV does not have to be secret,
  /// just unique: so it is OK, for example, to transmit it in the
  /// clear alongside the encrypted message.
  external dynamic get iv;
  external set iv(dynamic newValue);

  ///  A [BufferSource]. This contains additional data that will not be
  /// encrypted but will be authenticated along with the encrypted
  /// data. If is given here then the same data must be given in the
  /// corresponding call to [decrypt()]: if the data given to the
  /// [decrypt()] call does not match the original data, the decryption
  /// will throw an exception. This gives you a way to authenticate
  /// associated data without having to encrypt it.
  ///
  ///  The bit length of must be [≤ 264-1].
  ///
  ///   The property is optional and may be omitted without
  /// compromising the security of the encryption operation.
  ///
  external dynamic get additionalData;
  external set additionalData(dynamic newValue);

  ///  A [Number]. This determines the size in bits of the
  /// authentication tag generated in the encryption operation and used
  /// for authentication in the corresponding decryption.
  ///
  ///   According to the Web Crypto specification this must have one of
  /// the following values: 32, 64, 96, 104, 112, 120, or 128. The
  /// AES-GCM specification recommends that it should be 96, 104, 112,
  /// 120 or 128, although 32 or 64 bits may be acceptable in some
  /// applications: Appendix C of the specification provides additional
  /// guidance here.
  ///
  ///  is optional and defaults to 128 if it is not specified.
  ///
  external int get tagLength;
  external set tagLength(int newValue);

  external factory AesGcmParams(
      {dynamic iv, dynamic additionalData, int tagLength});
}

///
///
///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.importKey()] or [SubtleCrypto.unwrapKey()], when
/// generating a key for the HMAC algorithm.
@anonymous
@JS()
class HmacImportParams extends Algorithm {
  ///  A [DOMString] representing the name of the digest function to
  /// use. The can take a value of [SHA-256], [SHA-384], or [SHA-512].
  ///
  ///
  ///   Warning: Although you can technically pass [SHA-1] here, this
  /// is strongly discouraged as it is considered vulnerable.
  ///
  ///
  external dynamic get hash;
  external set hash(dynamic newValue);

  ///  A [Number] representing the length in bits of the key. If this
  /// is omitted the length of the key is equal to the length of the
  /// digest generated by the digest function you have chosen. Unless
  /// you have a good reason to use a different length, omit this
  /// property and use the default.
  ///
  external int get length;
  external set length(int newValue);

  external factory HmacImportParams({dynamic hash, int length});
}

@anonymous
@JS()
class HmacKeyAlgorithm extends KeyAlgorithm {
  external KeyAlgorithm get hash;
  external set hash(KeyAlgorithm newValue);
  external int get length;
  external set length(int newValue);

  external factory HmacKeyAlgorithm({KeyAlgorithm hash, int length});
}

///
///
///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.generateKey()], when generating a key for the HMAC
/// algorithm.
@anonymous
@JS()
class HmacKeyGenParams extends Algorithm {
  ///  A [DOMString] representing the name of the digest function to
  /// use. You can pass any of [SHA-1], [SHA-256], [SHA-384], or
  /// [SHA-512] here.
  ///
  external dynamic get hash;
  external set hash(dynamic newValue);

  ///  A [Number] — the length in bits of the key. If this is omitted,
  /// the length of the key is equal to the block size of the hash
  /// function you have chosen. Unless you have a good reason to use a
  /// different length, omit this property and use the default.
  ///
  external int get length;
  external set length(int newValue);

  external factory HmacKeyGenParams({dynamic hash, int length});
}

///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.deriveKey()], when using the HKDF algorithm.
@anonymous
@JS()
class HkdfParams extends Algorithm {
  ///  A [DOMString] representing the digest algorithm to use. This may
  /// be one of:
  ///
  ///
  ///  [SHA-1]
  ///  [SHA-256]
  ///  [SHA-384]
  ///  [SHA-512]
  ///
  ///
  external dynamic get hash;
  external set hash(dynamic newValue);

  ///  A [BufferSource]. The HKDF specification states that adding salt
  /// "adds significantly to the strength of HKDF". Ideally, the salt
  /// is a random or pseudo-random value with the same length as the
  /// output of the digest function. Unlike the input key material
  /// passed into [deriveKey()], salt does not need to be kept secret.
  external dynamic get salt;
  external set salt(dynamic newValue);

  ///  A [BufferSource] representing application-specific contextual
  /// information. This is used to bind the derived key to an
  /// application or context, and enables you to derive different keys
  /// for different contexts while using the same input key material.
  /// It's important that this should be independent of the input key
  /// material itself. This property is required but may be an empty
  /// buffer.
  external dynamic get info;
  external set info(dynamic newValue);

  external factory HkdfParams({dynamic hash, dynamic salt, dynamic info});
}

///
///
///  The dictionary of the Web Crypto API represents the object that
/// should be passed as the [algorithm] parameter into
/// [SubtleCrypto.deriveKey()], when using the PBKDF2 algorithm.
@anonymous
@JS()
class Pbkdf2Params extends Algorithm {
  ///  A [BufferSource]. This should be a random or pseudo-random value
  /// of at least 16 bytes. Unlike the input key material passed into
  /// [deriveKey()], does not need to be kept secret.
  external dynamic get salt;
  external set salt(dynamic newValue);

  ///  A [Number] representing the number of times the hash function
  /// will be executed in [deriveKey()]. This determines how
  /// computationally expensive (that is, slow) the [deriveKey()]
  /// operation will be. In this context, slow is good, since it makes
  /// it more expensive for an attacker to run a dictionary attack
  /// against the keys. The general guidance here is to use as many
  /// iterations as possible, subject to keeping an acceptable level of
  /// performance for your application.
  external int get iterations;
  external set iterations(int newValue);

  ///  A [DOMString] representing the digest algorithm to use. This may
  /// be one of:
  ///
  ///
  ///  [SHA-1]
  ///  [SHA-256]
  ///  [SHA-384]
  ///  [SHA-512]
  ///
  ///
  ///
  ///   Warning: [SHA-1] is considered vulnerable in most cryptographic
  /// applications, but is still considered safe in PBKDF2. However,
  /// it's advisable to transition away from it everywhere, so unless
  /// you need to use [SHA-1], don't. Use a different digest algorithm
  /// instead.
  ///
  ///
  external dynamic get hash;
  external set hash(dynamic newValue);

  external factory Pbkdf2Params({dynamic salt, int iterations, dynamic hash});
}
