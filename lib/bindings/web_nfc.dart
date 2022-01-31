/// Web NFC
///
/// https://w3c.github.io/web-nfc/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library web_nfc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

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
  external NDEFMessage(NDEFMessageInit messageInit);
}

extension PropsNDEFMessage on NDEFMessage {
  Iterable<NDEFRecord> get records => js_util.getProperty(this, 'records');
}

@anonymous
@JS()
@staticInterop
class NDEFMessageInit {
  external factory NDEFMessageInit({Iterable<NDEFRecordInit> records});
}

extension PropsNDEFMessageInit on NDEFMessageInit {
  Iterable<NDEFRecordInit> get records => js_util.getProperty(this, 'records');
  set records(Iterable<NDEFRecordInit> newValue) {
    js_util.setProperty(this, 'records', newValue);
  }
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
  external NDEFRecord(NDEFRecordInit recordInit);
}

extension PropsNDEFRecord on NDEFRecord {
  ///  Returns the record type of the record. Records must have either
  /// a standardized well-known type name such as ["empty"], ["text"],
  /// ["url"], ["smart-poster"], ["absolute-url"], ["mime"], or
  /// ["unknown"] or else an external type name, which consists of a
  /// domain name and custom type name separated by a colon (":").
  ///
  @experimental
  String get recordType => js_util.getProperty(this, 'recordType');

  ///  Returns the MIME type of the record. This value will be [null]
  /// if [recordType] is not equal to ["mime"].
  ///
  @experimental
  String? get mediaType => js_util.getProperty(this, 'mediaType');

  ///  Returns the record identifier, which is an absolute or relative
  /// URL used to identify the record.
  ///
  ///     Note: The uniqueness of the identifier is enforced only by
  /// the generator of the record.
  ///
  ///
  @experimental
  String? get id => js_util.getProperty(this, 'id');

  ///  Returns a [DataView] containing the raw bytes of the record's
  /// payload.
  ///
  @experimental
  ByteData? get data => js_util.getProperty(this, 'data');

  /// Returns the encoding of a textual payload, or [null] otherwise.
  ///
  @experimental
  String? get encoding => js_util.getProperty(this, 'encoding');

  ///  Returns the language of a textual payload, or [null] if one was
  /// not supplied.
  ///
  @experimental
  String? get lang => js_util.getProperty(this, 'lang');

  ///  Converts [NDEFRecord.data] to a sequence of records. This allows
  /// parsing the payloads of record types which may contain nested
  /// records, such as smart poster and external type records.
  ///
  /// NDEFRecord.toRecords()
  ///
  @experimental
  Iterable<NDEFRecord> toRecords() => js_util.callMethod(this, 'toRecords', []);
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
  String get recordType => js_util.getProperty(this, 'recordType');
  set recordType(String newValue) {
    js_util.setProperty(this, 'recordType', newValue);
  }

  String get mediaType => js_util.getProperty(this, 'mediaType');
  set mediaType(String newValue) {
    js_util.setProperty(this, 'mediaType', newValue);
  }

  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  String get encoding => js_util.getProperty(this, 'encoding');
  set encoding(String newValue) {
    js_util.setProperty(this, 'encoding', newValue);
  }

  String get lang => js_util.getProperty(this, 'lang');
  set lang(String newValue) {
    js_util.setProperty(this, 'lang', newValue);
  }

  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
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
  external NDEFReader();
}

extension PropsNDEFReader on NDEFReader {
  /// An event handler called when the [reading] event is raised.
  ///
  @experimental
  EventHandlerNonNull? get onreading => js_util.getProperty(this, 'onreading');
  set onreading(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onreading', newValue);
  }

