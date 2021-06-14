/// Payment Request API
///
/// https://w3c.github.io/payment-request/
@JS('window')
library payment_request;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The Payment Request API's interface the primary access point
/// into the API, and lets web content and apps accept payments from
/// the end user on behalf of the operator of the site or the
/// publisher of the app.
@JS()
class PaymentRequest extends EventTarget {
  external factory PaymentRequest(
      {Iterable<PaymentMethodData> methodData, PaymentDetailsInit details});

  ///  Causes the user agent to begin the user interaction for the
  /// payment request.
  /// paymentPromise = paymentRequest.show(detailsPromise);
  ///
  @JS('show')
  external Promise<PaymentResponse> mShow(
      [Promise<PaymentDetailsUpdate>? detailsPromise]);

  ///  Causes the user agent to end the payment request and to remove
  /// any user interface that might be shown.
  /// PaymentRequest.abort();
  external Promise<Object> abort();

  ///  Indicates whether the [PaymentRequest] object can make a payment
  /// before calling [show()].
  /// paymentRequest.canMakePayment()
  ///   .then( canPay => { ... })
  ///   .catch( error => { ... })
  ///
  /// canPay = await paymentRequest.canMakePayment();
  ///
  external Promise<bool> canMakePayment();

  ///  An unique identifier for a particular [PaymentRequest], which
  /// can be set via [details.id]. When none is set, it defaults to a
  /// UUID.
  external String get id;
  external EventHandlerNonNull? get onpaymentmethodchange;
  external set onpaymentmethodchange(EventHandlerNonNull? newValue);
}

@anonymous
@JS()
class PaymentMethodData {
  external String get supportedMethods;
  external set supportedMethods(String newValue);
  external dynamic get data;
  external set data(dynamic newValue);

  external factory PaymentMethodData({String supportedMethods, dynamic data});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The dictionary describes an amount of money in terms of both a
/// number of units and the currency (US dollars, Euro, yen, etc.),
/// and is part of the Payment Request API. This is used to specify
/// the prices of both line items on a payment, using [PaymentItem]
/// objects, and to provide the cost of a shipping option, using
/// [PaymentShippingOption].
@anonymous
@JS()
class PaymentCurrencyAmount {
  ///  A string containing a valid 3-letter ISO 4217 currency
  /// identifier (ISO 4217) indicating the currency used for the
  /// payment [value].
  external String get currency;
  external set currency(String newValue);

  ///  A string containing a valid decimal value representing the mount
  /// of currency constituting the payment amount. This string must
  /// only contain an optional leading "-" to indicate a negative
  /// value, then one or more digits from 0 to 9, and an optional
  /// decimal point (".", regardless of locale) followed by at least
  /// one more digit. No whitespace is permitted.
  external String get value;
  external set value(String newValue);

  external factory PaymentCurrencyAmount({String currency, String value});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The [PaymentDetailsBase] dictionary is a mixin used by the
/// [PaymentDetailsInit] and [PaymentDetailsUpdate] dictionaries. It
/// is never directly used by developers and is included here only to
/// be used as the basis for those documents.
@experimental
@anonymous
@JS()
class PaymentDetailsBase {
  ///  An array of [PaymentItem] objects, each describing one line item
  /// for the payment request. These represent the line items on a
  /// receipt or invoice.
  external Iterable<PaymentItem> get displayItems;
  external set displayItems(Iterable<PaymentItem> newValue);

  ///  An array of [PaymentDetailsModifier] objects, each describing a
  /// modifier for particular payment method identifiers. For example,
  /// you can use one to adjust the total payment amount based on the
  /// selected payment method ("5% cash discount!").
  external Iterable<PaymentDetailsModifier> get modifiers;
  external set modifiers(Iterable<PaymentDetailsModifier> newValue);

  external factory PaymentDetailsBase(
      {Iterable<PaymentItem> displayItems,
      Iterable<PaymentDetailsModifier> modifiers});
}

@anonymous
@JS()
class PaymentDetailsInit extends PaymentDetailsBase {
  external String get id;
  external set id(String newValue);
  external PaymentItem get total;
  external set total(PaymentItem newValue);

