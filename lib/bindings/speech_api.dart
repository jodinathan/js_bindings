/// Web Speech API
///
/// https://wicg.github.io/speech-api/
@JS('window')
@staticInterop
library speech_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html */

///  The interface of the Web Speech API is the controller interface
/// for the recognition service; this also handles the
/// [SpeechRecognitionEvent] sent from the recognition service.
///
///   Note: On some browsers, like Chrome, using Speech Recognition
/// on a web page involves a server-based recognition engine. Your
/// audio is sent to a web service for recognition processing, so it
/// won't work offline.
///
@JS()
@staticInterop
class SpeechRecognition implements EventTarget {
  external SpeechRecognition();
}

extension PropsSpeechRecognition on SpeechRecognition {
  ///  Returns and sets a collection of [SpeechGrammar] objects that
  /// represent the grammars that will be understood by the current
  /// [SpeechRecognition].
  ///
  SpeechGrammarList get grammars => js_util.getProperty(this, 'grammars');
  set grammars(SpeechGrammarList newValue) {
    js_util.setProperty(this, 'grammars', newValue);
  }

  ///  Returns and sets the language of the current
  /// [SpeechRecognition]. If not specified, this defaults to the HTML
  /// attribute value, or the user agent's language setting if that
  /// isn't set either.
  ///
  String get lang => js_util.getProperty(this, 'lang');
  set lang(String newValue) {
    js_util.setProperty(this, 'lang', newValue);
  }

  ///  Controls whether continuous results are returned for each
  /// recognition, or only a single result. Defaults to single
  /// ([false].)
  ///
  bool get continuous => js_util.getProperty(this, 'continuous');
  set continuous(bool newValue) {
    js_util.setProperty(this, 'continuous', newValue);
  }

  ///  Controls whether interim results should be returned ([true]) or
  /// not ([false].) Interim results are results that are not yet final
  /// (e.g. the [SpeechRecognitionResult.isFinal] property is [false].)
  ///
  bool get interimResults => js_util.getProperty(this, 'interimResults');
  set interimResults(bool newValue) {
    js_util.setProperty(this, 'interimResults', newValue);
  }

  ///  Sets the maximum number of [SpeechRecognitionAlternative]s
  /// provided per result. The default value is 1.
  ///
  int get maxAlternatives => js_util.getProperty(this, 'maxAlternatives');
  set maxAlternatives(int newValue) {
    js_util.setProperty(this, 'maxAlternatives', newValue);
  }

  ///  Starts the speech recognition service listening to incoming
  /// audio with intent to recognize grammars associated with the
  /// current [SpeechRecognition].
  ///
  /// start()
  ///
  Object start() => js_util.callMethod(this, 'start', []);

  ///  Stops the speech recognition service from listening to incoming
  /// audio, and attempts to return a [SpeechRecognitionResult] using
  /// the audio captured so far.
  ///
  /// stop();
  ///
  Object stop() => js_util.callMethod(this, 'stop', []);

  ///  Stops the speech recognition service from listening to incoming
  /// audio, and doesn't attempt to return a [SpeechRecognitionResult].
  ///
  /// abort()
  ///
  Object abort() => js_util.callMethod(this, 'abort', []);

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
  noSpeech,
  aborted,
  audioCapture,
  network,
  notAllowed,
  serviceNotAllowed,
  badGrammar,
  languageNotSupported
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Speech API represents error messages
/// from the recognition service.
@JS()
@staticInterop
class SpeechRecognitionErrorEvent implements Event {
  external SpeechRecognitionErrorEvent(
      String type, SpeechRecognitionErrorEventInit eventInitDict);
}

extension PropsSpeechRecognitionErrorEvent on SpeechRecognitionErrorEvent {
  /// Returns the type of error raised.
  ///
  SpeechRecognitionErrorCode get error => js_util.getProperty(this, 'error');

