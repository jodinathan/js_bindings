/// Payment Request API
///
/// https://w3c.github.io/payment-request/
@JS('window')
@staticInterop
library payment_request;

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
  external factory PaymentRequest(
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
  external Promise<PaymentResponse> mShow(
      [Promise<PaymentDetailsUpdate>? detailsPromise]);

  ///  Causes the user agent to end the payment request and to remove
  /// any user interface that might be shown.
  ///
  /// PaymentRequest.abort();
  ///
  external Promise<Object> abort();

  ///  Indicates whether the [PaymentRequest] object can make a payment
  /// before calling [show()].
  ///
  /// paymentRequest.canMakePayment()
  ///   .then( canPay => { /* ... */ })
  ///   .catch( error => { /* ... */ })
  ///
  /// canPay = await paymentRequest.canMakePayment();
  ///
  external Promise<bool> canMakePayment();

  ///  An unique identifier for a particular [PaymentRequest], which
  /// can be set via [details.id]. When none is set, it defaults to a
  /// UUID.
  ///
  external String get id;
  external EventHandlerNonNull? get onpaymentmethodchange;
  external set onpaymentmethodchange(EventHandlerNonNull? newValue);
}

@anonymous
@JS()
@staticInterop
class PaymentMethodData {
  external factory PaymentMethodData({String supportedMethods, dynamic data});
}

extension PropsPaymentMethodData on PaymentMethodData {
  external String get supportedMethods;
  external set supportedMethods(String newValue);
  external dynamic get data;
  external set data(dynamic newValue);
}

@anonymous
@JS()
@staticInterop
class PaymentCurrencyAmount {
  external factory PaymentCurrencyAmount({String currency, String value});
}

extension PropsPaymentCurrencyAmount on PaymentCurrencyAmount {
  external String get currency;
  external set currency(String newValue);
  external String get value;
  external set value(String newValue);
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
  external Iterable<PaymentItem> get displayItems;
  external set displayItems(Iterable<PaymentItem> newValue);
  external Iterable<PaymentDetailsModifier> get modifiers;
  external set modifiers(Iterable<PaymentDetailsModifier> newValue);
}

@anonymous
@JS()
@staticInterop
class PaymentDetailsInit implements PaymentDetailsBase {
  external factory PaymentDetailsInit({String id, PaymentItem total});
}

extension PropsPaymentDetailsInit on PaymentDetailsInit {
  external String get id;
  external set id(String newValue);
  external PaymentItem get total;
  external set total(PaymentItem newValue);
}

@anonymous
@JS()
@staticInterop
class PaymentDetailsUpdate implements PaymentDetailsBase {
  external factory PaymentDetailsUpdate(
      {PaymentItem total, dynamic paymentMethodErrors});
}

extension PropsPaymentDetailsUpdate on PaymentDetailsUpdate {
  external PaymentItem get total;
  external set total(PaymentItem newValue);
  external dynamic get paymentMethodErrors;
  external set paymentMethodErrors(dynamic newValue);
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
  external String get supportedMethods;
  external set supportedMethods(String newValue);
  external PaymentItem get total;
  external set total(PaymentItem newValue);
  external Iterable<PaymentItem> get additionalDisplayItems;
  external set additionalDisplayItems(Iterable<PaymentItem> newValue);
  external dynamic get data;
  external set data(dynamic newValue);
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
  external bool get requestPayerName;
  external set requestPayerName(bool newValue);
  external bool get requestBillingAddress;
  external set requestBillingAddress(bool newValue);
  external bool get requestPayerEmail;
  external set requestPayerEmail(bool newValue);
  external bool get requestPayerPhone;
  external set requestPayerPhone(bool newValue);
  external bool get requestShipping;
  external set requestShipping(bool newValue);
  external PaymentShippingType get shippingType;
  external set shippingType(PaymentShippingType newValue);
}

@anonymous
@JS()
@staticInterop
class PaymentItem {
  external factory PaymentItem(
      {String label, PaymentCurrencyAmount amount, bool pending = false});
}

extension PropsPaymentItem on PaymentItem {
  external String get label;
  external set label(String newValue);
  external PaymentCurrencyAmount get amount;
  external set amount(PaymentCurrencyAmount newValue);
  external bool get pending;
  external set pending(bool newValue);
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
  external factory PaymentAddress();
}

extension PropsPaymentAddress on PaymentAddress {
  ///  A standard serializer that returns a JSON representation of the
  /// [PaymentAddress] object's properties.
  ///
  /// var json = PaymentAddress.toJSON()
  ///
  @deprecated
  external dynamic toJSON();

  ///  A [DOMString] which contains the city or town portion of the
  /// address.
  ///
  @deprecated
  external String get city;

  ///  A [DOMString] specifying the country in which the address is
  /// located, using the ISO-3166-1 alpha-2 standard. The string is
  /// always given in its canonical upper-case form. Some examples of
  /// valid values: ["US"], ["GB"], ["CN"], or ["JP"].
  ///
  @deprecated
  external String get country;

  ///  A [DOMString] giving the dependent locality or sublocality
  /// within a city, for example, a neighborhood, borough, district, or
  /// UK dependent locality.
  ///
  @deprecated
  external String get dependentLocality;

  ///  A [DOMString] specifying the name of the organization, firm,
  /// company, or institution at the payment address.
  ///
  @deprecated
  external String get organization;

  ///  A [DOMString] specifying the telephone number of the recipient
  /// or contact person.
  ///
  @deprecated
  external String get phone;

  ///  A [DOMString] specifying a code used by a jurisdiction for mail
  /// routing, for example, the ZIP code in the United States or the
  /// PIN code in India.
  ///
  @deprecated
  external String get postalCode;

