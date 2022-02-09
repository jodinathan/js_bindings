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
  external factory ContentDescription._(
      {required String id,
      required String title,
      required String description,
      required String category,
      Iterable<ImageResource>? icons = const [],
      String? url});

  factory ContentDescription(
          {required String id,
          required String title,
          required String description,
          required ContentCategory category,
          Iterable<ImageResource>? icons = const [],
          String? url}) =>
      ContentDescription._(
          id: id,
          title: title,
          description: description,
          category: category.name,
          icons: icons,
          url: url);
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
      ContentCategory.values.byName(js_util.getProperty(this, 'category'));
  set category(ContentCategory newValue) {
    js_util.setProperty(this, 'category', newValue.name);
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

@JS()
@staticInterop
class ContentIndex {
  external ContentIndex();
}

extension PropsContentIndex on ContentIndex {
  Future<Object> add(ContentDescription description) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'add', [description]));

  Future<Object> delete(String id) =>
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

@JS()
@staticInterop
class ContentIndexEvent implements ExtendableEvent {
  external ContentIndexEvent(String type, ContentIndexEventInit init);
}

extension PropsContentIndexEvent on ContentIndexEvent {
  String get id => js_util.getProperty(this, 'id');
}
