/// Web NFC
///
/// https://w3c.github.io/web-nfc/
@JS('window')
library web_nfc;

import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Web NFC API is an abstract interface that
/// represents message that can be received or sent to a to
/// compatible NFC devices, e.g. NFC tags supporting NDEF.
@JS()
class NDEFMessage {
  external factory NDEFMessage(NDEFMessageInit messageInit);
  external Iterable<NDEFRecord> get records;
}

@anonymous
@JS()
class NDEFMessageInit {
  external Iterable<NDEFRecordInit> get records;
  external set records(Iterable<NDEFRecordInit> newValue);

  external factory NDEFMessageInit({Iterable<NDEFRecordInit> records});
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Web NFC API is an abstract interface that
/// represents data that can be read from or written to compatible
/// NFC devices, e.g. NFC tags supporting NDEF.
@JS()
class NDEFRecord {
  external factory NDEFRecord(NDEFRecordInit recordInit);
  external String get recordType;
  external String? get mediaType;
  external String? get id;
  external ByteData? get data;
  external String? get encoding;
  external String? get lang;

  /// Coverts [NDEFRecord.data] to sequence of records.
  /// NDEFRecord.toRecords()
  ///
  @experimental
  external Iterable<NDEFRecord> toRecords();
}

@anonymous
@JS()
class NDEFRecordInit {
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

  external factory NDEFRecordInit(
      {String recordType,
      String mediaType,
      String id,
      String encoding,
      String lang,
      dynamic data});
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Web NFC API is an abstract interface used
/// to read from and write data to compatible NFC devices, e.g. NFC
/// tags supporting NDEF, when these devices are within the reader's
/// magnetic induction field.
@JS()
class NDEFReader // null -> {} -> EventTarget
    with
        EventTarget {
  external factory NDEFReader();

  ///  An event handler for [reading] event, that notifies about
  /// availability of a new reading.
  @experimental
  external EventHandlerNonNull? get onreading;
  external set onreading(EventHandlerNonNull? newValue);

  ///  An event handler for the [readingerror] event, which is fired
  /// when an error occurs during reading.
  @experimental
  external EventHandlerNonNull? get onreadingerror;
  external set onreadingerror(EventHandlerNonNull? newValue);

  ///  Called to activate the reader (after ensuring hardware and UA
  /// compatibility and obtaining permission from the user) or get an
  /// error explaining why feature is not available.
  /// var readerPromise = NDEFReader.scan(options);
  ///
  @experimental
  external Promise<Object> scan([NDEFScanOptions? options]);

  ///  Called to write NDEF message to a tag (after ensuring hardware
  /// and UA compatibility and obtaining permission from the user) or
  /// get an error explaining why feature is not available.
  /// var sessionPromise = NDEFReader.write(message, options);
  ///
  @experimental
  external Promise<Object> write(dynamic message, [NDEFWriteOptions? options]);
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The [NDEFReadingEvent] interface represents events dispatched on
/// new NFC readings obtained by [NDEFReader].
@JS()
class NDEFReadingEvent // null -> {} -> Event
    with
        Event {
  external factory NDEFReadingEvent(
      String type, NDEFReadingEventInit readingEventInitDict);

  ///  Represents the serial number of the device used for
  /// anti-collision and identification, or empty string in case none
  /// is available.
  external String get serialNumber;

  /// Represents the received message as an [NDEFMessage] object.
  external NDEFMessage get message;
}

@anonymous
@JS()
class NDEFReadingEventInit // null -> {} -> EventInit
    with
        EventInit {
  external String? get serialNumber;
  external set serialNumber(String? newValue);
  external NDEFMessageInit get message;
  external set message(NDEFMessageInit newValue);

  external factory NDEFReadingEventInit(
      {String? serialNumber = '', NDEFMessageInit message});
}

@anonymous
@JS()
class NDEFWriteOptions {
  external bool get overwrite;
  external set overwrite(bool newValue);
  external AbortSignal? get signal;
  external set signal(AbortSignal? newValue);

  external factory NDEFWriteOptions(
      {bool overwrite = true, AbortSignal? signal});
}

@anonymous
@JS()
class NDEFScanOptions {
  external AbortSignal get signal;
  external set signal(AbortSignal newValue);

  external factory NDEFScanOptions({AbortSignal signal});
}
