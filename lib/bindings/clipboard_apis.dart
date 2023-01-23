/// Clipboard API and events
///
/// https://w3c.github.io/clipboard-apis/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library clipboard_apis;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class ClipboardEventInit implements EventInit {
  external factory ClipboardEventInit({DataTransfer? clipboardData});
}

extension PropsClipboardEventInit on ClipboardEventInit {
  DataTransfer? get clipboardData => js_util.getProperty(this, 'clipboardData');
  set clipboardData(DataTransfer? newValue) {
    js_util.setProperty(this, 'clipboardData', newValue);
  }
}

///  The interface represents events providing information related to
/// modification of the clipboard, that is [cut], [copy], and [paste]
/// events.
///
///
///
///    Event
///
///
///
///
///
///
///
///    ClipboardEvent
///
///
@JS()
@staticInterop
class ClipboardEvent implements Event {
  external factory ClipboardEvent(String type,
      [ClipboardEventInit? eventInitDict]);
}

extension PropsClipboardEvent on ClipboardEvent {
  DataTransfer? get clipboardData => js_util.getProperty(this, 'clipboardData');
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
  PresentationStyle get presentationStyle => PresentationStyle.fromValue(
      js_util.getProperty(this, 'presentationStyle'));
  Iterable<String> get types => js_util.getProperty(this, 'types');
  Future<Blob> getType(String type) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getType', [type]));
}

enum PresentationStyle {
  unspecified('unspecified'),
  inline('inline'),
  attachment('attachment');

  final String value;
  static PresentationStyle fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<PresentationStyle> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const PresentationStyle(this.value);
}

@anonymous
@JS()
@staticInterop
class ClipboardItemOptions {
  external factory ClipboardItemOptions._({String? presentationStyle});

  factory ClipboardItemOptions(
          {PresentationStyle? presentationStyle =
              PresentationStyle.unspecified}) =>
      ClipboardItemOptions._(presentationStyle: presentationStyle?.value);
}

extension PropsClipboardItemOptions on ClipboardItemOptions {
  PresentationStyle get presentationStyle => PresentationStyle.fromValue(
      js_util.getProperty(this, 'presentationStyle'));
  set presentationStyle(PresentationStyle newValue) {
    js_util.setProperty(this, 'presentationStyle', newValue.value);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface implements the Clipboard API, providing—if the
/// user grants permission—both read and write access to the contents
/// of the system clipboard. The Clipboard API can be used to
/// implement cut, copy, and paste features within a web application.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    Clipboard
///
///
///  The system clipboard is exposed through the global
/// [Navigator.clipboard] property.
///  Calls to the methods of the object will not succeed if the user
/// hasn't granted the needed permissions using the Permissions API
/// and the ['clipboard-read'] or ['clipboard-write'] permission as
/// appropriate.
///
///   Note: In reality, at this time browser requirements for access
/// to the clipboard vary significantly. Please see the section
/// Clipboard availability for details.
///
///  All of the Clipboard API methods operate asynchronously; they
/// return a [Future] which is resolved once the clipboard access has
/// been completed. The promise is rejected if clipboard access is
/// denied.
@JS()
@staticInterop
class Clipboard implements EventTarget {
  external factory Clipboard();
}

extension PropsClipboard on Clipboard {
  Future<Iterable<ClipboardItem>> read() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'read', []));

  Future<String> readText() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'readText', []));

  Future<void> write(Iterable<ClipboardItem> data) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'write', [data]));

  Future<void> writeText(String data) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'writeText', [data]));
}

@anonymous
@JS()
@staticInterop
class ClipboardPermissionDescriptor implements PermissionDescriptor {
  external factory ClipboardPermissionDescriptor(
      {bool? allowWithoutGesture = false});
}

extension PropsClipboardPermissionDescriptor on ClipboardPermissionDescriptor {
  bool get allowWithoutGesture =>
      js_util.getProperty(this, 'allowWithoutGesture');
  set allowWithoutGesture(bool newValue) {
    js_util.setProperty(this, 'allowWithoutGesture', newValue);
  }
}
