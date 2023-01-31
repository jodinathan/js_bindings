/// Encrypted Media Extensions
///
/// https://w3c.github.io/encrypted-media/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library encrypted_media;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

enum MediaKeysRequirement {
  required('required'),
  optional('optional'),
  notAllowed('not-allowed');

  final String value;
  static MediaKeysRequirement fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MediaKeysRequirement> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MediaKeysRequirement(this.value);
}

@anonymous
@JS()
@staticInterop
class MediaKeySystemConfiguration {
  external factory MediaKeySystemConfiguration._(
      {String? label = '',
      Iterable<String>? initDataTypes = const [],
      Iterable<MediaKeySystemMediaCapability>? audioCapabilities = const [],
      Iterable<MediaKeySystemMediaCapability>? videoCapabilities = const [],
      String? distinctiveIdentifier,
      String? persistentState,
      Iterable<String>? sessionTypes});

  factory MediaKeySystemConfiguration(
          {String? label = '',
          Iterable<String>? initDataTypes = const [],
          Iterable<MediaKeySystemMediaCapability>? audioCapabilities = const [],
          Iterable<MediaKeySystemMediaCapability>? videoCapabilities = const [],
          MediaKeysRequirement? distinctiveIdentifier =
              MediaKeysRequirement.optional,
          MediaKeysRequirement? persistentState = MediaKeysRequirement.optional,
          Iterable<String>? sessionTypes}) =>
      MediaKeySystemConfiguration._(
          label: label,
          initDataTypes: initDataTypes,
          audioCapabilities: audioCapabilities,
          videoCapabilities: videoCapabilities,
          distinctiveIdentifier: distinctiveIdentifier?.value,
          persistentState: persistentState?.value,
          sessionTypes: sessionTypes);
}

extension PropsMediaKeySystemConfiguration on MediaKeySystemConfiguration {
  String get label => js_util.getProperty(this, 'label');
  set label(String newValue) {
    js_util.setProperty(this, 'label', newValue);
  }

  Iterable<String> get initDataTypes =>
      js_util.getProperty(this, 'initDataTypes');
  set initDataTypes(Iterable<String> newValue) {
    js_util.setProperty(this, 'initDataTypes', newValue);
  }

  Iterable<MediaKeySystemMediaCapability> get audioCapabilities =>
      js_util.getProperty(this, 'audioCapabilities');
  set audioCapabilities(Iterable<MediaKeySystemMediaCapability> newValue) {
    js_util.setProperty(this, 'audioCapabilities', newValue);
  }

  Iterable<MediaKeySystemMediaCapability> get videoCapabilities =>
      js_util.getProperty(this, 'videoCapabilities');
  set videoCapabilities(Iterable<MediaKeySystemMediaCapability> newValue) {
    js_util.setProperty(this, 'videoCapabilities', newValue);
  }

  MediaKeysRequirement get distinctiveIdentifier =>
      MediaKeysRequirement.fromValue(
          js_util.getProperty(this, 'distinctiveIdentifier'));
  set distinctiveIdentifier(MediaKeysRequirement newValue) {
    js_util.setProperty(this, 'distinctiveIdentifier', newValue.value);
  }

  MediaKeysRequirement get persistentState => MediaKeysRequirement.fromValue(
      js_util.getProperty(this, 'persistentState'));
  set persistentState(MediaKeysRequirement newValue) {
    js_util.setProperty(this, 'persistentState', newValue.value);
  }

