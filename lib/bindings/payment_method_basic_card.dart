/// Payment Method: Basic Card
///
/// https://w3c.github.io/payment-method-basic-card/
@JS('window')
@staticInterop
library payment_method_basic_card;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: payment_request */

@anonymous
@JS()
@staticInterop
class BasicCardRequest {
  external factory BasicCardRequest(
      {Iterable<String> supportedNetworks = const [],
      bool requestSecurityCode = true});
}

extension PropsBasicCardRequest on BasicCardRequest {
  external Iterable<String> get supportedNetworks;
  external set supportedNetworks(Iterable<String> newValue);
  external bool get requestSecurityCode;
  external set requestSecurityCode(bool newValue);
}

@anonymous
@JS()
@staticInterop
class BasicCardChangeDetails {
  external factory BasicCardChangeDetails({PaymentAddress? billingAddress});
}

extension PropsBasicCardChangeDetails on BasicCardChangeDetails {
  external PaymentAddress? get billingAddress;
  external set billingAddress(PaymentAddress? newValue);
}

@anonymous
@JS()
@staticInterop
class BasicCardResponse {
  external factory BasicCardResponse(
      {String cardNumber,
      String cardholderName = '',
      String cardSecurityCode = '',
      String expiryMonth = '',
      String expiryYear = '',
      PaymentAddress? billingAddress});
}

extension PropsBasicCardResponse on BasicCardResponse {
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
  external PaymentAddress? get billingAddress;
  external set billingAddress(PaymentAddress? newValue);
}

@anonymous
@JS()
@staticInterop
class BasicCardErrors {
  external factory BasicCardErrors(
      {String cardNumber,
      String cardholderName,
      String cardSecurityCode,
      String expiryMonth,
      String expiryYear,
      AddressErrors billingAddress});
}

extension PropsBasicCardErrors on BasicCardErrors {
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
}