  external factory PaymentDetailsInit({String id, PaymentItem total});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Draft
///   This page is not complete.
///
///  The [PaymentDetailsUpdate] dictionary is used to provide updated
/// information to the payment user interface after it has been
/// instantiated. This can be done either by calling the
/// [PaymentRequestUpdateEvent.updateWith()] method or by using the
/// [PaymentRequest.show()] method's [detailsPromise] parameter to
/// provide a [Promise] that returns a that updates the payment
/// information before the user interface is even enabled for the
/// first time.
@anonymous
@JS()
class PaymentDetailsUpdate extends PaymentDetailsBase {
  ///  A [PaymentItem] providing an updated total for the payment. Make
  /// sure this equals the sum of all of the items in [displayItems].
  /// This is not calculated automatically. You must update this value
  /// yourself anytime the total amount due changes. This lets you have
  /// flexibility for how to handle things like tax, discounts, and
  /// other adjustments to the total price charged.
  external PaymentItem get total;
  external set total(PaymentItem newValue);
  external dynamic get paymentMethodErrors;
  external set paymentMethodErrors(dynamic newValue);

  external factory PaymentDetailsUpdate(
      {PaymentItem total, dynamic paymentMethodErrors});
}

@anonymous
@JS()
class PaymentDetailsModifier {
  external String get supportedMethods;
  external set supportedMethods(String newValue);
  external PaymentItem get total;
  external set total(PaymentItem newValue);
  external Iterable<PaymentItem> get additionalDisplayItems;
  external set additionalDisplayItems(Iterable<PaymentItem> newValue);
  external dynamic get data;
  external set data(dynamic newValue);

  external factory PaymentDetailsModifier(
      {String supportedMethods,
      PaymentItem total,
      Iterable<PaymentItem> additionalDisplayItems,
      dynamic data});
}

@JS()
enum PaymentShippingType { shipping, delivery, pickup }

@anonymous
@JS()
class PaymentOptions {
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

  external factory PaymentOptions(
      {bool requestPayerName = false,
      bool requestBillingAddress = false,
      bool requestPayerEmail = false,
      bool requestPayerPhone = false,
      bool requestShipping = false,
      PaymentShippingType shippingType = PaymentShippingType.shipping});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The dictionary is used by the Payment Request API to describe a
/// single line item on a payment request. This might be an item or
/// service being purchased or a tax or other charge.
@anonymous
@JS()
class PaymentItem {
  ///  A string specifying a human-readable name or description of the
  /// item or service being charged for. This may be displayed to the
  /// user by the user agent, depending on the design of the interface.
  external String get label;
  external set label(String newValue);

  ///  A [PaymentCurrencyAmount] object describing the monetary value
  /// of the item.
  external PaymentCurrencyAmount get amount;
  external set amount(PaymentCurrencyAmount newValue);

  ///  A Boolean value which is [true] if the specified [amount] has
  /// not yet been finalized. This can be used to show items such as
  /// shipping or tax amounts that depend upon the selection of
  /// shipping address, shipping option, or so forth. The user agent
  /// may show this information but is not required to do so.
  external bool get pending;
  external set pending(bool newValue);

  external factory PaymentItem(
      {String label, PaymentCurrencyAmount amount, bool pending = false});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///       Deprecated
///        This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///     Non-standard
///      This feature is non-standard and is not on a standards
/// track. Do not use it on production sites facing the Web: it will
/// not work for every user. There may also be large
/// incompatibilities between implementations and the behavior may
/// change in the future.
///
///
///  The interface of the Payment Request API is used to store
/// shipping or payment address information.
///
///  It may be useful to refer to the Universal Postal Union web
/// site's Addressing S42 standard materials, which provide
/// information about international standards for postal addresses.
@JS()
class PaymentAddress {
  ///  A standard serializer that returns a JSON representation of the
  /// [PaymentAddress] object's properties.
  /// var json = PaymentAddress.toJSON()
  @deprecated
  external dynamic toJSON();

  ///  A [DOMString] which contains the city or town portion of the
  /// address.
  @deprecated
  external String get city;

  ///  A [DOMString] specifying the country in which the address is
  /// located, using the ISO-3166-1 alpha-2 standard. The string is
  /// always given in its canonical upper-case form. Some examples of
  /// valid values: ["US"], ["GB"], ["CN"], or ["JP"].
  @deprecated
  external String get country;

  ///  A [DOMString] giving the dependent locality or sublocality
  /// within a city, for example, a neighborhood, borough, district, or
  /// UK dependent locality.
  @deprecated
  external String get dependentLocality;

  ///  A [DOMString] specifying the name of the organization, firm,
  /// company, or institution at the payment address.
  @deprecated
  external String get organization;

  ///  A [DOMString] specifying the telephone number of the recipient
  /// or contact person.
  @deprecated
  external String get phone;

  ///  A [DOMString] specifying a code used by a jurisdiction for mail
  /// routing, for example, the ZIP code in the United States or the
  /// PIN code in India.
  @deprecated
  external String get postalCode;

  ///  A [DOMString] giving the name of the recipient, purchaser, or
  /// contact person at the payment address.
  @deprecated
  external String get recipient;

