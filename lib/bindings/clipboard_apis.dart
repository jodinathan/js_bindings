/// Clipboard API and events
///
/// https://w3c.github.io/clipboard-apis/
@JS('window')
@staticInterop
library clipboard_apis;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html
file_a_p_i
permissions */

@anonymous
@JS()
@staticInterop
class ClipboardEventInit implements EventInit {
  external factory ClipboardEventInit({DataTransfer? clipboardData});
}

extension PropsClipboardEventInit on ClipboardEventInit {
  external DataTransfer? get clipboardData;
  external set clipboardData(DataTransfer? newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface represents events providing information related to
/// modification of the clipboard, that is [cut], [copy], and [paste]
/// events.
@experimental
@JS()
@staticInterop
class ClipboardEvent implements Event {
  external factory ClipboardEvent(String type,
      [ClipboardEventInit? eventInitDict]);
}

extension PropsClipboardEvent on ClipboardEvent {
  ///  Is a [DataTransfer] object containing the data affected by the
  /// user-initiated [cut], [copy], or [paste] operation, along with
  /// its MIME type.
  ///
  external DataTransfer? get clipboardData;
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface implements the Clipboard API, providing—if the
/// user grants permission—both read and write access to the contents
/// of the system clipboard. The Clipboard API can be used to
/// implement cut, copy, and paste features within a web application.
///  The system clipboard is exposed through the global
/// [Navigator.clipboard] property.
///  Calls to the methods of the object will not succeed if the user
/// hasn't granted the needed permissions using the Permissions API
/// and the ["clipboard-read"] or ["clipboard-write"] permission as
/// appropriate.
///
///   Note: In reality, at this time browser requirements for access
/// to the clipboard vary significantly. Please see the section
/// Clipboard availability for details.
///
///  All of the Clipboard API methods operate asynchronously; they
/// return a [Promise] which is resolved once the clipboard access
/// has been completed. The promise is rejected if clipboard access
/// is denied.
///
///
///    Note: The clipboard is a data buffer that is used for
/// short-term, data storage and/or data transfers, this can be
/// between documents or applications
///    It is usually implemented as an anonymous, temporary data
/// buffer, sometimes called the paste buffer, that can be accessed
/// from most or all programs within the environment via defined
/// programming interfaces.
///
///   A typical application accesses clipboard functionality by
/// mapping user input such as keybindings, menu selections, etc. to
/// these interfaces.
///
@JS()
@staticInterop
class Clipboard implements EventTarget {
  external factory Clipboard();
}

extension PropsClipboard on Clipboard {
  ///  Requests arbitrary data (such as images) from the clipboard,
  /// returning a [Promise]. When the data has been retrieved, the
  /// promise is resolved with a [DataTransfer] object that provides
  /// the data.
  ///
  /// var promise = navigator.clipboard.read();
  ///
  ///
  ///  After using navigator.permissions.query() to find
  ///  out if we have (or if the user will be prompted to allow) "clipboard-read"
  ///  access, this example fetches the data currently on the clipboard. If it's not a png
  ///  image, an error message is presented. Otherwise, an image element referred to using the
  ///  variable imgElem has its source replaced with the clipboard's contents.
  ///
  /// // First, ask the Permissions API if we have some kind of access to
  /// // the "clipboard-read" feature.
  ///
  /// navigator.permissions.query({ name: "clipboard-read" }).then((result) => {
  ///   // If permission to read the clipboard is granted or if the user will
  ///   // be prompted to allow it, we proceed.
  ///
  ///   if (result.state == "granted" || result.state == "prompt") {
  ///    navigator.clipboard.read().then((data) => {
  ///     for (let i = 0; i < data.length; i++) {
  ///      if (!data[i].types.includes("image/png")) {
  ///       alert("Clipboard contains non-image data. Unable to access it.");
  ///      } else {
  ///       data[i].getType("image/png").then((blob) => {
  ///        imgElem.src = URL.createObjectURL(blob);
  ///       });
  ///      }
  ///     }
  ///    });
  ///   }
  ///  });
  ///
  ///   Note: At this time, while Firefox does implement
  ///   read(), it does not recognize the "clipboard-read"
  ///   permission, so attempting to use the Permissions API to manage access to
  ///   the API will not work.
  ///
  ///
  external Promise<Iterable<ClipboardItem>> read();

  ///  Requests text from the system clipboard; returns a [Promise]
  /// which is resolved with a [DOMString] containing the clipboard's
  /// text once it's available.
  ///
  /// var promise = navigator.clipboard.readText()
  ///
  ///
  ///  This example retrieves the textual contents of the clipboard and inserts the returned
  ///  text into an element's contents.
  ///
  /// navigator.clipboard.readText().then(
  ///  clipText => document.getElementById("outbox").innerText = clipText);
  ///
  external Promise<String> readText();

  ///  Writes arbitrary data to the system clipboard. This asynchronous
  /// operation signals that it's finished by resolving the returned
  /// [Promise].
  ///
  /// var promise = navigator.clipboard.write(data)
  ///
  ///
  ///  This example function replaces the current contents of the clipboard with a specified
  ///  string.
  ///
  /// function setClipboard(text) {
  ///   var type = "text/plain";
  ///   var blob = new Blob([text], { type });
  ///   var data = [new ClipboardItem({ [type]: blob })];
  ///
  ///   navigator.clipboard.write(data).then(
  ///     function () {
  ///     /* success */
  ///     },
  ///     function () {
  ///     /* failure */
  ///     }
  ///   );
  /// }
  ///  The code begins by creating a new a Blob object. This object is
  ///  required to construct a ClipboardItem object which is sent to the
  ///  clipboard. The Blob constructor takes in the content we want to copy
  ///  and its type. This Blob object can be derived from many sources e.g. a Canvas.
  ///  Next, we create a new ClipboardItem object into which the blob will be placed for sending to the clipboard.
  ///  The key of the object passed to the ClipboardItem constructor indicates the content type, the value indicates the content. Then write() is called, specifying both a fulfillment function
  ///  and an error function.
  ///
  external Promise<Object> write(Iterable<ClipboardItem> data);

  ///  Writes text to the system clipboard, returning a [Promise] which
  /// is resolved once the text is fully copied into the clipboard.
  ///
  /// var promise = navigator.clipboard.writeText(newClipText)
  ///
  /// This example sets the clipboard's contents to the string "<empty clipboard>".
  /// navigator.clipboard.writeText("<empty clipboard>").then(function() {
  ///  /* clipboard successfully set */
  /// }, function() {
  ///  /* clipboard write failed */
  /// });
  ///
  external Promise<Object> writeText(String data);
}

///  The interface of the [Clipboard API] represents a single item
/// format, used when reading or writing data via the [Clipboard
/// API]. That is [clipboard.read()] and [clipboard.write()]
/// respectively.
///  The benefit of having the interface to represent data, is that
/// it enables developers to cope with the varying scope of file
/// types and data easily.
///  Access to the contents of the clipboard is gated behind the
/// Permissions API: The [clipboard-write] permission is granted
/// automatically to pages when they are in the active tab. The
/// [clipboard-read] permission must be requested, which you can do
/// by trying to read data from the clipboard.
///
///   Note: To work with text see the [Clipboard.readText()] and
/// [Clipboard.writeText()] methods of the [Clipboard] interface.
///  Note: You can only pass in one clipboard item at a time.
///
@JS()
@staticInterop
class ClipboardItem {
  external factory ClipboardItem(dynamic items,
      [ClipboardItemOptions? options]);
}

extension PropsClipboardItem on ClipboardItem {
  external static ClipboardItem createDelayed(dynamic items,
      [ClipboardItemOptions? options]);

  ///  Returns one of the following: ["unspecified"], ["inline"] or
  /// ["attachment"].
  ///
  external PresentationStyle get presentationStyle;
  external int get lastModified;
  external bool get delayed;

  ///  Returns an [Array] of MIME types available within the
  /// [ClipboardItem].
  ///
  external Iterable<String> get types;

  ///  Returns a [Promise] that resolves with a [Blob] of the requested
  /// MIME type, or an error if the MIME type is not found.
  ///
  /// var blob = clipboardItem.getType(type);
  ///
  external Promise<Blob> getType(String type);
}

enum PresentationStyle { unspecified, inline, attachment }

@anonymous
@JS()
@staticInterop
class ClipboardItemOptions {
  external factory ClipboardItemOptions(
      {PresentationStyle presentationStyle = PresentationStyle.unspecified});
}

extension PropsClipboardItemOptions on ClipboardItemOptions {
  external PresentationStyle get presentationStyle;
  external set presentationStyle(PresentationStyle newValue);
}

@anonymous
@JS()
@staticInterop
class ClipboardPermissionDescriptor implements PermissionDescriptor {
  external factory ClipboardPermissionDescriptor(
      {bool allowWithoutGesture = false});
}

extension PropsClipboardPermissionDescriptor on ClipboardPermissionDescriptor {
  external bool get allowWithoutGesture;
  external set allowWithoutGesture(bool newValue);
}
