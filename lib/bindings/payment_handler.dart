/// Payment Handler API
///
/// https://w3c.github.io/payment-handler/
@JS('window')
@staticInterop
library payment_handler;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: service_workers_1
html
payment_request */

@JS()
@staticInterop
class PaymentManager {
  external factory PaymentManager();
}

extension PropsPaymentManager on PaymentManager {
  external PaymentInstruments get instruments;
  external String get userHint;
  external set userHint(String newValue);
}

@JS()
@staticInterop
class PaymentInstruments {
  external factory PaymentInstruments();
}

extension PropsPaymentInstruments on PaymentInstruments {
  external Promise<bool> delete(String instrumentKey);
  @JS('get')
  @staticInterop
  external Promise<dynamic> mGet(String instrumentKey);
  external Iterable<Promise<String>> keys();
  external Promise<bool> has(String instrumentKey);
  @JS('set')
  @staticInterop
  external Promise<Object> mSet(
      String instrumentKey, PaymentInstrument details);
  external Promise<Object> clear();
}

@anonymous
@JS()
@staticInterop
class PaymentInstrument {
  external factory PaymentInstrument(
      {String name,
      Iterable<ImageObject> icons,
      String method,
      dynamic capabilities});
}

extension PropsPaymentInstrument on PaymentInstrument {
  external String get name;
  external set name(String newValue);
  external Iterable<ImageObject> get icons;
  external set icons(Iterable<ImageObject> newValue);
  external String get method;
  external set method(String newValue);
  external dynamic get capabilities;
  external set capabilities(dynamic newValue);
}

@anonymous
@JS()
@staticInterop
class ImageObject {
  external factory ImageObject({String src, String sizes, String type});
}

extension PropsImageObject on ImageObject {
  external String get src;
  external set src(String newValue);
  external String get sizes;
  external set sizes(String newValue);
  external String get type;
  external set type(String newValue);
}

@JS()
@staticInterop
class CanMakePaymentEvent implements ExtendableEvent {
  external factory CanMakePaymentEvent(String type,
      [CanMakePaymentEventInit? eventInitDict]);
}

extension PropsCanMakePaymentEvent on CanMakePaymentEvent {
  external String get topOrigin;
  external String get paymentRequestOrigin;
  external Iterable<PaymentMethodData> get methodData;
  external Object respondWith(Promise<bool> canMakePaymentResponse);
}

@anonymous
@JS()
@staticInterop
class CanMakePaymentEventInit implements ExtendableEventInit {
  external factory CanMakePaymentEventInit(
      {String topOrigin,
      String paymentRequestOrigin,
      Iterable<PaymentMethodData> methodData});
}

extension PropsCanMakePaymentEventInit on CanMakePaymentEventInit {
  external String get topOrigin;
  external set topOrigin(String newValue);
  external String get paymentRequestOrigin;
  external set paymentRequestOrigin(String newValue);
  external Iterable<PaymentMethodData> get methodData;
  external set methodData(Iterable<PaymentMethodData> newValue);
}

@anonymous
@JS()
@staticInterop
class PaymentRequestDetailsUpdate {
  external factory PaymentRequestDetailsUpdate(
      {String error,
      PaymentCurrencyAmount total,
      Iterable<PaymentDetailsModifier> modifiers,
      dynamic paymentMethodErrors});
}

extension PropsPaymentRequestDetailsUpdate on PaymentRequestDetailsUpdate {
  external String get error;
  external set error(String newValue);
  external PaymentCurrencyAmount get total;
  external set total(PaymentCurrencyAmount newValue);
  external Iterable<PaymentDetailsModifier> get modifiers;
  external set modifiers(Iterable<PaymentDetailsModifier> newValue);
  external dynamic get paymentMethodErrors;
  external set paymentMethodErrors(dynamic newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Payment Request API is the object passed to
/// a payment handler when a [PaymentRequest] is made.
@experimental
@JS()
@staticInterop
class PaymentRequestEvent implements ExtendableEvent {
  external factory PaymentRequestEvent(String type,
      [PaymentRequestEventInit? eventInitDict]);
}

extension PropsPaymentRequestEvent on PaymentRequestEvent {
  ///  Returns the top-level origin where the [PaymentRequest] object
  /// was initialized.
  ///
  @experimental
  external String get topOrigin;

  ///  Returns the origin where the [PaymentRequest] object was
  /// initialized.
  ///
  @experimental
  external String get paymentRequestOrigin;

  /// Returns the ID of the [PaymentRequest] object.
  ///
  @experimental
  external String get paymentRequestId;

  ///  Returns an array of [PaymentMethodData] objects containing
  /// payment method identifiers for the payment methods that the web
  /// site accepts and any associated payment method specific data.
  ///
  @experimental
  external Iterable<PaymentMethodData> get methodData;

  /// Returns the total amount being requested for payment.
  ///
  @experimental
  external dynamic get total;

  ///  Returns an array of objects containing changes to payment
  /// details.
  ///
  @experimental
  external Iterable<PaymentDetailsModifier> get modifiers;

  ///  Returns a [PaymentInstrument] object reflecting the payment
  /// instrument selected by the user or an empty string if the user
  /// has not registered or chosen a payment instrument.
  ///
  @experimental
  external String get instrumentKey;

  ///  Opens the specified URL in a new window, if and only if the
  /// given URL is on the same origin as the calling page. It returns a
  /// [Promise] that resolves with a reference to a [WindowClient].
  ///
  /// var aPromise = paymentRequestEvent.openWindow(url)
  ///
  @experimental
  external Promise<WindowClient> openWindow(String url);
  external Promise<PaymentRequestDetailsUpdate> changePaymentMethod(
      String methodName,
      [dynamic methodDetails]);

  ///  Prevents the default event handling and allows you to provide a
  /// [Promise] for a [PaymentResponse] object yourself.
  ///
  /// paymentRequestEvent.respondWith(
  ///  // Promise that resolves with a PaymentResponse.
  /// )
  ///
  @experimental
  external Object respondWith(
      Promise<PaymentHandlerResponse> handlerResponsePromise);
}

@anonymous
@JS()
@staticInterop
class PaymentRequestEventInit implements ExtendableEventInit {
  external factory PaymentRequestEventInit(
      {String topOrigin,
      String paymentRequestOrigin,
      String paymentRequestId,
      Iterable<PaymentMethodData> methodData,
      PaymentCurrencyAmount total,
      Iterable<PaymentDetailsModifier> modifiers,
      String instrumentKey});
}

extension PropsPaymentRequestEventInit on PaymentRequestEventInit {
  external String get topOrigin;
  external set topOrigin(String newValue);
  external String get paymentRequestOrigin;
  external set paymentRequestOrigin(String newValue);
  external String get paymentRequestId;
  external set paymentRequestId(String newValue);
  external Iterable<PaymentMethodData> get methodData;
  external set methodData(Iterable<PaymentMethodData> newValue);
  external PaymentCurrencyAmount get total;
  external set total(PaymentCurrencyAmount newValue);
  external Iterable<PaymentDetailsModifier> get modifiers;
  external set modifiers(Iterable<PaymentDetailsModifier> newValue);
  external String get instrumentKey;
  external set instrumentKey(String newValue);
}

@anonymous
@JS()
@staticInterop
class PaymentHandlerResponse {
  external factory PaymentHandlerResponse({String methodName, dynamic details});
}

extension PropsPaymentHandlerResponse on PaymentHandlerResponse {
  external String get methodName;
  external set methodName(String newValue);
  external dynamic get details;
  external set details(dynamic newValue);
}
