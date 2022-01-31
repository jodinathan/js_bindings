/// Payment Method: Basic Card
///
/// https://w3c.github.io/payment-method-basic-card/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library payment_method_basic_card;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class BasicCardRequest {
  external factory BasicCardRequest(
      {Iterable<String> supportedNetworks = const [],
      bool? requestSecurityCode = true});
}

extension PropsBasicCardRequest on BasicCardRequest {
  Iterable<String> get supportedNetworks =>
      js_util.getProperty(this, 'supportedNetworks');
  set supportedNetworks(Iterable<String> newValue) {
    js_util.setProperty(this, 'supportedNetworks', newValue);
  }

  bool get requestSecurityCode =>
      js_util.getProperty(this, 'requestSecurityCode');
  set requestSecurityCode(bool newValue) {
    js_util.setProperty(this, 'requestSecurityCode', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class BasicCardChangeDetails {
  external factory BasicCardChangeDetails({PaymentAddress? billingAddress});
}

extension PropsBasicCardChangeDetails on BasicCardChangeDetails {
  PaymentAddress? get billingAddress =>
      js_util.getProperty(this, 'billingAddress');
  set billingAddress(PaymentAddress? newValue) {
    js_util.setProperty(this, 'billingAddress', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class BasicCardResponse {
  external factory BasicCardResponse(
      {String cardNumber,
      String cardholderName = '',
      String? cardSecurityCode = '',
      String? expiryMonth = '',
      String? expiryYear = '',
      PaymentAddress? billingAddress});
}

extension PropsBasicCardResponse on BasicCardResponse {
  String get cardNumber => js_util.getProperty(this, 'cardNumber');
  set cardNumber(String newValue) {
    js_util.setProperty(this, 'cardNumber', newValue);
  }

  String get cardholderName => js_util.getProperty(this, 'cardholderName');
  set cardholderName(String newValue) {
    js_util.setProperty(this, 'cardholderName', newValue);
  }

  String get cardSecurityCode => js_util.getProperty(this, 'cardSecurityCode');
  set cardSecurityCode(String newValue) {
    js_util.setProperty(this, 'cardSecurityCode', newValue);
  }

  String get expiryMonth => js_util.getProperty(this, 'expiryMonth');
  set expiryMonth(String newValue) {
    js_util.setProperty(this, 'expiryMonth', newValue);
  }

  String get expiryYear => js_util.getProperty(this, 'expiryYear');
  set expiryYear(String newValue) {
    js_util.setProperty(this, 'expiryYear', newValue);
  }

  PaymentAddress? get billingAddress =>
      js_util.getProperty(this, 'billingAddress');
  set billingAddress(PaymentAddress? newValue) {
    js_util.setProperty(this, 'billingAddress', newValue);
  }
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
  String get cardNumber => js_util.getProperty(this, 'cardNumber');
  set cardNumber(String newValue) {
    js_util.setProperty(this, 'cardNumber', newValue);
  }

  String get cardholderName => js_util.getProperty(this, 'cardholderName');
  set cardholderName(String newValue) {
    js_util.setProperty(this, 'cardholderName', newValue);
  }

  String get cardSecurityCode => js_util.getProperty(this, 'cardSecurityCode');
  set cardSecurityCode(String newValue) {
    js_util.setProperty(this, 'cardSecurityCode', newValue);
  }

  String get expiryMonth => js_util.getProperty(this, 'expiryMonth');
  set expiryMonth(String newValue) {
    js_util.setProperty(this, 'expiryMonth', newValue);
  }

  String get expiryYear => js_util.getProperty(this, 'expiryYear');
  set expiryYear(String newValue) {
    js_util.setProperty(this, 'expiryYear', newValue);
  }

  AddressErrors get billingAddress =>
      js_util.getProperty(this, 'billingAddress');
  set billingAddress(AddressErrors newValue) {
    js_util.setProperty(this, 'billingAddress', newValue);
  }
}
