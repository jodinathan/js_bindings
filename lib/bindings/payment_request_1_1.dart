/// Payment Request API 1.1
///
/// https://w3c.github.io/payment-request/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library payment_request_1_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The Payment Request API's interface is the primary access point
/// into the API, and lets web content and apps accept payments from
/// the end user on behalf of the operator of the site or the
/// publisher of the app.
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
///    PaymentRequest
///
///
@JS()
@staticInterop
class PaymentRequest implements EventTarget {
  external factory PaymentRequest(
      Iterable<PaymentMethodData> methodData, PaymentDetailsInit details);
}

extension PropsPaymentRequest on PaymentRequest {
  @JS('show')
  @staticInterop
  Future<PaymentResponse> mShow(
          [Future<PaymentDetailsUpdate>? detailsPromise]) =>
      js_util
          .promiseToFuture(js_util.callMethod(this, 'show', [detailsPromise]));

  Future<void> abort() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'abort', []));

  Future<bool> canMakePayment() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'canMakePayment', []));

  String get id => js_util.getProperty(this, 'id');
  EventHandlerNonNull? get onpaymentmethodchange =>
      js_util.getProperty(this, 'onpaymentmethodchange');
  set onpaymentmethodchange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpaymentmethodchange', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PaymentMethodData {
  external factory PaymentMethodData(
      {required String supportedMethods, dynamic data});
}

extension PropsPaymentMethodData on PaymentMethodData {
  String get supportedMethods => js_util.getProperty(this, 'supportedMethods');
  set supportedMethods(String newValue) {
    js_util.setProperty(this, 'supportedMethods', newValue);
  }

  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PaymentCurrencyAmount {
  external factory PaymentCurrencyAmount(
      {required String currency, required String value});
}

extension PropsPaymentCurrencyAmount on PaymentCurrencyAmount {
  String get currency => js_util.getProperty(this, 'currency');
  set currency(String newValue) {
    js_util.setProperty(this, 'currency', newValue);
  }

