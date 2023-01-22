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

enum FileSystemPermissionMode {
  read('read'),
  readwrite('readwrite');

  final String value;
  static FileSystemPermissionMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const FileSystemPermissionMode(this.value);
}

@anonymous
@JS()
@staticInterop
class FileSystemPermissionDescriptor implements PermissionDescriptor {
  external factory FileSystemPermissionDescriptor._(
      {required FileSystemHandle handle, String? mode});

  factory FileSystemPermissionDescriptor(
          {required FileSystemHandle handle,
          FileSystemPermissionMode? mode = FileSystemPermissionMode.read}) =>
      FileSystemPermissionDescriptor._(handle: handle, mode: mode?.value);
}

extension PropsFileSystemPermissionDescriptor
    on FileSystemPermissionDescriptor {
  FileSystemHandle get handle => js_util.getProperty(this, 'handle');
  set handle(FileSystemHandle newValue) {
    js_util.setProperty(this, 'handle', newValue);
  }

  FileSystemPermissionMode get mode =>
      FileSystemPermissionMode.fromValue(js_util.getProperty(this, 'mode'));
  set mode(FileSystemPermissionMode newValue) {
    js_util.setProperty(this, 'mode', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class FileSystemHandlePermissionDescriptor {
  external factory FileSystemHandlePermissionDescriptor._({String? mode});

  factory FileSystemHandlePermissionDescriptor(
          {FileSystemPermissionMode? mode = FileSystemPermissionMode.read}) =>
      FileSystemHandlePermissionDescriptor._(mode: mode?.value);
}

extension PropsFileSystemHandlePermissionDescriptor
    on FileSystemHandlePermissionDescriptor {
  FileSystemPermissionMode get mode =>
      FileSystemPermissionMode.fromValue(js_util.getProperty(this, 'mode'));
  set mode(FileSystemPermissionMode newValue) {
    js_util.setProperty(this, 'mode', newValue.value);
  }
}

enum WellKnownDirectory {
  desktop('desktop'),
  documents('documents'),
  downloads('downloads'),
  music('music'),
  pictures('pictures'),
  videos('videos');

  final String value;
  static WellKnownDirectory fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const WellKnownDirectory(this.value);
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
  external factory DirectoryPickerOptions._(
      {required String id, dynamic startIn, String? mode});

  factory DirectoryPickerOptions(
          {required String id,
          dynamic startIn,
          FileSystemPermissionMode? mode = FileSystemPermissionMode.read}) =>
      DirectoryPickerOptions._(id: id, startIn: startIn, mode: mode?.value);
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

  FileSystemPermissionMode get mode =>
      FileSystemPermissionMode.fromValue(js_util.getProperty(this, 'mode'));
  set mode(FileSystemPermissionMode newValue) {
    js_util.setProperty(this, 'mode', newValue.value);
  }
}
