/// Streams Standard
///
/// https://streams.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library streams;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the Streams API represents a readable stream of
/// byte data. The Fetch API offers a concrete instance of a through
/// the [body] property of a [Response] object.
@JS()
@staticInterop
class ReadableStream extends JsArray<dynamic> {
  external factory ReadableStream(
      [dynamic underlyingSource, QueuingStrategy? strategy]);
}

extension PropsReadableStream on ReadableStream {
  bool get locked => js_util.getProperty(this, 'locked');
  Future<void> cancel([dynamic reason]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'cancel', [reason]));

  dynamic getReader([ReadableStreamGetReaderOptions? options]) =>
      js_util.callMethod(this, 'getReader', [options]);

  ReadableStream pipeThrough(ReadableWritablePair transform,
          [StreamPipeOptions? options]) =>
      js_util.callMethod(this, 'pipeThrough', [transform, options]);

  Future<void> pipeTo(WritableStream destination,
          [StreamPipeOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'pipeTo', [destination, options]));

  Iterable<ReadableStream> tee() => js_util.callMethod(this, 'tee', []);
}

enum ReadableStreamReaderMode {
  byob('byob');

  final String value;
  static ReadableStreamReaderMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ReadableStreamReaderMode> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const ReadableStreamReaderMode(this.value);
}

@anonymous
@JS()
@staticInterop
class ReadableStreamGetReaderOptions {
  external factory ReadableStreamGetReaderOptions._({String? mode});

  factory ReadableStreamGetReaderOptions({ReadableStreamReaderMode? mode}) =>
      ReadableStreamGetReaderOptions._(mode: mode?.value);
}

