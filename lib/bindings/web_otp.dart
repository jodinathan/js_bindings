/// WebOTP API
///
/// https://wicg.github.io/web-otp/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library web_otp;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the WebOTP API contains the attributes that are
/// returned when a new one-time password is retrieved.
///
///
///
///    Credential
///
///
///
///
///
///    OTPCredential
///
///
@JS()
@staticInterop
class OTPCredential implements Credential {
  external factory OTPCredential();
}

extension PropsOTPCredential on OTPCredential {
  String get code => js_util.getProperty(this, 'code');
}

@anonymous
@JS()
@staticInterop
class OTPCredentialRequestOptions {
  external factory OTPCredentialRequestOptions._({Iterable<String>? transport});

  factory OTPCredentialRequestOptions(
          {Iterable<OTPCredentialTransportType>? transport = const []}) =>
      OTPCredentialRequestOptions._(transport: transport?.map((e) => e.value));
}

extension PropsOTPCredentialRequestOptions on OTPCredentialRequestOptions {
  Iterable<OTPCredentialTransportType> get transport =>
      OTPCredentialTransportType.fromValues(
          js_util.getProperty(this, 'transport'));
  set transport(Iterable<OTPCredentialTransportType> newValue) {
    js_util.setProperty(this, 'transport', newValue.map((e) => e.value));
  }
}

enum OTPCredentialTransportType {
  sms('sms');

  final String value;
  static OTPCredentialTransportType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<OTPCredentialTransportType> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const OTPCredentialTransportType(this.value);
}
