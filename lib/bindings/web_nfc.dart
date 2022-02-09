/// Web NFC
///
/// https://w3c.github.io/web-nfc/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library web_nfc;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

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
  external factory NDEFMessageInit({required Iterable<NDEFRecordInit> records});
}

extension PropsNDEFMessageInit on NDEFMessageInit {
  Iterable<NDEFRecordInit> get records => js_util.getProperty(this, 'records');
  set records(Iterable<NDEFRecordInit> newValue) {
    js_util.setProperty(this, 'records', newValue);
  }
}

@JS()
@staticInterop
class NDEFRecord {
  external NDEFRecord(NDEFRecordInit recordInit);
}

extension PropsNDEFRecord on NDEFRecord {
  String get recordType => js_util.getProperty(this, 'recordType');
  String? get mediaType => js_util.getProperty(this, 'mediaType');
  String? get id => js_util.getProperty(this, 'id');
  ByteData? get data => js_util.getProperty(this, 'data');
  String? get encoding => js_util.getProperty(this, 'encoding');
  String? get lang => js_util.getProperty(this, 'lang');
  Iterable<NDEFRecord> toRecords() => js_util.callMethod(this, 'toRecords', []);
}

@anonymous
@JS()
@staticInterop
class NDEFRecordInit {
  external factory NDEFRecordInit(
      {required String recordType,
      required String mediaType,
      required String id,
      required String encoding,
      required String lang,
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

@JS()
@staticInterop
class NDEFReader implements EventTarget {
  external NDEFReader();
}

extension PropsNDEFReader on NDEFReader {
  EventHandlerNonNull? get onreading => js_util.getProperty(this, 'onreading');
  set onreading(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onreading', newValue);
  }

  EventHandlerNonNull? get onreadingerror =>
      js_util.getProperty(this, 'onreadingerror');
  set onreadingerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onreadingerror', newValue);
  }

  Future<Object> scan([NDEFScanOptions? options]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'scan', [options]));

  Future<Object> write(dynamic message, [NDEFWriteOptions? options]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'write', [message, options]));

  Future<Object> makeReadOnly([NDEFMakeReadOnlyOptions? options]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'makeReadOnly', [options]));
}

@JS()
@staticInterop
class NDEFReadingEvent implements Event {
  external NDEFReadingEvent(
      String type, NDEFReadingEventInit readingEventInitDict);
}

extension PropsNDEFReadingEvent on NDEFReadingEvent {
  String get serialNumber => js_util.getProperty(this, 'serialNumber');
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
      {bool? overwrite = true, AbortSignal? signal});
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
class NDEFMakeReadOnlyOptions {
  external factory NDEFMakeReadOnlyOptions({AbortSignal? signal});
}

extension PropsNDEFMakeReadOnlyOptions on NDEFMakeReadOnlyOptions {
  AbortSignal? get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal? newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class NDEFScanOptions {
  external factory NDEFScanOptions({required AbortSignal signal});
}

extension PropsNDEFScanOptions on NDEFScanOptions {
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}
