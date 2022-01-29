/// Push API
///
/// https://w3c.github.io/push-api/
@JS('window')
@staticInterop
library push_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: service_workers_1
file_a_p_i
html */

///  The interface of the Push API provides a way to receive
/// notifications from third-party servers as well as request URLs
/// for push notifications.
///  This interface is accessed via the
/// [ServiceWorkerRegistration.pushManager] property.
@experimental
@JS()
@staticInterop
class PushManager {
  external PushManager();
}

extension PropsPushManager on PushManager {
  ///  Returns an array of supported content codings that can be used
  /// to encrypt the payload of a push message.
  ///
  external static Iterable<String> get supportedContentEncodings;

  ///  Subscribes to a push service. It returns a [Promise] that
  /// resolves to a [PushSubscription] object containing details of a
  /// push subscription. A new push subscription is created if the
  /// current service worker does not have an existing subscription.
  ///
  /// PushManager.subscribe(options).then(function(pushSubscription) { /* ... */ } );
  ///
  /// this.onpush = function(event) {
  ///  console.log(event.data);
  ///  // From here we can write the data to IndexedDB, send it to any open
  ///  // windows, display a notification, etc.
  /// }
  ///
  /// navigator.serviceWorker.register('serviceworker.js');
  ///
  /// // Use serviceWorker.ready to ensure that you can subscribe for push
  /// navigator.serviceWorker.ready.then(
  ///  function(serviceWorkerRegistration) {
  ///   var options = {
  ///    userVisibleOnly: true,
  ///    applicationServerKey: applicationServerKey
  ///   };
  ///   serviceWorkerRegistration.pushManager.subscribe(options).then(
  ///    function(pushSubscription) {
  ///     console.log(pushSubscription.endpoint);
  ///     // The push subscription details needed by the application
  ///     // server are now available, and can be sent to it using,
  ///     // for example, an XMLHttpRequest.
  ///    }, function(error) {
  ///     // During development it often helps to log errors to the
  ///     // console. In a production environment it might make sense to
  ///     // also report information about errors back to the
  ///     // application server.
  ///     console.log(error);
  ///    }
  ///   );
  ///  });
  ///
  Promise<PushSubscription> subscribe([PushSubscriptionOptionsInit? options]) =>
      js_util.callMethod(this, 'subscribe', [options]);

  ///  Retrieves an existing push subscription. It returns a [Promise]
  /// that resolves to a [PushSubscription] object containing details
  /// of an existing subscription. If no existing subscription exists,
  /// this resolves to a [null] value.
  ///
  /// PushManager.getSubscription().then(function(pushSubscription) { /* ... */ } );
  ///
  /// This code snippet is taken from a push messaging and notification sample. (No live demo is available.)
  /// // We need the service worker registration to check for a subscription
  ///  navigator.serviceWorker.ready.then(function(serviceWorkerRegistration) {
  ///   // Do we already have a push message subscription?
  ///   serviceWorkerRegistration.pushManager.getSubscription()
  ///    .then(function(subscription) {
  ///     // Enable any UI which subscribes / unsubscribes from
  ///     // push messages.
  ///     var pushButton = document.querySelector('.js-push-button');
  ///     pushButton.disabled = false;
  ///
  ///     if (!subscription) {
  ///      // We aren’t subscribed to push, so set UI
  ///      // to allow the user to enable push
  ///      return;
  ///     }
  ///
  ///     // Keep your server in sync with the latest subscriptionId
  ///     sendSubscriptionToServer(subscription);
  ///
  ///     showCurlCommand(subscription);
  ///
  ///     // Set your UI to show they have subscribed for
  ///     // push messages
  ///     pushButton.textContent = 'Disable Push Messages';
  ///     isPushEnabled = true;
  ///    })
  ///    .catch(function(err) {
  ///     window.Demo.debug.log('Error during getSubscription()', err);
  ///    });
  ///  });
  ///
  Promise<PushSubscription> getSubscription() =>
      js_util.callMethod(this, 'getSubscription', []);

  ///  Returns a [Promise] that resolves to the permission state of the
  /// current [PushManager], which will be one of ['granted'],
  /// ['denied'], or ['prompt'].
  ///
  /// PushManager.permissionState(options).then(function(PushMessagingState) { /* ... */ });
  ///
  Promise<PushPermissionState> permissionState(
          [PushSubscriptionOptionsInit? options]) =>
      js_util.callMethod(this, 'permissionState', [options]);
}

