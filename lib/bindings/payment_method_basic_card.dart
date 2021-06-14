/// Payment Method: Basic Card
///
/// https://w3c.github.io/payment-method-basic-card/
@JS('window')
library payment_method_basic_card;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'payment_request.dart';

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The dictionary is a JavaScript object-structure that can be used
/// in the Payment Request API. The properties of are defined in the
/// Basic Card Payment spec).
@anonymous
@JS()
class BasicCardRequest {
  ///  An optional array of [DOMString]s representing the card networks
  /// that the retailer supports (e.g. "[amex"], "[mastercard"]); see
  /// Card network identifiers for a complete list. If the property is
  /// missing, it implies that all networks are supported.
  external Iterable<String> get supportedNetworks;
  external set supportedNetworks(Iterable<String> newValue);
  external bool get requestSecurityCode;
  external set requestSecurityCode(bool newValue);

  external factory BasicCardRequest(
      {Iterable<String> supportedNetworks = const [],
      bool requestSecurityCode = true});
}

@anonymous
@JS()
class BasicCardChangeDetails {
  external PaymentAddress? get billingAddress;
  external set billingAddress(PaymentAddress? newValue);

  external factory BasicCardChangeDetails({PaymentAddress? billingAddress});
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The dictionary (related to the Payment Request API, although
/// defined in the Basic Card Payment spec) defines an object
/// structure for payment response details such as the number/expiry
/// date of the card used to make the payment, and the billing
/// address.
@experimental
@anonymous
@JS()
class BasicCardResponse {
  /// Contains the number of the card used to make the payment.
  external String get cardNumber;
  external set cardNumber(String newValue);

  ///  Contains the cardholder name of the card used to make the
  /// payment.
  external String get cardholderName;
  external set cardholderName(String newValue);

  /// Contains the security code of the card used to make the payment.
  external String get cardSecurityCode;
  external set cardSecurityCode(String newValue);

  /// Contains the expiry month of the card used to make the payment.
  external String get expiryMonth;
  external set expiryMonth(String newValue);

  /// Contains the expiry year of the card used to make the payment.
  external String get expiryYear;
  external set expiryYear(String newValue);

  ///  Contains the billing address of the card used to make the
  /// payment.
  external PaymentAddress? get billingAddress;
  external set billingAddress(PaymentAddress? newValue);

  external factory BasicCardResponse(
      {String cardNumber,
      String cardholderName = '',
      String cardSecurityCode = '',
      String expiryMonth = '',
      String expiryYear = '',
      PaymentAddress? billingAddress});
}

@anonymous
@JS()
class BasicCardErrors {
  external String get cardNumber;
  external set cardNumber(String newValue);
  external String get cardholderName;
  external set cardholderName(String newValue);
  external String get cardSecurityCode;
  external set cardSecurityCode(String newValue);
  external String get expiryMonth;
  external set expiryMonth(String newValue);
  external String get expiryYear;
  external set expiryYear(String newValue);
  external AddressErrors get billingAddress;
  external set billingAddress(AddressErrors newValue);

  external factory BasicCardErrors(
      {String cardNumber,
      String cardholderName,
      String cardSecurityCode,
      String expiryMonth,
      String expiryYear,
      AddressErrors billingAddress});
}
