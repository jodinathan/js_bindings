/// Input Device Capabilities
///
/// https://wicg.github.io/input-device-capabilities/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library input_device_capabilities;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class InputDeviceCapabilities {
  external InputDeviceCapabilities(
      [InputDeviceCapabilitiesInit? deviceInitDict]);
}

extension PropsInputDeviceCapabilities on InputDeviceCapabilities {
  bool get firesTouchEvents => js_util.getProperty(this, 'firesTouchEvents');
  bool get pointerMovementScrolls =>
      js_util.getProperty(this, 'pointerMovementScrolls');
}

@anonymous
@JS()
@staticInterop
class InputDeviceCapabilitiesInit {
  external factory InputDeviceCapabilitiesInit(
      {bool? firesTouchEvents = false, bool? pointerMovementScrolls = false});
}

extension PropsInputDeviceCapabilitiesInit on InputDeviceCapabilitiesInit {
  bool get firesTouchEvents => js_util.getProperty(this, 'firesTouchEvents');
  set firesTouchEvents(bool newValue) {
    js_util.setProperty(this, 'firesTouchEvents', newValue);
  }

  bool get pointerMovementScrolls =>
      js_util.getProperty(this, 'pointerMovementScrolls');
  set pointerMovementScrolls(bool newValue) {
    js_util.setProperty(this, 'pointerMovementScrolls', newValue);
  }
}
