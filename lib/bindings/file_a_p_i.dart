/// File API
///
/// https://w3c.github.io/FileAPI/
@JS('window')
@staticInterop
library file_a_p_i;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: streams
dom
html
url
media_source */

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
  external factory BlobPropertyBag(
      {String type = '', EndingType? endings = EndingType.transparent});
}

extension PropsBlobPropertyBag on BlobPropertyBag {
  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  EndingType get endings => js_util.getProperty(this, 'endings');
  set endings(EndingType newValue) {
    js_util.setProperty(this, 'endings', newValue);
  }
}

///  The interface provides information about files and allows
/// JavaScript in a web page to access their content.
///   objects are generally retrieved from a [FileList] object
/// returned as a result of a user selecting files using the
/// [<input>] element, from a drag and drop operation's
/// [DataTransfer] object, or from the [mozGetAsFile()] API on an
/// [HTMLCanvasElement].
///  A object is a specific kind of a [Blob], and can be used in any
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
///    File
///
///
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
  external factory FilePropertyBag({int lastModified});
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
///
///   Note: Prior to Gecko 1.9.2, the input element only supported a
/// single file being selected at a time, meaning that the FileList
/// would contain only one file. Starting with Gecko 1.9.2, if the
/// input element's multiple attribute is true, the FileList may
/// contain multiple files.
///
@JS()
@staticInterop
class FileList {
  external FileList();
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
/// element, from a drag and drop operation's [DataTransfer] object,
/// or from the [mozGetAsFile()] API on an [HTMLCanvasElement].
///   can only access the contents of files that the user has
/// explicitly selected, either using an HTML [<input type="file">]
/// element or by drag and drop. It cannot be used to read a file by
/// pathname from the user's file system. To read files on the
/// client's file system by pathname, use the File System Access API.
/// To read server-side files, use standard Ajax solutions, with CORS
/// permission if reading cross-domain.
///  Note: This feature is available in Web Workers
///
@JS()
@staticInterop
class FileReader implements EventTarget {
  external static int get EMPTY;
  external static int get LOADING;
  external static int get DONE;
  external FileReader();
}

extension PropsFileReader on FileReader {
  ///  Starts reading the contents of the specified [Blob], once
  /// finished, the [result] attribute contains an [ArrayBuffer]
  /// representing the file's data.
  ///
  /// instanceOfFileReader.readAsArrayBuffer(blob);
  ///
  Object readAsArrayBuffer(

          /// The [Blob] or [File] from which to read.
          ///
          Blob blob) =>
      js_util.callMethod(this, 'readAsArrayBuffer', [blob]);

  ///  Starts reading the contents of the specified [Blob], once
  /// finished, the [result] attribute contains the raw binary data
  /// from the file as a string.
  ///
  /// instanceOfFileReader.readAsBinaryString(blob);
  ///
  /// var canvas = document.createElement('canvas');
  /// var height = 200;
  /// var width = 200;
  ///
  /// canvas.width = width;
  /// canvas.height = height;
  ///
  /// var ctx = canvas.getContext('2d');
  ///
  /// ctx.strokeStyle = '#090';
  /// ctx.beginPath();
  /// ctx.arc(width/2, height/2, width/2 - width/10, 0, Math.PI*2);
  /// ctx.stroke();
  ///
  /// canvas.toBlob(function (blob) {
  ///  var reader = new FileReader();
  ///
  ///  reader.onload = function () {
  ///   console.log(reader.result);
  ///  }
  ///
  ///  reader.readAsBinaryString(blob);
  /// });
  ///
  Object readAsBinaryString(

          /// The [Blob] or [File] from which to read.
          ///
          Blob blob) =>
      js_util.callMethod(this, 'readAsBinaryString', [blob]);

  ///  Starts reading the contents of the specified [Blob], once
  /// finished, the [result] attribute contains the contents of the
  /// file as a text string. An optional encoding name can be
  /// specified.
  ///
  /// readAsText(blob)
  /// readAsText(blob, encoding)
  ///
  Object readAsText(

          /// The [Blob] or [File] from which to read.
          ///
          Blob blob,
          [

          ///  A string specifying the encoding to use for the returned data.
          /// By default, UTF-8 is assumed if this parameter is not specified.
          ///
          String? encoding]) =>
      js_util.callMethod(this, 'readAsText', [blob, encoding]);

