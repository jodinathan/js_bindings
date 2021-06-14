/// Encrypted Media Extensions
///
/// https://w3c.github.io/encrypted-media/
@JS('window')
library encrypted_media;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';

@JS()
enum MediaKeysRequirement {
  @JS('required')
  valueRequired,
  optional,
  @JS('not-allowed')
  notAllowed
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The [MediaKeySystemConfiguration] dictionary holds configuration
/// information about the media key system in use.
@anonymous
@JS()
class MediaKeySystemConfiguration {
  external String get label;
  external set label(String newValue);

  ///  Returns a list of supported initialization data type names. An
  /// initialization data type is a string indicating the format of the
  /// initialization data.
  external Iterable<String> get initDataTypes;
  external set initDataTypes(Iterable<String> newValue);

  /// Returns a list of supported audio type and capability pairs.
  external Iterable<MediaKeySystemMediaCapability> get audioCapabilities;
  external set audioCapabilities(
      Iterable<MediaKeySystemMediaCapability> newValue);

  /// Returns a list of supported video type and capability pairs.
  external Iterable<MediaKeySystemMediaCapability> get videoCapabilities;
  external set videoCapabilities(
      Iterable<MediaKeySystemMediaCapability> newValue);

  ///  Indicates whether a persistent distinctive identifier is
  /// required.
  external MediaKeysRequirement get distinctiveIdentifier;
  external set distinctiveIdentifier(MediaKeysRequirement newValue);

  /// Indicates whether the ability to persist state is required.
  external MediaKeysRequirement get persistentState;
  external set persistentState(MediaKeysRequirement newValue);
  external Iterable<String> get sessionTypes;
  external set sessionTypes(Iterable<String> newValue);

  external factory MediaKeySystemConfiguration(
      {String label = '',
      Iterable<String> initDataTypes = const [],
      Iterable<MediaKeySystemMediaCapability> audioCapabilities = const [],
      Iterable<MediaKeySystemMediaCapability> videoCapabilities = const [],
      MediaKeysRequirement distinctiveIdentifier =
          MediaKeysRequirement.optional,
      MediaKeysRequirement persistentState = MediaKeysRequirement.optional,
      Iterable<String> sessionTypes});
}

@anonymous
@JS()
class MediaKeySystemMediaCapability {
  external String get contentType;
  external set contentType(String newValue);
  external String? get encryptionScheme;
  external set encryptionScheme(String? newValue);
  external String get robustness;
  external set robustness(String newValue);

  external factory MediaKeySystemMediaCapability(
      {String contentType = '',
      String? encryptionScheme,
      String robustness = ''});
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The [MediaKeySystemAccess] interface of the
/// EncryptedMediaExtensions API provides access to a Key System for
/// decryption and/or a content protection provider. You can request
/// an instance of this object using the
/// [Navigator.requestMediaKeySystemAccess()] method.
@JS()
class MediaKeySystemAccess {
  /// Returns a [DOMString] identifying the key system being used.
  external String get keySystem;

  ///  Returns a [MediaKeySystemConfiguration] object with the
  /// supported combination of configuration options.
  /// var mediaKeySystemConfiguration = mediaKeySystemAccess.getConfiguration();
  external MediaKeySystemConfiguration getConfiguration();

  /// Returns a [Promise] that resolves to a new [MediaKeys] object.
  /// var mediaKeys = await mediaKeySystemAccess.createMediaKeys();
  external Promise<MediaKeys> createMediaKeys();

  external factory MediaKeySystemAccess();
}

@JS()
enum MediaKeySessionType {
  temporary,
  @JS('persistent-license')
  persistentLicense
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of EncryptedMediaExtensions API represents a set
/// of keys that an associated [HTMLMediaElement] can use for
/// decryption of media data during playback.
@JS()
class MediaKeys {
  ///  Returns a new [MediaKeySession] object, which represents a
  /// context for message exchange with a content decryption module
  /// (CDM).
  /// var mediaKeySessionObject = MediaKeys.createSession([MediaKeySessionType]);
  external MediaKeySession createSession(
      [MediaKeySessionType? sessionType = MediaKeySessionType.temporary]);

  ///  Returns a [Promise] to a server certificate to be used to
  /// encrypt messages to the license server.
  /// MediaKeys.setServerCertificate(serverCertificate).then(function() { ... });
  external Promise<bool> setServerCertificate(dynamic serverCertificate);

  external factory MediaKeys();
}

///
///
///  The [MediaKeySession] interface of the EncryptedMediaExtensions
/// API represents a context for message exchange with a content
/// decryption module (CDM).
@JS()
class MediaKeySession extends EventTarget {
  ///  Contains a unique string generated by the CDM for the current
  /// media object and its associated keys or licenses.
  external String get sessionId;

