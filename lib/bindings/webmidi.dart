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
class MidiPermissionDescriptor implements PermissionDescriptor {
  external factory MidiPermissionDescriptor({bool? sysex = false});
}

extension PropsMidiPermissionDescriptor on MidiPermissionDescriptor {
  bool get sysex => js_util.getProperty(this, 'sysex');
  set sysex(bool newValue) {
    js_util.setProperty(this, 'sysex', newValue);
  }
}

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

///  The read-only interface of the Web MIDI API provides a
/// [Map]-like interface to the currently available MIDI input ports.
/// Though it works generally like a map, because it is read-only it
/// does not contain [clear()], [delete()], or [set()] functions.
@JS()
@staticInterop
class MIDIInputMap extends JsMap<MIDIInput, String> {
  external factory MIDIInputMap();
}

///  The read-only interface of the Web MIDI API provides a
/// [Map]-like interface to the currently available MIDI output
/// ports. Although it works like a map, because it is read-only, it
/// does not contain [clear()], [delete()], or [set()] functions.
@JS()
@staticInterop
class MIDIOutputMap extends JsMap<MIDIOutput, String> {
  external factory MIDIOutputMap();
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web MIDI API provides methods for listing
/// MIDI input and output devices, and obtaining access to those
/// devices.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    MIDIAccess
///
///
@JS()
@staticInterop
class MIDIAccess implements EventTarget {
  external factory MIDIAccess();
}

extension PropsMIDIAccess on MIDIAccess {
  MIDIInputMap get inputs => js_util.getProperty(this, 'inputs');
  MIDIOutputMap get outputs => js_util.getProperty(this, 'outputs');
  EventHandlerNonNull? get onstatechange =>
      js_util.getProperty(this, 'onstatechange');
  set onstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstatechange', newValue);
  }

  bool get sysexEnabled => js_util.getProperty(this, 'sysexEnabled');
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web MIDI API represents a MIDI input or
/// output port.
///  A instance is created when a new MIDI device is connected.
/// Therefore it has no constructor.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    MIDIPort
///
///
@JS()
@staticInterop
class MIDIPort implements EventTarget {
  external factory MIDIPort();
}

extension PropsMIDIPort on MIDIPort {
  String get id => js_util.getProperty(this, 'id');
  String? get manufacturer => js_util.getProperty(this, 'manufacturer');
  String? get name => js_util.getProperty(this, 'name');
  MIDIPortType get type =>
      MIDIPortType.values.byName(js_util.getProperty(this, 'type'));
  String? get version => js_util.getProperty(this, 'version');
  MIDIPortDeviceState get state =>
      MIDIPortDeviceState.values.byName(js_util.getProperty(this, 'state'));
  MIDIPortConnectionState get connection => MIDIPortConnectionState.values
      .byName(js_util.getProperty(this, 'connection'));
  EventHandlerNonNull? get onstatechange =>
      js_util.getProperty(this, 'onstatechange');
  set onstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstatechange', newValue);
  }

  Future<MIDIPort> open() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'open', []));

  Future<MIDIPort> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web MIDI API receives messages from a MIDI
/// input port.
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    MIDIPort
///
///
///
///
///
///
///
///    MIDIInput
///
///
@JS()
@staticInterop
class MIDIInput implements MIDIPort {
  external factory MIDIInput();
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
///
///
///
///    EventTarget
///
///
///
///
///
///
///
///    MIDIPort
///
///
///
///
///
///
///
///    MIDIOutput
///
///
@JS()
@staticInterop
class MIDIOutput implements MIDIPort {
  external factory MIDIOutput();
}

extension PropsMIDIOutput on MIDIOutput {
  Object send(Iterable<int> data, [double? timestamp = 0]) =>
      js_util.callMethod(this, 'send', [data, timestamp]);

  Object clear() => js_util.callMethod(this, 'clear', []);
}

enum MIDIPortType { input, output }

enum MIDIPortDeviceState { disconnected, connected }

enum MIDIPortConnectionState { open, closed, pending }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Web MIDI API represents the event passed to
/// the [midimessage] event of the [MIDIInput] interface. A
/// [midimessage] event is fired every time a MIDI message is sent
/// from a device represented by a [MIDIInput], for example when a
/// MIDI keyboard key is pressed, a knob is tweaked, or a slider is
/// moved.
///
///
///
///    Event
///
///
///
///
///
///
///
///    MIDIMessageEvent
///
///
@JS()
@staticInterop
class MIDIMessageEvent implements Event {
  external factory MIDIMessageEvent(String type,
      [MIDIMessageEventInit? eventInitDict]);
}

extension PropsMIDIMessageEvent on MIDIMessageEvent {
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
/// [statechange] event of the [MIDIAccess] interface and the
/// [statechange] event of the [MIDIPort] interface. This occurs any
/// time a new port becomes available, or when a previously available
/// port becomes unavailable. For example, this event is fired
/// whenever a MIDI device is either plugged in to or unplugged from
/// a computer.
///
///
///
///    Event
///
///
///
///
///
///
///
///    MIDIConnectionEvent
///
///
@JS()
@staticInterop
class MIDIConnectionEvent implements Event {
  external factory MIDIConnectionEvent(String type,
      [MIDIConnectionEventInit? eventInitDict]);
}

extension PropsMIDIConnectionEvent on MIDIConnectionEvent {
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
