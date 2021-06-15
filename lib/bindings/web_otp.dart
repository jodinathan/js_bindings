/// WebOTP API
///
/// https://wicg.github.io/web-otp/
@JS('window')
library web_otp;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'credential_management_1.dart';

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the WebOTP API contains the attributes that are
/// returned when a new one-time password is retreived.
///
///
@JS()
class OTPCredential // null -> {} -> Credential
    with
        Credential {
  /// The one-time password.
  external String get code;

  external factory OTPCredential();
}

@anonymous
@JS()
class OTPCredentialRequestOptions {
  external Iterable<OTPCredentialTransportType> get transport;
  external set transport(Iterable<OTPCredentialTransportType> newValue);

  external factory OTPCredentialRequestOptions(
      {Iterable<OTPCredentialTransportType> transport = const []});
}

@JS()
enum OTPCredentialTransportType { sms }
