/// File and Directory Entries API
///
/// https://wicg.github.io/entries-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library entries_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class FileSystemEntry {
  external FileSystemEntry();
}

extension PropsFileSystemEntry on FileSystemEntry {
  bool get isFile => js_util.getProperty(this, 'isFile');
  bool get isDirectory => js_util.getProperty(this, 'isDirectory');
  String get name => js_util.getProperty(this, 'name');
  String get fullPath => js_util.getProperty(this, 'fullPath');
  FileSystem get filesystem => js_util.getProperty(this, 'filesystem');
  Object getParent(
          [FileSystemEntryCallback? successCallback,
          ErrorCallback? errorCallback]) =>
      js_util.callMethod(this, 'getParent', [
        successCallback == null ? null : allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback)
      ]);
}

@JS()
@staticInterop
class FileSystemDirectoryEntry implements FileSystemEntry {
  external FileSystemDirectoryEntry();
}

extension PropsFileSystemDirectoryEntry on FileSystemDirectoryEntry {
  FileSystemDirectoryReader createReader() =>
      js_util.callMethod(this, 'createReader', []);

  Object getFile(
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

  Object getDirectory(
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
  external factory FileSystemFlags(
      {bool? create = false, bool? exclusive = false});
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

@JS()
@staticInterop
class FileSystemDirectoryReader {
  external FileSystemDirectoryReader();
}

extension PropsFileSystemDirectoryReader on FileSystemDirectoryReader {
  Object readEntries(FileSystemEntriesCallback successCallback,
          [ErrorCallback? errorCallback]) =>
      js_util.callMethod(this, 'readEntries', [
        allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback)
      ]);
}

@JS()
@staticInterop
class FileSystemFileEntry implements FileSystemEntry {
  external FileSystemFileEntry();
}

extension PropsFileSystemFileEntry on FileSystemFileEntry {
  Object file(FileCallback successCallback, [ErrorCallback? errorCallback]) =>
      js_util.callMethod(this, 'file', [
        allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback)
      ]);
}

@JS()
@staticInterop
class FileSystem {
  external FileSystem();
}

extension PropsFileSystem on FileSystem {
  String get name => js_util.getProperty(this, 'name');
  FileSystemDirectoryEntry get root => js_util.getProperty(this, 'root');
}
