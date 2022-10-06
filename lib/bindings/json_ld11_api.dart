/// JSON-LD 1.1 Processing Algorithms and API
///
/// https://w3c.github.io/json-ld-api/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library json_ld11_api;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class JsonLd {
  external factory JsonLd();
}

@JS()
@staticInterop
class JsonLdProcessor {
  external factory JsonLdProcessor();
}

extension PropsJsonLdProcessor on JsonLdProcessor {
  static Future<dynamic> compact(dynamic input,
          [dynamic context, JsonLdOptions? options]) =>
      js_util.promiseToFuture(js_util
          .callMethod(JsonLdProcessor, 'compact', [input, context, options]));

  static Future<Iterable<dynamic>> expand(dynamic input,
          [JsonLdOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(JsonLdProcessor, 'expand', [input, options]));

  static Future<dynamic> flatten(dynamic input,
          [dynamic context, JsonLdOptions? options]) =>
      js_util.promiseToFuture(js_util
          .callMethod(JsonLdProcessor, 'flatten', [input, context, options]));

  static Future<Iterable<dynamic>> fromRdf(RdfDataset input,
          [JsonLdOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(JsonLdProcessor, 'fromRdf', [input, options]));

  static Future<RdfDataset> toRdf(dynamic input, [JsonLdOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(JsonLdProcessor, 'toRdf', [input, options]));

  static Future<dynamic> frame(dynamic input, dynamic frame,
          [JsonLdOptions? options]) =>
      js_util.promiseToFuture(js_util
          .callMethod(JsonLdProcessor, 'frame', [input, frame, options]));
}

@JS()
@staticInterop
class RdfDataset {
  external factory RdfDataset();
}

extension PropsRdfDataset on RdfDataset {
  RdfGraph get defaultGraph => js_util.getProperty(this, 'defaultGraph');
  void add(String graphName, RdfGraph graph) =>
      js_util.callMethod(this, 'add', [graphName, graph]);
}

@JS()
@staticInterop
class RdfGraph {
  external factory RdfGraph();
}

extension PropsRdfGraph on RdfGraph {
  void add(RdfTriple triple) => js_util.callMethod(this, 'add', [triple]);
}

@JS()
@staticInterop
class RdfTriple {
  external factory RdfTriple();
}

extension PropsRdfTriple on RdfTriple {
  String get subject => js_util.getProperty(this, 'subject');
  String get predicate => js_util.getProperty(this, 'predicate');
  dynamic get object => js_util.getProperty(this, 'object');
}

@JS()
@staticInterop
class RdfLiteral {
  external factory RdfLiteral();
}

extension PropsRdfLiteral on RdfLiteral {
  String get value => js_util.getProperty(this, 'value');
  String get datatype => js_util.getProperty(this, 'datatype');
  String? get language => js_util.getProperty(this, 'language');
}

@anonymous
@JS()
@staticInterop
class JsonLdOptions {
  external factory JsonLdOptions(
      {String? base,
      bool? compactArrays = true,
      bool? compactToRelative = true,
      LoadDocumentCallback? documentLoader,
      dynamic expandContext,
      bool? extractAllScripts = false,
      bool? frameExpansion = false,
      bool? ordered = false,
      String? processingMode = 'json-ld-1.1',
      bool? produceGeneralizedRdf = true,
      String? rdfDirection,
      bool? useNativeTypes = false,
      bool? useRdfType = false});
}

extension PropsJsonLdOptions on JsonLdOptions {
  String? get base => js_util.getProperty(this, 'base');
  set base(String? newValue) {
    js_util.setProperty(this, 'base', newValue);
  }

  bool get compactArrays => js_util.getProperty(this, 'compactArrays');
  set compactArrays(bool newValue) {
    js_util.setProperty(this, 'compactArrays', newValue);
  }

  bool get compactToRelative => js_util.getProperty(this, 'compactToRelative');
  set compactToRelative(bool newValue) {
    js_util.setProperty(this, 'compactToRelative', newValue);
  }

  LoadDocumentCallback? get documentLoader =>
      js_util.getProperty(this, 'documentLoader');
  set documentLoader(LoadDocumentCallback? newValue) {
    js_util.setProperty(this, 'documentLoader', newValue);
  }

  dynamic get expandContext => js_util.getProperty(this, 'expandContext');
  set expandContext(dynamic newValue) {
    js_util.setProperty(this, 'expandContext', newValue);
  }

  bool get extractAllScripts => js_util.getProperty(this, 'extractAllScripts');
  set extractAllScripts(bool newValue) {
    js_util.setProperty(this, 'extractAllScripts', newValue);
  }

  bool get frameExpansion => js_util.getProperty(this, 'frameExpansion');
  set frameExpansion(bool newValue) {
    js_util.setProperty(this, 'frameExpansion', newValue);
  }

  bool get ordered => js_util.getProperty(this, 'ordered');
  set ordered(bool newValue) {
    js_util.setProperty(this, 'ordered', newValue);
  }

  String get processingMode => js_util.getProperty(this, 'processingMode');
  set processingMode(String newValue) {
    js_util.setProperty(this, 'processingMode', newValue);
  }

  bool get produceGeneralizedRdf =>
      js_util.getProperty(this, 'produceGeneralizedRdf');
  set produceGeneralizedRdf(bool newValue) {
    js_util.setProperty(this, 'produceGeneralizedRdf', newValue);
  }

  String? get rdfDirection => js_util.getProperty(this, 'rdfDirection');
  set rdfDirection(String? newValue) {
    js_util.setProperty(this, 'rdfDirection', newValue);
  }

  bool get useNativeTypes => js_util.getProperty(this, 'useNativeTypes');
  set useNativeTypes(bool newValue) {
    js_util.setProperty(this, 'useNativeTypes', newValue);
  }

  bool get useRdfType => js_util.getProperty(this, 'useRdfType');
  set useRdfType(bool newValue) {
    js_util.setProperty(this, 'useRdfType', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class LoadDocumentOptions {
  external factory LoadDocumentOptions(
      {bool? extractAllScripts = false,
      String? profile,
      dynamic requestProfile});
}

extension PropsLoadDocumentOptions on LoadDocumentOptions {
  bool get extractAllScripts => js_util.getProperty(this, 'extractAllScripts');
  set extractAllScripts(bool newValue) {
    js_util.setProperty(this, 'extractAllScripts', newValue);
  }

  String get profile => js_util.getProperty(this, 'profile');
  set profile(String newValue) {
    js_util.setProperty(this, 'profile', newValue);
  }

  dynamic get requestProfile => js_util.getProperty(this, 'requestProfile');
  set requestProfile(dynamic newValue) {
    js_util.setProperty(this, 'requestProfile', newValue);
  }
}

@JS()
@staticInterop
class RemoteDocument {
  external factory RemoteDocument();
}

extension PropsRemoteDocument on RemoteDocument {
  String get contentType => js_util.getProperty(this, 'contentType');
  String get contextUrl => js_util.getProperty(this, 'contextUrl');
  dynamic get document => js_util.getProperty(this, 'document');
  set document(dynamic newValue) {
    js_util.setProperty(this, 'document', newValue);
  }

  String get documentUrl => js_util.getProperty(this, 'documentUrl');
  String get profile => js_util.getProperty(this, 'profile');
}

@anonymous
@JS()
@staticInterop
class JsonLdError {
  external factory JsonLdError._({required String code, String? message});

  factory JsonLdError({required JsonLdErrorCode code, String? message}) =>
      JsonLdError._(code: code.name, message: message);
}

extension PropsJsonLdError on JsonLdError {
  JsonLdErrorCode get code =>
      JsonLdErrorCode.values.byName(js_util.getProperty(this, 'code'));
  set code(JsonLdErrorCode newValue) {
    js_util.setProperty(this, 'code', newValue.name);
  }

  String? get message => js_util.getProperty(this, 'message');
  set message(String? newValue) {
    js_util.setProperty(this, 'message', newValue);
  }
}

enum JsonLdErrorCode {
  collidingKeywords,
  conflictingIndexes,
  contextOverflow,
  cyclicIRIMapping,
  invalididValue,
  invalidimportValue,
  invalidincludedValue,
  invalidindexValue,
  invalidnestValue,
  invalidprefixValue,
  invalidpropagateValue,
  invalidprotectedValue,
  invalidreverseValue,
  invalidversionValue,
  invalidBaseDirection,
  invalidBaseIRI,
  invalidContainerMapping,
  invalidContextEntry,
  invalidContextNullification,
  invalidDefaultLanguage,
  invalidIRIMapping,
  invalidJSONLiteral,
  invalidKeywordAlias,
  invalidLanguageMapValue,
  invalidLanguageMapping,
  invalidLanguageTaggedString,
  invalidLanguageTaggedValue,
  invalidLocalContext,
  invalidRemoteContext,
  invalidReversePropertyMap,
  invalidReversePropertyValue,
  invalidReverseProperty,
  invalidScopedContext,
  invalidScriptElement,
  invalidSetOrListObject,
  invalidTermDefinition,
  invalidTypeMapping,
  invalidTypeValue,
  invalidTypedValue,
  invalidValueObjectValue,
  invalidValueObject,
  invalidVocabMapping,
  iRIConfusedWithPrefix,
  keywordRedefinition,
  loadingDocumentFailed,
  loadingRemoteContextFailed,
  multipleContextLinkHeaders,
  processingModeConflict,
  protectedTermRedefinition
}
