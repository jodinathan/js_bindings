/// File System Standard
///
/// https://fs.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library fs;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

enum FileSystemHandleKind {
  file('file'),
  directory('directory');

  final String value;
  static FileSystemHandleKind fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<FileSystemHandleKind> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const FileSystemHandleKind(this.value);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [File System Access API] is an object which
/// represents a file or directory entry. Multiple handles can
/// represent the same entry. For the most part you do not work with
/// directly but rather its child interfaces [FileSystemFileHandle]
/// and [FileSystemDirectoryHandle].
@JS()
@staticInterop
class FileSystemHandle {
  external factory FileSystemHandle();
}

extension PropsFileSystemHandle on FileSystemHandle {
  FileSystemHandleKind get kind =>
      FileSystemHandleKind.fromValue(js_util.getProperty(this, 'kind'));
  String get name => js_util.getProperty(this, 'name');
  Future<bool> isSameEntry(FileSystemHandle other) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'isSameEntry', [other]));

  Future<PermissionState> queryPermission(
          [FileSystemHandlePermissionDescriptor? descriptor]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'queryPermission', [descriptor]));

  Future<PermissionState> requestPermission(
          [FileSystemHandlePermissionDescriptor? descriptor]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestPermission', [descriptor]));
}

@anonymous
@JS()
@staticInterop
class FileSystemCreateWritableOptions {
  external factory FileSystemCreateWritableOptions(
      {bool? keepExistingData = false});
}