  Iterable<String> get sessionTypes =>
      js_util.getProperty(this, 'sessionTypes');
  set sessionTypes(Iterable<String> newValue) {
    js_util.setProperty(this, 'sessionTypes', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MediaKeySystemMediaCapability {
  external factory MediaKeySystemMediaCapability(
      {String? contentType = '',
      String? encryptionScheme,
      String? robustness = ''});
}

extension PropsMediaKeySystemMediaCapability on MediaKeySystemMediaCapability {
  String get contentType => js_util.getProperty(this, 'contentType');
  set contentType(String newValue) {
    js_util.setProperty(this, 'contentType', newValue);
  }

  String? get encryptionScheme => js_util.getProperty(this, 'encryptionScheme');
  set encryptionScheme(String? newValue) {
    js_util.setProperty(this, 'encryptionScheme', newValue);
  }

  String get robustness => js_util.getProperty(this, 'robustness');
  set robustness(String newValue) {
    js_util.setProperty(this, 'robustness', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the EncryptedMediaExtensions API provides
/// access to a Key System for decryption and/or a content protection
/// provider. You can request an instance of this object using the
/// [Navigator.requestMediaKeySystemAccess()] method.
@JS()
@staticInterop
class MediaKeySystemAccess {
  external factory MediaKeySystemAccess();
}

extension PropsMediaKeySystemAccess on MediaKeySystemAccess {
  String get keySystem => js_util.getProperty(this, 'keySystem');
  MediaKeySystemConfiguration getConfiguration() =>
      js_util.callMethod(this, 'getConfiguration', []);

  Future<MediaKeys> createMediaKeys() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'createMediaKeys', []));
}

enum MediaKeySessionType {
  temporary('temporary'),
  persistentLicense('persistent-license');

  final String value;
  static MediaKeySessionType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MediaKeySessionType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MediaKeySessionType(this.value);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of EncryptedMediaExtensions API represents a set
/// of keys that an associated [HTMLMediaElement] can use for
/// decryption of media data during playback.
@JS()
@staticInterop
class MediaKeys {
  external factory MediaKeys();
}

extension PropsMediaKeys on MediaKeys {
  MediaKeySession createSession(
          [MediaKeySessionType? sessionType = MediaKeySessionType.temporary]) =>
      js_util.callMethod(this, 'createSession', [sessionType?.value]);

  Future<bool> setServerCertificate(dynamic serverCertificate) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'setServerCertificate', [serverCertificate]));
}

enum MediaKeySessionClosedReason {
  internalError('internal-error'),
  closedByApplication('closed-by-application'),
  releaseAcknowledged('release-acknowledged'),
  hardwareContextReset('hardware-context-reset'),
  resourceEvicted('resource-evicted');

  final String value;
  static MediaKeySessionClosedReason fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MediaKeySessionClosedReason> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const MediaKeySessionClosedReason(this.value);
}

///  The interface of the EncryptedMediaExtensions API represents a
/// context for message exchange with a content decryption module
/// (CDM).
///
///
///
///    EventTarget
///
///
///
///
///
///    MediaKeySession
///
///
@JS()
@staticInterop
class MediaKeySession implements EventTarget {
  external factory MediaKeySession();
}

extension PropsMediaKeySession on MediaKeySession {
  String get sessionId => js_util.getProperty(this, 'sessionId');
/* double | NaN */ dynamic get expiration =>
      js_util.getProperty(this, 'expiration');
  Future<MediaKeySessionClosedReason> get closed async =>
      MediaKeySessionClosedReason.fromValue(
          await js_util.promiseToFuture(js_util.getProperty(this, 'closed')));
  MediaKeyStatusMap get keyStatuses => js_util.getProperty(this, 'keyStatuses');
  EventHandlerNonNull? get onkeystatuseschange =>
      js_util.getProperty(this, 'onkeystatuseschange');
  set onkeystatuseschange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onkeystatuseschange', newValue);
  }

  EventHandlerNonNull? get onmessage => js_util.getProperty(this, 'onmessage');
  set onmessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmessage', newValue);
  }

  Future<void> generateRequest(String initDataType, dynamic initData) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'generateRequest', [initDataType, initData]));

  Future<bool> load(String sessionId) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'load', [sessionId]));

  Future<void> update(dynamic response) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'update', [response]));

  Future<void> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));

  Future<void> remove() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'remove', []));
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the EncryptedMediaExtensions API is a read-only
/// map of media key statuses by key IDs.
@JS()
@staticInterop
class MediaKeyStatusMap extends JsArray<MediaKeyStatus> {
  external factory MediaKeyStatusMap();
}

