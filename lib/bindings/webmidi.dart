/// Web MIDI API
///
/// https://webaudio.github.io/web-midi-api/
@JS('window')
library webmidi;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';
import 'hr_time_3.dart';

@anonymous
@JS()
class MIDIOptions {
  external bool get sysex;
  external set sysex(bool newValue);
  external bool get software;
  external set software(bool newValue);

  external factory MIDIOptions({bool sysex, bool software});
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The read-only interface of the Web MIDI API provides a
/// [Map]-like interface to the currently available MIDI input ports.
/// Though it works generally like a map, because it is read-only it
/// does not contain [clear()], [delete()], or [set()] functions.
@JS()
class MIDIInputMap {
  external MIDIInput operator [](String index);

  external factory MIDIInputMap();
}

///
///   Draft
///   This page is not complete.
///
///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The read-only interface of the Web MIDI API provides a
/// [Map]-like interface to the currently available MIDI output
/// ports. Although it works like a map, because it is read-only, it
/// does not contain [clear()], [delete()], or [set()] functions.
@JS()
class MIDIOutputMap {
  external MIDIOutput operator [](String index);

  external factory MIDIOutputMap();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///
///
///  The interface of the Web MIDI API provides methods for listing
/// MIDI input and output devices, and obtaining access to those
/// devices.
@JS()
class MIDIAccess extends EventTarget {
  ///  Returns an instance of [MIDIInputMap] which provides access to
  /// any available MIDI input ports.
  external MIDIInputMap get inputs;

  ///  Returns an instance of [MIDIOutputMap] which provides access to
  /// any available MIDI output ports.
  external MIDIOutputMap get outputs;
  external EventHandlerNonNull? get onstatechange;
  external set onstatechange(EventHandlerNonNull? newValue);

  ///  A boolean attribute indicating whether system exclusive support
  /// is enabled on the current MIDIAccess instance.
  external bool get sysexEnabled;

  external factory MIDIAccess();
}

@JS()
enum MIDIPortType { input, output }

@JS()
enum MIDIPortDeviceState { disconnected, connected }

@JS()
enum MIDIPortConnectionState { open, closed, pending }

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the Web MIDI API represents a MIDI input or
/// output port.
///
///  A instance is created when a new MIDI device is connected.
/// Therefore it has no constructor.
@JS()
class MIDIPort extends EventTarget {
  /// Returns a [string] containing the unique ID of the port.
  external String get id;

  /// Returns a [string] containing the manufacturer of the port.
  external String? get manufacturer;

  /// Returns a [string] containing the system name of the port.
  external String? get name;

  /// Returns a [string] containing the type of the port, one of:
  ///
  ///    ["input"]
  ///    The [MIDIPort] is an input port.
  ///    ["output"]
  ///    The [MIDIPort] is an output port.
  ///
  ///
  external MIDIPortType get type;

  /// Returns a [string] containing the version of the port.
  external String? get version;

  /// Returns a [string] containing the state of the port, one of:
  ///
  ///    ["disconnected"]
  ///     The device that this [MIDIPort] represents is disconnected
  /// from the system.
  ///    ["connected"]
  ///     The device that this [MIDIPort] represents is currently
  /// connected.
  ///
  ///
  external MIDIPortDeviceState get state;

  ///  Returns a [string] containing the connection state of the port,
  /// one of:
  ///
  ///    ["open"]
  ///     The device that this [MIDIPort] represents has been opened
  /// and is available.
  ///    ["closed"]
  ///     The device that this [MIDIPort] represents has not been
  /// opened, or has been closed.
  ///    ["pending"]
  ///     The device that this [MIDIPort] represents has been opened
  /// but has subsequently disconnected .
  ///
  ///
  external MIDIPortConnectionState get connection;
  external EventHandlerNonNull? get onstatechange;
  external set onstatechange(EventHandlerNonNull? newValue);

  ///  Makes the MIDI device connected to this [MIDIPort] explicitly
  /// available, and returns a [Promise] which resolves once access to
  /// the port has been successful.
  /// var output = midiAccess.outputs.get(portID);
  /// output.open(); // opens the port
  external Promise<MIDIPort> open();

  ///  Makes the MIDI device connected to this [MIDIPort] unavailable,
  /// changing the [state] from ["open"] to ["closed"]. This returns a
  /// [Promise] which resolves once the port has been closed.
  /// MIDIPort.close();
  external Promise<MIDIPort> close();

  external factory MIDIPort();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  Use the interface of the Web MIDI API to access and pass
/// messages to a MIDI input port.
@JS()
class MIDIInput extends MIDIPort {
  external EventHandlerNonNull? get onmidimessage;
  external set onmidimessage(EventHandlerNonNull? newValue);

  external factory MIDIInput();
}

///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the Web MIDI API provides methods to add
/// messages to the queue of an output device, and to clear the queue
/// of messages.
@JS()
class MIDIOutput extends MIDIPort {
  /// Queues a message to be sent to the MIDI port.
  /// MIDIOutput.send(data, timestamp);
  external Object send(Iterable<int> data, [double? timestamp = 0]);

  /// Clears any pending send data from the queue.
  /// MIDIOutput.clear();
  external Object clear();

  external factory MIDIOutput();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Web MIDI API represents the event passed to
/// the [onmidimessage] event handler of the [MIDIInput] interface. A
/// [midimessage] event is fired every time a MIDI message is sent
/// from a device represented by a [MIDIInput], for example when a
/// MIDI keyboard key is pressed, a knob is tweaked, or a slider is
/// moved.
@JS()
class MIDIMessageEvent extends Event {
  external factory MIDIMessageEvent(
      {String type, MIDIMessageEventInit? eventInitDict});

  ///  A [Uint8Array] containing the data bytes of a single MIDI
  /// message. See the MIDI specification for more information on its
  /// form.
  external Uint8List get data;
}

@anonymous
@JS()
class MIDIMessageEventInit extends EventInit {
  external Uint8List get data;
  external set data(Uint8List newValue);

  external factory MIDIMessageEventInit({Uint8List data});
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface of the Web MIDI API is the event passed to the
/// [onstatechange] event handler of the [MIDIAccess] interface and
/// the [onstatechange] event of the [MIDIPorts] interface. This
/// occurs any time a new port becomes available, or when a
/// previously available port becomes unavailable. For example, this
/// event is fired whenever a MIDI device is either plugged in to or
/// unplugged from a computer.
@JS()
class MIDIConnectionEvent extends Event {
  external factory MIDIConnectionEvent(
      {String type, MIDIConnectionEventInit? eventInitDict});

  ///  Returns a reference to a [MIDIPort] instance for a port that has
  /// been connected or disconnected."
  external MIDIPort get port;
}

@anonymous
@JS()
class MIDIConnectionEventInit extends EventInit {
  external MIDIPort get port;
  external set port(MIDIPort newValue);

  external factory MIDIConnectionEventInit({MIDIPort port});
}