  ///  A [DOMString] containing the top level administrative
  /// subdivision of the country, for example a state, province,
  /// oblast, or prefecture.
  @deprecated
  external String get region;

  ///  A [DOMString] providing a postal sorting code such as is used in
  /// France.
  @deprecated
  external String get sortingCode;

  ///  An array of [DOMString] objects providing each line of the
  /// address not included among the other properties. The exact size
  /// and content varies by country or location and can include, for
  /// example, a street name, house number, apartment number, rural
  /// delivery route, descriptive instructions, or post office box
  /// number.
  @deprecated
  external Iterable<String> get addressLine;

  external factory PaymentAddress();
}

@anonymous
@JS()
class AddressInit {
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

///
///
///  The dictionary is used by the Payment Request API to report
/// validation errors in a physical address (typically a billing
/// address or a shipping address). Any members which is present
/// indicates that a validation error occurred for the member of the
/// same name in an address described using [PaymentAddress].
///
///   is the type of the object returned by [shippingAddressErrors]
/// in the [PaymentDetailsUpdate] passed into
/// [PaymentRequestUpdateEvent.updateWith()] by the
/// [shippingaddresschange] event handler if a change to the address
/// resulted in a validation error occurring.
///
/// See the examples below to see how this works.
@anonymous
@JS()
class AddressErrors {
  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  external String get addressLine;
  external set addressLine(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  external String get city;
  external set city(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  external String get country;
  external set country(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  external String get dependentLocality;
  external set dependentLocality(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  external String get organization;
  external set organization(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  external String get phone;
  external set phone(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  external String get postalCode;
  external set postalCode(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  external String get recipient;
  external set recipient(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  external String get region;
  external set region(String newValue);

  ///  A [DOMString] which, if present, indicates that the property of
  /// the [PaymentAddress] could not be validated. The contents of the
  /// string provide a human-readable explanation of the validation
  /// failure, and ideally suggestions to correct the problem.
  external String get sortingCode;
  external set sortingCode(String newValue);

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

@anonymous
@JS()
class PaymentShippingOption {
  external String get id;
  external set id(String newValue);
  external String get label;
  external set label(String newValue);
  external PaymentCurrencyAmount get amount;
  external set amount(PaymentCurrencyAmount newValue);
  external bool get selected;
  external set selected(bool newValue);

  external factory PaymentShippingOption(
      {String id,
      String label,
      PaymentCurrencyAmount amount,
      bool selected = false});
}

@JS()
enum PaymentComplete { fail, success, unknown }

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the Payment Request API is returned after a
/// user selects a payment method and approves a payment request.
@experimental
@JS()
class PaymentResponse extends EventTarget {
  external dynamic toJSON();

  ///  Returns the identifier of the [PaymentRequest] that produced the
  /// current response. This is the same value supplied in the
  /// [PaymentRequest()] constructor by [details.id].
  external String get requestId;

  ///  Returns the payment method identifier for the payment method
  /// that the user selected, for example, Visa, Mastercard, Paypal,
  /// etc..
  external String get methodName;

  ///  Returns a JSON-serializable object that provides a payment
  /// method specific message used by the merchant to process the
  /// transaction and determine successful fund transfer. The contents
  /// of the object depend on the payment method being used; for
  /// example, if the Basic Card payment method is used, this object
  /// must conform to the structure defined in the [BasicCardResponse]
  /// dictionary.
  external dynamic get details;

  ///  Notifies the user agent that the user interaction is over. This
  /// causes any remaining user interface to be closed. This method
  /// should only be called after the Promise returned by the
  /// [PaymentRequest.show()] method.
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
  /// retryPromise = paymentRequest.retry(errorFields);
  ///
  external Promise<Object> retry([PaymentValidationErrors? errorFields]);

  external factory PaymentResponse();
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The [PaymentValidationErrors] dictionary represents objects
/// providing information about any and all errors that occurred
/// while processing a payment request. When validation of the
/// [PaymentResponse] returned by the [PaymentRequest.show()] or
/// [PaymentResponse.retry()] methods fails, your code creates a
/// object to pass into [retry()] so that the user agent knows what
/// needs to be fixed and what if any error messages to display to
/// the user.
@anonymous
@JS()
class PaymentValidationErrors {
  ///  A general description of a payment error from which the user may
  /// attempt to recover by retrying the payment, possibly after
  /// correcting mistakes in the payment information. can be provided
  /// all by itself to provide only a generic error message, or in
  /// concert with the other properties to serve as an overview while
  /// other properties' values gude the user to errors in specific
  /// fields in the payment form.
  external String get error;
  external set error(String newValue);

  ///  Any payment method specific errors which may have occurred. This
  /// object's contents will vary depending on the payment used. For
  /// example, if the user chose to pay by credit card using the
  /// [basic-card] payment method, this is a [BasicCardErrors] object.
  external dynamic get paymentMethod;
  external set paymentMethod(dynamic newValue);

  external factory PaymentValidationErrors(
      {String error, dynamic paymentMethod});
}

///
///       Deprecated
///        This feature is no longer recommended. Though some
/// browsers might still support it, it may have already been removed
/// from the relevant web standards, may be in the process of being
/// dropped, or may only be kept for compatibility purposes. Avoid
/// using it, and update existing code if possible; see the
/// compatibility table at the bottom of this page to guide your
/// decision. Be aware that this feature may cease to work at any
/// time.
///
///     Non-standard
///      This feature is non-standard and is not on a standards
/// track. Do not use it on production sites facing the Web: it will
/// not work for every user. There may also be large
/// incompatibilities between implementations and the behavior may
/// change in the future.
///
///
///  The dictionary is used by the Payment Request API to indicate
/// the presence of—and to explain how to correct—validation errors
/// in the payer details. For each field in the payment information
/// that fails validation, the object contains a string explaining
/// the error.
///
///  The payer details include the payer's name, phone number, and
/// email address.
@anonymous
@JS()
class PayerErrors {
  ///  If present, this [DOMString] is a string describing the
  /// validation error from which the payer's email address—as given by
  /// [PaymentResponse.payerEmail]—currently suffers. If this property
  /// is absent from the [PayerErrors] object, the email address passed
  /// validation.
  @deprecated
  external String get email;
  external set email(String newValue);

  ///  If this [DOMString] is present in the object, the
  /// [PaymentResponse.payerName] property failed validation, and this
  /// string explains what needs to be corrected. If this property is
  /// absent, the paer name is fine
  @deprecated
  external String get name;
  external set name(String newValue);

  ///  If present, this string is an error message explaining why the
  /// payer's phone number ([PaymentResponse.payerPhone]) failed
  /// validation. This property is absent if the phone number passed
  /// validation.
  @deprecated
  external String get phone;
  external set phone(String newValue);

  external factory PayerErrors({String email, String name, String phone});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the Payment Request API describes the
/// [paymentmethodchange] event which is fired by some payment
/// handlers when the user switches payment instruments (e.g., a user
/// selects a "store" card to make a purchase while using Apple Pay).
@JS()
class PaymentMethodChangeEvent extends PaymentRequestUpdateEvent {
  external factory PaymentMethodChangeEvent(
      {String type, PaymentMethodChangeEventInit? eventInitDict});

  ///  A [DOMString] containing the payment method identifier, a string
  /// which uniquely identifies a particular payment method. This
  /// identifier is usually a URL used during the payment process, but
  /// may be a standardized non-URL string as well, such as
  /// [basic-card]. The default value is the empty string, [""].
  external String get methodName;

  ///  An object containing payment method-specific data useful when
  /// handling a payment method change. If no such information is
  /// available, this value is [null].
  external dynamic get methodDetails;
}

@anonymous
@JS()
class PaymentMethodChangeEventInit extends PaymentRequestUpdateEventInit {
  external String get methodName;
  external set methodName(String newValue);
  external dynamic get methodDetails;
  external set methodDetails(dynamic newValue);

  external factory PaymentMethodChangeEventInit(
      {String methodName = '', dynamic methodDetails});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The [PaymentRequestUpdateEvent] interface is used for events
/// sent to a [PaymentRequest] instance when changes are made to
/// shipping-related information for a pending [PaymentRequest].
/// Those events are:
///  [shippingaddresschange] Secure context
///  Dispatched whenever the user changes their shipping address.
///   Also available using the [onshippingaddresschange] event
/// handler property.
///  [shippingoptionchange] Secure context
///  Dispatched whenever the user changes a shipping option.
///   Also available using the [onshippingoptionchange] event handler
/// property.
///
@experimental
@JS()
class PaymentRequestUpdateEvent extends Event {
  external factory PaymentRequestUpdateEvent(
      {String type, PaymentRequestUpdateEventInit? eventInitDict});

  ///  If the event handler determines that information included in the
  /// payment request needs to be changed, or that new information
  /// needs to be added, it calls [updateWith()] with the information
  /// that needs to be replaced or added.
  /// paymentRequestUpdateEvent.updateWith(details);
  external Object updateWith(Promise<PaymentDetailsUpdate> detailsPromise);
}

@anonymous
@JS()
class PaymentRequestUpdateEventInit extends EventInit {
  external factory PaymentRequestUpdateEventInit();
}
