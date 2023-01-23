/// Client to Authenticator Protocol (CTAP)
///
/// https://fidoalliance.org/specs/fido-v2.1-ps-20210615/fido-client-to-authenticator-protocol-v2.1-ps-errata-20220621.html

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library fido_v2_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class HMACGetSecretInput {
  external factory HMACGetSecretInput(
      {required ByteBuffer salt1, required ByteBuffer salt2});
}

extension PropsHMACGetSecretInput on HMACGetSecretInput {
  ByteBuffer get salt1 => js_util.getProperty(this, 'salt1');
  set salt1(ByteBuffer newValue) {
    js_util.setProperty(this, 'salt1', newValue);
  }

  ByteBuffer get salt2 => js_util.getProperty(this, 'salt2');
  set salt2(ByteBuffer newValue) {
    js_util.setProperty(this, 'salt2', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class HMACGetSecretOutput {
  external factory HMACGetSecretOutput(
      {required ByteBuffer output1, required ByteBuffer output2});
}

extension PropsHMACGetSecretOutput on HMACGetSecretOutput {
  ByteBuffer get output1 => js_util.getProperty(this, 'output1');
  set output1(ByteBuffer newValue) {
    js_util.setProperty(this, 'output1', newValue);
  }

  ByteBuffer get output2 => js_util.getProperty(this, 'output2');
  set output2(ByteBuffer newValue) {
    js_util.setProperty(this, 'output2', newValue);
  }
}
