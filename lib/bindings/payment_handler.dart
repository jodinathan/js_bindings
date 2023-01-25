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

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Payment Handler API is used to manage
/// various aspects of payment app functionality.
///  It is accessed via the
/// [ServiceWorkerRegistration.paymentManager] property.
@experimental
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

  Future<void> enableDelegations(Iterable<PaymentDelegation> delegations) =>
      js_util.promiseToFuture(js_util.callMethod(
          this, 'enableDelegations', [delegations.map((e) => e.value)]));
}

enum PaymentDelegation {
  shippingAddress('shippingAddress'),
  payerName('payerName'),
  payerPhone('payerPhone'),
  payerEmail('payerEmail');

  final String value;
  static PaymentDelegation fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<PaymentDelegation> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const PaymentDelegation(this.value);
}

@JS()
@staticInterop
class PaymentInstruments {
  external factory PaymentInstruments();
}

extension PropsPaymentInstruments on PaymentInstruments {
  Future<bool> delete(String instrumentKey) => js_util
      .promiseToFuture(js_util.callMethod(this, 'delete', [instrumentKey]));

  @JS('get')
  @staticInterop
  Future<dynamic> mGet(String instrumentKey) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'get', [instrumentKey]));

  Future<Iterable<String>> keys() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'keys', []));

  Future<bool> has(String instrumentKey) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'has', [instrumentKey]));

  @JS('set')
  @staticInterop
  Future<void> mSet(String instrumentKey, PaymentInstrument details) =>
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
      {required String name,
      required Iterable<ImageObject> icons,
      required String method});
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
      {required String src, required String sizes, required String type});
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

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Payment Handler API is the event object for
/// the [canmakepayment] event, fired on a payment app's service
/// worker to check whether it is ready to handle a payment.
/// Specifically, it is fired when the merchant website calls [new
/// PaymentRequest()].
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
///    ExtendableEvent
///
///
///
///
///
///
///
///    CanMakePaymentEvent
///
///
@experimental
@JS()
@staticInterop
class CanMakePaymentEvent implements ExtendableEvent {
  external factory CanMakePaymentEvent(String type);
}

extension PropsCanMakePaymentEvent on CanMakePaymentEvent {
  void respondWith(Future<bool> canMakePaymentResponse) =>
      js_util.callMethod(this, 'respondWith', [canMakePaymentResponse]);
}

@anonymous
@JS()
@staticInterop
class PaymentRequestDetailsUpdate {
  external factory PaymentRequestDetailsUpdate(
      {required String error,
      required PaymentCurrencyAmount total,
      required Iterable<PaymentDetailsModifier> modifiers,
      required Iterable<PaymentShippingOption> shippingOptions,
      dynamic paymentMethodErrors,
      required AddressErrors shippingAddressErrors});
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

  Iterable<PaymentShippingOption> get shippingOptions =>
      js_util.getProperty(this, 'shippingOptions');
  set shippingOptions(Iterable<PaymentShippingOption> newValue) {
    js_util.setProperty(this, 'shippingOptions', newValue);
  }

  dynamic get paymentMethodErrors =>
      js_util.getProperty(this, 'paymentMethodErrors');
  set paymentMethodErrors(dynamic newValue) {
    js_util.setProperty(this, 'paymentMethodErrors', newValue);
  }

  AddressErrors get shippingAddressErrors =>
      js_util.getProperty(this, 'shippingAddressErrors');
  set shippingAddressErrors(AddressErrors newValue) {
    js_util.setProperty(this, 'shippingAddressErrors', newValue);
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
///
///
///    ExtendableEvent
///
///
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
  external factory PaymentRequestEvent(String type,
      [PaymentRequestEventInit? eventInitDict]);
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
  dynamic get paymentOptions => js_util.getProperty(this, 'paymentOptions');
  Iterable<PaymentShippingOption> get shippingOptions =>
      js_util.getProperty(this, 'shippingOptions');
  Future<WindowClient> openWindow(String url) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'openWindow', [url]));

  Future<PaymentRequestDetailsUpdate> changePaymentMethod(String methodName,
          [dynamic methodDetails]) =>
      js_util.promiseToFuture(js_util.callMethod(
          this, 'changePaymentMethod', [methodName, methodDetails]));

  Future<PaymentRequestDetailsUpdate> changeShippingAddress(
          [AddressInit? shippingAddress]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'changeShippingAddress', [shippingAddress]));

  Future<PaymentRequestDetailsUpdate> changeShippingOption(
          String shippingOption) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'changeShippingOption', [shippingOption]));

  void respondWith(Future<PaymentHandlerResponse> handlerResponsePromise) =>
      js_util.callMethod(this, 'respondWith', [handlerResponsePromise]);
}

