/// Payment Request API
///
/// https://w3c.github.io/payment-request/
@JS('window')
@staticInterop
library payment_request;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html */

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The Payment Request API's interface is the primary access point
/// into the API, and lets web content and apps accept payments from
/// the end user on behalf of the operator of the site or the
/// publisher of the app.
@JS()
@staticInterop
class PaymentRequest implements EventTarget {
  external PaymentRequest(
      Iterable<PaymentMethodData> methodData, PaymentDetailsInit details);
}

extension PropsPaymentRequest on PaymentRequest {
  ///  Causes the user agent to begin the user interaction for the
  /// payment request.
  ///
  /// paymentPromise = paymentRequest.show(detailsPromise);
  ///
  @JS('show')
  @staticInterop
  Promise<PaymentResponse> mShow(
          [Promise<PaymentDetailsUpdate>? detailsPromise]) =>
      js_util.callMethod(this, 'show', [detailsPromise]);

  ///  Causes the user agent to end the payment request and to remove
  /// any user interface that might be shown.
  ///
  /// PaymentRequest.abort();
  ///
  Promise<Object> abort() => js_util.callMethod(this, 'abort', []);

  ///  Indicates whether the [PaymentRequest] object can make a payment
  /// before calling [show()].
  ///
  /// paymentRequest.canMakePayment()
  ///   .then( canPay => { /* ... */ })
  ///   .catch( error => { /* ... */ })
  ///
  /// canPay = await paymentRequest.canMakePayment();
  ///
  Promise<bool> canMakePayment() =>
      js_util.callMethod(this, 'canMakePayment', []);

