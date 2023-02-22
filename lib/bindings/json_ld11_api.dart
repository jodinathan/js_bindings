/// JSON-LD 1.1 Processing Algorithms and API
///
/// https://w3c.github.io/json-ld-api/

// ignore_for_file: unused_import

@JS('self')
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
  external static Future<dynamic> compact(dynamic input,
      [dynamic context, JsonLdOptions? options]);
  external static Future<Iterable<dynamic>> expand(dynamic input,
      [JsonLdOptions? options]);
  external static Future<dynamic> flatten(dynamic input,
      [dynamic context, JsonLdOptions? options]);
  external static Future<Iterable<dynamic>> fromRdf(RdfDataset input,
      [JsonLdOptions? options]);
  external static Future<RdfDataset> toRdf(dynamic input,
      [JsonLdOptions? options]);
  external static Future<dynamic> frame(dynamic input, dynamic frame,
      [JsonLdOptions? options]);
  external factory JsonLdProcessor();
}

@JS()
@staticInterop
class RdfDataset extends JsArray<RdfGraph> {
  external factory RdfDataset();
}

extension PropsRdfDataset on RdfDataset {
  RdfGraph get defaultGraph => js_util.getProperty(this, 'defaultGraph');
  void add(String graphName, RdfGraph graph) =>
      js_util.callMethod(this, 'add', [graphName, graph]);
}

@JS()
@staticInterop
class RdfGraph extends JsArray<RdfTriple> {
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
  external factory JsonLdOptions._(
      {String? base,
      bool? compactArrays,
      bool? compactToRelative,
      LoadDocumentCallback? documentLoader,
      dynamic expandContext,
      bool? extractAllScripts,
      bool? frameExpansion,
      bool? ordered,
      String? processingMode,
      bool? produceGeneralizedRdf,
      String? rdfDirection,
      bool? useNativeTypes,
      bool? useRdfType});

  factory JsonLdOptions(
          {String? base,
          bool? compactArrays,
          bool? compactToRelative,
          LoadDocumentCallback? documentLoader,
          dynamic expandContext,
          bool? extractAllScripts,
          bool? frameExpansion,
          bool? ordered,
          String? processingMode,
          bool? produceGeneralizedRdf,
          String? rdfDirection,
          bool? useNativeTypes,
          bool? useRdfType}) =>
      JsonLdOptions._(
          base: base ?? undefined,
          compactArrays: compactArrays ?? true,
          compactToRelative: compactToRelative ?? true,
          documentLoader: documentLoader ?? undefined,
          expandContext: expandContext ?? undefined,
          extractAllScripts: extractAllScripts ?? false,
          frameExpansion: frameExpansion ?? false,
          ordered: ordered ?? false,
          processingMode: processingMode ?? 'json-ld-1.1',
          produceGeneralizedRdf: produceGeneralizedRdf ?? true,
          rdfDirection: rdfDirection ?? undefined,
          useNativeTypes: useNativeTypes ?? false,
          useRdfType: useRdfType ?? false);
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
  external factory LoadDocumentOptions._(
      {bool? extractAllScripts, String? profile, dynamic requestProfile});

  factory LoadDocumentOptions(
          {bool? extractAllScripts, String? profile, dynamic requestProfile}) =>
      LoadDocumentOptions._(
          extractAllScripts: extractAllScripts ?? false,
          profile: profile ?? undefined,
          requestProfile: requestProfile ?? undefined);
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
  external factory JsonLdError._({String? code, String? message});

  factory JsonLdError({JsonLdErrorCode? code, String? message}) =>
      JsonLdError._(
          code: code?.value ?? undefined, message: message ?? undefined);
}

extension PropsJsonLdError on JsonLdError {
  JsonLdErrorCode get code =>
      JsonLdErrorCode.fromValue(js_util.getProperty(this, 'code'));
  set code(JsonLdErrorCode newValue) {
    js_util.setProperty(this, 'code', newValue.value);
  }

  String? get message => js_util.getProperty(this, 'message');
  set message(String? newValue) {
    js_util.setProperty(this, 'message', newValue);
  }
}

enum JsonLdErrorCode {
  collidingKeywords('colliding keywords'),
  conflictingIndexes('conflicting indexes'),
  contextOverflow('context overflow'),
  cyclicIRIMapping('cyclic IRI mapping'),
  invalididValue('invalid @id value'),
  invalidimportValue('invalid @import value'),
  invalidincludedValue('invalid @included value'),
  invalidindexValue('invalid @index value'),
  invalidnestValue('invalid @nest value'),
  invalidprefixValue('invalid @prefix value'),
  invalidpropagateValue('invalid @propagate value'),
  invalidprotectedValue('invalid @protected value'),
  invalidreverseValue('invalid @reverse value'),
  invalidversionValue('invalid @version value'),
  invalidBaseDirection('invalid base direction'),
  invalidBaseIRI('invalid base IRI'),
  invalidContainerMapping('invalid container mapping'),
  invalidContextEntry('invalid context entry'),
  invalidContextNullification('invalid context nullification'),
  invalidDefaultLanguage('invalid default language'),
  invalidIRIMapping('invalid IRI mapping'),
  invalidJSONLiteral('invalid JSON literal'),
  invalidKeywordAlias('invalid keyword alias'),
  invalidLanguageMapValue('invalid language map value'),
  invalidLanguageMapping('invalid language mapping'),
  invalidLanguageTaggedString('invalid language-tagged string'),
  invalidLanguageTaggedValue('invalid language-tagged value'),
  invalidLocalContext('invalid local context'),
  invalidRemoteContext('invalid remote context'),
  invalidReversePropertyMap('invalid reverse property map'),
  invalidReversePropertyValue('invalid reverse property value'),
  invalidReverseProperty('invalid reverse property'),
  invalidScopedContext('invalid scoped context'),
  invalidScriptElement('invalid script element'),
  invalidSetOrListObject('invalid set or list object'),
  invalidTermDefinition('invalid term definition'),
  invalidTypeMapping('invalid type mapping'),
  invalidTypeValue('invalid type value'),
  invalidTypedValue('invalid typed value'),
  invalidValueObjectValue('invalid value object value'),
  invalidValueObject('invalid value object'),
  invalidVocabMapping('invalid vocab mapping'),
  iRIConfusedWithPrefix('IRI confused with prefix'),
  keywordRedefinition('keyword redefinition'),
  loadingDocumentFailed('loading document failed'),
  loadingRemoteContextFailed('loading remote context failed'),
  multipleContextLinkHeaders('multiple context link headers'),
  processingModeConflict('processing mode conflict'),
  protectedTermRedefinition('protected term redefinition');

  final String value;
  static JsonLdErrorCode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<JsonLdErrorCode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const JsonLdErrorCode(this.value);
}