extension PropsFileSystemCreateWritableOptions
    on FileSystemCreateWritableOptions {
  bool get keepExistingData => js_util.getProperty(this, 'keepExistingData');
  set keepExistingData(bool newValue) {
    js_util.setProperty(this, 'keepExistingData', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the File System Access API represents a handle
/// to a file system entry. The interface is accessed through the
/// [window.showOpenFilePicker()] method.
///  Note that read and write operations depend on file-access
/// permissions that do not persist after a page refresh if no other
/// tabs for that origin remain open. The [queryPermission] method of
/// the [FileSystemHandle] interface can be used to verify permission
/// state before accessing a file.
///
///
///
///    FileSystemHandle
///
///
///
///
///
///
///
///    FileSystemFileHandle
///
///
@JS()
@staticInterop
class FileSystemFileHandle implements FileSystemHandle {
  external factory FileSystemFileHandle();
}

extension PropsFileSystemFileHandle on FileSystemFileHandle {
  Future<File> getFile() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getFile', []));

  Future<FileSystemWritableFileStream> createWritable(
          [FileSystemCreateWritableOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'createWritable', [options]));

  Future<FileSystemSyncAccessHandle> createSyncAccessHandle() => js_util
      .promiseToFuture(js_util.callMethod(this, 'createSyncAccessHandle', []));
}

@anonymous
@JS()
@staticInterop
class FileSystemGetFileOptions {
  external factory FileSystemGetFileOptions({bool? create = false});
}

extension PropsFileSystemGetFileOptions on FileSystemGetFileOptions {
  bool get create => js_util.getProperty(this, 'create');
  set create(bool newValue) {
    js_util.setProperty(this, 'create', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class FileSystemGetDirectoryOptions {
  external factory FileSystemGetDirectoryOptions({bool? create = false});
}

extension PropsFileSystemGetDirectoryOptions on FileSystemGetDirectoryOptions {
  bool get create => js_util.getProperty(this, 'create');
  set create(bool newValue) {
    js_util.setProperty(this, 'create', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class FileSystemRemoveOptions {
  external factory FileSystemRemoveOptions({bool? recursive = false});
}

extension PropsFileSystemRemoveOptions on FileSystemRemoveOptions {
  bool get recursive => js_util.getProperty(this, 'recursive');
  set recursive(bool newValue) {
    js_util.setProperty(this, 'recursive', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the [File System Access API] provides a handle
/// to a file system directory.
///  The interface can be accessed via the
/// [window.showDirectoryPicker()] and
/// [StorageManager.getDirectory()] methods.
///
///
///
///    FileSystemHandle
///
///
///
///
///
///
///
///    FileSystemDirectoryHandle
///
///
@JS()
@staticInterop
class FileSystemDirectoryHandle implements FileSystemHandle {
  external factory FileSystemDirectoryHandle();
}

extension PropsFileSystemDirectoryHandle on FileSystemDirectoryHandle {
  Future<FileSystemFileHandle> getFileHandle(String name,
          [FileSystemGetFileOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getFileHandle', [name, options]));

  Future<FileSystemDirectoryHandle> getDirectoryHandle(String name,
          [FileSystemGetDirectoryOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'getDirectoryHandle', [name, options]));

  Future<void> removeEntry(String name, [FileSystemRemoveOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'removeEntry', [name, options]));

  Future<Iterable<String>> resolve(FileSystemHandle possibleDescendant) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'resolve', [possibleDescendant]));
}

enum WriteCommandType {
  write('write'),
  seek('seek'),
  truncate('truncate');

  final String value;
  static WriteCommandType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<WriteCommandType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const WriteCommandType(this.value);
}

@anonymous
@JS()
@staticInterop
class WriteParams {
  external factory WriteParams._(
      {required String type, int? size, int? position, dynamic data});

  factory WriteParams(
          {required WriteCommandType type,
          int? size,
          int? position,
          dynamic data}) =>
      WriteParams._(
          type: type.value, size: size, position: position, data: data);
}

extension PropsWriteParams on WriteParams {
  WriteCommandType get type =>
      WriteCommandType.fromValue(js_util.getProperty(this, 'type'));
  set type(WriteCommandType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
  }

  int? get size => js_util.getProperty(this, 'size');
  set size(int? newValue) {
    js_util.setProperty(this, 'size', newValue);
  }

  int? get position => js_util.getProperty(this, 'position');
  set position(int? newValue) {
    js_util.setProperty(this, 'position', newValue);
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
///  The interface of the [File System Access API] is a
/// [WritableStream] object with additional convenience methods,
/// which operates on a single file on disk. The interface is
/// accessed through the [FileSystemFileHandle.createWritable()]
/// method.
///
///
///
///    WritableStream
///
///
///
///
///
///
///
///    FileSystemWritableFileStream
///
///
@experimental
@JS()
@staticInterop
class FileSystemWritableFileStream implements WritableStream {
  external factory FileSystemWritableFileStream();
}

extension PropsFileSystemWritableFileStream on FileSystemWritableFileStream {
  Future<void> write(dynamic data) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'write', [data]));

  Future<void> seek(int position) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'seek', [position]));

  Future<void> truncate(int size) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'truncate', [size]));
}

@anonymous
@JS()
@staticInterop
class FileSystemReadWriteOptions {
  external factory FileSystemReadWriteOptions({required int at});
}

extension PropsFileSystemReadWriteOptions on FileSystemReadWriteOptions {
  int get at => js_util.getProperty(this, 'at');
  set at(int newValue) {
    js_util.setProperty(this, 'at', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the File System Access API represents a
/// synchronous handle to a file system entry. The synchronous nature
/// of the file reads and writes allows for higher performance for
/// critical methods in contexts where asynchronous operations come
/// with high overhead, e.g., WebAssembly.
///  This class is only accessible inside dedicated Web Workers for
/// files within the origin private file system.
///  The interface is accessed through the
/// [FileSystemFileHandle.createSyncAccessHandle()] method.
@JS()
@staticInterop
class FileSystemSyncAccessHandle {
  external factory FileSystemSyncAccessHandle();
}

extension PropsFileSystemSyncAccessHandle on FileSystemSyncAccessHandle {
  int read(dynamic buffer, [FileSystemReadWriteOptions? options]) =>
      js_util.callMethod(this, 'read', [buffer, options]);

  int write(dynamic buffer, [FileSystemReadWriteOptions? options]) =>
      js_util.callMethod(this, 'write', [buffer, options]);

  void truncate(int newSize) => js_util.callMethod(this, 'truncate', [newSize]);

  int getSize() => js_util.callMethod(this, 'getSize', []);

  void flush() => js_util.callMethod(this, 'flush', []);

  void close() => js_util.callMethod(this, 'close', []);
}
