/// WebOTP API
///
/// https://wicg.github.io/web-otp/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library web_otp;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class OTPCredential implements Credential {
  external OTPCredential();
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
      OTPCredentialRequestOptions._(transport: transport?.names);
}

extension PropsOTPCredentialRequestOptions on OTPCredentialRequestOptions {
  Iterable<OTPCredentialTransportType> get transport =>
      OTPCredentialTransportType.values
          .byNames(js_util.getProperty(this, 'transport'));
  set transport(Iterable<OTPCredentialTransportType> newValue) {
    js_util.setProperty(this, 'transport', newValue.names);
  }
}

enum OTPCredentialTransportType { sms }
