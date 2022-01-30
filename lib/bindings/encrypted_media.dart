/// Encrypted Media Extensions
///
/// https://w3c.github.io/encrypted-media/
@JS('window')
@staticInterop
library encrypted_media;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
dom */

enum MediaKeysRequirement { valueRequired, optional, notAllowed }

@anonymous
@JS()
@staticInterop
class MediaKeySystemConfiguration {
  external factory MediaKeySystemConfiguration(
      {String label = '',
      Iterable<String>? initDataTypes = const [],
      Iterable<MediaKeySystemMediaCapability>? audioCapabilities = const [],
      Iterable<MediaKeySystemMediaCapability>? videoCapabilities = const [],
      MediaKeysRequirement? distinctiveIdentifier =
          MediaKeysRequirement.optional,
      MediaKeysRequirement? persistentState = MediaKeysRequirement.optional,
      Iterable<String>? sessionTypes});
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
      js_util.getProperty(this, 'distinctiveIdentifier');
  set distinctiveIdentifier(MediaKeysRequirement newValue) {
    js_util.setProperty(this, 'distinctiveIdentifier', newValue);
  }

  MediaKeysRequirement get persistentState =>
      js_util.getProperty(this, 'persistentState');
  set persistentState(MediaKeysRequirement newValue) {
    js_util.setProperty(this, 'persistentState', newValue);
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
      {String contentType = '',
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
  external MediaKeySystemAccess();
}

extension PropsMediaKeySystemAccess on MediaKeySystemAccess {
  /// Returns a [DOMString] identifying the key system being used.
  ///
  String get keySystem => js_util.getProperty(this, 'keySystem');

  ///  Returns an object with the supported combination of
  /// configuration options.
  ///
  /// var mediaKeySystemConfiguration = mediaKeySystemAccess.getConfiguration();
  ///
  MediaKeySystemConfiguration getConfiguration() =>
      js_util.callMethod(this, 'getConfiguration', []);

  /// Returns a [Promise] that resolves to a new [MediaKeys] object.
  ///
  /// var mediaKeys = await mediaKeySystemAccess.createMediaKeys();
  ///
  Future<MediaKeys> createMediaKeys() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'createMediaKeys', []));
}

enum MediaKeySessionType { temporary, persistentLicense }

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of EncryptedMediaExtensions API represents a set
/// of keys that an associated [HTMLMediaElement] can use for
/// decryption of media data during playback.
@JS()
@staticInterop
class MediaKeys {
  external MediaKeys();
}

extension PropsMediaKeys on MediaKeys {
  ///  Returns a new [MediaKeySession] object, which represents a
  /// context for message exchange with a content decryption module
  /// (CDM).
  ///
  /// var mediaKeySessionObject = MediaKeys.createSession([MediaKeySessionType]);
  ///
  MediaKeySession createSession(
          [MediaKeySessionType? sessionType = MediaKeySessionType.temporary]) =>
      js_util.callMethod(this, 'createSession', [sessionType]);

  ///  Returns a [Promise] to a server certificate to be used to
  /// encrypt messages to the license server.
  ///
  /// MediaKeys.setServerCertificate(serverCertificate).then(function() { /* ... */ });
  ///
  Future<bool> setServerCertificate(dynamic serverCertificate) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'setServerCertificate', [serverCertificate]));
}

///  The interface of the EncryptedMediaExtensions API represents a
/// context for message exchange with a content decryption module
/// (CDM).
@JS()
@staticInterop
class MediaKeySession implements EventTarget {
  external MediaKeySession();
}

extension PropsMediaKeySession on MediaKeySession {
  ///  Contains a unique string generated by the CDM for the current
  /// media object and its associated keys or licenses.
  ///
  String get sessionId => js_util.getProperty(this, 'sessionId');

  ///  The time after which the keys in the current session can no
  /// longer be used to decrypt media data, or [NaN] if no such time
  /// exists. This value is determined by the CDM and measured in
  /// milliseconds since January 1, 1970, UTC. This value may change
  /// during a session lifetime, such as when an action triggers the
  /// start of a window.
  ///
  /* double | NaN */ dynamic get expiration =>
      js_util.getProperty(this, 'expiration');

