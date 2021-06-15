/// File and Directory Entries API
///
/// https://wicg.github.io/entries-api/
@JS('window')
library entries_api;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'file_a_p_i.dart';
import 'html.dart';

///
///     Non-standard
///      This feature is non-standard and is not on a standards
/// track. Do not use it on production sites facing the Web: it will
/// not work for every user. There may also be large
/// incompatibilities between implementations and the behavior may
/// change in the future.
///
///
///  The interface of the File and Directory Entries API represents a
/// single entry in a file system. The entry can be a file or a
/// directory (directories are represented by the
/// [FileSystemDirectoryEntry] interface). It includes methods for
/// working with files—including copying, moving, removing, and
/// reading files—as well as information about a file it points
/// to—including the file name and its path from the root to the
/// entry.
///  Because this is a non-standard API, whose specification is not
/// currently on a standards track, it's important to keep in mind
/// that not all browsers implement it, and those that do may
/// implement only small portions of it. Check the Browser
/// compatibility section for details.
///
@JS()
class FileSystemEntry {
  ///  A Boolean which is [true] if the entry represents a file. If
  /// it's not a file, this value is [false].
  external bool get isFile;

  ///  A [Boolean] which is [true] if the entry represents a directory;
  /// otherwise, it's [false].
  external bool get isDirectory;

  ///  A [USVString] containing the name of the entry (the final part
  /// of the path, after the last "/" character).
  external String get name;

  ///  A [USVString] object which provides the full, absolute path from
  /// the file system's root to the entry; it can also be thought of as
  /// a path which is relative to the root directory, prepended with a
  /// "/" character.
  external String get fullPath;

  ///  A [FileSystem] object representing the file system in which the
  /// entry is located.
  external FileSystem get filesystem;

  ///  Returns a [FileSystemDirectoryEntry] representing the entry's
  /// parent directory.
  /// FileSystemEntry.getParent(successCallback[, errorCallback]);
  /// This example renames the file specified by the variable fileEntry to
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
  ///
  /// This is accomplished by first obtaining a FileSystemDirectoryEntry
  ///  object representing the directory the file is currently located in. Then
  ///  moveTo() is used to rename the file within that
  ///  directory.
  external Object getParent(
      [FileSystemEntryCallback? successCallback, ErrorCallback? errorCallback]);

