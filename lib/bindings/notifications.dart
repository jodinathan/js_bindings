/// Notifications API Standard
///
/// https://notifications.spec.whatwg.org/
@JS('window')
library notifications;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';
import 'vibration.dart';
import 'service_workers_1.dart';

///
///  Note: This feature is available in Web Workers
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the Notifications API is used to configure and
/// display desktop notifications to the user. These notifications'
/// appearance and specific functionality vary across platforms but
/// generally they provide a way to asynchronously provide
/// information to the user.
@JS()
class Notification // null -> {} -> EventTarget
    with
        EventTarget {
  external factory Notification(String title, [NotificationOptions? options]);
  external static NotificationPermission get permission;
  external static Promise<NotificationPermission> requestPermission(
      [NotificationPermissionCallback? deprecatedCallback]);
  external static int get maxActions;
  external EventHandlerNonNull? get onclick;
  external set onclick(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onshow;
  external set onshow(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onclose;
  external set onclose(EventHandlerNonNull? newValue);
  external String get title;
  external NotificationDirection get dir;
  external String get lang;
  external String get body;
  external String get tag;
  external String get image;
  external String get icon;
  external String get badge;
  external Iterable<int> get vibrate;
  external int get timestamp;
  external bool get renotify;
  external bool get silent;
  external bool get requireInteraction;
  external dynamic get data;
  external Iterable<NotificationAction> get actions;
  external Object close();
}

@anonymous
@JS()
class NotificationOptions {
  external NotificationDirection get dir;
  external set dir(NotificationDirection newValue);
  external String get lang;
  external set lang(String newValue);
  external String get body;
  external set body(String newValue);
  external String get tag;
  external set tag(String newValue);
  external String get image;
  external set image(String newValue);
  external String get icon;
  external set icon(String newValue);
  external String get badge;
  external set badge(String newValue);
  external dynamic get vibrate;
  external set vibrate(dynamic newValue);
  external int get timestamp;
  external set timestamp(int newValue);
  external bool get renotify;
  external set renotify(bool newValue);
  external bool get silent;
  external set silent(bool newValue);
  external bool get requireInteraction;
  external set requireInteraction(bool newValue);
  external dynamic get data;
  external set data(dynamic newValue);
  external Iterable<NotificationAction> get actions;
  external set actions(Iterable<NotificationAction> newValue);

  external factory NotificationOptions(
      {NotificationDirection dir = NotificationDirection.auto,
      String lang = '',
      String body = '',
      String tag = '',
      String image,
      String icon,
      String badge,
      dynamic vibrate,
      int timestamp,
      bool renotify = false,
      bool silent = false,
      bool requireInteraction = false,
      dynamic data,
      Iterable<NotificationAction> actions = const []});
}

@JS()
enum NotificationPermission {
  @JS('default')
  valueDefault,
  denied,
  granted
}

@JS()
enum NotificationDirection { auto, ltr, rtl }

///
///  Note: This feature is available in Web Workers
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the Notifications API is used to represent
/// action buttons the user can click to interact with notifications.
/// These buttons' appearance and specific functionality vary across
/// platforms but generally they provide a way to asynchronously show
/// actions to the user in a notification.
@anonymous
@JS()
class NotificationAction {
  external String get action;
  external set action(String newValue);
  external String get title;
  external set title(String newValue);
  external String get icon;
  external set icon(String newValue);

  external factory NotificationAction(
      {String action, String title, String icon});
}

@anonymous
@JS()
class GetNotificationOptions {
  external String get tag;
  external set tag(String newValue);

  external factory GetNotificationOptions({String tag = ''});
}

///
///
///  The parameter passed into the [onnotificationclick] handler, the
/// interface represents a notification click event that is
/// dispatched on the [ServiceWorkerGlobalScope] of a
/// [ServiceWorker].
///
/// This interface inherits from the [ExtendableEvent] interface.
@experimental
@JS()
class NotificationEvent // Event -> {} -> ExtendableEvent
    extends ExtendableEvent {
  external factory NotificationEvent(
      String type, NotificationEventInit eventInitDict);

  ///  Returns a [Notification] object representing the notification
  /// that was clicked to fire the event.
  external Notification get notification;

  ///  Returns the string ID of the notification button the user
  /// clicked. This value returns an empty string if the user clicked
  /// the notification somewhere other than an action button, or the
  /// notification does not have a button.
  external String get action;
}

@anonymous
@JS()
class NotificationEventInit // EventInit -> {} -> ExtendableEventInit
    extends ExtendableEventInit {
  external Notification get notification;
  external set notification(Notification newValue);
  external String get action;
  external set action(String newValue);

  external factory NotificationEventInit(
      {Notification notification, String action = ''});
}
