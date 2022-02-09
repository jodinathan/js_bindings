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

@JS()
@staticInterop
class ClipboardEvent implements Event {
  external ClipboardEvent(String type, [ClipboardEventInit? eventInitDict]);
}

extension PropsClipboardEvent on ClipboardEvent {
  DataTransfer? get clipboardData => js_util.getProperty(this, 'clipboardData');
}

@JS()
@staticInterop
class Clipboard implements EventTarget {
  external Clipboard();
}

extension PropsClipboard on Clipboard {
  Future<Iterable<ClipboardItem>> read() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'read', []));

  Future<String> readText() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'readText', []));

  Future<Object> write(Iterable<ClipboardItem> data) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'write', [data]));

  Future<Object> writeText(String data) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'writeText', [data]));
}

@JS()
@staticInterop
class ClipboardItem {
  external ClipboardItem(dynamic items, [ClipboardItemOptions? options]);
}

extension PropsClipboardItem on ClipboardItem {
  static ClipboardItem createDelayed(dynamic items,
          [ClipboardItemOptions? options]) =>
      js_util.callMethod(ClipboardItem, 'createDelayed', [items, options]);

  PresentationStyle get presentationStyle => PresentationStyle.values
      .byName(js_util.getProperty(this, 'presentationStyle'));
  int get lastModified => js_util.getProperty(this, 'lastModified');
  bool get delayed => js_util.getProperty(this, 'delayed');
  Iterable<String> get types => js_util.getProperty(this, 'types');
  Future<Blob> getType(String type) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getType', [type]));
}

enum PresentationStyle { unspecified, inline, attachment }

@anonymous
@JS()
@staticInterop
class ClipboardItemOptions {
  external factory ClipboardItemOptions._({String? presentationStyle});

  factory ClipboardItemOptions(
          {PresentationStyle? presentationStyle =
              PresentationStyle.unspecified}) =>
      ClipboardItemOptions._(presentationStyle: presentationStyle?.name);
}

extension PropsClipboardItemOptions on ClipboardItemOptions {
  PresentationStyle get presentationStyle => PresentationStyle.values
      .byName(js_util.getProperty(this, 'presentationStyle'));
  set presentationStyle(PresentationStyle newValue) {
    js_util.setProperty(this, 'presentationStyle', newValue.name);
  }
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
