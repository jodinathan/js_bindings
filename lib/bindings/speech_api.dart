/// Web Speech API
///
/// https://wicg.github.io/speech-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library speech_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the Web Speech API is the controller interface
/// for the recognition service; this also handles the
/// [SpeechRecognitionEvent] sent from the recognition service.
///
///   Note: On some browsers, like Chrome, using Speech Recognition
/// on a web page involves a server-based recognition engine. Your
/// audio is sent to a web service for recognition processing, so it
/// won't work offline.
///
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
///    SpeechRecognition
///
///
@JS()
@staticInterop
class SpeechRecognition implements EventTarget {
  external factory SpeechRecognition();
}

extension PropsSpeechRecognition on SpeechRecognition {
  SpeechGrammarList get grammars => js_util.getProperty(this, 'grammars');
  set grammars(SpeechGrammarList newValue) {
    js_util.setProperty(this, 'grammars', newValue);
  }

  String get lang => js_util.getProperty(this, 'lang');
  set lang(String newValue) {
    js_util.setProperty(this, 'lang', newValue);
  }

  bool get continuous => js_util.getProperty(this, 'continuous');
  set continuous(bool newValue) {
    js_util.setProperty(this, 'continuous', newValue);
  }

  bool get interimResults => js_util.getProperty(this, 'interimResults');
  set interimResults(bool newValue) {
    js_util.setProperty(this, 'interimResults', newValue);
  }

  int get maxAlternatives => js_util.getProperty(this, 'maxAlternatives');
  set maxAlternatives(int newValue) {
    js_util.setProperty(this, 'maxAlternatives', newValue);
  }

  void start() => js_util.callMethod(this, 'start', []);

  void stop() => js_util.callMethod(this, 'stop', []);

  void abort() => js_util.callMethod(this, 'abort', []);

  EventHandlerNonNull? get onaudiostart =>
      js_util.getProperty(this, 'onaudiostart');
  set onaudiostart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onaudiostart', newValue);
  }

  EventHandlerNonNull? get onsoundstart =>
      js_util.getProperty(this, 'onsoundstart');
  set onsoundstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsoundstart', newValue);
  }

  EventHandlerNonNull? get onspeechstart =>
      js_util.getProperty(this, 'onspeechstart');
  set onspeechstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onspeechstart', newValue);
  }

  EventHandlerNonNull? get onspeechend =>
      js_util.getProperty(this, 'onspeechend');
  set onspeechend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onspeechend', newValue);
  }

  EventHandlerNonNull? get onsoundend =>
      js_util.getProperty(this, 'onsoundend');
  set onsoundend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onsoundend', newValue);
  }

  EventHandlerNonNull? get onaudioend =>
      js_util.getProperty(this, 'onaudioend');
  set onaudioend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onaudioend', newValue);
  }

  EventHandlerNonNull? get onresult => js_util.getProperty(this, 'onresult');
  set onresult(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onresult', newValue);
  }

  EventHandlerNonNull? get onnomatch => js_util.getProperty(this, 'onnomatch');
  set onnomatch(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onnomatch', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  EventHandlerNonNull? get onstart => js_util.getProperty(this, 'onstart');
  set onstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstart', newValue);
  }

  EventHandlerNonNull? get onend => js_util.getProperty(this, 'onend');
  set onend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onend', newValue);
  }
}

enum SpeechRecognitionErrorCode {
  noSpeech('no-speech'),
  aborted('aborted'),
  audioCapture('audio-capture'),
  network('network'),
  notAllowed('not-allowed'),
  serviceNotAllowed('service-not-allowed'),
  badGrammar('bad-grammar'),
  languageNotSupported('language-not-supported');

  final String value;
  static SpeechRecognitionErrorCode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const SpeechRecognitionErrorCode(this.value);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Speech API represents error messages
/// from the recognition service.
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
///    SpeechRecognitionErrorEvent
///
///
@JS()
@staticInterop
class SpeechRecognitionErrorEvent implements Event {
  external factory SpeechRecognitionErrorEvent(
      String type, SpeechRecognitionErrorEventInit eventInitDict);
}

extension PropsSpeechRecognitionErrorEvent on SpeechRecognitionErrorEvent {
  SpeechRecognitionErrorCode get error =>
      SpeechRecognitionErrorCode.fromValue(js_util.getProperty(this, 'error'));
  String get message => js_util.getProperty(this, 'message');
}

@anonymous
@JS()
@staticInterop
class SpeechRecognitionErrorEventInit implements EventInit {
  external factory SpeechRecognitionErrorEventInit._(
      {required String error, String? message = ''});

