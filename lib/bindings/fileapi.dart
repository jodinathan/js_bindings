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

///  The object represents a blob, which is a file-like object of
/// immutable, raw data; they can be read as text or binary data, or
/// converted into a [ReadableStream] so its methods can be used for
/// processing the data.
///  Blobs can represent data that isn't necessarily in a
/// JavaScript-native format. The [File] interface is based on ,
/// inheriting blob functionality and expanding it to support files
/// on the user's system.
@JS()
@staticInterop
class Blob {
  external factory Blob(
      [Iterable<dynamic>? blobParts, BlobPropertyBag? options]);
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

enum EndingType {
  transparent('transparent'),
  native('native');

  final String value;
  static EndingType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const EndingType(this.value);
}

@anonymous
@JS()
@staticInterop
class BlobPropertyBag {
  external factory BlobPropertyBag._({String? type = '', String? endings});

  factory BlobPropertyBag(
          {String? type = '', EndingType? endings = EndingType.transparent}) =>
      BlobPropertyBag._(type: type, endings: endings?.value);
}

extension PropsBlobPropertyBag on BlobPropertyBag {
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  EndingType get endings =>
      EndingType.fromValue(js_util.getProperty(this, 'endings'));
  set endings(EndingType newValue) {
    js_util.setProperty(this, 'endings', newValue.value);
  }
}

///  The interface provides information about files and allows
/// JavaScript in a web page to access their content.
///   objects are generally retrieved from a [FileList] object
/// returned as a result of a user selecting files using the
/// [<input>] element, or from a drag and drop operation's
/// [DataTransfer] object.
///  A object is a specific kind of [Blob], and can be used in any
/// context that a Blob can. In particular, [FileReader],
/// [URL.createObjectURL()], [createImageBitmap()], and
/// [XMLHttpRequest.send()] accept both [Blob]s and s.
///  See Using files from web applications for more information and
/// examples.
///
///
///
///    Blob
///
///
///
///
///
///
///
///    File
///
///
@JS()
@staticInterop
class File implements Blob {
  external factory File(Iterable<dynamic> fileBits, String fileName,
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

///  An object of this type is returned by the [files] property of
/// the HTML [<input>] element; this lets you access the list of
/// files selected with the [<input type="file">] element. It's also
/// used for a list of files dropped into web content when using the
/// drag and drop API; see the [DataTransfer] object for details on
/// this usage.
///  All [<input>] element nodes have a [files] attribute of type on
/// them which allows access to the items in this list. For example,
/// if the HTML includes the following file input:
/// [<input id="fileItem" type="file" />
/// ]
///  The following line of code fetches the first file in the node's
/// file list as a [File] object:
/// [const file = document.getElementById('fileItem').files[0];
/// ]
///
///   Note: This interface was an attempt to create an unmodifiable
/// list and only continues to be supported to not break code that's
/// already using it. Modern APIs use types that wrap around
/// ECMAScript array types instead, so you can treat them like
/// ECMAScript arrays, and at the same time impose additional
/// semantics on their usage (such as making their items read-only).
///
@JS()
@staticInterop
class FileList {
  external factory FileList();
}

extension PropsFileList on FileList {
  File? item(int index) => js_util.callMethod(this, 'item', [index]);

  int get length => js_util.getProperty(this, 'length');
}

///  The object lets web applications asynchronously read the
/// contents of files (or raw data buffers) stored on the user's
/// computer, using [File] or [Blob] objects to specify the file or
/// data to read.
///  File objects may be obtained from a [FileList] object returned
/// as a result of a user selecting files using the [<input>]
/// element, or from a drag and drop operation's [DataTransfer]
/// object.
///   can only access the contents of files that the user has
/// explicitly selected, either using an HTML [<input type="file">]
/// element or by drag and drop. It cannot be used to read a file by
/// pathname from the user's file system. To read files on the
/// client's file system by pathname, use the File System Access API.
/// To read server-side files, use standard Ajax solutions, with CORS
/// permission if reading cross-domain.
///  Note: This feature is available in Web Workers
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    FileReader
///
///
@JS()
@staticInterop
class FileReader implements EventTarget {
  @JS('EMPTY')
  external static int get empty;

  @JS('LOADING')
  external static int get loading;

  @JS('DONE')
  external static int get done;

  external factory FileReader();
}

extension PropsFileReader on FileReader {
  void readAsArrayBuffer(Blob blob) =>
      js_util.callMethod(this, 'readAsArrayBuffer', [blob]);

  void readAsBinaryString(Blob blob) =>
      js_util.callMethod(this, 'readAsBinaryString', [blob]);

  void readAsText(Blob blob, [String? encoding]) =>
      js_util.callMethod(this, 'readAsText', [blob, encoding]);

  void readAsDataURL(Blob blob) =>
      js_util.callMethod(this, 'readAsDataURL', [blob]);

  void abort() => js_util.callMethod(this, 'abort', []);

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

///  The interface allows to read [File] or [Blob] objects
/// synchronously.
///  Note: This feature is available in Web Workers
///   Warning: This interface is only available in workers as it
/// enables synchronous I/O that could potentially block.
///
@JS()
@staticInterop
class FileReaderSync {
  external factory FileReaderSync();
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
