/// File System Access
///
/// https://wicg.github.io/file-system-access/
@JS('window')
library file_system_access;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'permissions.dart';
import 'file_a_p_i.dart';
import 'streams.dart';
import 'html.dart';
import 'storage.dart';

@JS()
enum FileSystemPermissionMode { read, readwrite }

@anonymous
@JS()
class FileSystemPermissionDescriptor // null -> {} -> PermissionDescriptor
    with
        PermissionDescriptor {
  external FileSystemHandle get handle;
  external set handle(FileSystemHandle newValue);
  external FileSystemPermissionMode get mode;
  external set mode(FileSystemPermissionMode newValue);

  external factory FileSystemPermissionDescriptor(
      {FileSystemHandle handle,
      FileSystemPermissionMode mode = FileSystemPermissionMode.read});
}

@anonymous
@JS()
class FileSystemHandlePermissionDescriptor {
  external FileSystemPermissionMode get mode;
  external set mode(FileSystemPermissionMode newValue);

  external factory FileSystemHandlePermissionDescriptor(
      {FileSystemPermissionMode mode = FileSystemPermissionMode.read});
}

@JS()
enum FileSystemHandleKind { file, directory }

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the [File System Access API] is an object which
/// represents a file or directory entry. Multiple handles can
/// represent the same entry. For the most part you do not work with
/// directly but rather its child interfaces [FileSystemFileHandle]
/// and [FileSystemDirectoryHandle].
@JS()
class FileSystemHandle {
  ///  Returns the type of entry. This is ['file'] if the associated
  /// entry is a file or ['directory'].
  external FileSystemHandleKind get kind;

  /// Returns the name of the associated entry.
  external String get name;

  ///  Compares two [handles] to see if the associated entries (either
  /// a file or directory) match.
  /// var Boolean = FileSystemHandle1.isSameEntry(FileSystemHandle2);
  external Promise<bool> isSameEntry(FileSystemHandle other);

  /// Queries the current permission state of the current handle.
  /// var PermissionState = FileSystemHandle.queryPermission(FileSystemHandlePermissionDescriptor);
  external Promise<PermissionState> queryPermission(
      [FileSystemHandlePermissionDescriptor? descriptor]);

  /// Requests read or readwrite permissions for the file handle.
  /// var PermissionState = FileSystemHandle.requestPermission(FileSystemHandlePermissionDescriptor);
  external Promise<PermissionState> requestPermission(
      [FileSystemHandlePermissionDescriptor? descriptor]);

  external factory FileSystemHandle();
}

@anonymous
@JS()
class FileSystemCreateWritableOptions {
  external bool get keepExistingData;
  external set keepExistingData(bool newValue);

  external factory FileSystemCreateWritableOptions(
      {bool keepExistingData = false});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the [File System Access API] represents a
/// handle to a file system entry. The interface is accessed thought
/// the [window.showOpenFilePicker()] method.
///
///  Note that read and write operations depend on file-access
/// permissions that do not persist after a page refresh if no other
/// tabs for that origin remain open. The [queryPermission] method of
/// the [FileSystemHandle] interface can be used to verify permission
/// state before accessing a file.
@JS()
class FileSystemFileHandle // null -> {} -> FileSystemHandle
    with
        FileSystemHandle {
  ///  Returns a [file object] representing the state on disk of the
  /// entry represented by the handle.
  /// var File = FileSystemFileHandle.getFile();
  external Promise<File> getFile();

  ///  Creates a [FileSystemWritableFileStream] that can be used to
  /// write to a file.
  /// var FileSystemWritableFileStream = FileSystemFileHandle.createWritable();
  external Promise<FileSystemWritableFileStream> createWritable(
      [FileSystemCreateWritableOptions? options]);

  external factory FileSystemFileHandle();
}

@anonymous
@JS()
class FileSystemGetFileOptions {
  external bool get create;
  external set create(bool newValue);

  external factory FileSystemGetFileOptions({bool create = false});
}

@anonymous
@JS()
class FileSystemGetDirectoryOptions {
  external bool get create;
  external set create(bool newValue);

  external factory FileSystemGetDirectoryOptions({bool create = false});
}

@anonymous
@JS()
class FileSystemRemoveOptions {
  external bool get recursive;
  external set recursive(bool newValue);

