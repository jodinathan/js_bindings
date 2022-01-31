/// Content Index
///
/// https://wicg.github.io/content-index/spec/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library content_index;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum ContentCategory { empty, homepage, article, video, audio }

@anonymous
@JS()
@staticInterop
class ContentDescription {
  external factory ContentDescription(
      {String id,
      String title,
      String description,
      ContentCategory category,
      Iterable<ImageResource> icons = const [],
      String? url});
}

extension PropsContentDescription on ContentDescription {
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  String get title => js_util.getProperty(this, 'title');
  set title(String newValue) {
    js_util.setProperty(this, 'title', newValue);
  }

  String get description => js_util.getProperty(this, 'description');
  set description(String newValue) {
    js_util.setProperty(this, 'description', newValue);
  }

  ContentCategory get category => js_util.getProperty(this, 'category');
  set category(ContentCategory newValue) {
    js_util.setProperty(this, 'category', newValue);
  }

  Iterable<ImageResource> get icons => js_util.getProperty(this, 'icons');
  set icons(Iterable<ImageResource> newValue) {
    js_util.setProperty(this, 'icons', newValue);
  }

  String get url => js_util.getProperty(this, 'url');
  set url(String newValue) {
    js_util.setProperty(this, 'url', newValue);
  }
}

///  The interface of the [Content Index API] allows developers to
/// register their offline enabled content with the browser.
@JS()
@staticInterop
class ContentIndex {
  external ContentIndex();
}

extension PropsContentIndex on ContentIndex {
  /// Registers an item with the [content index].
  ///
  /// ContentIndex.add(ContentDescription).then(...);
  ///
  Future<Object> add(ContentDescription description) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'add', [description]));

  /// Unregisters an item from the currently indexed content.
  ///
  /// ContentIndex.delete(id).then(...);
  ///
  Future<Object> delete(String id) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'delete', [id]));

  ///  Returns a [Future] that resolves with an iterable list of
  /// content index entries.
  ///
  /// var indexedContent = ContentIndex.getAll();
  ///
  Future<Iterable<ContentDescription>> getAll() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getAll', []));
}

@anonymous
@JS()
@staticInterop
class ContentIndexEventInit implements ExtendableEventInit {
  external factory ContentIndexEventInit({String id});
}

extension PropsContentIndexEventInit on ContentIndexEventInit {
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }
}

///  The interface of the [Content Index API] defines the object used
/// to represent the [contentdelete] event.
///  This event is sent to the [global scope] of a [ServiceWorker].
/// It contains the id of the indexed content to be removed.
///  The [contentdelete] event is only fired when the deletion
/// happens due to interaction with the browser's built-in user
/// interface. It is not fired when the [ContentIndex.delete] method
/// is called.
@JS()
@staticInterop
class ContentIndexEvent implements ExtendableEvent {
  external ContentIndexEvent(String type, ContentIndexEventInit init);
}

extension PropsContentIndexEvent on ContentIndexEvent {
  /// A [String] which identifies the deleted content index via it's .
  ///
  String get id => js_util.getProperty(this, 'id');
}