  ///  A [DOMString] giving the name of the recipient, purchaser, or
  /// contact person at the payment address.
  ///
  @deprecated
  external String get recipient;

  ///  A [DOMString] containing the top level administrative
  /// subdivision of the country, for example a state, province,
  /// oblast, or prefecture.
  ///
  @deprecated
  external String get region;

  ///  A [DOMString] providing a postal sorting code such as is used in
  /// France.
  ///
  @deprecated
  external String get sortingCode;

  ///  An array of [DOMString] objects providing each line of the
  /// address not included among the other properties. The exact size
  /// and content varies by country or location and can include, for
  /// example, a street name, house number, apartment number, rural
  /// delivery route, descriptive instructions, or post office box
  /// number.
  ///
  @deprecated
  external Iterable<String> get addressLine;
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
  external String get country;
  external set country(String newValue);
  external Iterable<String> get addressLine;
  external set addressLine(Iterable<String> newValue);
  external String get region;
  external set region(String newValue);
  external String get city;
  external set city(String newValue);
  external String get dependentLocality;
  external set dependentLocality(String newValue);
  external String get postalCode;
  external set postalCode(String newValue);
  external String get sortingCode;
  external set sortingCode(String newValue);
  external String get organization;
  external set organization(String newValue);
  external String get recipient;
  external set recipient(String newValue);
  external String get phone;
  external set phone(String newValue);
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
  external String get addressLine;
  external set addressLine(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  external String get city;
  external set city(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  external String get country;
  external set country(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  external String get dependentLocality;
  external set dependentLocality(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  external String get organization;
  external set organization(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  external String get phone;
  external set phone(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  external String get postalCode;
  external set postalCode(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  external String get recipient;
  external set recipient(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  external String get region;
  external set region(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  ///
  external String get sortingCode;
  external set sortingCode(String newValue);
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
  external String get id;
  external set id(String newValue);
  external String get label;
  external set label(String newValue);
  external PaymentCurrencyAmount get amount;
  external set amount(PaymentCurrencyAmount newValue);
  external bool get selected;
  external set selected(bool newValue);
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
  external factory PaymentResponse();
}

extension PropsPaymentResponse on PaymentResponse {
  external dynamic toJSON();

  ///  Returns the identifier of the [PaymentRequest] that produced the
  /// current response. This is the same value supplied in the
  /// [PaymentRequest()] constructor by [details.id].
  ///
  external String get requestId;

  ///  Returns the payment method identifier for the payment method
  /// that the user selected, for example, Visa, Mastercard, Paypal,
  /// etc..
  ///
  external String get methodName;

  ///  Returns a JSON-serializable object that provides a payment
  /// method specific message used by the merchant to process the
  /// transaction and determine successful fund transfer. The contents
  /// of the object depend on the payment method being used. Developers
  /// need to consult whomever controls the URL for the expected shape
  /// of the details object.
  ///
  external dynamic get details;

  ///  Notifies the user agent that the user interaction is over. This
  /// causes any remaining user interface to be closed. This method
  /// should only be called after the Promise returned by the
  /// [PaymentRequest.show()] method.
  ///
  /// completePromise = paymentRequest.complete(result);
  ///
  external Promise<Object> complete(
      [PaymentComplete? result = PaymentComplete.unknown]);

  ///  If something is wrong with the payment response's data (and
  /// there is a recoverable error), this method allows a merchant to
  /// request that the user retry the payment. The method takes an
  /// object as argument, which is used to signal to the user exactly
  /// what is wrong with the payment response so they can try to
  /// correct any issues.
  ///
  /// retryPromise = paymentRequest.retry(errorFields);
  ///
  external Promise<Object> retry([PaymentValidationErrors? errorFields]);
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
  external String get error;
  external set error(String newValue);

  ///  Any payment method specific errors which may have occurred. This
  /// object's contents will vary depending on the payment method used.
  ///
  external dynamic get paymentMethod;
  external set paymentMethod(dynamic newValue);
}

@anonymous
@JS()
@staticInterop
class PayerErrors {
  external factory PayerErrors({String email, String name, String phone});
}

extension PropsPayerErrors on PayerErrors {
  external String get email;
  external set email(String newValue);
  external String get name;
  external set name(String newValue);
  external String get phone;
  external set phone(String newValue);
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
  external factory PaymentMethodChangeEvent(String type,
      [PaymentMethodChangeEventInit? eventInitDict]);
}

extension PropsPaymentMethodChangeEvent on PaymentMethodChangeEvent {
  ///  A [DOMString] containing the payment method identifier, a string
  /// which uniquely identifies a particular payment method. This
  /// identifier is usually a URL used during the payment process, but
  /// may be a standardized non-URL string as well, such as
  /// [basic-card]. The default value is the empty string, [""].
  ///
  external String get methodName;

  ///  An object containing payment method-specific data useful when
  /// handling a payment method change. If no such information is
  /// available, this value is [null].
  ///
  external dynamic get methodDetails;
}

@anonymous
@JS()
@staticInterop
class PaymentMethodChangeEventInit implements PaymentRequestUpdateEventInit {
  external factory PaymentMethodChangeEventInit(
      {String methodName = '', dynamic methodDetails});
}

extension PropsPaymentMethodChangeEventInit on PaymentMethodChangeEventInit {
  external String get methodName;
  external set methodName(String newValue);
  external dynamic get methodDetails;
  external set methodDetails(dynamic newValue);
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
  external factory PaymentRequestUpdateEvent(String type,
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
  external Object updateWith(Promise<PaymentDetailsUpdate> detailsPromise);
}

@anonymous
@JS()
@staticInterop
class PaymentRequestUpdateEventInit implements EventInit {
  external factory PaymentRequestUpdateEventInit();
}
