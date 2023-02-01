/// Content Index
///
/// https://wicg.github.io/content-index/spec/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library content_index;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum ContentCategory {
  empty(''),
  homepage('homepage'),
  article('article'),
  video('video'),
  audio('audio');

  final String value;
  static ContentCategory fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ContentCategory> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ContentCategory(this.value);
}

@anonymous
@JS()
@staticInterop
class ContentDescription {
  external factory ContentDescription._(
      {required String id,
      required String title,
      required String description,
      String? category,
      Iterable<ImageResource>? icons = const [],
      String? url});

  factory ContentDescription(
          {required String id,
          required String title,
          required String description,
          ContentCategory? category,
          Iterable<ImageResource>? icons = const [],
          String? url}) =>
      ContentDescription._(
          id: id,
          title: title,
          description: description,
          category: category?.value ?? undefined,
          icons: icons ?? undefined,
          url: url ?? undefined);
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

  ContentCategory get category =>
      ContentCategory.fromValue(js_util.getProperty(this, 'category'));
  set category(ContentCategory newValue) {
    js_util.setProperty(this, 'category', newValue.value);
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
  external factory ContentIndex();
}

extension PropsContentIndex on ContentIndex {
  Future<void> add(ContentDescription description) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'add', [description]));

  Future<void> delete(String id) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'delete', [id]));

  Future<Iterable<ContentDescription>> getAll() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getAll', []));
}

@anonymous
@JS()
@staticInterop
class ContentIndexEventInit implements ExtendableEventInit {
  external factory ContentIndexEventInit({required String id});
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
///
///
///
///    Event
///
///
///
///
///
///    ExtendableEvent
///
///
///
///
///
///    ContentIndexEvent
///
///
@JS()
@staticInterop
class ContentIndexEvent implements ExtendableEvent {
  external factory ContentIndexEvent(String type, ContentIndexEventInit init);
}

extension PropsContentIndexEvent on ContentIndexEvent {
  String get id => js_util.getProperty(this, 'id');
}