  ///  The time after which the keys in the current session can no
  /// longer be used to decrypt media data, or [NaN] if no such time
  /// exists. This value is determined by the CDM and measured in
  /// milliseconds since January 1, 1970, UTC. This value may change
  /// during a session lifetime, such as when an action triggers the
  /// start of a window.
  external /* double | NaN */ dynamic get expiration;

  ///  Returns a [Promise] signaling when a [MediaKeySession] closes.
  /// This promise can only be fulfilled and is never rejected. Closing
  /// a session means that licenses and keys associated with it are no
  /// longer valid for decrypting media data.
  external Promise<Object> get closed;

  ///  Contains a reference to a read-only [MediaKeyStatusMap] of the
  /// current session's keys and their statuses.
  external MediaKeyStatusMap get keyStatuses;
  external EventHandlerNonNull? get onkeystatuseschange;
  external set onkeystatuseschange(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmessage;
  external set onmessage(EventHandlerNonNull? newValue);

  ///  Returns a [Promise] after generating a media request based on
  /// initialization data.
  /// mediaKeySession.generateRequest().then(function) { ... });
  external Promise<Object> generateRequest(
      String initDataType, dynamic initData);

  ///  Returns a [Promise] that resolves to a boolean value after
  /// loading data for a specified session object.
  /// mediaKeySession.load(sessionId).then(function(booleanValue) { ... });
  external Promise<bool> load(String sessionId);

  ///  Returns a [Promise] after loading messages and licenses to the
  /// CDM.
  /// mediaKeySession.update(response).then(function() { ... });
  external Promise<Object> update(dynamic response);

  ///  Returns a [Promise] after notifying the current media session is
  /// no longer needed and that the CDM should release any resources
  /// associated with this object and close it.
  ///
  /// mediaKeySession.close().then(function() { ... });
  external Promise<Object> close();

  ///  Returns a [Promise] after removing any session data associated
  /// with the current object.
  external Promise<Object> remove();

  external factory MediaKeySession();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The [MediaKeyStatusMap] interface of the
/// EncryptedMediaExtensions API is a read-only map of media key
/// statuses by key IDs.
@JS()
class MediaKeyStatusMap {
  external MediaKeyStatus operator [](dynamic index);

  /// Returns the number of key/value pars in the status map.
  external int get size;

  ///  Returns a boolean asserting whether a value has been associated
  /// with the given key.
  /// var boolean = mediaKeyStatusMap(key)
  external bool has(dynamic keyId);

  ///  Returns the value associated with the given key, or [undefined]
  /// if there is none.
  /// var value = mediaKeyStatusMap.get(key);
  @JS('get')
  external dynamic mGet(dynamic keyId);

  external factory MediaKeyStatusMap();
}

@JS()
enum MediaKeyStatus {
  usable,
  expired,
  released,
  @JS('output-restricted')
  outputRestricted,
  @JS('output-downscaled')
  outputDownscaled,
  @JS('usable-in-future')
  usableInFuture,
  @JS('status-pending')
  statusPending,
  @JS('internal-error')
  internalError
}

@JS()
enum MediaKeyMessageType {
  @JS('license-request')
  licenseRequest,
  @JS('license-renewal')
  licenseRenewal,
  @JS('license-release')
  licenseRelease,
  @JS('individualization-request')
  individualizationRequest
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the EncryptedMediaExtensions API contains the
/// content and related data when the content decryption module
/// generates a message for the session.
///
///
@JS()
class MediaKeyMessageEvent extends Event {
  external factory MediaKeyMessageEvent(
      {String type, MediaKeyMessageEventInit eventInitDict});

  ///  Indicates the type of message. May be one of [license-request],
  /// [license-renewal], [license-release], or
  /// [individualization-request].
  external MediaKeyMessageType get messageType;

  ///  Returns an [ArrayBuffer] with a message from the content
  /// decryption module. Messages vary by key system.
  external ByteBuffer get message;
}

@anonymous
@JS()
class MediaKeyMessageEventInit extends EventInit {
  external MediaKeyMessageType get messageType;
  external set messageType(MediaKeyMessageType newValue);
  external ByteBuffer get message;
  external set message(ByteBuffer newValue);

  external factory MediaKeyMessageEventInit(
      {MediaKeyMessageType messageType, ByteBuffer message});
}

@JS()
class MediaEncryptedEvent extends Event {
  external factory MediaEncryptedEvent(
      {String type, MediaEncryptedEventInit? eventInitDict});
  external String get initDataType;
  external ByteBuffer? get initData;
}

@anonymous
@JS()
class MediaEncryptedEventInit extends EventInit {
  external String get initDataType;
  external set initDataType(String newValue);
  external ByteBuffer? get initData;
  external set initData(ByteBuffer? newValue);

  external factory MediaEncryptedEventInit(
      {String initDataType = '', ByteBuffer? initData});
}
