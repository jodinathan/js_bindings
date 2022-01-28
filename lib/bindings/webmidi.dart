/// Web MIDI API
///
/// https://webaudio.github.io/web-midi-api/
@JS('window')
@staticInterop
library webmidi;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
dom
hr_time_3 */

@anonymous
@JS()
@staticInterop
class MIDIOptions {
  external factory MIDIOptions({bool sysex, bool software});
}

extension PropsMIDIOptions on MIDIOptions {
  external bool get sysex;
  external set sysex(bool newValue);
  external bool get software;
  external set software(bool newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The read-only interface of the Web MIDI API provides a
/// [Map]-like interface to the currently available MIDI input ports.
/// Though it works generally like a map, because it is read-only it
/// does not contain [clear()], [delete()], or [set()] functions.
@JS()
@staticInterop
class MIDIInputMap {
  external factory MIDIInputMap();
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The read-only interface of the Web MIDI API provides a
/// [Map]-like interface to the currently available MIDI output
/// ports. Although it works like a map, because it is read-only, it
/// does not contain [clear()], [delete()], or [set()] functions.
@JS()
@staticInterop
class MIDIOutputMap {
  external factory MIDIOutputMap();
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web MIDI API provides methods for listing
/// MIDI input and output devices, and obtaining access to those
/// devices.
@JS()
@staticInterop
class MIDIAccess implements EventTarget {
  external factory MIDIAccess();
}

extension PropsMIDIAccess on MIDIAccess {
  ///  Returns an instance of [MIDIInputMap] which provides access to
  /// any available MIDI input ports.
  ///
  external MIDIInputMap get inputs;

  ///  Returns an instance of [MIDIOutputMap] which provides access to
  /// any available MIDI output ports.
  ///
  external MIDIOutputMap get outputs;
  external EventHandlerNonNull? get onstatechange;
  external set onstatechange(EventHandlerNonNull? newValue);

  ///  A boolean attribute indicating whether system exclusive support
  /// is enabled on the current MIDIAccess instance.
  ///
  external bool get sysexEnabled;
}

enum MIDIPortType { input, output }

enum MIDIPortDeviceState { disconnected, connected }

enum MIDIPortConnectionState { open, closed, pending }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web MIDI API represents a MIDI input or
/// output port.
///  A instance is created when a new MIDI device is connected.
/// Therefore it has no constructor.
@JS()
@staticInterop
class MIDIPort implements EventTarget {
  external factory MIDIPort();
}

extension PropsMIDIPort on MIDIPort {
  /// Returns a [string] containing the unique ID of the port.
  ///
  external String get id;

  /// Returns a [string] containing the manufacturer of the port.
  ///
  external String? get manufacturer;

  /// Returns a [string] containing the system name of the port.
  ///
  external String? get name;

  /// Returns a [string] containing the type of the port, one of:
  ///
  ///    ["input"]
  ///
  ///     The [MIDIPort] is an input port.
  ///
  ///    ["output"]
  ///
  ///     The [MIDIPort] is an output port.
  ///
  ///
  ///
  external MIDIPortType get type;

  /// Returns a [string] containing the version of the port.
  ///
  external String? get version;

  /// Returns a [string] containing the state of the port, one of:
  ///
  ///    ["disconnected"]
  ///
  ///      The device that this [MIDIPort] represents is disconnected
  /// from the system.
  ///
  ///    ["connected"]
  ///
  ///      The device that this [MIDIPort] represents is currently
  /// connected.
  ///
  ///
  ///
  external MIDIPortDeviceState get state;

  ///  Returns a [string] containing the connection state of the port,
  /// one of:
  ///
  ///    ["open"]
  ///
  ///      The device that this [MIDIPort] represents has been opened
  /// and is available.
  ///
  ///    ["closed"]
  ///
  ///      The device that this [MIDIPort] represents has not been
  /// opened, or has been closed.
  ///
  ///    ["pending"]
  ///
  ///      The device that this [MIDIPort] represents has been opened
  /// but has subsequently disconnected .
  ///
  ///
  ///
  external MIDIPortConnectionState get connection;
  external EventHandlerNonNull? get onstatechange;
  external set onstatechange(EventHandlerNonNull? newValue);

  ///  Makes the MIDI device connected to this [MIDIPort] explicitly
  /// available, and returns a [Promise] which resolves once access to
  /// the port has been successful.
  ///
  /// var output = midiAccess.outputs.get(portID);
  /// output.open(); // opens the port
  ///
  external Promise<MIDIPort> open();

  ///  Makes the MIDI device connected to this [MIDIPort] unavailable,
  /// changing the [state] from ["open"] to ["closed"]. This returns a
  /// [Promise] which resolves once the port has been closed.
  ///
  /// MIDIPort.close();
  ///
  external Promise<MIDIPort> close();
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web MIDI API receives messages from a MIDI
/// input port.
@JS()
@staticInterop
class MIDIInput implements MIDIPort {
  external factory MIDIInput();
}

extension PropsMIDIInput on MIDIInput {
  external EventHandlerNonNull? get onmidimessage;
  external set onmidimessage(EventHandlerNonNull? newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web MIDI API provides methods to add
/// messages to the queue of an output device, and to clear the queue
/// of messages.
@JS()
@staticInterop
class MIDIOutput implements MIDIPort {
  external factory MIDIOutput();
}

extension PropsMIDIOutput on MIDIOutput {
  /// Queues a message to be sent to the MIDI port.
  ///
  /// MIDIOutput.send(data, timestamp);
  ///
  external Object send(Iterable<int> data, [double? timestamp = 0]);

  /// Clears any pending send data from the queue.
  ///
  /// MIDIOutput.clear();
  ///
  external Object clear();
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web MIDI API represents the event passed to
/// the [onmidimessage] event handler of the [MIDIInput] interface. A
/// [midimessage] event is fired every time a MIDI message is sent
/// from a device represented by a [MIDIInput], for example when a
/// MIDI keyboard key is pressed, a knob is tweaked, or a slider is
/// moved.
@JS()
@staticInterop
class MIDIMessageEvent implements Event {
  external factory MIDIMessageEvent(String type,
      [MIDIMessageEventInit? eventInitDict]);
}

extension PropsMIDIMessageEvent on MIDIMessageEvent {
  ///  A [Uint8Array] containing the data bytes of a single MIDI
  /// message. See the MIDI specification for more information on its
  /// form.
  ///
  external Uint8List get data;
}

@anonymous
@JS()
@staticInterop
class MIDIMessageEventInit implements EventInit {
  external factory MIDIMessageEventInit({Uint8List data});
}

extension PropsMIDIMessageEventInit on MIDIMessageEventInit {
  external Uint8List get data;
  external set data(Uint8List newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web MIDI API is the event passed to the
/// [onstatechange] event handler of the [MIDIAccess] interface and
/// the [onstatechange] event of the [MIDIPort] interface. This
/// occurs any time a new port becomes available, or when a
/// previously available port becomes unavailable. For example, this
/// event is fired whenever a MIDI device is either plugged in to or
/// unplugged from a computer.
@JS()
@staticInterop
class MIDIConnectionEvent implements Event {
  external factory MIDIConnectionEvent(String type,
      [MIDIConnectionEventInit? eventInitDict]);
}

extension PropsMIDIConnectionEvent on MIDIConnectionEvent {
  ///  Returns a reference to a [MIDIPort] instance for a port that has
  /// been connected or disconnected."
  ///
  external MIDIPort get port;
}

@anonymous
@JS()
@staticInterop
class MIDIConnectionEventInit implements EventInit {
  external factory MIDIConnectionEventInit({MIDIPort port});
}

extension PropsMIDIConnectionEventInit on MIDIConnectionEventInit {
  external MIDIPort get port;
  external set port(MIDIPort newValue);
}
