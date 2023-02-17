/// File and Directory Entries API
///
/// https://wicg.github.io/entries-api/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library entries_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the File and Directory Entries API represents a
/// single entry in a file system. The entry can be a file or a
/// directory (directories are represented by the
/// [FileSystemDirectoryEntry] interface). It includes methods for
/// working with files—including copying, moving, removing, and
/// reading files—as well as information about a file it points
/// to—including the file name and its path from the root to the
/// entry.
@JS()
@staticInterop
class FileSystemEntry {
  external factory FileSystemEntry();
}

extension PropsFileSystemEntry on FileSystemEntry {
  bool get isFile => js_util.getProperty(this, 'isFile');
  bool get isDirectory => js_util.getProperty(this, 'isDirectory');
  String get name => js_util.getProperty(this, 'name');
  String get fullPath => js_util.getProperty(this, 'fullPath');
  FileSystem get filesystem => js_util.getProperty(this, 'filesystem');
  void getParent(
          [FileSystemEntryCallback? successCallback,
          ErrorCallback? errorCallback]) =>
      js_util.callMethod(this, 'getParent', [
        successCallback == null ? null : allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback)
      ]);
}

///  The interface of the File and Directory Entries API represents a
/// directory in a file system. It provides methods which make it
/// possible to access and manipulate the files in a directory, as
/// well as to access the entries within the directory.
///
///
///
///    FileSystemEntry
///
///
///
///
///
///    FileSystemDirectoryEntry
///
///
@JS()
@staticInterop
class FileSystemDirectoryEntry implements FileSystemEntry {
  external factory FileSystemDirectoryEntry();
}

extension PropsFileSystemDirectoryEntry on FileSystemDirectoryEntry {
  FileSystemDirectoryReader createReader() =>
      js_util.callMethod(this, 'createReader', []);

  void getFile(
          [String? path,
          FileSystemFlags? options,
          FileSystemEntryCallback? successCallback,
          ErrorCallback? errorCallback]) =>
      js_util.callMethod(this, 'getFile', [
        path,
        options,
        successCallback == null ? null : allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback)
      ]);

  void getDirectory(
          [String? path,
          FileSystemFlags? options,
          FileSystemEntryCallback? successCallback,
          ErrorCallback? errorCallback]) =>
      js_util.callMethod(this, 'getDirectory', [
        path,
        options,
        successCallback == null ? null : allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback)
      ]);
}

@anonymous
@JS()
@staticInterop
class FileSystemFlags {
  external factory FileSystemFlags._({bool? create, bool? exclusive});

  factory FileSystemFlags({bool? create, bool? exclusive}) =>
      FileSystemFlags._(create: create ?? false, exclusive: exclusive ?? false);
}

extension PropsFileSystemFlags on FileSystemFlags {
  bool get create => js_util.getProperty(this, 'create');
  set create(bool newValue) {
    js_util.setProperty(this, 'create', newValue);
  }

  bool get exclusive => js_util.getProperty(this, 'exclusive');
  set exclusive(bool newValue) {
    js_util.setProperty(this, 'exclusive', newValue);
  }
}

///  The interface of the File and Directory Entries API lets you
/// access the [FileSystemFileEntry]-based objects (generally
/// [FileSystemFileEntry] or [FileSystemDirectoryEntry]) representing
/// each entry in a directory.
@JS()
@staticInterop
class FileSystemDirectoryReader {
  external factory FileSystemDirectoryReader();
}

extension PropsFileSystemDirectoryReader on FileSystemDirectoryReader {
  void readEntries(FileSystemEntriesCallback successCallback,
          [ErrorCallback? errorCallback]) =>
      js_util.callMethod(this, 'readEntries', [
        allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback)
      ]);
}

///  The interface of the File System API represents a file in a file
/// system. It offers properties describing the file's attributes, as
/// well as the [file()] method, which creates a [File] object that
/// can be used to read the file.
///
///
///
///    FileSystemEntry
///
///
///
///
///
///    FileSystemFileEntry
///
///
@JS()
@staticInterop
class FileSystemFileEntry implements FileSystemEntry {
  external factory FileSystemFileEntry();
}

extension PropsFileSystemFileEntry on FileSystemFileEntry {
  void file(FileCallback successCallback, [ErrorCallback? errorCallback]) =>
      js_util.callMethod(this, 'file', [
        allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback)
      ]);
}

///  The File and Directory Entries API interface is used to
/// represent a file system. These objects can be obtained from the
/// [filesystem] property on any file system entry. Some browsers
/// offer additional APIs to create and manage file systems, such as
/// Chrome's [requestFileSystem()] method.
///  This interface will not grant you access to the users
/// filesystem. Instead you will have a "virtual drive" within the
/// browser sandbox. If you want to gain access to the users
/// filesystem you need to invoke the user by eg. installing a Chrome
/// extension. The relevant Chrome API can be found here.
@JS()
@staticInterop
class FileSystem {
  external factory FileSystem();
}

extension PropsFileSystem on FileSystem {
  String get name => js_util.getProperty(this, 'name');
  FileSystemDirectoryEntry get root => js_util.getProperty(this, 'root');
}