  external factory FileSystemEntry();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the File and Directory Entries API represents a
/// directory in a file system. It provides methods which make it
/// possible to access and manipulate the files in a directory, as
/// well as to access the entries within the directory.
@JS()
class FileSystemDirectoryEntry // null -> {} -> FileSystemEntry
    with
        FileSystemEntry {
  ///  Creates a [FileSystemDirectoryReader] object which can be used
  /// to read the entries in this directory.
  /// directoryReader = FileSystemDirectoryEntry.createReader();
  /// This example creates a method called readDirectory(), which fetches all of
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
  ///
  /// This works by creating an internal function, getEntries(), which calls
  ///  itself recursively to get all the entries in the directory, concatenating each batch to
  ///  the array. Each iteration, readEntries() is called to get more entries. When it returns an empty array, the
  ///  end of the directory has been reached, and the recursion ends. Once control is returned
  ///  to readDirectory(), the array is returned to the caller.
  external FileSystemDirectoryReader createReader();

  ///  Returns a [FileSystemFileEntry] object representing a file
  /// located within the directory's hierarchy, given a path relative
  /// to the directory on which the method is called.
  /// FileSystemDirectoryEntry.getFile([path][, options][, successCallback][, errorCallback]);
  /// In this example, a function is presented whose job it is to locate within a user's app
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
  /// The loadDictionaryForLanguage() function starts by using
  ///  getDirectory() to obtain the FileSystemDirectoryEntry object
  ///  representing a subfolder named "Dictionaries" located inside the specified app data
  ///  directory. The success callback for this takes the resulting directory entry object and
  ///  calls getFile() to get a
  ///  FileSystemFileEntry object representing the dictionary file; the success
  ///  callback for this, in turn, creates a new FileReader and uses it to load
  ///  the contents of the file. When that is loaded successfully (as indicated by the
  ///  loadend event being fired), the loaded text is passed into
  ///  JSON.parse() to be reconstituted into a JavaScript object.
  external Object getFile(
      [String? path,
      FileSystemFlags? options,
      FileSystemEntryCallback? successCallback,
      ErrorCallback? errorCallback]);

  ///  Returns a [FileSystemDirectoryEntry] object representing a
  /// directory located at a given path, relative to the directory on
  /// which the method is called.
  /// FileSystemDirectoryEntry.getDirectory([path][, options][, successCallback][, errorCallback]);
  /// In this example, a function is presented whose job it is to locate within a user's app
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
  /// The loadDictionaryForLanguage() function starts by using
  ///  getDirectory() to obtain the FileSystemDirectoryEntry object
  ///  representing a subfolder named "Dictionaries" located inside the specified app data
  ///  directory. The success callback for this takes the resulting directory entry object and
  ///  calls getFile() to get a
  ///  FileSystemFileEntry object representing the dictionary file; the success
  ///  callback for this, in turn, creates a new FileReader and uses it to load
  ///  the contents of the file. When that is loaded successfully (as indicated by the
  ///  loadend event being fired), the loaded text is passed into
  ///  JSON.parse() to be reconstituted into a JavaScript object.
  external Object getDirectory(
      [String? path,
      FileSystemFlags? options,
      FileSystemEntryCallback? successCallback,
      ErrorCallback? errorCallback]);

  external factory FileSystemDirectoryEntry();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The dictionary defines a set of values which are used when
/// specifying option flags when calling certain methods in the File
/// and Directory Entries API. Methods which accept an options
/// parameter of this type may specify zero or more of these flags as
/// fields in an object, like this:
///
///  [dataDirectoryEntry.getDirectory("Workspace", { create: true },
/// function(entry) {
/// });]
///
///  Here, we see that the [create] property is provided, with a
/// value of [true], indicating that the directory should be created
/// if it's not already there.
///  Note that these option flags currently don't have any useful
/// meaning when used in the scope of Web content, where security
/// precautions prevent the creation of new files or the replacement
/// of existing ones.
///
@experimental
@anonymous
@JS()
class FileSystemFlags {
  ///  If this property is [true], and the requested file or directory
  /// doesn't exist, the user agent should create it. The default is
  /// [false]. The parent directory must already exist.
  external bool get create;
  external set create(bool newValue);

  ///  If [true], and the [create] option is also [true], the file must
  /// not exist prior to issuing the call. Instead, it must be possible
  /// for it to be created newly at call time. The default is [false].
  external bool get exclusive;
  external set exclusive(bool newValue);

  external factory FileSystemFlags(
      {bool create = false, bool exclusive = false});
}

///
///       Deprecated
///        This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///     Non-standard
///      This feature is non-standard and is not on a standards
/// track. Do not use it on production sites facing the Web: it will
/// not work for every user. There may also be large
/// incompatibilities between implementations and the behavior may
/// change in the future.
///
///
///  The interface of the File and Directory Entries API lets you
/// access the [FileEntry]-based objects (generally
/// [FileSystemFileEntry] or [FileSystemDirectoryEntry]) representing
/// each entry in a directory.
///  Because this is a non-standard API, whose specification is not
/// currently on a standards track, it's important to keep in mind
/// that not all browsers implement it, and those that do may
/// implement only small portions of it. Check the Browser
/// compatibility section for details.
///
@deprecated
@JS()
class FileSystemDirectoryReader {
  ///  Returns an array containing some number of the directory's
  /// entries. Each item in the array is an object based on
  /// [FileSystemEntry]—typically either [FileSystemFileEntry] or
  /// [FileSystemDirectoryEntry].
  /// readEntries(successCallback[, errorCallback]);
  ///
  /// In this example, a drop zone is created, which responds to the drop event
  ///  by scanning through the dropped files and directories, outputting a hierarchical
  ///  directory listing.
  @deprecated
  external Object readEntries(FileSystemEntriesCallback successCallback,
      [ErrorCallback? errorCallback]);

  external factory FileSystemDirectoryReader();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the File System API represents a file in a file
/// system. It offers properties describing the file's attributes, as
/// well as the [file()] method, which creates a [File] object that
/// can be used to read the file.
@JS()
class FileSystemFileEntry // null -> {} -> FileSystemEntry
    with
        FileSystemEntry {
  /// Creates a new [File] object which can be used to read the file.
  /// FileSystemFileEntry.file(successCallback[, errorCallback]);
  /// This example establishes a method, readFile(), reads a text file and calls
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
  /// This function calls file(), specifying as its success callback a method
  ///  which proceeds to use a FileReader to read the file as text. The
  ///  FileReader's load event handler is set up to deliver the loaded string to
  ///  the successCallback specified when the readFile() method was
  ///  called; similarly, its error handler is set up to call the
  ///  errorCallback specified.
  external Object file(FileCallback successCallback,
      [ErrorCallback? errorCallback]);

  external factory FileSystemFileEntry();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The File and Directory Entries API interface is used to
/// represent a file system. These objects can be obtained from the
/// [filesystem] property on any file system entry. Some browsers
/// offer additional APIs to create and manage file systems, such as
/// Chrome's [requestFileSystem()] method.
///
///  This interface will not grant you access to the users
/// filesystem. Instead you will have a "virtual drive" within the
/// browser sandbox. If you want to gain access to the users
/// filesystem you need to invoke the user by eg. installing a Chrome
/// extension. The relevant Chrome API can be found here.
@JS()
class FileSystem {
  ///  A [USVString] representing the file system's name. This name is
  /// unique among the entire list of exposed file systems.
  external String get name;

  ///  A [FileSystemDirectoryEntry] object which represents the file
  /// system's root directory. Through this object, you can gain access
  /// to all files and directories in the file system.
  external FileSystemDirectoryEntry get root;

  external factory FileSystem();
}
