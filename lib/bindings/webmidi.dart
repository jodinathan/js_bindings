/// Web MIDI API
///
/// https://webaudio.github.io/web-midi-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webmidi;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@anonymous
@JS()
@staticInterop
class MIDIOptions {
  external factory MIDIOptions({required bool sysex, required bool software});
}

extension PropsMIDIOptions on MIDIOptions {
  bool get sysex => js_util.getProperty(this, 'sysex');
  set sysex(bool newValue) {
    js_util.setProperty(this, 'sysex', newValue);
  }

  bool get software => js_util.getProperty(this, 'software');
  set software(bool newValue) {
    js_util.setProperty(this, 'software', newValue);
  }
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
class MIDIInputMap extends JsMap<MIDIInput, String> {
  external MIDIInputMap();
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
class MIDIOutputMap extends JsMap<MIDIOutput, String> {
  external MIDIOutputMap();
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web MIDI API provides methods for listing
/// MIDI input and output devices, and obtaining access to those
/// devices.
@JS()
@staticInterop
class MIDIAccess implements EventTarget {
  external MIDIAccess();
}

extension PropsMIDIAccess on MIDIAccess {
  ///  Returns an instance of [MIDIInputMap] which provides access to
  /// any available MIDI input ports.
  ///
  MIDIInputMap get inputs => js_util.getProperty(this, 'inputs');

  ///  Returns an instance of [MIDIOutputMap] which provides access to
  /// any available MIDI output ports.
  ///
  MIDIOutputMap get outputs => js_util.getProperty(this, 'outputs');
  EventHandlerNonNull? get onstatechange =>
      js_util.getProperty(this, 'onstatechange');
  set onstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstatechange', newValue);
  }

  ///  A boolean attribute indicating whether system exclusive support
  /// is enabled on the current MIDIAccess instance.
  ///
  bool get sysexEnabled => js_util.getProperty(this, 'sysexEnabled');
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
  external MIDIPort();
}

extension PropsMIDIPort on MIDIPort {
  /// Returns a [string] containing the unique ID of the port.
  ///
  String get id => js_util.getProperty(this, 'id');

  /// Returns a [string] containing the manufacturer of the port.
  ///
  String? get manufacturer => js_util.getProperty(this, 'manufacturer');

  /// Returns a [string] containing the system name of the port.
  ///
  String? get name => js_util.getProperty(this, 'name');

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
  MIDIPortType get type =>
      MIDIPortType.values.byName(js_util.getProperty(this, 'type'));

  /// Returns a [string] containing the version of the port.
  ///
  String? get version => js_util.getProperty(this, 'version');

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
  MIDIPortDeviceState get state =>
      MIDIPortDeviceState.values.byName(js_util.getProperty(this, 'state'));

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
  MIDIPortConnectionState get connection => MIDIPortConnectionState.values
      .byName(js_util.getProperty(this, 'connection'));
  EventHandlerNonNull? get onstatechange =>
      js_util.getProperty(this, 'onstatechange');
  set onstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstatechange', newValue);
  }

  ///  Makes the MIDI device connected to this [MIDIPort] explicitly
  /// available, and returns a [Future] which resolves once access to
  /// the port has been successful.
  ///
  /// var output = midiAccess.outputs.get(portID);
  /// output.open(); // opens the port
  ///
  Future<MIDIPort> open() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'open', []));

  ///  Makes the MIDI device connected to this [MIDIPort] unavailable,
  /// changing the [state] from ["open"] to ["closed"]. This returns a
  /// [Future] which resolves once the port has been closed.
  ///
  /// MIDIPort.close();
  ///
  Future<MIDIPort> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web MIDI API receives messages from a MIDI
/// input port.
@JS()
@staticInterop
class MIDIInput implements MIDIPort {
  external MIDIInput();
}

extension PropsMIDIInput on MIDIInput {
  EventHandlerNonNull? get onmidimessage =>
      js_util.getProperty(this, 'onmidimessage');
  set onmidimessage(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmidimessage', newValue);
  }
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web MIDI API provides methods to add
/// messages to the queue of an output device, and to clear the queue
/// of messages.
@JS()
@staticInterop
class MIDIOutput implements MIDIPort {
  external MIDIOutput();
}

extension PropsMIDIOutput on MIDIOutput {
  /// Queues a message to be sent to the MIDI port.
  ///
  /// MIDIOutput.send(data, timestamp);
  ///
  Object send(

          ///  A sequence of one or more valid MIDI messages. Each entry
          /// represents a single byte of data.
          ///
          Iterable<int> data,
          [

          ///  A [DOMHighResTimestamp] with the time in milliseconds, which is
          /// the delay before sending the message.
          ///
          double? timestamp = 0]) =>
      js_util.callMethod(this, 'send', [data, timestamp]);

  /// Clears any pending send data from the queue.
  ///
  /// MIDIOutput.clear();
  ///
  Object clear() => js_util.callMethod(this, 'clear', []);
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
  external MIDIMessageEvent(String type, [MIDIMessageEventInit? eventInitDict]);
}

extension PropsMIDIMessageEvent on MIDIMessageEvent {
  ///  A [Uint8Array] containing the data bytes of a single MIDI
  /// message. See the MIDI specification for more information on its
  /// form.
  ///
  Uint8List get data => js_util.getProperty(this, 'data');
}

@anonymous
@JS()
@staticInterop
class MIDIMessageEventInit implements EventInit {
  external factory MIDIMessageEventInit({required Uint8List data});
}

extension PropsMIDIMessageEventInit on MIDIMessageEventInit {
  Uint8List get data => js_util.getProperty(this, 'data');
  set data(Uint8List newValue) {
    js_util.setProperty(this, 'data', newValue);
  }
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
  external MIDIConnectionEvent(String type,
      [MIDIConnectionEventInit? eventInitDict]);
}

extension PropsMIDIConnectionEvent on MIDIConnectionEvent {
  ///  Returns a reference to a [MIDIPort] instance for a port that has
  /// been connected or disconnected."
  ///
  MIDIPort get port => js_util.getProperty(this, 'port');
}

@anonymous
@JS()
@staticInterop
class MIDIConnectionEventInit implements EventInit {
  external factory MIDIConnectionEventInit({required MIDIPort port});
}

extension PropsMIDIConnectionEventInit on MIDIConnectionEventInit {
  MIDIPort get port => js_util.getProperty(this, 'port');
  set port(MIDIPort newValue) {
    js_util.setProperty(this, 'port', newValue);
  }
}