  String get value => js_util.getProperty(this, 'value');
  set value(String newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PaymentDetailsBase {
  external factory PaymentDetailsBase(
      {required Iterable<PaymentItem> displayItems,
      required Iterable<PaymentDetailsModifier> modifiers});
}

extension PropsPaymentDetailsBase on PaymentDetailsBase {
  Iterable<PaymentItem> get displayItems =>
      js_util.getProperty(this, 'displayItems');
  set displayItems(Iterable<PaymentItem> newValue) {
    js_util.setProperty(this, 'displayItems', newValue);
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
class PaymentDetailsInit implements PaymentDetailsBase {
  external factory PaymentDetailsInit(
      {required String id, required PaymentItem total});
}

extension PropsPaymentDetailsInit on PaymentDetailsInit {
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  PaymentItem get total => js_util.getProperty(this, 'total');
  set total(PaymentItem newValue) {
    js_util.setProperty(this, 'total', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PaymentDetailsUpdate implements PaymentDetailsBase {
  external factory PaymentDetailsUpdate(
      {required PaymentItem total, dynamic paymentMethodErrors});
}

extension PropsPaymentDetailsUpdate on PaymentDetailsUpdate {
  PaymentItem get total => js_util.getProperty(this, 'total');
  set total(PaymentItem newValue) {
    js_util.setProperty(this, 'total', newValue);
  }

  dynamic get paymentMethodErrors =>
      js_util.getProperty(this, 'paymentMethodErrors');
  set paymentMethodErrors(dynamic newValue) {
    js_util.setProperty(this, 'paymentMethodErrors', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PaymentDetailsModifier {
  external factory PaymentDetailsModifier(
      {required String supportedMethods,
      required PaymentItem total,
      required Iterable<PaymentItem> additionalDisplayItems,
      dynamic data});
}

extension PropsPaymentDetailsModifier on PaymentDetailsModifier {
  String get supportedMethods => js_util.getProperty(this, 'supportedMethods');
  set supportedMethods(String newValue) {
    js_util.setProperty(this, 'supportedMethods', newValue);
  }

  PaymentItem get total => js_util.getProperty(this, 'total');
  set total(PaymentItem newValue) {
    js_util.setProperty(this, 'total', newValue);
  }

  Iterable<PaymentItem> get additionalDisplayItems =>
      js_util.getProperty(this, 'additionalDisplayItems');
  set additionalDisplayItems(Iterable<PaymentItem> newValue) {
    js_util.setProperty(this, 'additionalDisplayItems', newValue);
  }

  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PaymentItem {
  external factory PaymentItem(
      {required String label,
      required PaymentCurrencyAmount amount,
      bool? pending = false});
}

extension PropsPaymentItem on PaymentItem {
  String get label => js_util.getProperty(this, 'label');
  set label(String newValue) {
    js_util.setProperty(this, 'label', newValue);
  }

  PaymentCurrencyAmount get amount => js_util.getProperty(this, 'amount');
  set amount(PaymentCurrencyAmount newValue) {
    js_util.setProperty(this, 'amount', newValue);
  }

  bool get pending => js_util.getProperty(this, 'pending');
  set pending(bool newValue) {
    js_util.setProperty(this, 'pending', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PaymentCompleteDetails {
  external factory PaymentCompleteDetails({dynamic data});
}

extension PropsPaymentCompleteDetails on PaymentCompleteDetails {
  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
}

enum PaymentComplete {
  fail('fail'),
  success('success'),
  unknown('unknown');

  final String value;
  static PaymentComplete fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<PaymentComplete> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const PaymentComplete(this.value);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Payment Request API is returned after a
/// user selects a payment method and approves a payment request.
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
///    PaymentResponse
///
///
@JS()
@staticInterop
class PaymentResponse implements EventTarget {
  external factory PaymentResponse();
}

extension PropsPaymentResponse on PaymentResponse {
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  String get requestId => js_util.getProperty(this, 'requestId');
  String get methodName => js_util.getProperty(this, 'methodName');
  dynamic get details => js_util.getProperty(this, 'details');
  Future<void> complete(
          [PaymentComplete? result = PaymentComplete.unknown,
          PaymentCompleteDetails? details]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'complete', [result?.value, details]));

  Future<void> retry([PaymentValidationErrors? errorFields]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'retry', [errorFields]));
}

@anonymous
@JS()
@staticInterop
class PaymentValidationErrors {
  external factory PaymentValidationErrors(
      {required String error, dynamic paymentMethod});
}

extension PropsPaymentValidationErrors on PaymentValidationErrors {
  String get error => js_util.getProperty(this, 'error');
  set error(String newValue) {
    js_util.setProperty(this, 'error', newValue);
  }

  dynamic get paymentMethod => js_util.getProperty(this, 'paymentMethod');
  set paymentMethod(dynamic newValue) {
    js_util.setProperty(this, 'paymentMethod', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Payment Request API describes the
/// [paymentmethodchange] event which is fired by some payment
/// handlers when the user switches payment instruments (e.g., a user
/// selects a "store" card to make a purchase while using Apple Pay).
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
///    PaymentRequestUpdateEvent
///
///
///
///
///
///
///
///    PaymentMethodChangeEvent
///
///
@JS()
@staticInterop
class PaymentMethodChangeEvent implements PaymentRequestUpdateEvent {
  external factory PaymentMethodChangeEvent(String type,
      [PaymentMethodChangeEventInit? eventInitDict]);
}

extension PropsPaymentMethodChangeEvent on PaymentMethodChangeEvent {
  String get methodName => js_util.getProperty(this, 'methodName');
  dynamic get methodDetails => js_util.getProperty(this, 'methodDetails');
}

@anonymous
@JS()
@staticInterop
class PaymentMethodChangeEventInit implements PaymentRequestUpdateEventInit {
  external factory PaymentMethodChangeEventInit(
      {String? methodName = '', dynamic methodDetails});
}

extension PropsPaymentMethodChangeEventInit on PaymentMethodChangeEventInit {
  String get methodName => js_util.getProperty(this, 'methodName');
  set methodName(String newValue) {
    js_util.setProperty(this, 'methodName', newValue);
  }

  dynamic get methodDetails => js_util.getProperty(this, 'methodDetails');
  set methodDetails(dynamic newValue) {
    js_util.setProperty(this, 'methodDetails', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface is used for events sent to a [PaymentRequest]
/// instance when changes are made to shipping-related information
/// for a pending [PaymentRequest]. Those events are:
///
///  [shippingaddresschange] Secure context
///
///   Dispatched whenever the user changes their shipping address.
///
///  [shippingoptionchange] Secure context
///
///   Dispatched whenever the user changes a shipping option.
///
///
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
///    PaymentRequestUpdateEvent
///
///
@JS()
@staticInterop
class PaymentRequestUpdateEvent implements Event {
  external factory PaymentRequestUpdateEvent(String type,
      [PaymentRequestUpdateEventInit? eventInitDict]);
}

extension PropsPaymentRequestUpdateEvent on PaymentRequestUpdateEvent {
  void updateWith(Future<PaymentDetailsUpdate> detailsPromise) =>
      js_util.callMethod(this, 'updateWith', [detailsPromise]);
}

@anonymous
@JS()
@staticInterop
class PaymentRequestUpdateEventInit implements EventInit {
  external factory PaymentRequestUpdateEventInit();
}
