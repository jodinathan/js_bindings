/// Secure Payment Confirmation
///
/// https://w3c.github.io/secure-payment-confirmation/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library secure_payment_confirmation;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class SecurePaymentConfirmationRequest {
  external factory SecurePaymentConfirmationRequest(
      {dynamic challenge,
      required Iterable<dynamic> credentialIds,
      required PaymentCredentialInstrument instrument,
      required int timeout,
      required String payeeOrigin,
      required AuthenticationExtensionsClientInputs extensions});
}

extension PropsSecurePaymentConfirmationRequest
    on SecurePaymentConfirmationRequest {
  dynamic get challenge => js_util.getProperty(this, 'challenge');
  set challenge(dynamic newValue) {
    js_util.setProperty(this, 'challenge', newValue);
  }

  Iterable<dynamic> get credentialIds =>
      js_util.getProperty(this, 'credentialIds');
  set credentialIds(Iterable<dynamic> newValue) {
    js_util.setProperty(this, 'credentialIds', newValue);
  }

  PaymentCredentialInstrument get instrument =>
      js_util.getProperty(this, 'instrument');
  set instrument(PaymentCredentialInstrument newValue) {
    js_util.setProperty(this, 'instrument', newValue);
  }

  int get timeout => js_util.getProperty(this, 'timeout');
  set timeout(int newValue) {
    js_util.setProperty(this, 'timeout', newValue);
  }

  String get payeeOrigin => js_util.getProperty(this, 'payeeOrigin');
  set payeeOrigin(String newValue) {
    js_util.setProperty(this, 'payeeOrigin', newValue);
  }

  AuthenticationExtensionsClientInputs get extensions =>
      js_util.getProperty(this, 'extensions');
  set extensions(AuthenticationExtensionsClientInputs newValue) {
    js_util.setProperty(this, 'extensions', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class AuthenticationExtensionsPaymentInputs {
  external factory AuthenticationExtensionsPaymentInputs(
      {required bool isPayment,
      required String rp,
      required String topOrigin,
      required String payeeOrigin,
      required PaymentCurrencyAmount total,
      required PaymentCredentialInstrument instrument});
}

extension PropsAuthenticationExtensionsPaymentInputs
    on AuthenticationExtensionsPaymentInputs {
  bool get isPayment => js_util.getProperty(this, 'isPayment');
  set isPayment(bool newValue) {
    js_util.setProperty(this, 'isPayment', newValue);
  }

  String get rp => js_util.getProperty(this, 'rp');
  set rp(String newValue) {
    js_util.setProperty(this, 'rp', newValue);
  }

  String get topOrigin => js_util.getProperty(this, 'topOrigin');
  set topOrigin(String newValue) {
    js_util.setProperty(this, 'topOrigin', newValue);
  }

  String get payeeOrigin => js_util.getProperty(this, 'payeeOrigin');
  set payeeOrigin(String newValue) {
    js_util.setProperty(this, 'payeeOrigin', newValue);
  }

  PaymentCurrencyAmount get total => js_util.getProperty(this, 'total');
  set total(PaymentCurrencyAmount newValue) {
    js_util.setProperty(this, 'total', newValue);
  }

  PaymentCredentialInstrument get instrument =>
      js_util.getProperty(this, 'instrument');
  set instrument(PaymentCredentialInstrument newValue) {
    js_util.setProperty(this, 'instrument', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class CollectedClientPaymentData implements CollectedClientData {
  external factory CollectedClientPaymentData(
      {required CollectedClientAdditionalPaymentData payment});
}

extension PropsCollectedClientPaymentData on CollectedClientPaymentData {
  CollectedClientAdditionalPaymentData get payment =>
      js_util.getProperty(this, 'payment');
  set payment(CollectedClientAdditionalPaymentData newValue) {
    js_util.setProperty(this, 'payment', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class CollectedClientAdditionalPaymentData {
  external factory CollectedClientAdditionalPaymentData(
      {required String rp,
      required String topOrigin,
      required String payeeOrigin,
      required PaymentCurrencyAmount total,
      required PaymentCredentialInstrument instrument});
}

extension PropsCollectedClientAdditionalPaymentData
    on CollectedClientAdditionalPaymentData {
  String get rp => js_util.getProperty(this, 'rp');
  set rp(String newValue) {
    js_util.setProperty(this, 'rp', newValue);
  }

  String get topOrigin => js_util.getProperty(this, 'topOrigin');
  set topOrigin(String newValue) {
    js_util.setProperty(this, 'topOrigin', newValue);
  }

  String get payeeOrigin => js_util.getProperty(this, 'payeeOrigin');
  set payeeOrigin(String newValue) {
    js_util.setProperty(this, 'payeeOrigin', newValue);
  }

  PaymentCurrencyAmount get total => js_util.getProperty(this, 'total');
  set total(PaymentCurrencyAmount newValue) {
    js_util.setProperty(this, 'total', newValue);
  }

  PaymentCredentialInstrument get instrument =>
      js_util.getProperty(this, 'instrument');
  set instrument(PaymentCredentialInstrument newValue) {
    js_util.setProperty(this, 'instrument', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class PaymentCredentialInstrument {
  external factory PaymentCredentialInstrument(
      {required String displayName, required String icon});
}

extension PropsPaymentCredentialInstrument on PaymentCredentialInstrument {
  String get displayName => js_util.getProperty(this, 'displayName');
  set displayName(String newValue) {
    js_util.setProperty(this, 'displayName', newValue);
  }

  String get icon => js_util.getProperty(this, 'icon');
  set icon(String newValue) {
    js_util.setProperty(this, 'icon', newValue);
  }
}

enum TransactionAutomationMode { none, autoaccept, autoreject }