extension PropsReadableStreamGetReaderOptions
    on ReadableStreamGetReaderOptions {
  ReadableStreamReaderMode get mode =>
      ReadableStreamReaderMode.fromValue(js_util.getProperty(this, 'mode'));
  set mode(ReadableStreamReaderMode newValue) {
    js_util.setProperty(this, 'mode', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class ReadableStreamIteratorOptions {
  external factory ReadableStreamIteratorOptions({bool? preventCancel = false});
}

extension PropsReadableStreamIteratorOptions on ReadableStreamIteratorOptions {
  bool get preventCancel => js_util.getProperty(this, 'preventCancel');
  set preventCancel(bool newValue) {
    js_util.setProperty(this, 'preventCancel', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ReadableWritablePair {
  external factory ReadableWritablePair(
      {required ReadableStream readable, required WritableStream writable});
}

extension PropsReadableWritablePair on ReadableWritablePair {
  ReadableStream get readable => js_util.getProperty(this, 'readable');
  set readable(ReadableStream newValue) {
    js_util.setProperty(this, 'readable', newValue);
  }

  WritableStream get writable => js_util.getProperty(this, 'writable');
  set writable(WritableStream newValue) {
    js_util.setProperty(this, 'writable', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class StreamPipeOptions {
  external factory StreamPipeOptions(
      {bool? preventClose = false,
      bool? preventAbort = false,
      bool? preventCancel = false,
      AbortSignal? signal});
}

extension PropsStreamPipeOptions on StreamPipeOptions {
  bool get preventClose => js_util.getProperty(this, 'preventClose');
  set preventClose(bool newValue) {
    js_util.setProperty(this, 'preventClose', newValue);
  }

  bool get preventAbort => js_util.getProperty(this, 'preventAbort');
  set preventAbort(bool newValue) {
    js_util.setProperty(this, 'preventAbort', newValue);
  }

  bool get preventCancel => js_util.getProperty(this, 'preventCancel');
  set preventCancel(bool newValue) {
    js_util.setProperty(this, 'preventCancel', newValue);
  }

  AbortSignal get signal => js_util.getProperty(this, 'signal');
  set signal(AbortSignal newValue) {
    js_util.setProperty(this, 'signal', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class UnderlyingSource {
  external factory UnderlyingSource._(
      {UnderlyingSourceStartCallback? start,
      UnderlyingSourcePullCallback? pull,
      UnderlyingSourceCancelCallback? cancel,
      String? type,
      int? autoAllocateChunkSize});

  factory UnderlyingSource(
          {UnderlyingSourceStartCallback? start,
          UnderlyingSourcePullCallback? pull,
          UnderlyingSourceCancelCallback? cancel,
          ReadableStreamType? type,
          int? autoAllocateChunkSize}) =>
      UnderlyingSource._(
          start: start,
          pull: pull,
          cancel: cancel,
          type: type?.value,
          autoAllocateChunkSize: autoAllocateChunkSize);
}

extension PropsUnderlyingSource on UnderlyingSource {
  UnderlyingSourceStartCallback get start => js_util.getProperty(this, 'start');
  set start(UnderlyingSourceStartCallback newValue) {
    js_util.setProperty(this, 'start', newValue);
  }

  UnderlyingSourcePullCallback get pull => js_util.getProperty(this, 'pull');
  set pull(UnderlyingSourcePullCallback newValue) {
    js_util.setProperty(this, 'pull', newValue);
  }

  UnderlyingSourceCancelCallback get cancel =>
      js_util.getProperty(this, 'cancel');
  set cancel(UnderlyingSourceCancelCallback newValue) {
    js_util.setProperty(this, 'cancel', newValue);
  }

  ReadableStreamType get type =>
      ReadableStreamType.fromValue(js_util.getProperty(this, 'type'));
  set type(ReadableStreamType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
  }

  int get autoAllocateChunkSize =>
      js_util.getProperty(this, 'autoAllocateChunkSize');
  set autoAllocateChunkSize(int newValue) {
    js_util.setProperty(this, 'autoAllocateChunkSize', newValue);
  }
}

enum ReadableStreamType {
  bytes('bytes');

  final String value;
  static ReadableStreamType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<ReadableStreamType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const ReadableStreamType(this.value);
}

@JS()
@staticInterop
class ReadableStreamGenericReader {
  external factory ReadableStreamGenericReader();
}

extension PropsReadableStreamGenericReader on ReadableStreamGenericReader {
  Future<void> get closed =>
      js_util.promiseToFuture(js_util.getProperty(this, 'closed'));
  Future<void> cancel([dynamic reason]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'cancel', [reason]));
}

///  The interface of the Streams API represents a default reader
/// that can be used to read stream data supplied from a network
/// (e.g. a fetch request).
@JS()
@staticInterop
class ReadableStreamDefaultReader implements ReadableStreamGenericReader {
  external factory ReadableStreamDefaultReader(ReadableStream stream);
}

extension PropsReadableStreamDefaultReader on ReadableStreamDefaultReader {
  Future<ReadableStreamReadResult> read() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'read', []));

  void releaseLock() => js_util.callMethod(this, 'releaseLock', []);
}

@anonymous
@JS()
@staticInterop
class ReadableStreamReadResult {
  external factory ReadableStreamReadResult({dynamic value, bool? done});
}

extension PropsReadableStreamReadResult on ReadableStreamReadResult {
  dynamic get value => js_util.getProperty(this, 'value');
  set value(dynamic newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  bool get done => js_util.getProperty(this, 'done');
  set done(bool newValue) {
    js_util.setProperty(this, 'done', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Streams API represents a BYOB ("bring your
/// own buffer") reader that can be used to read stream data supplied
/// by the developer (e.g. a custom [ReadableStream()] constructor).
@experimental
@JS()
@staticInterop
class ReadableStreamBYOBReader implements ReadableStreamGenericReader {
  external factory ReadableStreamBYOBReader(ReadableStream stream);
}

extension PropsReadableStreamBYOBReader on ReadableStreamBYOBReader {
  Future<ReadableStreamReadResult> read(dynamic view) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'read', [view]));

  void releaseLock() => js_util.callMethod(this, 'releaseLock', []);
}

///  The interface of the Streams API represents a controller
/// allowing control of a [ReadableStream]'s state and internal
/// queue. Default controllers are for streams that are not byte
/// streams.
@JS()
@staticInterop
class ReadableStreamDefaultController {
  external factory ReadableStreamDefaultController();
}

extension PropsReadableStreamDefaultController
    on ReadableStreamDefaultController {
  /* double | NaN */ dynamic get desiredSize =>
      js_util.getProperty(this, 'desiredSize');
  void close() => js_util.callMethod(this, 'close', []);

  void enqueue([dynamic chunk]) => js_util.callMethod(this, 'enqueue', [chunk]);

  void error([dynamic e]) => js_util.callMethod(this, 'error', [e]);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Streams API represents a controller
/// allowing control of a [ReadableStream]'s state and internal
/// queue. Byte stream controllers are for byte streams.
@experimental
@JS()
@staticInterop
class ReadableByteStreamController {
  external factory ReadableByteStreamController();
}

extension PropsReadableByteStreamController on ReadableByteStreamController {
  ReadableStreamBYOBRequest? get byobRequest =>
      js_util.getProperty(this, 'byobRequest');
/* double | NaN */ dynamic get desiredSize =>
      js_util.getProperty(this, 'desiredSize');
  void close() => js_util.callMethod(this, 'close', []);

  void enqueue(dynamic chunk) => js_util.callMethod(this, 'enqueue', [chunk]);

  void error([dynamic e]) => js_util.callMethod(this, 'error', [e]);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Streams API represents a pull request into
/// a [ReadableByteStreamController] view.
///  A view, as mentioned below, refers to a typed array representing
/// the destination region to which the associated
/// [ReadableByteStreamController] controller can write generated
/// data.
@experimental
@JS()
@staticInterop
class ReadableStreamBYOBRequest {
  external factory ReadableStreamBYOBRequest();
}

extension PropsReadableStreamBYOBRequest on ReadableStreamBYOBRequest {
  dynamic get view => js_util.getProperty(this, 'view');
  void respond(int bytesWritten) =>
      js_util.callMethod(this, 'respond', [bytesWritten]);

  void respondWithNewView(dynamic view) =>
      js_util.callMethod(this, 'respondWithNewView', [view]);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Streams API provides a standard abstraction
/// for writing streaming data to a destination, known as a sink.
/// This object comes with built-in backpressure and queuing.
@experimental
@JS()
@staticInterop
class WritableStream {
  external factory WritableStream(
      [dynamic underlyingSink, QueuingStrategy? strategy]);
}

extension PropsWritableStream on WritableStream {
  bool get locked => js_util.getProperty(this, 'locked');
  Future<void> abort([dynamic reason]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'abort', [reason]));

  Future<void> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));

  WritableStreamDefaultWriter getWriter() =>
      js_util.callMethod(this, 'getWriter', []);
}

@anonymous
@JS()
@staticInterop
class UnderlyingSink {
  external factory UnderlyingSink(
      {UnderlyingSinkStartCallback? start,
      UnderlyingSinkWriteCallback? write,
      UnderlyingSinkCloseCallback? close,
      UnderlyingSinkAbortCallback? abort,
      dynamic type});
}

extension PropsUnderlyingSink on UnderlyingSink {
  UnderlyingSinkStartCallback get start => js_util.getProperty(this, 'start');
  set start(UnderlyingSinkStartCallback newValue) {
    js_util.setProperty(this, 'start', newValue);
  }

  UnderlyingSinkWriteCallback get write => js_util.getProperty(this, 'write');
  set write(UnderlyingSinkWriteCallback newValue) {
    js_util.setProperty(this, 'write', newValue);
  }

  UnderlyingSinkCloseCallback get close => js_util.getProperty(this, 'close');
  set close(UnderlyingSinkCloseCallback newValue) {
    js_util.setProperty(this, 'close', newValue);
  }

  UnderlyingSinkAbortCallback get abort => js_util.getProperty(this, 'abort');
  set abort(UnderlyingSinkAbortCallback newValue) {
    js_util.setProperty(this, 'abort', newValue);
  }

  dynamic get type => js_util.getProperty(this, 'type');
  set type(dynamic newValue) {
    js_util.setProperty(this, 'type', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Streams API is the object returned by
/// [WritableStream.getWriter()] and once created locks the writer to
/// the [WritableStream] ensuring that no other streams can write to
/// the underlying sink.
@experimental
@JS()
@staticInterop
class WritableStreamDefaultWriter {
  external factory WritableStreamDefaultWriter(WritableStream stream);
}

extension PropsWritableStreamDefaultWriter on WritableStreamDefaultWriter {
  Future<void> get closed =>
      js_util.promiseToFuture(js_util.getProperty(this, 'closed'));
/* double | NaN */ dynamic get desiredSize =>
      js_util.getProperty(this, 'desiredSize');
  Future<void> get ready =>
      js_util.promiseToFuture(js_util.getProperty(this, 'ready'));
  Future<void> abort([dynamic reason]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'abort', [reason]));

  Future<void> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));

  void releaseLock() => js_util.callMethod(this, 'releaseLock', []);

  Future<void> write([dynamic chunk]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'write', [chunk]));
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Streams API represents a controller
/// allowing control of a [WritableStream]'s state. When constructing
/// a [WritableStream], the underlying sink is given a corresponding
/// instance to manipulate.
@experimental
@JS()
@staticInterop
class WritableStreamDefaultController {
  external factory WritableStreamDefaultController();
}

extension PropsWritableStreamDefaultController
    on WritableStreamDefaultController {
  AbortSignal get signal => js_util.getProperty(this, 'signal');
  void error([dynamic e]) => js_util.callMethod(this, 'error', [e]);
}

///  The interface of the Streams API represents a set of
/// transformable data.
@JS()
@staticInterop
class TransformStream {
  external factory TransformStream(
      [dynamic transformer,
      QueuingStrategy? writableStrategy,
      QueuingStrategy? readableStrategy]);
}

extension PropsTransformStream on TransformStream {
  ReadableStream get readable => js_util.getProperty(this, 'readable');
  WritableStream get writable => js_util.getProperty(this, 'writable');
}

@anonymous
@JS()
@staticInterop
class Transformer {
  external factory Transformer(
      {TransformerStartCallback? start,
      TransformerTransformCallback? transform,
      TransformerFlushCallback? flush,
      dynamic readableType,
      dynamic writableType});
}

extension PropsTransformer on Transformer {
  TransformerStartCallback get start => js_util.getProperty(this, 'start');
  set start(TransformerStartCallback newValue) {
    js_util.setProperty(this, 'start', newValue);
  }

  TransformerTransformCallback get transform =>
      js_util.getProperty(this, 'transform');
  set transform(TransformerTransformCallback newValue) {
    js_util.setProperty(this, 'transform', newValue);
  }

  TransformerFlushCallback get flush => js_util.getProperty(this, 'flush');
  set flush(TransformerFlushCallback newValue) {
    js_util.setProperty(this, 'flush', newValue);
  }

  dynamic get readableType => js_util.getProperty(this, 'readableType');
  set readableType(dynamic newValue) {
    js_util.setProperty(this, 'readableType', newValue);
  }

  dynamic get writableType => js_util.getProperty(this, 'writableType');
  set writableType(dynamic newValue) {
    js_util.setProperty(this, 'writableType', newValue);
  }
}

///  The interface of the Streams API provides methods to manipulate
/// the associated [ReadableStream] and [WritableStream].
///  When constructing a [TransformStream], the is created. It
/// therefore has no constructor. The way to get an instance of is
/// via the callback methods of [TransformStream.TransformStream()].
@JS()
@staticInterop
class TransformStreamDefaultController {
  external factory TransformStreamDefaultController();
}

extension PropsTransformStreamDefaultController
    on TransformStreamDefaultController {
  /* double | NaN */ dynamic get desiredSize =>
      js_util.getProperty(this, 'desiredSize');
  void enqueue([dynamic chunk]) => js_util.callMethod(this, 'enqueue', [chunk]);

  void error([dynamic reason]) => js_util.callMethod(this, 'error', [reason]);

  void terminate() => js_util.callMethod(this, 'terminate', []);
}

@anonymous
@JS()
@staticInterop
class QueuingStrategy {
  external factory QueuingStrategy(
      {/* double | NaN */ dynamic highWaterMark, QueuingStrategySize? size});
}

extension PropsQueuingStrategy on QueuingStrategy {
  /* double | NaN */ dynamic get highWaterMark =>
      js_util.getProperty(this, 'highWaterMark');
  set highWaterMark(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'highWaterMark', newValue);
  }

  QueuingStrategySize get size => js_util.getProperty(this, 'size');
  set size(QueuingStrategySize newValue) {
    js_util.setProperty(this, 'size', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class QueuingStrategyInit {
  external factory QueuingStrategyInit(
      {/* double | NaN */ dynamic highWaterMark});
}

extension PropsQueuingStrategyInit on QueuingStrategyInit {
  /* double | NaN */ dynamic get highWaterMark =>
      js_util.getProperty(this, 'highWaterMark');
  set highWaterMark(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'highWaterMark', newValue);
  }
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Streams API provides a built-in byte length
/// queuing strategy that can be used when constructing streams.
@experimental
@JS()
@staticInterop
class ByteLengthQueuingStrategy {
  external factory ByteLengthQueuingStrategy(QueuingStrategyInit init);
}

extension PropsByteLengthQueuingStrategy on ByteLengthQueuingStrategy {
  /* double | NaN */ dynamic get highWaterMark =>
      js_util.getProperty(this, 'highWaterMark');
  Function get size => js_util.getProperty(this, 'size');
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Streams API provides a built-in chunk
/// counting queuing strategy that can be used when constructing
/// streams.
@experimental
@JS()
@staticInterop
class CountQueuingStrategy {
  external factory CountQueuingStrategy(QueuingStrategyInit init);
}

extension PropsCountQueuingStrategy on CountQueuingStrategy {
  /* double | NaN */ dynamic get highWaterMark =>
      js_util.getProperty(this, 'highWaterMark');
  Function get size => js_util.getProperty(this, 'size');
}

@JS()
@staticInterop
class GenericTransformStream {
  external factory GenericTransformStream();
}

extension PropsGenericTransformStream on GenericTransformStream {
  ReadableStream get readable => js_util.getProperty(this, 'readable');
  WritableStream get writable => js_util.getProperty(this, 'writable');
}