///  The interface of the Push API represents the options associated
/// with a push subscription.
///  The read-only object is returned by calling
/// [PushSubscription.options] on a [PushSubscription]. This
/// interface has no constructor of its own.
@JS()
@staticInterop
class PushSubscriptionOptions {
  external PushSubscriptionOptions();
}

extension PropsPushSubscriptionOptions on PushSubscriptionOptions {
  ///
  ///    A boolean value indicating that the returned push
  ///     subscription will only be used for messages whose effect is
  /// made visible to the user.
  ///
  ///
  bool get userVisibleOnly => js_util.getProperty(this, 'userVisibleOnly');

  ///
  ///    A public key your push server will use to send
  ///    messages to client apps via a push server.
  ///
  ///
  ByteBuffer? get applicationServerKey =>
      js_util.getProperty(this, 'applicationServerKey');
}

@anonymous
@JS()
@staticInterop
class PushSubscriptionOptionsInit {
  external factory PushSubscriptionOptionsInit(
      {bool userVisibleOnly = false, dynamic applicationServerKey});
}

extension PropsPushSubscriptionOptionsInit on PushSubscriptionOptionsInit {
  bool get userVisibleOnly => js_util.getProperty(this, 'userVisibleOnly');
  set userVisibleOnly(bool newValue) {
    js_util.setProperty(this, 'userVisibleOnly', newValue);
  }

