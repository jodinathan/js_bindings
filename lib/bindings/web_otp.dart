/// WebOTP API
///
/// https://wicg.github.io/web-otp/
@JS('window')
@staticInterop
library web_otp;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: credential_management_1 */

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
  /// The one-time password.
  ///
  external String get code;
}

@anonymous
@JS()
@staticInterop
class OTPCredentialRequestOptions {
  external factory OTPCredentialRequestOptions(
      {Iterable<OTPCredentialTransportType> transport = const []});
}

extension PropsOTPCredentialRequestOptions on OTPCredentialRequestOptions {
  external Iterable<OTPCredentialTransportType> get transport;
  external set transport(Iterable<OTPCredentialTransportType> newValue);
}

enum OTPCredentialTransportType { sms }