  ///  Returns a [Promise] signaling when a [MediaKeySession] closes.
  /// This promise can only be fulfilled and is never rejected. Closing
  /// a session means that licenses and keys associated with it are no
  /// longer valid for decrypting media data.
  ///
  Future<Object> get closed =>
      js_util.promiseToFuture(js_util.getProperty(this, 'closed'));

  ///  Contains a reference to a read-only [MediaKeyStatusMap] of the
  /// current session's keys and their statuses.
  ///
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

  ///  Returns a [Promise] after generating a media request based on
  /// initialization data.
  ///
  /// mediaKeySession.generateRequest().then(function) { /* ... */ });
  ///
  Future<Object> generateRequest(String initDataType, dynamic initData) =>
      js_util.promiseToFuture(js_util
          .callMethod(this, 'generateRequest', [initDataType, initData]));

  ///  Returns a [Promise] that resolves to a boolean value after
  /// loading data for a specified session object.
  ///
  /// mediaKeySession.load(sessionId).then(function(booleanValue) { /* ... */ });
  ///
  Future<bool> load(String sessionId) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'load', [sessionId]));

  ///  Returns a [Promise] after loading messages and licenses to the
  /// CDM.
  ///
  /// mediaKeySession.update(response).then(function() { /* ... */ });
  ///
  Future<Object> update(dynamic response) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'update', [response]));

  ///  Returns a [Promise] after notifying the current media session is
  /// no longer needed and that the CDM should release any resources
  /// associated with this object and close it.
  ///
  /// mediaKeySession.close().then(function() { /* ... */ });
  ///
  Future<Object> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));

  ///  Returns a [Promise] after removing any session data associated
  /// with the current object.
  ///
  Future<Object> remove() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'remove', []));
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the EncryptedMediaExtensions API is a read-only
/// map of media key statuses by key IDs.
@JS()
@staticInterop
class MediaKeyStatusMap {
  external MediaKeyStatusMap();
}

extension PropsMediaKeyStatusMap on MediaKeyStatusMap {
  /// Returns the number of key/value pars in the status map.
  ///
  int get size => js_util.getProperty(this, 'size');

  ///  Returns a boolean asserting whether a value has been associated
  /// with the given key.
  ///
  /// var boolean = mediaKeyStatusMap(key)
  ///
  bool has(dynamic keyId) => js_util.callMethod(this, 'has', [keyId]);

  ///  Returns the value associated with the given key, or [undefined]
  /// if there is none.
  ///
  /// var value = mediaKeyStatusMap.get(key);
  ///
  @JS('get')
  @staticInterop
  dynamic mGet(dynamic keyId) => js_util.callMethod(this, 'get', [keyId]);
}

enum MediaKeyStatus {
  usable,
  expired,
  released,
  outputRestricted,
  outputDownscaled,
  usableInFuture,
  statusPending,
  internalError
}

enum MediaKeyMessageType {
  licenseRequest,
  licenseRenewal,
  licenseRelease,
  individualizationRequest
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
  external MediaKeyMessageEvent(
      String type, MediaKeyMessageEventInit eventInitDict);
}

extension PropsMediaKeyMessageEvent on MediaKeyMessageEvent {
  ///  Indicates the type of message. May be one of [license-request],
  /// [license-renewal], [license-release], or
  /// [individualization-request].
  ///
  MediaKeyMessageType get messageType =>
      js_util.getProperty(this, 'messageType');

  ///  Returns an [ArrayBuffer] with a message from the content
  /// decryption module. Messages vary by key system.
  ///
  ByteBuffer get message => js_util.getProperty(this, 'message');
}

@anonymous
@JS()
@staticInterop
class MediaKeyMessageEventInit implements EventInit {
  external factory MediaKeyMessageEventInit(
      {MediaKeyMessageType messageType, ByteBuffer message});
}

extension PropsMediaKeyMessageEventInit on MediaKeyMessageEventInit {
  MediaKeyMessageType get messageType =>
      js_util.getProperty(this, 'messageType');
  set messageType(MediaKeyMessageType newValue) {
    js_util.setProperty(this, 'messageType', newValue);
  }

  ByteBuffer get message => js_util.getProperty(this, 'message');
  set message(ByteBuffer newValue) {
    js_util.setProperty(this, 'message', newValue);
  }
}

@JS()
@staticInterop
class MediaEncryptedEvent implements Event {
  external MediaEncryptedEvent(String type,
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
      {String initDataType = '', ByteBuffer? initData});
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