  /// Returns a message describing the error in more detail.
  ///
  String get message => js_util.getProperty(this, 'message');
}

@anonymous
@JS()
@staticInterop
class SpeechRecognitionErrorEventInit implements EventInit {
  external factory SpeechRecognitionErrorEventInit(
      {SpeechRecognitionErrorCode error, String message = ''});
}

extension PropsSpeechRecognitionErrorEventInit
    on SpeechRecognitionErrorEventInit {
  SpeechRecognitionErrorCode get error => js_util.getProperty(this, 'error');
  set error(SpeechRecognitionErrorCode newValue) {
    js_util.setProperty(this, 'error', newValue);
  }

  String get message => js_util.getProperty(this, 'message');
  set message(String newValue) {
    js_util.setProperty(this, 'message', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Speech API represents a single word
/// that has been recognized by the speech recognition service.
@experimental
@JS()
@staticInterop
class SpeechRecognitionAlternative {
  external SpeechRecognitionAlternative();
}

extension PropsSpeechRecognitionAlternative on SpeechRecognitionAlternative {
  ///  Returns a string containing the transcript of the recognized
  /// word.
  ///
  String get transcript => js_util.getProperty(this, 'transcript');

  ///  Returns a numeric estimate of how confident the speech
  /// recognition system is that the recognition is correct.
  ///
  double get confidence => js_util.getProperty(this, 'confidence');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Speech API represents a single
/// recognition match, which may contain multiple
/// [SpeechRecognitionAlternative] objects.
@experimental
@JS()
@staticInterop
class SpeechRecognitionResult {
  external SpeechRecognitionResult();
}

extension PropsSpeechRecognitionResult on SpeechRecognitionResult {
  ///  Returns the length of the "array" — the number of
  /// [SpeechRecognitionAlternative] objects contained in the result
  /// (also referred to as "n-best alternatives".)
  ///
  int get length => js_util.getProperty(this, 'length');

  ///  A standard getter that allows [SpeechRecognitionAlternative]
  /// objects within the result to be accessed via array syntax.
  ///
  /// var myAlternative = speechRecognitionResultInstance[0];
  ///
  SpeechRecognitionAlternative item(int index) =>
      js_util.callMethod(this, 'item', [index]);

  ///  A boolean value that states whether this result is final (true)
  /// or not (false) — if so, then this is the final time this result
  /// will be returned; if not, then this result is an interim result,
  /// and may be updated later on.
  ///
  bool get isFinal => js_util.getProperty(this, 'isFinal');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Speech API represents a list of
/// [SpeechRecognitionResult] objects, or a single one if results are
/// being captured in [continuous] mode.
@experimental
@JS()
@staticInterop
class SpeechRecognitionResultList {
  external SpeechRecognitionResultList();
}

extension PropsSpeechRecognitionResultList on SpeechRecognitionResultList {
  ///  Returns the length of the "array" — the number of
  /// [SpeechRecognitionResult] objects in the list.
  ///
  int get length => js_util.getProperty(this, 'length');

  ///  A standard getter that allows [SpeechRecognitionResult] objects
  /// in the list to be accessed via array syntax.
  ///
  /// var myResult = speechRecognitionResultListInstance[0];
  ///
  SpeechRecognitionResult item(int index) =>
      js_util.callMethod(this, 'item', [index]);
}

///  The interface of the Web Speech API represents the event object
/// for the [result] and [nomatch] events, and contains all the data
/// associated with an interim or final speech recognition result.
@experimental
@JS()
@staticInterop
class SpeechRecognitionEvent implements Event {
  external SpeechRecognitionEvent(
      String type, SpeechRecognitionEventInit eventInitDict);
}

extension PropsSpeechRecognitionEvent on SpeechRecognitionEvent {
  ///  Returns the lowest index value result in the
  /// [SpeechRecognitionResultList] "array" that has actually changed.
  ///
  int get resultIndex => js_util.getProperty(this, 'resultIndex');

  ///  Returns a [SpeechRecognitionResultList] object representing all
  /// the speech recognition results for the current session.
  ///
  SpeechRecognitionResultList get results =>
      js_util.getProperty(this, 'results');
}

@anonymous
@JS()
@staticInterop
class SpeechRecognitionEventInit implements EventInit {
  external factory SpeechRecognitionEventInit(
      {int resultIndex = 0, SpeechRecognitionResultList? results});
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
  external SpeechGrammar();
}

extension PropsSpeechGrammar on SpeechGrammar {
  ///  Sets and returns a string containing the grammar from within in
  /// the [SpeechGrammar] object instance.
  ///
  String get src => js_util.getProperty(this, 'src');
  set src(String newValue) {
    js_util.setProperty(this, 'src', newValue);
  }

  /// Sets and returns the weight of the [SpeechGrammar] object.
  ///
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
  external SpeechGrammarList();
}

extension PropsSpeechGrammarList on SpeechGrammarList {
  ///  Returns the number of [SpeechGrammar] objects contained in the
  /// [SpeechGrammarList].
  ///
  int get length => js_util.getProperty(this, 'length');

  ///  Standard getter — allows individual [SpeechGrammar] objects to
  /// be retrieved from the [SpeechGrammarList] using array syntax.
  ///
  /// var myFirstGrammar = speechGrammarListInstance[0];
  ///
  SpeechGrammar item(int index) => js_util.callMethod(this, 'item', [index]);

  ///  Takes a grammar present at a specific URI and adds it to the
  /// [SpeechGrammarList] as a new [SpeechGrammar] object.
  ///
  /// speechGrammarListInstance.addFromURI(src,weight);
  ///
  Object addFromURI(String src, [double? weight = 1.0]) =>
      js_util.callMethod(this, 'addFromURI', [src, weight]);

  ///  Takes a grammar present in a specific [String] within the code
  /// base (e.g. stored in a variable) and adds it to the
  /// [SpeechGrammarList] as a new [SpeechGrammar] object.
  ///
  /// speechGrammarListInstance.addFromString(string,weight);
  ///
  Object addFromString(String string, [double? weight = 1.0]) =>
      js_util.callMethod(this, 'addFromString', [string, weight]);
}

///  The interface of the Web Speech API is the controller interface
/// for the speech service; this can be used to retrieve information
/// about the synthesis voices available on the device, start and
/// pause speech, and other commands besides.
@JS()
@staticInterop
class SpeechSynthesis implements EventTarget {
  external SpeechSynthesis();
}

extension PropsSpeechSynthesis on SpeechSynthesis {
  ///  A boolean value that returns [true] if the utterance queue
  /// contains as-yet-unspoken utterances.
  ///
  bool get pending => js_util.getProperty(this, 'pending');

  ///  A boolean value that returns [true] if an utterance is currently
  /// in the process of being spoken — even if [SpeechSynthesis] is in
  /// a paused state.
  ///
  bool get speaking => js_util.getProperty(this, 'speaking');

  ///  A boolean value that returns [true] if the [SpeechSynthesis]
  /// object is in a paused state.
  ///
  bool get paused => js_util.getProperty(this, 'paused');
  EventHandlerNonNull? get onvoiceschanged =>
      js_util.getProperty(this, 'onvoiceschanged');
  set onvoiceschanged(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onvoiceschanged', newValue);
  }

  ///  Adds an [utterance] to the utterance queue; it will be spoken
  /// when any other utterances queued before it have been spoken.
  ///
  /// speak(utterance)
  ///
  Object speak(

          /// A [SpeechSynthesisUtterance] object.
          ///
          SpeechSynthesisUtterance utterance) =>
      js_util.callMethod(this, 'speak', [utterance]);

  /// Removes all utterances from the utterance queue.
  ///
  /// cancel()
  ///
  Object cancel() => js_util.callMethod(this, 'cancel', []);

  /// Puts the [SpeechSynthesis] object into a paused state.
  ///
  /// pause()
  ///
  Object pause() => js_util.callMethod(this, 'pause', []);

  ///  Puts the [SpeechSynthesis] object into a non-paused state:
  /// resumes it if it was already paused.
  ///
  /// resume()
  ///
  Object resume() => js_util.callMethod(this, 'resume', []);

  ///  Returns a list of [SpeechSynthesisVoice] objects representing
  /// all the available voices on the current device.
  ///
  /// getVoices()
  ///
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
@JS()
@staticInterop
class SpeechSynthesisUtterance implements EventTarget {
  external SpeechSynthesisUtterance([String? text]);
}

extension PropsSpeechSynthesisUtterance on SpeechSynthesisUtterance {
  ///  Gets and sets the text that will be synthesised when the
  /// utterance is spoken.
  ///
  String get text => js_util.getProperty(this, 'text');
  set text(String newValue) {
    js_util.setProperty(this, 'text', newValue);
  }

  /// Gets and sets the language of the utterance.
  ///
  String get lang => js_util.getProperty(this, 'lang');
  set lang(String newValue) {
    js_util.setProperty(this, 'lang', newValue);
  }

  ///  Gets and sets the voice that will be used to speak the
  /// utterance.
  ///
  SpeechSynthesisVoice? get voice => js_util.getProperty(this, 'voice');
  set voice(SpeechSynthesisVoice? newValue) {
    js_util.setProperty(this, 'voice', newValue);
  }

  /// Gets and sets the volume that the utterance will be spoken at.
  ///
  double get volume => js_util.getProperty(this, 'volume');
  set volume(double newValue) {
    js_util.setProperty(this, 'volume', newValue);
  }

  ///  Gets and sets the speed at which the utterance will be spoken
  /// at.
  ///
  double get rate => js_util.getProperty(this, 'rate');
  set rate(double newValue) {
    js_util.setProperty(this, 'rate', newValue);
  }

  ///  Gets and sets the pitch at which the utterance will be spoken
  /// at.
  ///
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
@JS()
@staticInterop
class SpeechSynthesisEvent implements Event {
  external SpeechSynthesisEvent(
      String type, SpeechSynthesisEventInit eventInitDict);
}

extension PropsSpeechSynthesisEvent on SpeechSynthesisEvent {
  ///  Returns the [SpeechSynthesisUtterance] instance that the event
  /// was triggered on.
  ///
  SpeechSynthesisUtterance get utterance =>
      js_util.getProperty(this, 'utterance');

  ///  Returns the index position of the character in the
  /// [SpeechSynthesisUtterance.text] that was being spoken when the
  /// event was triggered.
  ///
  int get charIndex => js_util.getProperty(this, 'charIndex');
  int get charLength => js_util.getProperty(this, 'charLength');

  ///  Returns the elapsed time in seconds after the
  /// [SpeechSynthesisUtterance.text] started being spoken that the
  /// event was triggered at.
  ///
  double get elapsedTime => js_util.getProperty(this, 'elapsedTime');

  ///  Returns the name associated with certain types of events
  /// occurring as the [SpeechSynthesisUtterance.text] is being spoken:
  /// the name of the SSML marker reached in the case of a [mark]
  /// event, or the type of boundary reached in the case of a
  /// [boundary] event.
  ///
  String get name => js_util.getProperty(this, 'name');
}

@anonymous
@JS()
@staticInterop
class SpeechSynthesisEventInit implements EventInit {
  external factory SpeechSynthesisEventInit(
      {SpeechSynthesisUtterance utterance,
      int charIndex = 0,
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
  canceled,
  interrupted,
  audioBusy,
  audioHardware,
  network,
  synthesisUnavailable,
  synthesisFailed,
  languageUnavailable,
  voiceUnavailable,
  textTooLong,
  invalidArgument,
  notAllowed
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Speech API contains information about
/// any errors that occur while processing [SpeechSynthesisUtterance]
/// objects in the speech service.
@experimental
@JS()
@staticInterop
class SpeechSynthesisErrorEvent implements SpeechSynthesisEvent {
  external SpeechSynthesisErrorEvent(
      String type, SpeechSynthesisErrorEventInit eventInitDict);
}

extension PropsSpeechSynthesisErrorEvent on SpeechSynthesisErrorEvent {
  ///  Returns an error code indicating what has gone wrong with a
  /// speech synthesis attempt.
  ///
  SpeechSynthesisErrorCode get error => js_util.getProperty(this, 'error');
}

@anonymous
@JS()
@staticInterop
class SpeechSynthesisErrorEventInit implements SpeechSynthesisEventInit {
  external factory SpeechSynthesisErrorEventInit(
      {SpeechSynthesisErrorCode error});
}

extension PropsSpeechSynthesisErrorEventInit on SpeechSynthesisErrorEventInit {
  SpeechSynthesisErrorCode get error => js_util.getProperty(this, 'error');
  set error(SpeechSynthesisErrorCode newValue) {
    js_util.setProperty(this, 'error', newValue);
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
  external SpeechSynthesisVoice();
}

extension PropsSpeechSynthesisVoice on SpeechSynthesisVoice {
  ///  Returns the type of URI and location of the speech synthesis
  /// service for this voice.
  ///
  String get voiceURI => js_util.getProperty(this, 'voiceURI');

  /// Returns a human-readable name that represents the voice.
  ///
  String get name => js_util.getProperty(this, 'name');

  ///  Returns a BCP 47 language tag indicating the language of the
  /// voice.
  ///
  String get lang => js_util.getProperty(this, 'lang');

  ///  A boolean value indicating whether the voice is supplied by a
  /// local speech synthesizer service ([true]), or a remote speech
  /// synthesizer service ([false].)
  ///
  bool get localService => js_util.getProperty(this, 'localService');

  ///  A boolean value indicating whether the voice is the default
  /// voice for the current app language ([true]), or not ([false].)
  ///
  @JS('default')
  @staticInterop
  bool get mDefault => js_util.getProperty(this, 'default');
}
