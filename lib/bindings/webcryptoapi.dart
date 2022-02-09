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

@JS()
@staticInterop
class Crypto {
  external Crypto();
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

@JS()
@staticInterop
class CryptoKey {
  external CryptoKey();
}

extension PropsCryptoKey on CryptoKey {
  KeyType get type => KeyType.values.byName(js_util.getProperty(this, 'type'));
  bool get extractable => js_util.getProperty(this, 'extractable');
  dynamic get algorithm => js_util.getProperty(this, 'algorithm');
  dynamic get usages => js_util.getProperty(this, 'usages');
}

enum KeyFormat { raw, spki, pkcs8, jwk }

@JS()
@staticInterop
class SubtleCrypto {
  external SubtleCrypto();
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