  ///  Starts reading the contents of the specified [Blob], once
  /// finished, the [result] attribute contains a [data:] URL
  /// representing the file's data.
  ///
  /// instanceOfFileReader.readAsDataURL(blob);
  ///
  Object readAsDataURL(

          /// The [Blob] or [File] from which to read.
          ///
          Blob blob) =>
      js_util.callMethod(this, 'readAsDataURL', [blob]);

  ///  Aborts the read operation. Upon return, the [readyState] will be
  /// [DONE].
  ///
  /// instanceOfFileReader.abort();
  ///
  Object abort() => js_util.callMethod(this, 'abort', []);

  ///  A number indicating the state of the [FileReader]. This is one
  /// of the following:
  ///
  ///
  ///
  ///      Name
  ///      Value
  ///      Description
  ///
  ///
  ///
  ///
  ///      [EMPTY]
  ///      [0]
  ///      No data has been loaded yet.
  ///
  ///
  ///      [LOADING]
  ///      [1]
  ///      Data is currently being loaded.
  ///
  ///
  ///      [DONE]
  ///      [2]
  ///      The entire read request has been completed.
  ///
  ///
  ///
  ///
  int get readyState => js_util.getProperty(this, 'readyState');

  ///  The file's contents. This property is only valid after the read
  /// operation is complete, and the format of the data depends on
  /// which of the methods was used to initiate the read operation.
  ///
  dynamic get result => js_util.getProperty(this, 'result');

  ///  A [Exception] representing the error that occurred while reading
  /// the file.
  ///
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
  external FileReaderSync();
}

extension PropsFileReaderSync on FileReaderSync {
  ///  This method converts a specified [Blob] or a [File] into an
  /// [ArrayBuffer] representing the input data as a binary string.
  ///
  /// ArrayBuffer readAsArrayBuffer(blob);
  ///
  ByteBuffer readAsArrayBuffer(

          /// The [File] or [Blob] to read into the [File] or [ArrayBuffer].
          ///
          Blob blob) =>
      js_util.callMethod(this, 'readAsArrayBuffer', [blob]);

  ///  This method converts a specified [Blob] or a [File] into a
  /// [String] representing the input data as a binary string. This
  /// method is deprecated, consider using [readAsArrayBuffer()]
  /// instead.
  ///
  /// readAsBinaryString(File);
  /// readAsBinaryString(Blob);
  ///
  @deprecated
  String readAsBinaryString(

          /// The [File] or [Blob] to read.
          ///
          Blob blob) =>
      js_util.callMethod(this, 'readAsBinaryString', [blob]);

  ///  This method converts a specified [Blob] or a [File] into a
  /// [String] representing the input data as a text string. The
  /// optional [encoding] parameter indicates the encoding to be used
  /// (e.g., iso-8859-1 or UTF-8). If not present, the method will
  /// apply a detection algorithm for it.
  ///
  /// readAsText(File);
  /// readAsText(Blob);
  /// readAsText(File, encoding);
  /// readAsText(Blob, encoding);
  ///
  String readAsText(

          /// The [File] or [Blob] to read.
          ///
          Blob blob,
          [

          ///  The optional parameter specifies encoding to be used (e.g.,
          /// [iso-8859-1] or [UTF-8]). If not present, the method will apply a
          /// detection algorithm for it.
          ///
          String? encoding]) =>
      js_util.callMethod(this, 'readAsText', [blob, encoding]);

  ///  This method converts a specified [Blob] or a [File] into a
  /// [String] representing the input data as a data URL.
  ///
  /// readAsDataURL(File);
  /// readAsDataURL(Blob);
  ///
  String readAsDataURL(

          /// The [File] or [Blob] to read.
          ///
          Blob blob) =>
      js_util.callMethod(this, 'readAsDataURL', [blob]);
}
