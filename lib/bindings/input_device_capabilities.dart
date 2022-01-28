/// Input Device Capabilities
///
/// https://wicg.github.io/input-device-capabilities/
@JS('window')
@staticInterop
library input_device_capabilities;

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
  external factory InputDeviceCapabilities(
      [InputDeviceCapabilitiesInit? deviceInitDict]);
}

extension PropsInputDeviceCapabilities on InputDeviceCapabilities {
  ///  A [Boolean] that indicates whether the device dispatches touch
  /// events.
  ///
  external bool get firesTouchEvents;
  external bool get pointerMovementScrolls;
}

@anonymous
@JS()
@staticInterop
class InputDeviceCapabilitiesInit {
  external factory InputDeviceCapabilitiesInit(
      {bool firesTouchEvents = false, bool pointerMovementScrolls = false});
}

extension PropsInputDeviceCapabilitiesInit on InputDeviceCapabilitiesInit {
  external bool get firesTouchEvents;
  external set firesTouchEvents(bool newValue);
  external bool get pointerMovementScrolls;
  external set pointerMovementScrolls(bool newValue);
}
