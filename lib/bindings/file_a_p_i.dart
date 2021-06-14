/// File API
///
/// https://w3c.github.io/FileAPI/
@JS('window')
library file_a_p_i;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'streams.dart';
import 'dom.dart';
import 'html.dart';
import 'url.dart';
import 'media_source.dart';

///
///
///  The object represents a blob, which is a file-like object of
/// immutable, raw data; they can be read as text or binary data, or
/// converted into a [ReadableStream] so its methods can be used for
/// processing the data.
///
///  Blobs can represent data that isn't necessarily in a
/// JavaScript-native format. The [File] interface is based on ,
/// inheriting blob functionality and expanding it to support files
/// on the user's system.
@JS()
class Blob {
  external factory Blob(
      {Iterable<dynamic>? blobParts, BlobPropertyBag? options});
  external int get size;
  external String get type;
  external Blob slice([int? start, int? end, String? contentType]);
  external ReadableStream stream();
  external Promise<String> text();
  external Promise<ByteBuffer> arrayBuffer();
}

@JS()
enum EndingType { transparent, native }

@anonymous
@JS()
class BlobPropertyBag {
  external String get type;
  external set type(String newValue);
  external EndingType get endings;
  external set endings(EndingType newValue);

  external factory BlobPropertyBag(
      {String type = '', EndingType endings = EndingType.transparent});
}

///
///
///  The interface provides information about files and allows
/// JavaScript in a web page to access their content.
///
///   objects are generally retrieved from a [FileList] object
/// returned as a result of a user selecting files using the
/// [<input>] element, from a drag and drop operation's
/// [DataTransfer] object, or from the [mozGetAsFile()] API on an
/// [HTMLCanvasElement].
///
///  A object is a specific kind of a [Blob], and can be used in any
/// context that a Blob can. In particular, [FileReader],
/// [URL.createObjectURL()], [createImageBitmap()], and
/// [XMLHttpRequest.send()] accept both [Blob]s and s.
///
///  See Using files from web applications for more information and
/// examples.
///
///
@JS()
class File extends Blob {
  external factory File(
      {Iterable<dynamic> fileBits, String fileName, FilePropertyBag? options});
  external String get name;
  external int get lastModified;
  external String get webkitRelativePath;
}

@anonymous
@JS()
class FilePropertyBag extends BlobPropertyBag {
  external int get lastModified;
  external set lastModified(int newValue);

  external factory FilePropertyBag({int lastModified});
}

///
///
///  An object of this type is returned by the [files] property of
/// the HTML [<input>] element; this lets you access the list of
/// files selected with the [<input type="file">] element. It's also
/// used for a list of files dropped into web content when using the
/// drag and drop API; see the [DataTransfer] object for details on
/// this usage.
///  Note: Prior to Gecko 1.9.2, the input element only supported a
/// single file being selected at a time, meaning that the FileList
/// would contain only one file. Starting with Gecko 1.9.2, if the
/// input element's multiple attribute is true, the FileList may
/// contain multiple files.
///
@JS()
class FileList {
  external File? item(int index);
  external int get length;

  external factory FileList();
}

///
///
///  The object lets web applications asynchronously read the
/// contents of files (or raw data buffers) stored on the user's
/// computer, using [File] or [Blob] objects to specify the file or
/// data to read.
///
///  File objects may be obtained from a [FileList] object returned
/// as a result of a user selecting files using the [<input>]
/// element, from a drag and drop operation's [DataTransfer] object,
/// or from the [mozGetAsFile()] API on an [HTMLCanvasElement].
///
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
class FileReader extends EventTarget {
  external factory FileReader();

  ///  Starts reading the contents of the specified [Blob], once
  /// finished, the [result] attribute contains an [ArrayBuffer]
  /// representing the file's data.
  /// instanceOfFileReader.readAsArrayBuffer(blob);
  external Object readAsArrayBuffer(Blob blob);

  ///  Starts reading the contents of the specified [Blob], once
  /// finished, the [result] attribute contains the raw binary data
  /// from the file as a string.
  /// instanceOfFileReader.readAsBinaryString(blob);
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
  external Object readAsBinaryString(Blob blob);

  ///  Starts reading the contents of the specified [Blob], once
  /// finished, the [result] attribute contains the contents of the
  /// file as a text string. An optional encoding name can be
  /// specified.
  /// instanceOfFileReader.readAsText(blob[, encoding]);
  external Object readAsText(Blob blob, [String? encoding]);

  ///  Starts reading the contents of the specified [Blob], once
  /// finished, the [result] attribute contains a [data:] URL
  /// representing the file's data.
  /// instanceOfFileReader.readAsDataURL(blob);
  external Object readAsDataURL(Blob blob);

  ///  Aborts the read operation. Upon return, the [readyState] will be
  /// [DONE].
  /// instanceOfFileReader.abort();
  external Object abort();
  external static int get EMPTY;
  external static int get LOADING;
  external static int get DONE;

  ///  A number indicating the state of the [FileReader]. This is one
  /// of the following:
  ///
  ///
  ///
  ///   [EMPTY]
  ///   [0]
  ///   No data has been loaded yet.
  ///
  ///
  ///   [LOADING]
  ///   [1]
  ///   Data is currently being loaded.
  ///
  ///
  ///   [DONE]
  ///   [2]
  ///   The entire read request has been completed.
  ///
  ///
  ///
  ///
  external int get readyState;

  ///  The file's contents. This property is only valid after the read
  /// operation is complete, and the format of the data depends on
  /// which of the methods was used to initiate the read operation.
  external dynamic get result;

  ///  A [DOMException] representing the error that occurred while
  /// reading the file.
  external Exception? get error;
  external EventHandlerNonNull? get onloadstart;
  external set onloadstart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onprogress;
  external set onprogress(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onload;
  external set onload(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onabort;
  external set onabort(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onloadend;
  external set onloadend(EventHandlerNonNull? newValue);
}

///
///
///  The interface allows to read [File] or [Blob] objects
/// synchronously.
///  Note: This feature is available in Web Workers
///
///  This interface is only available in workers as it enables
/// synchronous I/O that could potentially block.
///
@JS()
class FileReaderSync {
  external factory FileReaderSync();

  ///  This method converts a specified [Blob] or a [File] into an
  /// [ArrayBuffer] representing the input data as a binary string.
  /// ArrayBuffer readAsArrayBuffer(
  ///  in Blob blob
  /// );
  ///
  external ByteBuffer readAsArrayBuffer(Blob blob);

  ///  This method converts a specified [Blob] or a [File] into a
  /// [DOMString] representing the input data as a binary string. This
  /// method is deprecated, consider using [readAsArrayBuffer()]
  /// instead.
  /// readAsBinaryString(File);
  /// readAsBinaryString(Blob);
  ///
  @deprecated
  external String readAsBinaryString(Blob blob);

  ///  This method converts a specified [Blob] or a [File] into a
  /// [DOMString] representing the input data as a text string. The
  /// optional [encoding] parameter indicates the encoding to be used
  /// (e.g., iso-8859-1 or UTF-8). If not present, the method will
  /// apply a detection algorithm for it.
  /// readAsText(File);
  /// readAsText(Blob);
  /// readAsText(File, encoding);
  /// readAsText(Blob, encoding);
  ///
  external String readAsText(Blob blob, [String? encoding]);

  ///  This method converts a specified [Blob] or a [File] into a
  /// [DOMString] representing the input data as a data URL.
  /// readAsDataURL(File);
  /// readAsDataURL(Blob);
  ///
  external String readAsDataURL(Blob blob);
}
