/// File System Access
///
/// https://wicg.github.io/file-system-access/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library file_system_access;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum FileSystemPermissionMode { read, readwrite }

@anonymous
@JS()
@staticInterop
class FileSystemPermissionDescriptor implements PermissionDescriptor {
  external factory FileSystemPermissionDescriptor._(
      {required FileSystemHandle handle, String? mode});

  factory FileSystemPermissionDescriptor(
          {required FileSystemHandle handle,
          FileSystemPermissionMode? mode = FileSystemPermissionMode.read}) =>
      FileSystemPermissionDescriptor._(handle: handle, mode: mode?.name);
}

extension PropsFileSystemPermissionDescriptor
    on FileSystemPermissionDescriptor {
  FileSystemHandle get handle => js_util.getProperty(this, 'handle');
  set handle(FileSystemHandle newValue) {
    js_util.setProperty(this, 'handle', newValue);
  }

  FileSystemPermissionMode get mode =>
      FileSystemPermissionMode.values.byName(js_util.getProperty(this, 'mode'));
  set mode(FileSystemPermissionMode newValue) {
    js_util.setProperty(this, 'mode', newValue.name);
  }
}

@anonymous
@JS()
@staticInterop
class FileSystemHandlePermissionDescriptor {
  external factory FileSystemHandlePermissionDescriptor._({String? mode});

  factory FileSystemHandlePermissionDescriptor(
          {FileSystemPermissionMode? mode = FileSystemPermissionMode.read}) =>
      FileSystemHandlePermissionDescriptor._(mode: mode?.name);
}

extension PropsFileSystemHandlePermissionDescriptor
    on FileSystemHandlePermissionDescriptor {
  FileSystemPermissionMode get mode =>
      FileSystemPermissionMode.values.byName(js_util.getProperty(this, 'mode'));
  set mode(FileSystemPermissionMode newValue) {
    js_util.setProperty(this, 'mode', newValue.name);
  }
}

enum FileSystemHandleKind { file, directory }

@JS()
@staticInterop
class FileSystemHandle {
  external FileSystemHandle();
}

extension PropsFileSystemHandle on FileSystemHandle {
  FileSystemHandleKind get kind =>
      FileSystemHandleKind.values.byName(js_util.getProperty(this, 'kind'));
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

@JS()
@staticInterop
class FileSystemFileHandle implements FileSystemHandle {
  external FileSystemFileHandle();
}

extension PropsFileSystemFileHandle on FileSystemFileHandle {
  Future<File> getFile() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getFile', []));

  Future<FileSystemWritableFileStream> createWritable(
          [FileSystemCreateWritableOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'createWritable', [options]));
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

@JS()
@staticInterop
class FileSystemDirectoryHandle implements FileSystemHandle {
  external FileSystemDirectoryHandle();
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

  Future<Object> removeEntry(String name, [FileSystemRemoveOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'removeEntry', [name, options]));

  Future<Iterable<String>> resolve(FileSystemHandle possibleDescendant) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'resolve', [possibleDescendant]));
}

enum WriteCommandType { write, seek, truncate }

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
          type: type.name, size: size, position: position, data: data);
}

extension PropsWriteParams on WriteParams {
  WriteCommandType get type =>
      WriteCommandType.values.byName(js_util.getProperty(this, 'type'));
  set type(WriteCommandType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
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

@JS()
@staticInterop
class FileSystemWritableFileStream implements WritableStream {
  external FileSystemWritableFileStream();
}

extension PropsFileSystemWritableFileStream on FileSystemWritableFileStream {
  Future<Object> write(dynamic data) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'write', [data]));

  Future<Object> seek(int position) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'seek', [position]));

  Future<Object> truncate(int size) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'truncate', [size]));
}

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
@staticInterop
class FilePickerAcceptType {
  external factory FilePickerAcceptType(
      {required String description, dynamic accept});
}

extension PropsFilePickerAcceptType on FilePickerAcceptType {
  String get description => js_util.getProperty(this, 'description');
  set description(String newValue) {
    js_util.setProperty(this, 'description', newValue);
  }

  dynamic get accept => js_util.getProperty(this, 'accept');
  set accept(dynamic newValue) {
    js_util.setProperty(this, 'accept', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class FilePickerOptions {
  external factory FilePickerOptions(
      {required Iterable<FilePickerAcceptType> types,
      bool? excludeAcceptAllOption = false,
      String? id,
      dynamic startIn});
}

extension PropsFilePickerOptions on FilePickerOptions {
  Iterable<FilePickerAcceptType> get types =>
      js_util.getProperty(this, 'types');
  set types(Iterable<FilePickerAcceptType> newValue) {
    js_util.setProperty(this, 'types', newValue);
  }

  bool get excludeAcceptAllOption =>
      js_util.getProperty(this, 'excludeAcceptAllOption');
  set excludeAcceptAllOption(bool newValue) {
    js_util.setProperty(this, 'excludeAcceptAllOption', newValue);
  }

  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  dynamic get startIn => js_util.getProperty(this, 'startIn');
  set startIn(dynamic newValue) {
    js_util.setProperty(this, 'startIn', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class OpenFilePickerOptions implements FilePickerOptions {
  external factory OpenFilePickerOptions({bool? multiple = false});
}

extension PropsOpenFilePickerOptions on OpenFilePickerOptions {
  bool get multiple => js_util.getProperty(this, 'multiple');
  set multiple(bool newValue) {
    js_util.setProperty(this, 'multiple', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class SaveFilePickerOptions implements FilePickerOptions {
  external factory SaveFilePickerOptions({String? suggestedName});
}

extension PropsSaveFilePickerOptions on SaveFilePickerOptions {
  String? get suggestedName => js_util.getProperty(this, 'suggestedName');
  set suggestedName(String? newValue) {
    js_util.setProperty(this, 'suggestedName', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class DirectoryPickerOptions {
  external factory DirectoryPickerOptions(
      {required String id, dynamic startIn});
}

extension PropsDirectoryPickerOptions on DirectoryPickerOptions {
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  dynamic get startIn => js_util.getProperty(this, 'startIn');
  set startIn(dynamic newValue) {
    js_util.setProperty(this, 'startIn', newValue);
  }
}