  ///  An unique identifier for a particular [PaymentRequest], which
  /// can be set via [details.id]. When none is set, it defaults to a
  /// UUID.
  ///
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
  external factory PaymentMethodData({String supportedMethods, dynamic data});
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
  external factory PaymentCurrencyAmount({String currency, String value});
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
      {Iterable<PaymentItem> displayItems,
      Iterable<PaymentDetailsModifier> modifiers});
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
  external factory PaymentDetailsInit({String id, PaymentItem total});
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
      {PaymentItem total, dynamic paymentMethodErrors});
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
      {String supportedMethods,
      PaymentItem total,
      Iterable<PaymentItem> additionalDisplayItems,
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

enum PaymentShippingType { shipping, delivery, pickup }

@anonymous
@JS()
@staticInterop
class PaymentOptions {
  external factory PaymentOptions(
      {bool requestPayerName = false,
      bool requestBillingAddress = false,
      bool requestPayerEmail = false,
      bool requestPayerPhone = false,
      bool requestShipping = false,
      PaymentShippingType shippingType = PaymentShippingType.shipping});
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
      js_util.getProperty(this, 'shippingType');
  set shippingType(PaymentShippingType newValue) {
    js_util.setProperty(this, 'shippingType', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PaymentItem {
  external factory PaymentItem(
      {String label, PaymentCurrencyAmount amount, bool pending = false});
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

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers. Deprecated:
/// This feature is no longer recommended. Though some browsers might
/// still support it, it may have already been removed from the
/// relevant web standards, may be in the process of being dropped,
/// or may only be kept for compatibility purposes. Avoid using it,
/// and update existing code if possible; see the compatibility table
/// at the bottom of this page to guide your decision. Be aware that
/// this feature may cease to work at any time.Non-standard: This
/// feature is non-standard and is not on a standards track. Do not
/// use it on production sites facing the Web: it will not work for
/// every user. There may also be large incompatibilities between
/// implementations and the behavior may change in the future.
///  The interface of the Payment Request API is used to store
/// shipping or payment address information.
///  It may be useful to refer to the Universal Postal Union web
/// site's Addressing S42 standard materials, which provide
/// information about international standards for postal addresses.
@JS()
@staticInterop
class PaymentAddress {
  external PaymentAddress();
}

extension PropsPaymentAddress on PaymentAddress {
  ///  A standard serializer that returns a JSON representation of the
  /// [PaymentAddress] object's properties.
  ///
  /// var json = PaymentAddress.toJSON()
  ///
  @deprecated
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  ///  A [DOMString] which contains the city or town portion of the
  /// address.
  ///
  @deprecated
  String get city => js_util.getProperty(this, 'city');

  ///  A [DOMString] specifying the country in which the address is
  /// located, using the ISO-3166-1 alpha-2 standard. The string is
  /// always given in its canonical upper-case form. Some examples of
  /// valid values: ["US"], ["GB"], ["CN"], or ["JP"].
  ///
  @deprecated
  String get country => js_util.getProperty(this, 'country');

  ///  A [DOMString] giving the dependent locality or sublocality
  /// within a city, for example, a neighborhood, borough, district, or
  /// UK dependent locality.
  ///
  @deprecated
  String get dependentLocality =>
      js_util.getProperty(this, 'dependentLocality');

  ///  A [DOMString] specifying the name of the organization, firm,
  /// company, or institution at the payment address.
  ///
  @deprecated
  String get organization => js_util.getProperty(this, 'organization');

  ///  A [DOMString] specifying the telephone number of the recipient
  /// or contact person.
  ///
  @deprecated
  String get phone => js_util.getProperty(this, 'phone');

  ///  A [DOMString] specifying a code used by a jurisdiction for mail
  /// routing, for example, the ZIP code in the United States or the
  /// PIN code in India.
  ///
  @deprecated
  String get postalCode => js_util.getProperty(this, 'postalCode');

  ///  A [DOMString] giving the name of the recipient, purchaser, or
  /// contact person at the payment address.
  ///
  @deprecated
  String get recipient => js_util.getProperty(this, 'recipient');

  ///  A [DOMString] containing the top level administrative
  /// subdivision of the country, for example a state, province,
  /// oblast, or prefecture.
  ///
  @deprecated
  String get region => js_util.getProperty(this, 'region');

  ///  A [DOMString] providing a postal sorting code such as is used in
  /// France.
  ///
  @deprecated
  String get sortingCode => js_util.getProperty(this, 'sortingCode');

  ///  An array of [DOMString] objects providing each line of the
  /// address not included among the other properties. The exact size
  /// and content varies by country or location and can include, for
  /// example, a street name, house number, apartment number, rural
  /// delivery route, descriptive instructions, or post office box
  /// number.
  ///
  @deprecated
  Iterable<String> get addressLine => js_util.getProperty(this, 'addressLine');
}

@anonymous
@JS()
@staticInterop
class AddressInit {
  external factory AddressInit(
      {String country = '',
      Iterable<String> addressLine = const [],
      String region = '',
      String city = '',
      String dependentLocality = '',
      String postalCode = '',
      String sortingCode = '',
      String organization = '',
      String recipient = '',
      String phone = ''});
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

///  The dictionary is used by the Payment Request API to report
/// validation errors in a physical address (typically a billing
/// address or a shipping address). Any members which are present
/// indicate that a validation error occurred for the member of the
/// same name in an address described using [PaymentAddress].
///   is the type of the object returned by [shippingAddressErrors]
/// in the object passed into
/// [PaymentRequestUpdateEvent.updateWith()] by the
/// [shippingaddresschange] event handler if a change to the address
/// resulted in a validation error occurring.
/// See the examples below to see how this works.
@anonymous
@JS()
@staticInterop
class AddressErrors {
  external factory AddressErrors(
      {String addressLine,
      String city,
      String country,
      String dependentLocality,
      String organization,
      String phone,
      String postalCode,
      String recipient,
      String region,
      String sortingCode});
}

extension PropsAddressErrors on AddressErrors {
  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  String get addressLine => js_util.getProperty(this, 'addressLine');
  set addressLine(String newValue) {
    js_util.setProperty(this, 'addressLine', newValue);
  }

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  String get city => js_util.getProperty(this, 'city');
  set city(String newValue) {
    js_util.setProperty(this, 'city', newValue);
  }

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  String get country => js_util.getProperty(this, 'country');
  set country(String newValue) {
    js_util.setProperty(this, 'country', newValue);
  }

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  String get dependentLocality =>
      js_util.getProperty(this, 'dependentLocality');
  set dependentLocality(String newValue) {
    js_util.setProperty(this, 'dependentLocality', newValue);
  }

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  String get organization => js_util.getProperty(this, 'organization');
  set organization(String newValue) {
    js_util.setProperty(this, 'organization', newValue);
  }

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  String get phone => js_util.getProperty(this, 'phone');
  set phone(String newValue) {
    js_util.setProperty(this, 'phone', newValue);
  }

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  String get postalCode => js_util.getProperty(this, 'postalCode');
  set postalCode(String newValue) {
    js_util.setProperty(this, 'postalCode', newValue);
  }

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  String get recipient => js_util.getProperty(this, 'recipient');
  set recipient(String newValue) {
    js_util.setProperty(this, 'recipient', newValue);
  }

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  String get region => js_util.getProperty(this, 'region');
  set region(String newValue) {
    js_util.setProperty(this, 'region', newValue);
  }

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  String get sortingCode => js_util.getProperty(this, 'sortingCode');
  set sortingCode(String newValue) {
    js_util.setProperty(this, 'sortingCode', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PaymentShippingOption {
  external factory PaymentShippingOption(
      {String id,
      String label,
      PaymentCurrencyAmount amount,
      bool selected = false});
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

enum PaymentComplete { fail, success, unknown }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Payment Request API is returned after a
/// user selects a payment method and approves a payment request.
@experimental
@JS()
@staticInterop
class PaymentResponse implements EventTarget {
  external PaymentResponse();
}

extension PropsPaymentResponse on PaymentResponse {
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);

  ///  Returns the identifier of the [PaymentRequest] that produced the
  /// current response. This is the same value supplied in the
  /// [PaymentRequest()] constructor by [details.id].
  ///
  String get requestId => js_util.getProperty(this, 'requestId');

  ///  Returns the payment method identifier for the payment method
  /// that the user selected, for example, Visa, Mastercard, Paypal,
  /// etc..
  ///
  String get methodName => js_util.getProperty(this, 'methodName');

  ///  Returns a JSON-serializable object that provides a payment
  /// method specific message used by the merchant to process the
  /// transaction and determine successful fund transfer. The contents
  /// of the object depend on the payment method being used. Developers
  /// need to consult whomever controls the URL for the expected shape
  /// of the details object.
  ///
  dynamic get details => js_util.getProperty(this, 'details');

  ///  Notifies the user agent that the user interaction is over. This
  /// causes any remaining user interface to be closed. This method
  /// should only be called after the Promise returned by the
  /// [PaymentRequest.show()] method.
  ///
  /// completePromise = paymentRequest.complete(result);
  ///
  Promise<Object> complete(
          [PaymentComplete? result = PaymentComplete.unknown]) =>
      js_util.callMethod(this, 'complete', [result]);

  ///  If something is wrong with the payment response's data (and
  /// there is a recoverable error), this method allows a merchant to
  /// request that the user retry the payment. The method takes an
  /// object as argument, which is used to signal to the user exactly
  /// what is wrong with the payment response so they can try to
  /// correct any issues.
  ///
  /// retryPromise = paymentRequest.retry(errorFields);
  ///
  Promise<Object> retry([PaymentValidationErrors? errorFields]) =>
      js_util.callMethod(this, 'retry', [errorFields]);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The dictionary represents objects providing information about
/// any and all errors that occurred while processing a payment
/// request. When validation of the [PaymentResponse] returned by the
/// [PaymentRequest.show()] or [PaymentResponse.retry()] methods
/// fails, your code creates a object to pass into [retry()] so that
/// the user agent knows what needs to be fixed and what if any error
/// messages to display to the user.
@anonymous
@JS()
@staticInterop
class PaymentValidationErrors {
  external factory PaymentValidationErrors(
      {String error, dynamic paymentMethod});
}

extension PropsPaymentValidationErrors on PaymentValidationErrors {
  ///  A general description of a payment error from which the user may
  /// attempt to recover by retrying the payment, possibly after
  /// correcting mistakes in the payment information. can be provided
  /// all by itself to provide only a generic error message, or in
  /// concert with the other properties to serve as an overview while
  /// other properties' values gude the user to errors in specific
  /// fields in the payment form.
  ///
  String get error => js_util.getProperty(this, 'error');
  set error(String newValue) {
    js_util.setProperty(this, 'error', newValue);
  }

  ///  Any payment method specific errors which may have occurred. This
  /// object's contents will vary depending on the payment method used.
  ///
  dynamic get paymentMethod => js_util.getProperty(this, 'paymentMethod');
  set paymentMethod(dynamic newValue) {
    js_util.setProperty(this, 'paymentMethod', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PayerErrors {
  external factory PayerErrors({String email, String name, String phone});
}

extension PropsPayerErrors on PayerErrors {
  String get email => js_util.getProperty(this, 'email');
  set email(String newValue) {
    js_util.setProperty(this, 'email', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }

  String get phone => js_util.getProperty(this, 'phone');
  set phone(String newValue) {
    js_util.setProperty(this, 'phone', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Payment Request API describes the
/// [paymentmethodchange] event which is fired by some payment
/// handlers when the user switches payment instruments (e.g., a user
/// selects a "store" card to make a purchase while using Apple Pay).
@JS()
@staticInterop
class PaymentMethodChangeEvent implements PaymentRequestUpdateEvent {
  external PaymentMethodChangeEvent(String type,
      [PaymentMethodChangeEventInit? eventInitDict]);
}

extension PropsPaymentMethodChangeEvent on PaymentMethodChangeEvent {
  ///  A [DOMString] containing the payment method identifier, a string
  /// which uniquely identifies a particular payment method. This
  /// identifier is usually a URL used during the payment process, but
  /// may be a standardized non-URL string as well, such as
  /// [basic-card]. The default value is the empty string, [""].
  ///
  String get methodName => js_util.getProperty(this, 'methodName');

  ///  An object containing payment method-specific data useful when
  /// handling a payment method change. If no such information is
  /// available, this value is [null].
  ///
  dynamic get methodDetails => js_util.getProperty(this, 'methodDetails');
}

@anonymous
@JS()
@staticInterop
class PaymentMethodChangeEventInit implements PaymentRequestUpdateEventInit {
  external factory PaymentMethodChangeEventInit(
      {String methodName = '', dynamic methodDetails});
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
///
///    Dispatched whenever the user changes their shipping address.
///     Also available using the [onshippingaddresschange] event
/// handler property.
///
///
///  [shippingoptionchange] Secure context
///
///
///    Dispatched whenever the user changes a shipping option.
///     Also available using the [onshippingoptionchange] event
/// handler property.
///
///
///
@experimental
@JS()
@staticInterop
class PaymentRequestUpdateEvent implements Event {
  external PaymentRequestUpdateEvent(String type,
      [PaymentRequestUpdateEventInit? eventInitDict]);
}

extension PropsPaymentRequestUpdateEvent on PaymentRequestUpdateEvent {
  ///  If the event handler determines that information included in the
  /// payment request needs to be changed, or that new information
  /// needs to be added, it calls [updateWith()] with the information
  /// that needs to be replaced or added.
  ///
  /// paymentRequestUpdateEvent.updateWith(details);
  ///
  Object updateWith(Promise<PaymentDetailsUpdate> detailsPromise) =>
      js_util.callMethod(this, 'updateWith', [detailsPromise]);
}

@anonymous
@JS()
@staticInterop
class PaymentRequestUpdateEventInit implements EventInit {
  external factory PaymentRequestUpdateEventInit();
}
