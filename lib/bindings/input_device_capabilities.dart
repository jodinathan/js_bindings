/// Input Device Capabilities
///
/// https://wicg.github.io/input-device-capabilities/
@JS('window')
@staticInterop
library input_device_capabilities;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: uievents */

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Input Device Capabilities API provides
/// information about the physical device or a group of related
/// devices responsible for generating input events. Events caused by
/// the same physical input device get the same instance of this
/// object, but the converse isn't true. For example, two mice with
/// the same capabilities in a system may appear as a single
/// instance.
///  In some instances, represents the capabilities of logical
/// devices rather than physical devices. This allows, for example,
/// touchscreen keyboards and physical keyboards to be represented
/// the same way when they produce the same input.
@experimental
@JS()
@staticInterop
class InputDeviceCapabilities {
  external InputDeviceCapabilities(
      [InputDeviceCapabilitiesInit? deviceInitDict]);
}

extension PropsInputDeviceCapabilities on InputDeviceCapabilities {
  ///  A [Boolean] that indicates whether the device dispatches touch
  /// events.
  ///
  bool get firesTouchEvents => js_util.getProperty(this, 'firesTouchEvents');
  bool get pointerMovementScrolls =>
      js_util.getProperty(this, 'pointerMovementScrolls');
}

@anonymous
@JS()
@staticInterop
class InputDeviceCapabilitiesInit {
  external factory InputDeviceCapabilitiesInit(
      {bool firesTouchEvents = false, bool pointerMovementScrolls = false});
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
