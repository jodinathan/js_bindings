/// Payment Handler API
///
/// https://w3c.github.io/payment-handler/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library payment_handler;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class PaymentManager {
  external factory PaymentManager();
}

extension PropsPaymentManager on PaymentManager {
  PaymentInstruments get instruments =>
      js_util.getProperty(this, 'instruments');
  String get userHint => js_util.getProperty(this, 'userHint');
  set userHint(String newValue) {
    js_util.setProperty(this, 'userHint', newValue);
  }
}

@JS()
@staticInterop
class PaymentInstruments {
  external factory PaymentInstruments();
}

extension PropsPaymentInstruments on PaymentInstruments {
  Future<bool> delete(String instrumentKey) => js_util
      .promiseToFuture(js_util.callMethod(this, 'delete', [instrumentKey]));

  Future<dynamic> get(String instrumentKey) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'get', [instrumentKey]));

  Future<Iterable<String>> keys() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'keys', []));

  Future<bool> has(String instrumentKey) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'has', [instrumentKey]));

  Future<void> set(String instrumentKey, PaymentInstrument details) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'set', [instrumentKey, details]));

  Future<void> clear() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'clear', []));
}

@anonymous
@JS()
@staticInterop
class PaymentInstrument {
  external factory PaymentInstrument(
      {required String name, Iterable<ImageObject>? icons, String? method});
}

extension PropsPaymentInstrument on PaymentInstrument {
  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  Iterable<ImageObject> get icons => js_util.getProperty(this, 'icons');
  set icons(Iterable<ImageObject> newValue) {
    js_util.setProperty(this, 'icons', newValue);
  }

