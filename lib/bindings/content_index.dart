/// Content Index
///
/// https://wicg.github.io/content-index/spec/
@JS('window')
library content_index;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'service_workers_1.dart';
import 'html.dart';
import 'image_resource.dart';

@JS()
enum ContentCategory {
  @JS('')
  empty,
  homepage,
  article,
  video,
  audio
}

@anonymous
@JS()
class ContentDescription {
  external String get id;
  external set id(String newValue);
  external String get title;
  external set title(String newValue);
  external String get description;
  external set description(String newValue);
  external ContentCategory get category;
  external set category(ContentCategory newValue);
  external Iterable<ImageResource> get icons;
  external set icons(Iterable<ImageResource> newValue);
  external String get url;
  external set url(String newValue);

  external factory ContentDescription(
      {String id,
      String title,
      String description,
      ContentCategory category,
      Iterable<ImageResource> icons = const [],
      String url});
}

///
///   Draft
///   This page is not complete.
///
///  The interface of the [Content Index API] allows developers to
/// register their offline enabled content with the browser.
@JS()
class ContentIndex {
  /// Registers an item with the [content index].
  /// ContentIndex.add(ContentDescription).then(...);
  external Promise<Object> add(ContentDescription description);

  /// Unregisters an item from the currently indexed content.
  /// ContentIndex.delete(id).then(...);
  external Promise<Object> delete(String id);

  ///  Returns a [Promise] that resolves with an iterable list of
  /// content index entries.
  /// var indexedContent = ContentIndex.getAll();
  external Iterable<Promise<ContentDescription>> getAll();

  external factory ContentIndex();
}

@anonymous
@JS()
class ContentIndexEventInit extends ExtendableEventInit {
  external String get id;
  external set id(String newValue);

  external factory ContentIndexEventInit({String id});
}

///
///   Draft
///   This page is not complete.
///
///  The interface of the [Content Index API] defines the object used
/// to represent the [contentdelete] event.
///
///  This event is sent to the [global scope] of a [ServiceWorker].
/// It contains the id of the indexed content to be removed.
///
///  The [contentdelete] event is only fired when the deletion
/// happens due to interaction with the browser's built-in user
/// interface. It is not fired when the [ContentIndex.delete] method
/// is called.
@JS()
class ContentIndexEvent extends ExtendableEvent {
  external factory ContentIndexEvent({String type, ContentIndexEventInit init});

  /// A [String] which identifies the deleted content index via it's .
  external String get id;
}