  ///  An event handler called when when the [readingerror] event is
  /// raised. This occurs when a tag is in proximity of a reading
  /// device, but cannot be read.
  ///
  @experimental
  EventHandlerNonNull? get onreadingerror =>
      js_util.getProperty(this, 'onreadingerror');
  set onreadingerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onreadingerror', newValue);
  }

  ///  Activates a reading device and returns a [Future] that either
  /// resolves when an NFC tag is read or rejects if a hardware or
  /// permission error is encountered. This method triggers a
  /// permission prompt if the "nfc" permission has not been previously
  /// granted.
  ///
  /// var readerPromise = NDEFReader.scan(options);
  ///
  @experimental
  Future<Object> scan(
          [

          /// An object with the following properties:
          ///
          ///
          ///     [signal] -- An [AbortSignal] that allows cancelling
          ///     this [scan()] operation.
          ///
          ///
          ///
          NDEFScanOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'scan', [options]));

  ///  Attempts to write an NDEF message to a tag and returns a
  /// [Future] that either resolves when a message has been written to
  /// the tag or rejects if a hardware or permission error is
  /// encountered. This method triggers a permission prompt if the
  /// "nfc" permission has not been previously granted.
  ///
  /// NDEFReader.write(message);
  ///  NDEFReader.write(message, options);
  ///
  @experimental
  Future<Object> write(

          ///
          ///    The message to be written, one of [String],
          ///     [BufferSource], or an array of records. A record has the
          /// following members:
          ///
          ///
          ///    [data] Optional
          ///
          ///      Contains the data to be transmitted, one of a string, a
          /// [BufferSource], or an array of nested records.
          ///
          ///    [encoding] Optional
          ///
          ///     A string specifying the record's encoding.
          ///
          ///    [id] Optional
          ///
          ///     A developer-defined identifier for the record.
          ///
          ///    [lang] Optional
          ///
          ///      A valid language tag according to RFC 5646: Tags for
          /// Identifying Languages (also known as BCP 47).
          ///
          ///    [mediaType] Optional
          ///
          ///     A valid MIME type.
          ///
          ///    [recordType]
          ///
          ///      A string indicating the type of data stored in [data]. It
          /// must be one of the following values:
          ///
          ///      ["absolute-url"]
          ///
          ///       An absolute URL to the data.
          ///
          ///      ["empty"]
          ///
          ///       An empty [NDEFRecord].
          ///
          ///      ["mime"]
          ///
          ///       A valid MIME type.
          ///
          ///      ["smart-poster"]
          ///
          ///        A smart poster as defined by the NDEF-SMARTPOSTER
          /// specification.
          ///
          ///      ["text"]
          ///
          ///       Text as defined by the NDEF-TEXT specification.
          ///
          ///      ["unknown"]
          ///
          ///       The record type is not known.
          ///
          ///      ["URL"]
          ///
          ///       A URL as defined by the NDEF-URI specification.
          ///
          ///
          ///
          dynamic message,
          [

          /// An object with the following properties:
          ///
          ///
          ///     [overwrite] -- A [Boolean] specifying whether or not
          ///     existing records should be overwritten, if such exists.
          ///
          ///     [signal] -- An optional [AbortSignal] that allows the current
          /// write operation to be canceled.
          ///
          ///
          NDEFWriteOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'write', [message, options]));
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
  external NDEFReadingEvent(
      String type, NDEFReadingEventInit readingEventInitDict);
}

extension PropsNDEFReadingEvent on NDEFReadingEvent {
  ///  Returns the serial number of the device, which is used for
  /// anti-collision and identification, or an empty string if no
  /// serial number is available.
  ///
  String get serialNumber => js_util.getProperty(this, 'serialNumber');

  /// Returns an [NDEFMessage] object containing the received message.
  ///
  NDEFMessage get message => js_util.getProperty(this, 'message');
}

@anonymous
@JS()
@staticInterop
class NDEFReadingEventInit implements EventInit {
  external factory NDEFReadingEventInit(
      {String? serialNumber = '', NDEFMessageInit? message});
}

extension PropsNDEFReadingEventInit on NDEFReadingEventInit {
  String? get serialNumber => js_util.getProperty(this, 'serialNumber');
  set serialNumber(String? newValue) {
    js_util.setProperty(this, 'serialNumber', newValue);
  }

  NDEFMessageInit get message => js_util.getProperty(this, 'message');
  set message(NDEFMessageInit newValue) {
    js_util.setProperty(this, 'message', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class NDEFWriteOptions {
  external factory NDEFWriteOptions(
      {bool overwrite = true, AbortSignal? signal});
}

extension PropsNDEFWriteOptions on NDEFWriteOptions {
  bool get overwrite => js_util.getProperty(this, 'overwrite');
  set overwrite(bool newValue) {
    js_util.setProperty(this, 'overwrite', newValue);
  }

  AbortSignal? get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal? newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class NDEFScanOptions {
  external factory NDEFScanOptions({AbortSignal signal});
}

extension PropsNDEFScanOptions on NDEFScanOptions {
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}