  String get method => js_util.getProperty(this, 'method');
  set method(String newValue) {
    js_util.setProperty(this, 'method', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ImageObject {
  external factory ImageObject(
      {required String src, String? sizes, String? type});
}

extension PropsImageObject on ImageObject {
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  String get sizes => js_util.getProperty(this, 'sizes');
  set sizes(String newValue) {
    js_util.setProperty(this, 'sizes', newValue);
  }

  String get type => js_util.getProperty(this, 'type');
  set type(String newValue) {
    js_util.setProperty(this, 'type', newValue);
  }
}

@JS()
@staticInterop
class CanMakePaymentEvent implements ExtendableEvent {
  external factory CanMakePaymentEvent._(String type,
      [CanMakePaymentEventInit? eventInitDict]);

  factory CanMakePaymentEvent(String type,
          [CanMakePaymentEventInit? eventInitDict]) =>
      CanMakePaymentEvent._(type, eventInitDict ?? undefined);
}

extension PropsCanMakePaymentEvent on CanMakePaymentEvent {
  String get topOrigin => js_util.getProperty(this, 'topOrigin');
  String get paymentRequestOrigin =>
      js_util.getProperty(this, 'paymentRequestOrigin');
  Iterable<PaymentMethodData> get methodData =>
      js_util.getProperty(this, 'methodData');
  void respondWith(Future<bool> canMakePaymentResponse) =>
      js_util.callMethod(this, 'respondWith', [canMakePaymentResponse]);
}

@anonymous
@JS()
@staticInterop
class CanMakePaymentEventInit implements ExtendableEventInit {
  external factory CanMakePaymentEventInit(
      {String? topOrigin,
      String? paymentRequestOrigin,
      Iterable<PaymentMethodData>? methodData});
}

extension PropsCanMakePaymentEventInit on CanMakePaymentEventInit {
  String get topOrigin => js_util.getProperty(this, 'topOrigin');
  set topOrigin(String newValue) {
    js_util.setProperty(this, 'topOrigin', newValue);
  }

  String get paymentRequestOrigin =>
      js_util.getProperty(this, 'paymentRequestOrigin');
  set paymentRequestOrigin(String newValue) {
    js_util.setProperty(this, 'paymentRequestOrigin', newValue);
  }

  Iterable<PaymentMethodData> get methodData =>
      js_util.getProperty(this, 'methodData');
  set methodData(Iterable<PaymentMethodData> newValue) {
    js_util.setProperty(this, 'methodData', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PaymentRequestDetailsUpdate {
  external factory PaymentRequestDetailsUpdate(
      {String? error,
      PaymentCurrencyAmount? total,
      Iterable<PaymentDetailsModifier>? modifiers,
      dynamic paymentMethodErrors});
}

extension PropsPaymentRequestDetailsUpdate on PaymentRequestDetailsUpdate {
  String get error => js_util.getProperty(this, 'error');
  set error(String newValue) {
    js_util.setProperty(this, 'error', newValue);
  }

  PaymentCurrencyAmount get total => js_util.getProperty(this, 'total');
  set total(PaymentCurrencyAmount newValue) {
    js_util.setProperty(this, 'total', newValue);
  }

  Iterable<PaymentDetailsModifier> get modifiers =>
      js_util.getProperty(this, 'modifiers');
  set modifiers(Iterable<PaymentDetailsModifier> newValue) {
    js_util.setProperty(this, 'modifiers', newValue);
  }

  dynamic get paymentMethodErrors =>
      js_util.getProperty(this, 'paymentMethodErrors');
  set paymentMethodErrors(dynamic newValue) {
    js_util.setProperty(this, 'paymentMethodErrors', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Payment Request API is the object passed to
/// a payment handler when a [PaymentRequest] is made.
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
///    PaymentRequestEvent
///
///
@experimental
@JS()
@staticInterop
class PaymentRequestEvent implements ExtendableEvent {
  external factory PaymentRequestEvent._(String type,
      [PaymentRequestEventInit? eventInitDict]);

  factory PaymentRequestEvent(String type,
          [PaymentRequestEventInit? eventInitDict]) =>
      PaymentRequestEvent._(type, eventInitDict ?? undefined);
}

extension PropsPaymentRequestEvent on PaymentRequestEvent {
  String get topOrigin => js_util.getProperty(this, 'topOrigin');
  String get paymentRequestOrigin =>
      js_util.getProperty(this, 'paymentRequestOrigin');
  String get paymentRequestId => js_util.getProperty(this, 'paymentRequestId');
  Iterable<PaymentMethodData> get methodData =>
      js_util.getProperty(this, 'methodData');
  dynamic get total => js_util.getProperty(this, 'total');
  Iterable<PaymentDetailsModifier> get modifiers =>
      js_util.getProperty(this, 'modifiers');
  Future<WindowClient> openWindow(String url) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'openWindow', [url]));

  Future<PaymentRequestDetailsUpdate> changePaymentMethod(String methodName,
          [dynamic methodDetails]) =>
      js_util.promiseToFuture(js_util.callMethod(
          this, 'changePaymentMethod', [methodName, methodDetails]));

  void respondWith(Future<PaymentHandlerResponse> handlerResponsePromise) =>
      js_util.callMethod(this, 'respondWith', [handlerResponsePromise]);
}

@anonymous
@JS()
@staticInterop
class PaymentRequestEventInit implements ExtendableEventInit {
  external factory PaymentRequestEventInit(
      {String? topOrigin,
      String? paymentRequestOrigin,
      String? paymentRequestId,
      Iterable<PaymentMethodData>? methodData,
      PaymentCurrencyAmount? total,
      Iterable<PaymentDetailsModifier>? modifiers});
}

extension PropsPaymentRequestEventInit on PaymentRequestEventInit {
  String get topOrigin => js_util.getProperty(this, 'topOrigin');
  set topOrigin(String newValue) {
    js_util.setProperty(this, 'topOrigin', newValue);
  }

  String get paymentRequestOrigin =>
      js_util.getProperty(this, 'paymentRequestOrigin');
  set paymentRequestOrigin(String newValue) {
    js_util.setProperty(this, 'paymentRequestOrigin', newValue);
  }

  String get paymentRequestId => js_util.getProperty(this, 'paymentRequestId');
  set paymentRequestId(String newValue) {
    js_util.setProperty(this, 'paymentRequestId', newValue);
  }

  Iterable<PaymentMethodData> get methodData =>
      js_util.getProperty(this, 'methodData');
  set methodData(Iterable<PaymentMethodData> newValue) {
    js_util.setProperty(this, 'methodData', newValue);
  }

  PaymentCurrencyAmount get total => js_util.getProperty(this, 'total');
  set total(PaymentCurrencyAmount newValue) {
    js_util.setProperty(this, 'total', newValue);
  }

  Iterable<PaymentDetailsModifier> get modifiers =>
      js_util.getProperty(this, 'modifiers');
  set modifiers(Iterable<PaymentDetailsModifier> newValue) {
    js_util.setProperty(this, 'modifiers', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PaymentHandlerResponse {
  external factory PaymentHandlerResponse(
      {String? methodName, dynamic details});
}

extension PropsPaymentHandlerResponse on PaymentHandlerResponse {
  String get methodName => js_util.getProperty(this, 'methodName');
  set methodName(String newValue) {
    js_util.setProperty(this, 'methodName', newValue);
  }

  dynamic get details => js_util.getProperty(this, 'details');
  set details(dynamic newValue) {
    js_util.setProperty(this, 'details', newValue);
  }
}