@anonymous
@JS()
@staticInterop
class PaymentRequestEventInit implements ExtendableEventInit {
  external factory PaymentRequestEventInit(
      {required String topOrigin,
      required String paymentRequestOrigin,
      required String paymentRequestId,
      required Iterable<PaymentMethodData> methodData,
      required PaymentCurrencyAmount total,
      required Iterable<PaymentDetailsModifier> modifiers,
      required PaymentOptions paymentOptions,
      required Iterable<PaymentShippingOption> shippingOptions});
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

  PaymentOptions get paymentOptions =>
      js_util.getProperty(this, 'paymentOptions');
  set paymentOptions(PaymentOptions newValue) {
    js_util.setProperty(this, 'paymentOptions', newValue);
  }

  Iterable<PaymentShippingOption> get shippingOptions =>
      js_util.getProperty(this, 'shippingOptions');
  set shippingOptions(Iterable<PaymentShippingOption> newValue) {
    js_util.setProperty(this, 'shippingOptions', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PaymentHandlerResponse {
  external factory PaymentHandlerResponse(
      {required String methodName,
      dynamic details,
      String? payerName,
      String? payerEmail,
      String? payerPhone,
      required AddressInit shippingAddress,
      String? shippingOption});
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

  String? get payerName => js_util.getProperty(this, 'payerName');
  set payerName(String? newValue) {
    js_util.setProperty(this, 'payerName', newValue);
  }

  String? get payerEmail => js_util.getProperty(this, 'payerEmail');
  set payerEmail(String? newValue) {
    js_util.setProperty(this, 'payerEmail', newValue);
  }

  String? get payerPhone => js_util.getProperty(this, 'payerPhone');
  set payerPhone(String? newValue) {
    js_util.setProperty(this, 'payerPhone', newValue);
  }

  AddressInit get shippingAddress =>
      js_util.getProperty(this, 'shippingAddress');
  set shippingAddress(AddressInit newValue) {
    js_util.setProperty(this, 'shippingAddress', newValue);
  }

  String? get shippingOption => js_util.getProperty(this, 'shippingOption');
  set shippingOption(String? newValue) {
    js_util.setProperty(this, 'shippingOption', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AddressInit {
  external factory AddressInit(
      {String? country = '',
      Iterable<String>? addressLine = const [],
      String? region = '',
      String? city = '',
      String? dependentLocality = '',
      String? postalCode = '',
      String? sortingCode = '',
      String? organization = '',
      String? recipient = '',
      String? phone = ''});
}

extension PropsAddressInit on AddressInit {
  String get country => js_util.getProperty(this, 'country');
  set country(String newValue) {
    js_util.setProperty(this, 'country', newValue);
  }

  Iterable<String> get addressLine => js_util.getProperty(this, 'addressLine');
  set addressLine(Iterable<String> newValue) {
    js_util.setProperty(this, 'addressLine', newValue);
  }

  String get region => js_util.getProperty(this, 'region');
  set region(String newValue) {
    js_util.setProperty(this, 'region', newValue);
  }

  String get city => js_util.getProperty(this, 'city');
  set city(String newValue) {
    js_util.setProperty(this, 'city', newValue);
  }

  String get dependentLocality =>
      js_util.getProperty(this, 'dependentLocality');
  set dependentLocality(String newValue) {
    js_util.setProperty(this, 'dependentLocality', newValue);
  }

  String get postalCode => js_util.getProperty(this, 'postalCode');
  set postalCode(String newValue) {
    js_util.setProperty(this, 'postalCode', newValue);
  }

  String get sortingCode => js_util.getProperty(this, 'sortingCode');
  set sortingCode(String newValue) {
    js_util.setProperty(this, 'sortingCode', newValue);
  }

  String get organization => js_util.getProperty(this, 'organization');
  set organization(String newValue) {
    js_util.setProperty(this, 'organization', newValue);
  }

  String get recipient => js_util.getProperty(this, 'recipient');
  set recipient(String newValue) {
    js_util.setProperty(this, 'recipient', newValue);
  }

  String get phone => js_util.getProperty(this, 'phone');
  set phone(String newValue) {
    js_util.setProperty(this, 'phone', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PaymentOptions {
  external factory PaymentOptions._(
      {bool? requestPayerName = false,
      bool? requestBillingAddress = false,
      bool? requestPayerEmail = false,
      bool? requestPayerPhone = false,
      bool? requestShipping = false,
      String? shippingType});

  factory PaymentOptions(
          {bool? requestPayerName = false,
          bool? requestBillingAddress = false,
          bool? requestPayerEmail = false,
          bool? requestPayerPhone = false,
          bool? requestShipping = false,
          PaymentShippingType? shippingType = PaymentShippingType.shipping}) =>
      PaymentOptions._(
          requestPayerName: requestPayerName,
          requestBillingAddress: requestBillingAddress,
          requestPayerEmail: requestPayerEmail,
          requestPayerPhone: requestPayerPhone,
          requestShipping: requestShipping,
          shippingType: shippingType?.value);
}

extension PropsPaymentOptions on PaymentOptions {
  bool get requestPayerName => js_util.getProperty(this, 'requestPayerName');
  set requestPayerName(bool newValue) {
    js_util.setProperty(this, 'requestPayerName', newValue);
  }

  bool get requestBillingAddress =>
      js_util.getProperty(this, 'requestBillingAddress');
  set requestBillingAddress(bool newValue) {
    js_util.setProperty(this, 'requestBillingAddress', newValue);
  }

  bool get requestPayerEmail => js_util.getProperty(this, 'requestPayerEmail');
  set requestPayerEmail(bool newValue) {
    js_util.setProperty(this, 'requestPayerEmail', newValue);
  }

  bool get requestPayerPhone => js_util.getProperty(this, 'requestPayerPhone');
  set requestPayerPhone(bool newValue) {
    js_util.setProperty(this, 'requestPayerPhone', newValue);
  }

  bool get requestShipping => js_util.getProperty(this, 'requestShipping');
  set requestShipping(bool newValue) {
    js_util.setProperty(this, 'requestShipping', newValue);
  }

  PaymentShippingType get shippingType =>
      PaymentShippingType.fromValue(js_util.getProperty(this, 'shippingType'));
  set shippingType(PaymentShippingType newValue) {
    js_util.setProperty(this, 'shippingType', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class PaymentShippingOption {
  external factory PaymentShippingOption(
      {required String id,
      required String label,
      required PaymentCurrencyAmount amount,
      bool? selected = false});
}

extension PropsPaymentShippingOption on PaymentShippingOption {
  String get id => js_util.getProperty(this, 'id');
  set id(String newValue) {
    js_util.setProperty(this, 'id', newValue);
  }

  String get label => js_util.getProperty(this, 'label');
  set label(String newValue) {
    js_util.setProperty(this, 'label', newValue);
  }

  PaymentCurrencyAmount get amount => js_util.getProperty(this, 'amount');
  set amount(PaymentCurrencyAmount newValue) {
    js_util.setProperty(this, 'amount', newValue);
  }

  bool get selected => js_util.getProperty(this, 'selected');
  set selected(bool newValue) {
    js_util.setProperty(this, 'selected', newValue);
  }
}

enum PaymentShippingType {
  shipping('shipping'),
  delivery('delivery'),
  pickup('pickup');

  final String value;
  static PaymentShippingType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<PaymentShippingType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const PaymentShippingType(this.value);
}

@anonymous
@JS()
@staticInterop
class AddressErrors {
  external factory AddressErrors(
      {required String addressLine,
      required String city,
      required String country,
      required String dependentLocality,
      required String organization,
      required String phone,
      required String postalCode,
      required String recipient,
      required String region,
      required String sortingCode});
}

extension PropsAddressErrors on AddressErrors {
  String get addressLine => js_util.getProperty(this, 'addressLine');
  set addressLine(String newValue) {
    js_util.setProperty(this, 'addressLine', newValue);
  }

  String get city => js_util.getProperty(this, 'city');
  set city(String newValue) {
    js_util.setProperty(this, 'city', newValue);
  }

  String get country => js_util.getProperty(this, 'country');
  set country(String newValue) {
    js_util.setProperty(this, 'country', newValue);
  }

  String get dependentLocality =>
      js_util.getProperty(this, 'dependentLocality');
  set dependentLocality(String newValue) {
    js_util.setProperty(this, 'dependentLocality', newValue);
  }

  String get organization => js_util.getProperty(this, 'organization');
  set organization(String newValue) {
    js_util.setProperty(this, 'organization', newValue);
  }

  String get phone => js_util.getProperty(this, 'phone');
  set phone(String newValue) {
    js_util.setProperty(this, 'phone', newValue);
  }

  String get postalCode => js_util.getProperty(this, 'postalCode');
  set postalCode(String newValue) {
    js_util.setProperty(this, 'postalCode', newValue);
  }

  String get recipient => js_util.getProperty(this, 'recipient');
  set recipient(String newValue) {
    js_util.setProperty(this, 'recipient', newValue);
  }

  String get region => js_util.getProperty(this, 'region');
  set region(String newValue) {
    js_util.setProperty(this, 'region', newValue);
  }

  String get sortingCode => js_util.getProperty(this, 'sortingCode');
  set sortingCode(String newValue) {
    js_util.setProperty(this, 'sortingCode', newValue);
  }
}
