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
  external FileSystemEntry();
}

extension PropsFileSystemEntry on FileSystemEntry {
  ///  A Boolean which is [true] if the entry represents a file. If
  /// it's not a file, this value is [false].
  ///
  bool get isFile => js_util.getProperty(this, 'isFile');

  ///  A boolean value which is [true] if the entry represents a
  /// directory; otherwise, it's [false].
  ///
  bool get isDirectory => js_util.getProperty(this, 'isDirectory');

  ///  A [String] containing the name of the entry (the final part of
  /// the path, after the last "/" character).
  ///
  String get name => js_util.getProperty(this, 'name');

  ///  A [String] object which provides the full, absolute path from
  /// the file system's root to the entry; it can also be thought of as
  /// a path which is relative to the root directory, prepended with a
  /// "/" character.
  ///
  String get fullPath => js_util.getProperty(this, 'fullPath');

  ///  A [FileSystem] object representing the file system in which the
  /// entry is located.
  ///
  FileSystem get filesystem => js_util.getProperty(this, 'filesystem');

  ///  Returns a [FileSystemDirectoryEntry] representing the entry's
  /// parent directory.
  ///
  /// FileSystemEntry.getParent(successCallback[, errorCallback]);
  ///
  ///
  ///  This example renames the file specified by the variable fileEntry to
  ///  "newname.html".
  ///
  /// fileEntry.getParent(function(parent) {
  ///  fileEntry.moveTo(parent, "newname.html", function(updatedEntry) {
  ///   console.log("File " + fileEntry.name + " renamed to newname.html.");
  ///  });
  /// }, function(error) {
  ///  console.error("An error occurred: Unable to rename " + fileEntry.name
  ///     + " to newname.html.");
  /// });
  ///  This is accomplished by first obtaining a FileSystemDirectoryEntry
  ///  object representing the directory the file is currently located in. Then
  ///  moveTo() is used to rename the file within that
  ///  directory.
  ///
  Object getParent(
          [

          ///
          ///     A function which is called when the parent directory entry
          /// has been retrieved. The
          ///     callback receives a single input parameter: a
          /// [FileSystemDirectoryEntry]
          ///     object representing the parent directory. The parent of the
          /// root directory is
          ///     considered to be the root directory, itself, so be sure to
          /// watch for that.
          ///
          ///
          FileSystemEntryCallback? successCallback,

          ///
          ///     An optional callback which is executed if an error occurs.
          /// There's a single
          ///    parameter: a [Exception] describing what went wrong.
          ///
          ///
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
@JS()
@staticInterop
class FileSystemDirectoryEntry implements FileSystemEntry {
  external FileSystemDirectoryEntry();
}

extension PropsFileSystemDirectoryEntry on FileSystemDirectoryEntry {
  ///  Creates a [FileSystemDirectoryReader] object which can be used
  /// to read the entries in this directory.
  ///
  /// directoryReader = FileSystemDirectoryEntry.createReader();
  ///
  ///
  ///  This example creates a method called readDirectory(), which fetches all of
  ///  the entries in the specified FileSystemDirectoryEntry and returns them in
  ///  an array.
  ///
  /// function readDirectory(directory) {
  ///  let dirReader = directory.createReader();
  ///  let entries = [];
  ///
  ///  let getEntries = function() {
  ///   dirReader.readEntries(function(results) {
  ///    if (results.length) {
  ///     entries = entries.concat(toArray(results));
  ///     getEntries();
  ///    }
  ///   }, function(error) {
  ///    /* handle error -- error is a FileError object */
  ///   });
  ///  };
  ///
  ///  getEntries();
  ///  return entries;
  /// }
  ///  This works by creating an internal function, getEntries(), which calls
  ///  itself recursively to get all the entries in the directory, concatenating each batch to
  ///  the array. Each iteration, readEntries() is called to get more entries. When it returns an empty array, the
  ///  end of the directory has been reached, and the recursion ends. Once control is returned
  ///  to readDirectory(), the array is returned to the caller.
  ///
  FileSystemDirectoryReader createReader() =>
      js_util.callMethod(this, 'createReader', []);

  ///  Returns a [FileSystemFileEntry] object representing a file
  /// located within the directory's hierarchy, given a path relative
  /// to the directory on which the method is called.
  ///
  /// FileSystemDirectoryEntry.getFile([path][, options][, successCallback][, errorCallback]);
  ///
  ///
  ///  In this example, a function is presented whose job it is to locate within a user's app
  ///  data directory a JSON file containing a user dictionary for a specified language, then
  ///  load that dictionary.
  ///
  /// let dictionary = null;
  ///
  /// function loadDictionaryForLanguage(appDataDirEntry, lang) {
  ///  dictionary = null;
  ///
  ///  appDataDirEntry.getDirectory("Dictionaries", {}, function(dirEntry) {
  ///   dirEntry.getFile(lang + "-dict.json", {}, function(fileEntry) {
  ///    fileEntry.file(function(dictFile) {
  ///     let reader = new FileReader();
  ///
  ///     reader.addEventListener("loadend", function() {
  ///      dictionary = JSON.parse(reader.result);
  ///     });
  ///
  ///     reader.readAsText(dictFile);
  ///    });
  ///   });
  ///  });
  /// }
  ///  The loadDictionaryForLanguage() function starts by using
  ///  getDirectory() to obtain the FileSystemDirectoryEntry object
  ///  representing a subfolder named "Dictionaries" located inside the specified app data
  ///  directory. The success callback for this takes the resulting directory entry object and
  ///  calls getFile() to get a
  ///  FileSystemFileEntry object representing the dictionary file; the success
  ///  callback for this, in turn, creates a new FileReader and uses it to load
  ///  the contents of the file. When that is loaded successfully (as indicated by the
  ///  loadend event being fired), the loaded text is passed into
  ///  JSON.parse() to be reconstituted into a JavaScript object.
  ///
  Object getFile(
          [

          ///
          ///     A [String] specifying the path, relative to the directory on
          /// which
          ///     the method is called, describing which file's entry to
          /// return.
          ///
          ///
          String? path,

          ///
          ///    An object which allows you
          ///     to specify whether or not to create the entry if it's missing
          /// and if it's an error if
          ///     the file already exists. These options are currently not
          /// useful in Web contexts.
          ///    See the options parameter section for more details.
          ///
          ///
          FileSystemFlags? options,

          ///
          ///     A method to be called once the [FileSystemFileEntry] has been
          /// created.
          ///     The method receives a single parameter: the
          /// [FileSystemFileEntry] object
          ///    representing the file in question.
          ///
          ///
          FileSystemEntryCallback? successCallback,

          ///
          ///     A method to be called if an error occurs. Receives as its
          /// sole input parameter a
          ///    [Exception] object describing the error which occurred.
          ///
          ///
          ErrorCallback? errorCallback]) =>
      js_util.callMethod(this, 'getFile', [
        path,
        options,
        successCallback == null ? null : allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback)
      ]);

  ///  Returns a [FileSystemDirectoryEntry] object representing a
  /// directory located at a given path, relative to the directory on
  /// which the method is called.
  ///
  /// FileSystemDirectoryEntry.getDirectory([path][, options][, successCallback][, errorCallback]);
  ///
  ///
  ///  In this example, a function is presented whose job it is to locate within a user's app
  ///  data directory a JSON file containing a user dictionary for a specified language, then
  ///  load that dictionary.
  ///
  /// let dictionary = null;
  ///
  /// function loadDictionaryForLanguage(appDataDirEntry, lang) {
  ///  dictionary = null;
  ///
  ///  appDataDirEntry.getDirectory("Dictionaries", {}, function(dirEntry) {
  ///   dirEntry.getFile(lang + "-dict.json", {}, function(fileEntry) {
  ///    fileEntry.file(function(dictFile) {
  ///     let reader = new FileReader();
  ///
  ///     reader.addEventListener("loadend", function() {
  ///      dictionary = JSON.parse(reader.result);
  ///     });
  ///
  ///     reader.readAsText(dictFile);
  ///    });
  ///   });
  ///  });
  /// }
  ///  The loadDictionaryForLanguage() function starts by using
  ///  getDirectory() to obtain the FileSystemDirectoryEntry object
  ///  representing a subfolder named "Dictionaries" located inside the specified app data
  ///  directory. The success callback for this takes the resulting directory entry object and
  ///  calls getFile() to get a
  ///  FileSystemFileEntry object representing the dictionary file; the success
  ///  callback for this, in turn, creates a new FileReader and uses it to load
  ///  the contents of the file. When that is loaded successfully (as indicated by the
  ///  loadend event being fired), the loaded text is passed into
  ///  JSON.parse() to be reconstituted into a JavaScript object.
  ///
  Object getDirectory(
          [

          ///
          ///     A [String] representing an absolute path or a path relative
          /// to the
          ///     directory on which the method is called, describing which
          /// directory entry to return.
          ///     Absolute paths may not be able to be used, for security
          /// reasons.
          ///
          ///
          String? path,

          ///
          ///    An object which allows you
          ///     to specify whether or not to create the entry if it's missing
          /// and if it's an error if
          ///     the file already exists. These options are currently not
          /// useful in Web contexts.
          ///    See the options parameter section for more details.
          ///
          ///
          FileSystemFlags? options,

          ///
          ///     A method to be called once the [FileSystemDirectoryEntry] has
          /// been
          ///    created. The method receives a single parameter: the
          ///     [FileSystemDirectoryEntry] object representing the directory
          /// in question.
          ///
          ///
          FileSystemEntryCallback? successCallback,

          ///
          ///     A method to be called if an error occurs. Receives as its
          /// sole input parameter a
          ///    [DomException] object describing the error which occurred.
          ///
          ///
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
      {bool create = false, bool? exclusive = false});
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
  external FileSystemDirectoryReader();
}

extension PropsFileSystemDirectoryReader on FileSystemDirectoryReader {
  ///  Returns an array containing some number of the directory's
  /// entries. Each item in the array is an object based on
  /// [FileSystemEntry]—typically either [FileSystemFileEntry] or
  /// [FileSystemDirectoryEntry].
  ///
  /// readEntries(successCallback);
  /// readEntries(successCallback, errorCallback);
  ///
  /// See DataTransferItem.webkitGetAsEntry() for example code that uses this method.
  Object readEntries(

          ///
          ///     A function which is called when the directory's contents have
          /// been retrieved. The
          ///     function receives a single input parameter: an array of file
          /// system entry objects,
          ///    each based on [FileSystemEntry]. Generally, they are either
          ///     [FileSystemFileEntry] objects, which represent standard
          /// files, or
          ///     [FileSystemDirectoryEntry] objects, which represent
          /// directories. If there
          ///     are no files left, or you've already called [readEntries()]
          /// on this
          ///    [FileSystemDirectoryReader], the array is empty.
          ///
          ///
          FileSystemEntriesCallback successCallback,
          [

          ///
          ///     A callback function which is called if an error occurs while
          /// reading from the
          ///     directory. It receives one input parameter: a [Exception]
          /// object
          ///    describing the error which occurred.
          ///
          ///
          ErrorCallback? errorCallback]) =>
      js_util.callMethod(this, 'readEntries', [
        allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback)
      ]);
}

///  The interface of the File System API represents a file in a file
/// system. It offers properties describing the file's attributes, as
/// well as the [file()] method, which creates a [File] object that
/// can be used to read the file.
@JS()
@staticInterop
class FileSystemFileEntry implements FileSystemEntry {
  external FileSystemFileEntry();
}

extension PropsFileSystemFileEntry on FileSystemFileEntry {
  /// Creates a new [File] object which can be used to read the file.
  ///
  /// FileSystemFileEntry.file(successCallback[, errorCallback]);
  ///
  ///
  ///  This example establishes a method, readFile(), reads a text file and calls
  ///  a specified callback function with the received text (in a String object)
  ///  once the read is completed. If an error occurs, a specified (optional) error callback is
  ///  called.
  ///
  /// function readFile(entry, successCallback, errorCallback) {
  ///  entry.file(function(file) {
  ///   let reader = new FileReader();
  ///
  ///   reader.onload = function() {
  ///    successCallback(reader.result);
  ///   };
  ///
  ///   reader.onerror = function() {
  ///    errorCallback(reader.error);
  ///   }
  ///
  ///   reader.readAsText(file);
  ///  }, errorCallback);
  /// }
  ///  This function calls file(), specifying as its success callback a method
  ///  which proceeds to use a FileReader to read the file as text. The
  ///  FileReader's load event handler is set up to deliver the loaded string to
  ///  the successCallback specified when the readFile() method was
  ///  called; similarly, its error handler is set up to call the
  ///  errorCallback specified.
  ///
  Object file(

          ///
          ///     A callback function which is called when the [File] has been
          /// created
          ///     successfully; the [File] is passed into the callback as the
          /// only parameter.
          ///
          ///
          FileCallback successCallback,
          [

          ///
          ///     If provided, this must be a method which is called when an
          /// error occurs while trying
          ///    to create the [File]. This callback receives as input a
          ///    [Exception] object describing the error.
          ///
          ///
          ErrorCallback? errorCallback]) =>
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
  external FileSystem();
}

extension PropsFileSystem on FileSystem {
  ///  A [String] representing the file system's name. This name is
  /// unique among the entire list of exposed file systems.
  ///
  String get name => js_util.getProperty(this, 'name');

  ///  A [FileSystemDirectoryEntry] object which represents the file
  /// system's root directory. Through this object, you can gain access
  /// to all files and directories in the file system.
  ///
  FileSystemDirectoryEntry get root => js_util.getProperty(this, 'root');
}
