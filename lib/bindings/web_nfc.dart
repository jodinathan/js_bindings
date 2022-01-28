/// Web NFC
///
/// https://w3c.github.io/web-nfc/
@JS('window')
@staticInterop
library web_nfc;

import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html */

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web NFC API represents the content of an
/// NDEF message that has been read from or could be written to an
/// NFC tag. An instance is acquired by calling the [NDEFMessage()]
/// constructor or from the [NDEFReadingEvent.message] property,
/// which is passed to [NDEFReader.onreading].
@JS()
@staticInterop
class NDEFMessage {
  external factory NDEFMessage(NDEFMessageInit messageInit);
}

extension PropsNDEFMessage on NDEFMessage {
  external Iterable<NDEFRecord> get records;
}

@anonymous
@JS()
@staticInterop
class NDEFMessageInit {
  external factory NDEFMessageInit({Iterable<NDEFRecordInit> records});
}

extension PropsNDEFMessageInit on NDEFMessageInit {
  external Iterable<NDEFRecordInit> get records;
  external set records(Iterable<NDEFRecordInit> newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web NFC API provides data that can be read
/// from, or written to, compatible NFC devices, e.g. NFC tags
/// supporting NDEF.
@JS()
@staticInterop
class NDEFRecord {
  external factory NDEFRecord(NDEFRecordInit recordInit);
}

extension PropsNDEFRecord on NDEFRecord {
  ///  Returns the record type of the record. Records must have either
  /// a standardized well-known type name such as ["empty"], ["text"],
  /// ["url"], ["smart-poster"], ["absolute-url"], ["mime"], or
  /// ["unknown"] or else an external type name, which consists of a
  /// domain name and custom type name separated by a colon (":").
  ///
  @experimental
  external String get recordType;

  ///  Returns the MIME type of the record. This value will be [null]
  /// if [recordType] is not equal to ["mime"].
  ///
  @experimental
  external String? get mediaType;

  ///  Returns the record identifier, which is an absolute or relative
  /// URL used to identify the record.
  ///
  ///     Note: The uniqueness of the identifier is enforced only by
  /// the generator of the record.
  ///
  ///
  @experimental
  external String? get id;

  ///  Returns a [DataView] containing the raw bytes of the record's
  /// payload.
  ///
  @experimental
  external ByteData? get data;

  /// Returns the encoding of a textual payload, or [null] otherwise.
  ///
  @experimental
  external String? get encoding;

  ///  Returns the language of a textual payload, or [null] if one was
  /// not supplied.
  ///
  @experimental
  external String? get lang;

  ///  Converts [NDEFRecord.data] to a sequence of records. This allows
  /// parsing the payloads of record types which may contain nested
  /// records, such as smart poster and external type records.
  ///
  /// NDEFRecord.toRecords()
  ///
  @experimental
  external Iterable<NDEFRecord> toRecords();
}

@anonymous
@JS()
@staticInterop
class NDEFRecordInit {
  external factory NDEFRecordInit(
      {String recordType,
      String mediaType,
      String id,
      String encoding,
      String lang,
      dynamic data});
}

extension PropsNDEFRecordInit on NDEFRecordInit {
  external String get recordType;
  external set recordType(String newValue);
  external String get mediaType;
  external set mediaType(String newValue);
  external String get id;
  external set id(String newValue);
  external String get encoding;
  external set encoding(String newValue);
  external String get lang;
  external set lang(String newValue);
  external dynamic get data;
  external set data(dynamic newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web NFC API is used to read from and write
/// data to compatible NFC devices, e.g. NFC tags supporting NDEF,
/// when these devices are within the reader's magnetic induction
/// field.
@JS()
@staticInterop
class NDEFReader implements EventTarget {
  external factory NDEFReader();
}

extension PropsNDEFReader on NDEFReader {
  /// An event handler called when the [reading] event is raised.
  ///
  @experimental
  external EventHandlerNonNull? get onreading;
  external set onreading(EventHandlerNonNull? newValue);

  ///  An event handler called when when the [readingerror] event is
  /// raised. This occurs when a tag is in proximity of a reading
  /// device, but cannot be read.
  ///
  @experimental
  external EventHandlerNonNull? get onreadingerror;
  external set onreadingerror(EventHandlerNonNull? newValue);

  ///  Activates a reading device and returns a [Promise] that either
  /// resolves when an NFC tag is read or rejects if a hardware or
  /// permission error is encountered. This method triggers a
  /// permission prompt if the "nfc" permission has not been previously
  /// granted.
  ///
  /// var readerPromise = NDEFReader.scan(options);
  ///
  @experimental
  external Promise<Object> scan([NDEFScanOptions? options]);

  ///  Attempts to write an NDEF message to a tag and returns a
  /// [Promise] that either resolves when a message has been written to
  /// the tag or rejects if a hardware or permission error is
  /// encountered. This method triggers a permission prompt if the
  /// "nfc" permission has not been previously granted.
  ///
  /// NDEFReader.write(message);
  ///  NDEFReader.write(message, options);
  ///
  @experimental
  external Promise<Object> write(dynamic message, [NDEFWriteOptions? options]);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web NFC API represents events dispatched on
/// new NFC readings obtained by [NDEFReader].
@JS()
@staticInterop
class NDEFReadingEvent implements Event {
  external factory NDEFReadingEvent(
      String type, NDEFReadingEventInit readingEventInitDict);
}

extension PropsNDEFReadingEvent on NDEFReadingEvent {
  ///  Returns the serial number of the device, which is used for
  /// anti-collision and identification, or an empty string if no
  /// serial number is available.
  ///
  external String get serialNumber;

  /// Returns an [NDEFMessage] object containing the received message.
  ///
  external NDEFMessage get message;
}

@anonymous
@JS()
@staticInterop
class NDEFReadingEventInit implements EventInit {
  external factory NDEFReadingEventInit(
      {String? serialNumber = '', NDEFMessageInit message});
}

extension PropsNDEFReadingEventInit on NDEFReadingEventInit {
  external String? get serialNumber;
  external set serialNumber(String? newValue);
  external NDEFMessageInit get message;
  external set message(NDEFMessageInit newValue);
}

@anonymous
@JS()
@staticInterop
class NDEFWriteOptions {
  external factory NDEFWriteOptions(
      {bool overwrite = true, AbortSignal? signal});
}

extension PropsNDEFWriteOptions on NDEFWriteOptions {
  external bool get overwrite;
  external set overwrite(bool newValue);
  external AbortSignal? get signal;
  external set signal(AbortSignal? newValue);
}

@anonymous
@JS()
@staticInterop
class NDEFScanOptions {
  external factory NDEFScanOptions({AbortSignal signal});
}

extension PropsNDEFScanOptions on NDEFScanOptions {
  external AbortSignal get signal;
  external set signal(AbortSignal newValue);
}