  factory SpeechRecognitionErrorEventInit(
          {required SpeechRecognitionErrorCode error, String? message = ''}) =>
      SpeechRecognitionErrorEventInit._(error: error.value, message: message);
}

extension PropsSpeechRecognitionErrorEventInit
    on SpeechRecognitionErrorEventInit {
  SpeechRecognitionErrorCode get error =>
      SpeechRecognitionErrorCode.fromValue(js_util.getProperty(this, 'error'));
  set error(SpeechRecognitionErrorCode newValue) {
    js_util.setProperty(this, 'error', newValue.value);
  }

  String get message => js_util.getProperty(this, 'message');
  set message(String newValue) {
    js_util.setProperty(this, 'message', newValue);
  }
}

///  The interface of the Web Speech API represents a single word
/// that has been recognized by the speech recognition service.
@JS()
@staticInterop
class SpeechRecognitionAlternative {
  external factory SpeechRecognitionAlternative();
}

extension PropsSpeechRecognitionAlternative on SpeechRecognitionAlternative {
  String get transcript => js_util.getProperty(this, 'transcript');
  double get confidence => js_util.getProperty(this, 'confidence');
}

///  The interface of the Web Speech API represents a single
/// recognition match, which may contain multiple
/// [SpeechRecognitionAlternative] objects.
@JS()
@staticInterop
class SpeechRecognitionResult {
  external factory SpeechRecognitionResult();
}

extension PropsSpeechRecognitionResult on SpeechRecognitionResult {
  int get length => js_util.getProperty(this, 'length');
  SpeechRecognitionAlternative item(int index) =>
      js_util.callMethod(this, 'item', [index]);

  bool get isFinal => js_util.getProperty(this, 'isFinal');
}

///  The interface of the Web Speech API represents a list of
/// [SpeechRecognitionResult] objects, or a single one if results are
/// being captured in [non-continuous] mode.
@JS()
@staticInterop
class SpeechRecognitionResultList {
  external factory SpeechRecognitionResultList();
}

extension PropsSpeechRecognitionResultList on SpeechRecognitionResultList {
  int get length => js_util.getProperty(this, 'length');
  SpeechRecognitionResult item(int index) =>
      js_util.callMethod(this, 'item', [index]);
}

///  The interface of the Web Speech API represents the event object
/// for the [result] and [nomatch] events, and contains all the data
/// associated with an interim or final speech recognition result.
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
///    SpeechRecognitionEvent
///
///
@JS()
@staticInterop
class SpeechRecognitionEvent implements Event {
  external factory SpeechRecognitionEvent(
      String type, SpeechRecognitionEventInit eventInitDict);
}

extension PropsSpeechRecognitionEvent on SpeechRecognitionEvent {
  int get resultIndex => js_util.getProperty(this, 'resultIndex');
  SpeechRecognitionResultList get results =>
      js_util.getProperty(this, 'results');
}

@anonymous
@JS()
@staticInterop
class SpeechRecognitionEventInit implements EventInit {
  external factory SpeechRecognitionEventInit(
      {int? resultIndex = 0, SpeechRecognitionResultList? results});
}

extension PropsSpeechRecognitionEventInit on SpeechRecognitionEventInit {
  int get resultIndex => js_util.getProperty(this, 'resultIndex');
  set resultIndex(int newValue) {
    js_util.setProperty(this, 'resultIndex', newValue);
  }