extension PropsMediaKeyStatusMap on MediaKeyStatusMap {
  int get size => js_util.getProperty(this, 'size');
  bool has(dynamic keyId) => js_util.callMethod(this, 'has', [keyId]);

  dynamic get(dynamic keyId) => js_util.callMethod(this, 'get', [keyId]);
}

enum MediaKeyStatus {
  usable('usable'),
  expired('expired'),
  released('released'),
  outputRestricted('output-restricted'),
  outputDownscaled('output-downscaled'),
  usableInFuture('usable-in-future'),
  statusPending('status-pending'),
  internalError('internal-error');

  final String value;
  static MediaKeyStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MediaKeyStatus> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MediaKeyStatus(this.value);
}

enum MediaKeyMessageType {
  licenseRequest('license-request'),
  licenseRenewal('license-renewal'),
  licenseRelease('license-release'),
  individualizationRequest('individualization-request');

  final String value;
  static MediaKeyMessageType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MediaKeyMessageType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MediaKeyMessageType(this.value);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the EncryptedMediaExtensions API contains the
/// content and related data when the content decryption module
/// generates a message for the session.
///
///
///
///    Event
///
///
///
///
///
///    MediaKeyMessageEvent
///
///
@JS()
@staticInterop
class MediaKeyMessageEvent implements Event {
  external factory MediaKeyMessageEvent(
      String type, MediaKeyMessageEventInit eventInitDict);
}

extension PropsMediaKeyMessageEvent on MediaKeyMessageEvent {
  MediaKeyMessageType get messageType =>
      MediaKeyMessageType.fromValue(js_util.getProperty(this, 'messageType'));
  ByteBuffer get message => js_util.getProperty(this, 'message');
}

@anonymous
@JS()
@staticInterop
class MediaKeyMessageEventInit implements EventInit {
  external factory MediaKeyMessageEventInit._(
      {required String messageType, required ByteBuffer message});

  factory MediaKeyMessageEventInit(
          {required MediaKeyMessageType messageType,
          required ByteBuffer message}) =>
      MediaKeyMessageEventInit._(
          messageType: messageType.value, message: message);
}

extension PropsMediaKeyMessageEventInit on MediaKeyMessageEventInit {
  MediaKeyMessageType get messageType =>
      MediaKeyMessageType.fromValue(js_util.getProperty(this, 'messageType'));
  set messageType(MediaKeyMessageType newValue) {
    js_util.setProperty(this, 'messageType', newValue.value);
  }

  ByteBuffer get message => js_util.getProperty(this, 'message');
  set message(ByteBuffer newValue) {
    js_util.setProperty(this, 'message', newValue);
  }
}

@JS()
@staticInterop
class MediaEncryptedEvent implements Event {
  external factory MediaEncryptedEvent(String type,
      [MediaEncryptedEventInit? eventInitDict]);
}

extension PropsMediaEncryptedEvent on MediaEncryptedEvent {
  String get initDataType => js_util.getProperty(this, 'initDataType');
  ByteBuffer? get initData => js_util.getProperty(this, 'initData');
}

@anonymous
@JS()
@staticInterop
class MediaEncryptedEventInit implements EventInit {
  external factory MediaEncryptedEventInit(
      {String? initDataType = '', ByteBuffer? initData});
}

extension PropsMediaEncryptedEventInit on MediaEncryptedEventInit {
  String get initDataType => js_util.getProperty(this, 'initDataType');
  set initDataType(String newValue) {
    js_util.setProperty(this, 'initDataType', newValue);
  }

  ByteBuffer? get initData => js_util.getProperty(this, 'initData');
  set initData(ByteBuffer? newValue) {
    js_util.setProperty(this, 'initData', newValue);
  }
}