  external factory FileSystemRemoveOptions({bool recursive = false});
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the [File System Access API] provides a handle
/// to a file system directory. The interface is accessed via the
/// [window.showDirectoryPicker()] method.
@JS()
class FileSystemDirectoryHandle // null -> {} -> FileSystemHandle
    with
        FileSystemHandle {
  external FileSystemHandle operator [](String index);

  ///  Returns a [FileSystemFileHandle] for a file with the specified
  /// name, within the directory the method is called.
  /// var FileSystemFileHandle = FileSystemDirectoryHandle.getFileHandle(name);
  external Promise<FileSystemFileHandle> getFileHandle(String name,
      [FileSystemGetFileOptions? options]);

  ///  Returns a [FileSystemDirectoryHandle] for a subdirectory with
  /// the specified name within the directory handle on which the
  /// method is called.
  /// var FileSystemDirectoryHandle = FileSystemDirectoryHandle.getDirectoryHandle();
  external Promise<FileSystemDirectoryHandle> getDirectoryHandle(String name,
      [FileSystemGetDirectoryOptions? options]);

  ///  Attempts to remove an entry if the directory handle contains a
  /// file or directory called the name specified.
  /// FileSystemDirectoryHandle.removeEntry(name).then...
  external Promise<Object> removeEntry(String name,
      [FileSystemRemoveOptions? options]);

  ///  Returns an [Array] of directory names from the parent handle to
  /// the specified child entry, with the name of the child entry as
  /// the last array item.
  /// var pathArr = FileSystemDirectoryHandle.resolve(possibleDescendant);
  external Iterable<Promise<String>> resolve(
      FileSystemHandle possibleDescendant);

  external factory FileSystemDirectoryHandle();
}

@JS()
enum WriteCommandType { write, seek, truncate }

@anonymous
@JS()
class WriteParams {
  external WriteCommandType get type;
  external set type(WriteCommandType newValue);
  external int? get size;
  external set size(int? newValue);
  external int? get position;
  external set position(int? newValue);
  external dynamic get data;
  external set data(dynamic newValue);

  external factory WriteParams(
      {WriteCommandType type, int? size, int? position, dynamic data});
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the [File System Access API] is a
/// [WritableStream] object with additional convenience methods,
/// which operates on a single file on disk. The interface is
/// accessed through the [FileSystemFileHandle.createWritable()]
/// method.
@JS()
class FileSystemWritableFileStream // null -> {} -> WritableStream
    with
        WritableStream {
  ///  Writes content into the file the method is called on, at the
  /// current file cursor offset.
  /// FileSystemWritableFileStream.write(data).then(...);
  external Promise<Object> write(dynamic data);

  ///  Updates the current file cursor offset to the position (in
  /// bytes) specified.
  /// FileSystemWritableStream.seek(position).then(...);
  external Promise<Object> seek(int position);

  ///  Resizes the file associated with the stream to be the specified
  /// size in bytes.
  /// FileSystemWritableFileStream.truncate().then(...);
  external Promise<Object> truncate(int size);

  external factory FileSystemWritableFileStream();
}

@JS()
enum WellKnownDirectory {
  desktop,
  documents,
  downloads,
  music,
  pictures,
  videos
}

@anonymous
@JS()
class FilePickerAcceptType {
  external String get description;
  external set description(String newValue);
  external dynamic get accept;
  external set accept(dynamic newValue);

  external factory FilePickerAcceptType({String description, dynamic accept});
}

@anonymous
@JS()
class FilePickerOptions {
  external Iterable<FilePickerAcceptType> get types;
  external set types(Iterable<FilePickerAcceptType> newValue);
  external bool get excludeAcceptAllOption;
  external set excludeAcceptAllOption(bool newValue);
  external String get id;
  external set id(String newValue);
  external dynamic get startIn;
  external set startIn(dynamic newValue);

  external factory FilePickerOptions(
      {Iterable<FilePickerAcceptType> types,
      bool excludeAcceptAllOption = false,
      String id,
      dynamic startIn});
}

@anonymous
@JS()
class OpenFilePickerOptions // null -> {} -> FilePickerOptions
    with
        FilePickerOptions {
  external bool get multiple;
  external set multiple(bool newValue);

  external factory OpenFilePickerOptions({bool multiple = false});
}

@anonymous
@JS()
class SaveFilePickerOptions // null -> {} -> FilePickerOptions
    with
        FilePickerOptions {
  external String? get suggestedName;
  external set suggestedName(String? newValue);

  external factory SaveFilePickerOptions({String? suggestedName});
}

@anonymous
@JS()
class DirectoryPickerOptions {
  external String get id;
  external set id(String newValue);
  external dynamic get startIn;
  external set startIn(dynamic newValue);

  external factory DirectoryPickerOptions({String id, dynamic startIn});
}