  SpeechRecognitionResultList get results =>
      js_util.getProperty(this, 'results');
  set results(SpeechRecognitionResultList newValue) {
    js_util.setProperty(this, 'results', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Speech API represents a set of words or
/// patterns of words that we want the recognition service to
/// recognize.
///  Grammar is defined using JSpeech Grammar Format (JSGF.) Other
/// formats may also be supported in the future.
@experimental
@JS()
@staticInterop
class SpeechGrammar {
  external factory SpeechGrammar();
}

extension PropsSpeechGrammar on SpeechGrammar {
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  double get weight => js_util.getProperty(this, 'weight');
  set weight(double newValue) {
    js_util.setProperty(this, 'weight', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Speech API represents a list of
/// [SpeechGrammar] objects containing words or patterns of words
/// that we want the recognition service to recognize.
///  Grammar is defined using JSpeech Grammar Format (JSGF.) Other
/// formats may also be supported in the future.
@experimental
@JS()
@staticInterop
class SpeechGrammarList {
  external factory SpeechGrammarList();
}

extension PropsSpeechGrammarList on SpeechGrammarList {
  int get length => js_util.getProperty(this, 'length');
  SpeechGrammar item(int index) => js_util.callMethod(this, 'item', [index]);

  void addFromURI(String src, [double? weight = 1.0]) =>
      js_util.callMethod(this, 'addFromURI', [src, weight]);

  void addFromString(String string, [double? weight = 1.0]) =>
      js_util.callMethod(this, 'addFromString', [string, weight]);
}

///  The interface of the Web Speech API is the controller interface
/// for the speech service; this can be used to retrieve information
/// about the synthesis voices available on the device, start and
/// pause speech, and other commands besides.
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
///    SpeechSynthesis
///
///
@JS()
@staticInterop
class SpeechSynthesis implements EventTarget {
  external factory SpeechSynthesis();
}

extension PropsSpeechSynthesis on SpeechSynthesis {
  bool get pending => js_util.getProperty(this, 'pending');
  bool get speaking => js_util.getProperty(this, 'speaking');
  bool get paused => js_util.getProperty(this, 'paused');
  EventHandlerNonNull? get onvoiceschanged =>
      js_util.getProperty(this, 'onvoiceschanged');
  set onvoiceschanged(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onvoiceschanged', newValue);
  }

  void speak(SpeechSynthesisUtterance utterance) =>
      js_util.callMethod(this, 'speak', [utterance]);

  void cancel() => js_util.callMethod(this, 'cancel', []);

  void pause() => js_util.callMethod(this, 'pause', []);

  void resume() => js_util.callMethod(this, 'resume', []);

  Iterable<SpeechSynthesisVoice> getVoices() =>
      js_util.callMethod(this, 'getVoices', []);
}

///
///   The interface of the Web Speech API represents a speech
/// request.
///   It contains the content the speech service should read and
/// information about how to read it (e.g. language, pitch and
/// volume.)
///
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
///    SpeechSynthesisUtterance
///
///
@JS()
@staticInterop
class SpeechSynthesisUtterance implements EventTarget {
  external factory SpeechSynthesisUtterance([String? text]);
}

extension PropsSpeechSynthesisUtterance on SpeechSynthesisUtterance {
  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }

  String get lang => js_util.getProperty(this, 'lang');
  set lang(String newValue) {
    js_util.setProperty(this, 'lang', newValue);
  }

  SpeechSynthesisVoice? get voice => js_util.getProperty(this, 'voice');
  set voice(SpeechSynthesisVoice? newValue) {
    js_util.setProperty(this, 'voice', newValue);
  }

  double get volume => js_util.getProperty(this, 'volume');
  set volume(double newValue) {
    js_util.setProperty(this, 'volume', newValue);
  }

  double get rate => js_util.getProperty(this, 'rate');
  set rate(double newValue) {
    js_util.setProperty(this, 'rate', newValue);
  }

  double get pitch => js_util.getProperty(this, 'pitch');
  set pitch(double newValue) {
    js_util.setProperty(this, 'pitch', newValue);
  }

  EventHandlerNonNull? get onstart => js_util.getProperty(this, 'onstart');
  set onstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstart', newValue);
  }

  EventHandlerNonNull? get onend => js_util.getProperty(this, 'onend');
  set onend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onend', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  EventHandlerNonNull? get onpause => js_util.getProperty(this, 'onpause');
  set onpause(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onpause', newValue);
  }

  EventHandlerNonNull? get onresume => js_util.getProperty(this, 'onresume');
  set onresume(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onresume', newValue);
  }

  EventHandlerNonNull? get onmark => js_util.getProperty(this, 'onmark');
  set onmark(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onmark', newValue);
  }

  EventHandlerNonNull? get onboundary =>
      js_util.getProperty(this, 'onboundary');
  set onboundary(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onboundary', newValue);
  }
}

///  The interface of the Web Speech API contains information about
/// the current state of [SpeechSynthesisUtterance] objects that have
/// been processed in the speech service.
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
///    SpeechSynthesisEvent
///
///
@JS()
@staticInterop
class SpeechSynthesisEvent implements Event {
  external factory SpeechSynthesisEvent(
      String type, SpeechSynthesisEventInit eventInitDict);
}

extension PropsSpeechSynthesisEvent on SpeechSynthesisEvent {
  SpeechSynthesisUtterance get utterance =>
      js_util.getProperty(this, 'utterance');
  int get charIndex => js_util.getProperty(this, 'charIndex');
  int get charLength => js_util.getProperty(this, 'charLength');
  double get elapsedTime => js_util.getProperty(this, 'elapsedTime');
  String get name => js_util.getProperty(this, 'name');
}

@anonymous
@JS()
@staticInterop
class SpeechSynthesisEventInit implements EventInit {
  external factory SpeechSynthesisEventInit(
      {required SpeechSynthesisUtterance utterance,
      int? charIndex = 0,
      int? charLength = 0,
      double? elapsedTime = 0,
      String? name = ''});
}

extension PropsSpeechSynthesisEventInit on SpeechSynthesisEventInit {
  SpeechSynthesisUtterance get utterance =>
      js_util.getProperty(this, 'utterance');
  set utterance(SpeechSynthesisUtterance newValue) {
    js_util.setProperty(this, 'utterance', newValue);
  }

  int get charIndex => js_util.getProperty(this, 'charIndex');
  set charIndex(int newValue) {
    js_util.setProperty(this, 'charIndex', newValue);
  }

  int get charLength => js_util.getProperty(this, 'charLength');
  set charLength(int newValue) {
    js_util.setProperty(this, 'charLength', newValue);
  }

  double get elapsedTime => js_util.getProperty(this, 'elapsedTime');
  set elapsedTime(double newValue) {
    js_util.setProperty(this, 'elapsedTime', newValue);
  }

  String get name => js_util.getProperty(this, 'name');
  set name(String newValue) {
    js_util.setProperty(this, 'name', newValue);
  }
}

enum SpeechSynthesisErrorCode {
  canceled('canceled'),
  interrupted('interrupted'),
  audioBusy('audio-busy'),
  audioHardware('audio-hardware'),
  network('network'),
  synthesisUnavailable('synthesis-unavailable'),
  synthesisFailed('synthesis-failed'),
  languageUnavailable('language-unavailable'),
  voiceUnavailable('voice-unavailable'),
  textTooLong('text-too-long'),
  invalidArgument('invalid-argument'),
  notAllowed('not-allowed');

  final String value;
  static SpeechSynthesisErrorCode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const SpeechSynthesisErrorCode(this.value);
}

///  The interface of the Web Speech API contains information about
/// any errors that occur while processing [SpeechSynthesisUtterance]
/// objects in the speech service.
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
///    SpeechSynthesisEvent
///
///
///
///
///
///
///
///    SpeechSynthesisErrorEvent
///
///
@JS()
@staticInterop
class SpeechSynthesisErrorEvent implements SpeechSynthesisEvent {
  external factory SpeechSynthesisErrorEvent(
      String type, SpeechSynthesisErrorEventInit eventInitDict);
}

extension PropsSpeechSynthesisErrorEvent on SpeechSynthesisErrorEvent {
  SpeechSynthesisErrorCode get error =>
      SpeechSynthesisErrorCode.fromValue(js_util.getProperty(this, 'error'));
}

@anonymous
@JS()
@staticInterop
class SpeechSynthesisErrorEventInit implements SpeechSynthesisEventInit {
  external factory SpeechSynthesisErrorEventInit._({required String error});

  factory SpeechSynthesisErrorEventInit(
          {required SpeechSynthesisErrorCode error}) =>
      SpeechSynthesisErrorEventInit._(error: error.value);
}

extension PropsSpeechSynthesisErrorEventInit on SpeechSynthesisErrorEventInit {
  SpeechSynthesisErrorCode get error =>
      SpeechSynthesisErrorCode.fromValue(js_util.getProperty(this, 'error'));
  set error(SpeechSynthesisErrorCode newValue) {
    js_util.setProperty(this, 'error', newValue.value);
  }
}

///
///   The interface of the Web Speech API represents a voice that the
/// system supports.
///   Every has its own relative speech service including information
/// about language, name and URI.
///
@JS()
@staticInterop
class SpeechSynthesisVoice {
  external factory SpeechSynthesisVoice();
}

extension PropsSpeechSynthesisVoice on SpeechSynthesisVoice {
  String get voiceURI => js_util.getProperty(this, 'voiceURI');
  String get name => js_util.getProperty(this, 'name');
  String get lang => js_util.getProperty(this, 'lang');
  bool get localService => js_util.getProperty(this, 'localService');
  @JS('default')
  @staticInterop
  bool get mDefault => js_util.getProperty(this, 'default');
}