  dynamic get applicationServerKey =>
      js_util.getProperty(this, 'applicationServerKey');
  set applicationServerKey(dynamic newValue) {
    js_util.setProperty(this, 'applicationServerKey', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Push API provides a subcription's URL
/// endpoint and allows unsubscription from a push service.
/// An instance of this interface can be serialized.
@experimental
@JS()
@staticInterop
class PushSubscription {
  external PushSubscription();
}

extension PropsPushSubscription on PushSubscription {
  ///  A [USVString] containing the endpoint associated with the push
  /// subscription.
  ///
  String get endpoint => js_util.getProperty(this, 'endpoint');

  ///  A [DOMHighResTimeStamp] of the subscription expiration time
  /// associated with the push subscription, if there is one, or null
  /// otherwise.
  ///
  int? get expirationTime => js_util.getProperty(this, 'expirationTime');

  ///  An object containing the options used to create the
  /// subscription.
  ///
  PushSubscriptionOptions get options => js_util.getProperty(this, 'options');

  ///  Returns an [ArrayBuffer] which contains the client's public key,
  /// which can then be sent to a server and used in encrypting push
  /// message data.
  ///
  /// const key = subscription.getKey(name);
  ///
  /// reg.pushManager.getSubscription()
  ///  .then(function(subscription) {
  ///  // Enable any UI which subscribes / unsubscribes from
  ///  // push messages.
  ///
  ///  subBtn.disabled = false;
  ///
  ///  if (!subscription) {
  ///   console.log('Not yet subscribed to Push')
  ///   // We aren't subscribed to push, so set UI
  ///   // to allow the user to enable push
  ///   return;
  ///  }
  ///
  ///  // Set your UI to show they have subscribed for
  ///  // push messages
  ///  subBtn.textContent = 'Unsubscribe from Push Messaging';
  ///  isPushEnabled = true;
  ///
  ///  // initialize status, which includes setting UI elements for subscribed status
  ///  // and updating Subscribers list via push
  ///  var endpoint = subscription.endpoint;
  ///  var key = subscription.getKey('p256dh');
  ///  var auth = subscription.getKey('auth');
  ///
  ///   ...
  ///
  ByteBuffer? getKey(PushEncryptionKeyName name) =>
      js_util.callMethod(this, 'getKey', [name]);

  ///  Starts the asynchronous process of unsubscribing from the push
  /// service, returning a [Promise] that resolves to a boolean value
  /// when the current subscription is successfully unregistered.
  ///
  /// PushSubscription.unsubscribe().then(function(Boolean) { /* ... */ });
  ///
  /// navigator.serviceWorker.ready.then(function(reg) {
  ///  reg.pushManager.getSubscription().then(function(subscription) {
  ///   subscription.unsubscribe().then(function(successful) {
  ///    // You've successfully unsubscribed
  ///   }).catch(function(e) {
  ///    // Unsubscription failed
  ///   })
  ///  })
  /// });
  ///
  Promise<bool> unsubscribe() => js_util.callMethod(this, 'unsubscribe', []);

  ///  Standard serializer — returns a JSON representation of the
  /// subscription properties.
  ///
  /// mySubscription = subscription.toJSON()
  ///
  /// navigator.serviceWorker.ready.then(function(reg) {
  ///  reg.pushManager.getSubscription().then(function(subscription) {
  ///   var mySubscription = subscription.toJSON();
  ///   // do something with subscription details
  ///  })
  /// });
  ///
  PushSubscriptionJSON toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@anonymous
@JS()
@staticInterop
class PushSubscriptionJSON {
  external factory PushSubscriptionJSON(
      {String endpoint, int? expirationTime, dynamic keys});
}

extension PropsPushSubscriptionJSON on PushSubscriptionJSON {
  String get endpoint => js_util.getProperty(this, 'endpoint');
  set endpoint(String newValue) {
    js_util.setProperty(this, 'endpoint', newValue);
  }

  int? get expirationTime => js_util.getProperty(this, 'expirationTime');
  set expirationTime(int? newValue) {
    js_util.setProperty(this, 'expirationTime', newValue);
  }

  dynamic get keys => js_util.getProperty(this, 'keys');
  set keys(dynamic newValue) {
    js_util.setProperty(this, 'keys', newValue);
  }
}

enum PushEncryptionKeyName { p256dh, auth }

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Push API provides methods which let you
/// retrieve the push data sent by a server in various formats.
///  Unlike the similar methods in the Fetch API, which only allow
/// the method to be invoked once, these methods can be called
/// multiple times.
///  Messages received through the Push API are sent encrypted by
/// push services and then automatically decrypted by browsers before
/// they are made accessible through the methods of the interface.
@experimental
@JS()
@staticInterop
class PushMessageData {
  external PushMessageData();
}

extension PropsPushMessageData on PushMessageData {
  /// Extracts the data as an [ArrayBuffer] object.
  ///
  /// var myArrayBuffer = PushEvent.data.arrayBuffer();
  ///
  ByteBuffer arrayBuffer() => js_util.callMethod(this, 'arrayBuffer', []);

  /// Extracts the data as a [Blob] object.
  ///
  /// var myBlob = PushEvent.data.blob();
  ///
  Blob blob() => js_util.callMethod(this, 'blob', []);

  /// Extracts the data as a JSON object.
  ///
  /// var myData = pushEvent.data.json();
  ///
  dynamic json() => js_util.callMethod(this, 'json', []);

  /// Extracts the data as a plain text string.
  ///
  /// var myText = pushEvent.data.text();
  ///
  String text() => js_util.callMethod(this, 'text', []);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Push API represents a push message that has
/// been received. This event is sent to the global scope of a
/// [ServiceWorker]. It contains the information sent from an
/// application server to a [PushSubscription].
@JS()
@staticInterop
class PushEvent implements ExtendableEvent {
  external PushEvent(String type, [PushEventInit? eventInitDict]);
}

extension PropsPushEvent on PushEvent {
  ///  Returns a reference to a [PushMessageData] object containing
  /// data sent to the [PushSubscription].
  ///
  PushMessageData? get data => js_util.getProperty(this, 'data');
}

@anonymous
@JS()
@staticInterop
class PushEventInit implements ExtendableEventInit {
  external factory PushEventInit({dynamic data});
}

extension PropsPushEventInit on PushEventInit {
  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
}

@JS()
@staticInterop
class PushSubscriptionChangeEvent implements ExtendableEvent {
  external PushSubscriptionChangeEvent(String type,
      [PushSubscriptionChangeEventInit? eventInitDict]);
}

extension PropsPushSubscriptionChangeEvent on PushSubscriptionChangeEvent {
  PushSubscription? get newSubscription =>
      js_util.getProperty(this, 'newSubscription');
  PushSubscription? get oldSubscription =>
      js_util.getProperty(this, 'oldSubscription');
}

@anonymous
@JS()
@staticInterop
class PushSubscriptionChangeEventInit implements ExtendableEventInit {
  external factory PushSubscriptionChangeEventInit(
      {PushSubscription newSubscription, PushSubscription oldSubscription});
}

extension PropsPushSubscriptionChangeEventInit
    on PushSubscriptionChangeEventInit {
  PushSubscription get newSubscription =>
      js_util.getProperty(this, 'newSubscription');
  set newSubscription(PushSubscription newValue) {
    js_util.setProperty(this, 'newSubscription', newValue);
  }

  PushSubscription get oldSubscription =>
      js_util.getProperty(this, 'oldSubscription');
  set oldSubscription(PushSubscription newValue) {
    js_util.setProperty(this, 'oldSubscription', newValue);
  }
}

enum PushPermissionState { denied, granted, prompt }
