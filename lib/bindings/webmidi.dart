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

@JS()
@staticInterop
class MIDIInputMap extends JsMap<MIDIInput, String> {
  external MIDIInputMap();
}

@JS()
@staticInterop
class MIDIOutputMap extends JsMap<MIDIOutput, String> {
  external MIDIOutputMap();
}

@JS()
@staticInterop
class MIDIAccess implements EventTarget {
  external MIDIAccess();
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

@JS()
@staticInterop
class MIDIPort implements EventTarget {
  external MIDIPort();
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

@JS()
@staticInterop
class MIDIOutput implements MIDIPort {
  external MIDIOutput();
}

extension PropsMIDIOutput on MIDIOutput {
  Object send(Iterable<int> data, [double? timestamp = 0]) =>
      js_util.callMethod(this, 'send', [data, timestamp]);

  Object clear() => js_util.callMethod(this, 'clear', []);
}

enum MIDIPortType { input, output }

enum MIDIPortDeviceState { disconnected, connected }

enum MIDIPortConnectionState { open, closed, pending }

@JS()
@staticInterop
class MIDIMessageEvent implements Event {
  external MIDIMessageEvent(String type, [MIDIMessageEventInit? eventInitDict]);
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

@JS()
@staticInterop
class MIDIConnectionEvent implements Event {
  external MIDIConnectionEvent(String type,
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
