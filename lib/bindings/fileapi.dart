/// File API
///
/// https://w3c.github.io/FileAPI/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library fileapi;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class Blob {
  external Blob([Iterable<dynamic>? blobParts, BlobPropertyBag? options]);
}

extension PropsBlob on Blob {
  int get size => js_util.getProperty(this, 'size');
  String get type => js_util.getProperty(this, 'type');
  Blob slice([int? start, int? end, String? contentType]) =>
      js_util.callMethod(this, 'slice', [start, end, contentType]);

  ReadableStream stream() => js_util.callMethod(this, 'stream', []);

  Future<String> text() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'text', []));

  Future<ByteBuffer> arrayBuffer() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'arrayBuffer', []));
}

enum EndingType { transparent, native }

@anonymous
@JS()
@staticInterop
class BlobPropertyBag {
  external factory BlobPropertyBag._({String? type = '', String? endings});

  factory BlobPropertyBag(
          {String? type = '', EndingType? endings = EndingType.transparent}) =>
      BlobPropertyBag._(type: type, endings: endings?.name);
}

extension PropsBlobPropertyBag on BlobPropertyBag {
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  EndingType get endings =>
      EndingType.values.byName(js_util.getProperty(this, 'endings'));
  set endings(EndingType newValue) {
    js_util.setProperty(this, 'endings', newValue.name);
  }
}

@JS()
@staticInterop
class File implements Blob {
  external File(Iterable<dynamic> fileBits, String fileName,
      [FilePropertyBag? options]);
}

extension PropsFile on File {
  String get name => js_util.getProperty(this, 'name');
  int get lastModified => js_util.getProperty(this, 'lastModified');
  String get webkitRelativePath =>
      js_util.getProperty(this, 'webkitRelativePath');
}

@anonymous
@JS()
@staticInterop
class FilePropertyBag implements BlobPropertyBag {
  external factory FilePropertyBag({required int lastModified});
}

extension PropsFilePropertyBag on FilePropertyBag {
  int get lastModified => js_util.getProperty(this, 'lastModified');
  set lastModified(int newValue) {
    js_util.setProperty(this, 'lastModified', newValue);
  }
}

@JS()
@staticInterop
class FileList {
  external FileList();
}

extension PropsFileList on FileList {
  File? item(int index) => js_util.callMethod(this, 'item', [index]);

  int get length => js_util.getProperty(this, 'length');
}

@JS()
@staticInterop
class FileReader implements EventTarget {
  @JS('EMPTY')
  external static int get empty;

  @JS('LOADING')
  external static int get loading;

  @JS('DONE')
  external static int get done;

  external FileReader();
}

extension PropsFileReader on FileReader {
  Object readAsArrayBuffer(Blob blob) =>
      js_util.callMethod(this, 'readAsArrayBuffer', [blob]);

  Object readAsBinaryString(Blob blob) =>
      js_util.callMethod(this, 'readAsBinaryString', [blob]);

  Object readAsText(Blob blob, [String? encoding]) =>
      js_util.callMethod(this, 'readAsText', [blob, encoding]);

  Object readAsDataURL(Blob blob) =>
      js_util.callMethod(this, 'readAsDataURL', [blob]);

  Object abort() => js_util.callMethod(this, 'abort', []);

  int get readyState => js_util.getProperty(this, 'readyState');
  dynamic get result => js_util.getProperty(this, 'result');
  Exception? get error => js_util.getProperty(this, 'error');
  EventHandlerNonNull? get onloadstart =>
      js_util.getProperty(this, 'onloadstart');
  set onloadstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onloadstart', newValue);
  }

  EventHandlerNonNull? get onprogress =>
      js_util.getProperty(this, 'onprogress');
  set onprogress(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onprogress', newValue);
  }

  EventHandlerNonNull? get onload => js_util.getProperty(this, 'onload');
  set onload(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onload', newValue);
  }

  EventHandlerNonNull? get onabort => js_util.getProperty(this, 'onabort');
  set onabort(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onabort', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  EventHandlerNonNull? get onloadend => js_util.getProperty(this, 'onloadend');
  set onloadend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onloadend', newValue);
  }
}

@JS()
@staticInterop
class FileReaderSync {
  external FileReaderSync();
}

extension PropsFileReaderSync on FileReaderSync {
  ByteBuffer readAsArrayBuffer(Blob blob) =>
      js_util.callMethod(this, 'readAsArrayBuffer', [blob]);

  String readAsBinaryString(Blob blob) =>
      js_util.callMethod(this, 'readAsBinaryString', [blob]);

  String readAsText(Blob blob, [String? encoding]) =>
      js_util.callMethod(this, 'readAsText', [blob, encoding]);

  String readAsDataURL(Blob blob) =>
      js_util.callMethod(this, 'readAsDataURL', [blob]);
}
