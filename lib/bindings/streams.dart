/// Streams Standard
///
/// https://streams.spec.whatwg.org/
@JS('window')
@staticInterop
library streams;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: streams
dom */

///  The interface of the Streams API represents a readable stream of
/// byte data. The Fetch API offers a concrete instance of a through
/// the [body] property of a [Response] object.
@JS()
@staticInterop
class ReadableStream {
  external ReadableStream(
      [dynamic underlyingSource, QueuingStrategy? strategy]);
}

extension PropsReadableStream on ReadableStream {
  ///  The getter returns whether or not the readable stream is locked
  /// to a reader.
  ///
  bool get locked => js_util.getProperty(this, 'locked');

  ///  Returns a [Promise] that resolves when the stream is canceled.
  /// Calling this method signals a loss of interest in the stream by a
  /// consumer. The supplied [reason] argument will be given to the
  /// underlying source, which may or may not use it.
  ///
  /// var promise = readableStream.cancel(reason);
  ///
  Future<Object> cancel([dynamic reason]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'cancel', [reason]));

  ///  Creates a reader and locks the stream to it. While the stream is
  /// locked, no other reader can be acquired until this one is
  /// released.
  ///
  /// var reader = readableStream.getReader({mode});
  ///
  dynamic getReader([ReadableStreamGetReaderOptions? options]) =>
      js_util.callMethod(this, 'getReader', [options]);

  ///  Provides a chainable way of piping the current stream through a
  /// transform stream or any other writable/readable pair.
  ///
  /// pipeThrough(transformStream);
  /// pipeThrough(transformStream, options);
  ///
  ReadableStream pipeThrough(ReadableWritablePair transform,
          [StreamPipeOptions? options]) =>
      js_util.callMethod(this, 'pipeThrough', [transform, options]);

  ///  Pipes the current ReadableStream to a given [WritableStream] and
  /// returns a [Promise] that fulfills when the piping process
  /// completes successfully, or rejects if any errors were
  /// encountered.
  ///
  /// var promise = readableStream.pipeTo(destination[, options]);
  ///
  Future<Object> pipeTo(WritableStream destination,
          [StreamPipeOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'pipeTo', [destination, options]));

  ///  The method tees this readable stream, returning a two-element
  /// array containing the two resulting branches as new
  /// [ReadableStream] instances. Each of those streams receives the
  /// same incoming data.
  ///
  /// var teedStreams = readableStream.tee();
  ///
  Iterable<ReadableStream> tee() => js_util.callMethod(this, 'tee', []);
}

enum ReadableStreamReaderMode { byob }

@anonymous
@JS()
@staticInterop
class ReadableStreamGetReaderOptions {
  external factory ReadableStreamGetReaderOptions(
      {ReadableStreamReaderMode mode});
}

extension PropsReadableStreamGetReaderOptions
    on ReadableStreamGetReaderOptions {
  ReadableStreamReaderMode get mode => js_util.getProperty(this, 'mode');
  set mode(ReadableStreamReaderMode newValue) {
    js_util.setProperty(this, 'mode', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class ReadableStreamIteratorOptions {
  external factory ReadableStreamIteratorOptions({bool preventCancel = false});
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
      {ReadableStream readable, WritableStream writable});
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
      {bool preventClose = false,
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
  external factory UnderlyingSource(
      {UnderlyingSourceStartCallback start,
      UnderlyingSourcePullCallback pull,
      UnderlyingSourceCancelCallback cancel,
      ReadableStreamType type,
      int autoAllocateChunkSize});
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

  ReadableStreamType get type => js_util.getProperty(this, 'type');
  set type(ReadableStreamType newValue) {
    js_util.setProperty(this, 'type', newValue);
  }

  int get autoAllocateChunkSize =>
      js_util.getProperty(this, 'autoAllocateChunkSize');
  set autoAllocateChunkSize(int newValue) {
    js_util.setProperty(this, 'autoAllocateChunkSize', newValue);
  }
}

enum ReadableStreamType { bytes }

@JS()
@staticInterop
class ReadableStreamGenericReader {
  external ReadableStreamGenericReader();
}

extension PropsReadableStreamGenericReader on ReadableStreamGenericReader {
  Future<Object> get closed =>
      js_util.promiseToFuture(js_util.getProperty(this, 'closed'));
  Future<Object> cancel([dynamic reason]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'cancel', [reason]));
}

///  The interface of the Streams API represents a default reader
/// that can be used to read stream data supplied from a network
/// (e.g. a fetch request).
@JS()
@staticInterop
class ReadableStreamDefaultReader implements ReadableStreamGenericReader {
  external ReadableStreamDefaultReader(ReadableStream stream);
}

extension PropsReadableStreamDefaultReader on ReadableStreamDefaultReader {
  ///  Returns a promise providing access to the next chunk in the
  /// stream's internal queue.
  ///
  /// var promise = readableStreamDefaultReader.read();
  ///
  Future<ReadableStreamDefaultReadResult> read() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'read', []));

  /// Releases the reader's lock on the stream.
  ///
  /// readableStreamDefaultReader.releaseLock();
  ///
  Object releaseLock() => js_util.callMethod(this, 'releaseLock', []);
}

@anonymous
@JS()
@staticInterop
class ReadableStreamDefaultReadResult {
  external factory ReadableStreamDefaultReadResult({dynamic value, bool done});
}

extension PropsReadableStreamDefaultReadResult
    on ReadableStreamDefaultReadResult {
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
  external ReadableStreamBYOBReader(ReadableStream stream);
}

extension PropsReadableStreamBYOBReader on ReadableStreamBYOBReader {
  ///  Returns a [Promise] that resolves with an object indicating the
  /// state of the stream: either the next chunk in the stream or an
  /// indication that the stream is closed.
  ///
  /// var promise = readableStreamBYOBReader.read(view);
  ///
  Future<ReadableStreamBYOBReadResult> read(dynamic view) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'read', [view]));

  /// Releases the reader's lock on the stream.
  ///
  /// readableStreamBYOBReader.releaseLock();
  ///
  Object releaseLock() => js_util.callMethod(this, 'releaseLock', []);
}

@anonymous
@JS()
@staticInterop
class ReadableStreamBYOBReadResult {
  external factory ReadableStreamBYOBReadResult({dynamic value, bool done});
}

extension PropsReadableStreamBYOBReadResult on ReadableStreamBYOBReadResult {
  dynamic get value => js_util.getProperty(this, 'value');
  set value(dynamic newValue) {
    js_util.setProperty(this, 'value', newValue);
  }

  bool get done => js_util.getProperty(this, 'done');
  set done(bool newValue) {
    js_util.setProperty(this, 'done', newValue);
  }
}

///  The interface of the Streams API represents a controller
/// allowing control of a [ReadableStream]'s state and internal
/// queue. Default controllers are for streams that are not byte
/// streams.
@JS()
@staticInterop
class ReadableStreamDefaultController {
  external ReadableStreamDefaultController();
}

extension PropsReadableStreamDefaultController
    on ReadableStreamDefaultController {
  ///  Returns the desired size required to fill the stream's internal
  /// queue.
  ///
  /* double | NaN */ dynamic? get desiredSize =>
      js_util.getProperty(this, 'desiredSize');

  /// Closes the associated stream.
  ///
  /// readableStreamDefaultController.close();
  ///
  Object close() => js_util.callMethod(this, 'close', []);

  /// Enqueues a given chunk in the associated stream.
  ///
  /// readableStreamDefaultController.enqueue(chunk);
  ///
  Object enqueue([dynamic chunk]) =>
      js_util.callMethod(this, 'enqueue', [chunk]);

  ///  Causes any future interactions with the associated stream to
  /// error.
  ///
  /// readableStreamDefaultController.error(e);
  ///
  Object error([dynamic e]) => js_util.callMethod(this, 'error', [e]);
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
  external ReadableByteStreamController();
}

extension PropsReadableByteStreamController on ReadableByteStreamController {
  /// Returns the current BYOB pull request.
  ///
  ReadableStreamBYOBRequest? get byobRequest =>
      js_util.getProperty(this, 'byobRequest');

  ///  Returns the desired size required to fill the stream's internal
  /// queue.
  ///
  /* double | NaN */ dynamic? get desiredSize =>
      js_util.getProperty(this, 'desiredSize');

  /// Closes the associated stream.
  ///
  /// readableByteStreamController.close();
  ///
  Object close() => js_util.callMethod(this, 'close', []);

  /// Enqueues a given chunk in the associated stream.
  ///
  /// readableByteStreamController.enqueue(chunk);
  ///
  Object enqueue(dynamic chunk) => js_util.callMethod(this, 'enqueue', [chunk]);

  ///  Causes any future interactions with the associated stream to
  /// error.
  ///
  /// readableByteStreamController.error(e);
  ///
  Object error([dynamic e]) => js_util.callMethod(this, 'error', [e]);
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
  external ReadableStreamBYOBRequest();
}

extension PropsReadableStreamBYOBRequest on ReadableStreamBYOBRequest {
  /// Returns the current view.
  ///
  dynamic get view => js_util.getProperty(this, 'view');

  /// xxx
  ///
  /// readableStreamBYOBRequestInstance.respond(bytesWritten);
  ///
  Object respond(int bytesWritten) =>
      js_util.callMethod(this, 'respond', [bytesWritten]);

  /// xxx
  ///
  /// readableStreamBYOBRequestInstance.respondWithNewView(view);
  ///
  Object respondWithNewView(dynamic view) =>
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
  external WritableStream([dynamic underlyingSink, QueuingStrategy? strategy]);
}

extension PropsWritableStream on WritableStream {
  ///  A boolean indicating whether the [WritableStream] is locked to a
  /// writer.
  ///
  bool get locked => js_util.getProperty(this, 'locked');

  ///  Aborts the stream, signaling that the producer can no longer
  /// successfully write to the stream and it is to be immediately
  /// moved to an error state, with any queued writes discarded.
  ///
  /// var promise = writableStream.abort(reason);
  ///
  Future<Object> abort([dynamic reason]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'abort', [reason]));

  /// Closes the stream.
  ///
  Future<Object> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));

  ///  Returns a new instance of [WritableStreamDefaultWriter] and
  /// locks the stream to that instance. While the stream is locked, no
  /// other writer can be acquired until this one is released.
  ///
  /// var writer = writableStream.getWriter();
  ///
  WritableStreamDefaultWriter getWriter() =>
      js_util.callMethod(this, 'getWriter', []);
}

@anonymous
@JS()
@staticInterop
class UnderlyingSink {
  external factory UnderlyingSink(
      {UnderlyingSinkStartCallback start,
      UnderlyingSinkWriteCallback write,
      UnderlyingSinkCloseCallback close,
      UnderlyingSinkAbortCallback abort,
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
  external WritableStreamDefaultWriter(WritableStream stream);
}

extension PropsWritableStreamDefaultWriter on WritableStreamDefaultWriter {
  ///  Allows you to write code that responds to an end to the
  /// streaming process. Returns a promise that fulfills if the stream
  /// becomes closed or the writer's lock is released, or rejects if
  /// the stream errors.
  ///
  Future<Object> get closed =>
      js_util.promiseToFuture(js_util.getProperty(this, 'closed'));

  ///  Returns the desired size required to fill the stream's internal
  /// queue.
  ///
  /* double | NaN */ dynamic? get desiredSize =>
      js_util.getProperty(this, 'desiredSize');

  ///  Returns a [Promise] that resolves when the desired size of the
  /// stream's internal queue transitions from non-positive to
  /// positive, signaling that it is no longer applying backpressure.
  ///
  Future<Object> get ready =>
      js_util.promiseToFuture(js_util.getProperty(this, 'ready'));

  ///  Aborts the stream, signaling that the producer can no longer
  /// successfully write to the stream and it is to be immediately
  /// moved to an error state, with any queued writes discarded.
  ///
  /// var promise = writableStreamDefaultWriter.abort(reason);
  ///
  Future<Object> abort([dynamic reason]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'abort', [reason]));

  /// Closes the associated writable stream.
  ///
  /// var promise = writableStreamDefaultWriter.close();
  ///
  Future<Object> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));

  ///  Releases the writer's lock on the corresponding stream. After
  /// the lock is released, the writer is no longer active. If the
  /// associated stream is errored when the lock is released, the
  /// writer will appear errored in the same way from now on;
  /// otherwise, the writer will appear closed.
  ///
  /// writableStreamDefaultWritere.releaseLock()
  ///
  Object releaseLock() => js_util.callMethod(this, 'releaseLock', []);

  ///  Writes a passed chunk of data to a [WritableStream] and its
  /// underlying sink, then returns a [Promise] that resolves to
  /// indicate the success or failure of the write operation.
  ///
  /// var promise = writableStreamDefaultWriter.write(chunk);
  ///
  Future<Object> write([dynamic chunk]) =>
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
  external WritableStreamDefaultController();
}

extension PropsWritableStreamDefaultController
    on WritableStreamDefaultController {
  ///  Causes any future interactions with the associated stream to
  /// error.
  ///
  /// writableStreamDefaultController.error(e);
  ///
  Object error([dynamic e]) => js_util.callMethod(this, 'error', [e]);
}

///  The interface of the Streams API represents a set of
/// transformable data.
@JS()
@staticInterop
class TransformStream {
  external TransformStream(
      [dynamic transformer,
      QueuingStrategy? writableStrategy,
      QueuingStrategy? readableStrategy]);
}

extension PropsTransformStream on TransformStream {
  /// The end of a TransformStream.
  ///
  ReadableStream get readable => js_util.getProperty(this, 'readable');

  /// The end of a TransformStream.
  ///
  WritableStream get writable => js_util.getProperty(this, 'writable');
}

@anonymous
@JS()
@staticInterop
class Transformer {
  external factory Transformer(
      {TransformerStartCallback start,
      TransformerTransformCallback transform,
      TransformerFlushCallback flush,
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
  external TransformStreamDefaultController();
}

extension PropsTransformStreamDefaultController
    on TransformStreamDefaultController {
  ///  Returns the desired size to fill the readable side of the
  /// stream's internal queue.
  ///
  /* double | NaN */ dynamic? get desiredSize =>
      js_util.getProperty(this, 'desiredSize');

  ///  Enqueues a chunk (single piece of data) in the readable side of
  /// the stream.
  ///
  /// TransformStreamDefaultController.enqueue(chunk);
  ///
  Object enqueue([dynamic chunk]) =>
      js_util.callMethod(this, 'enqueue', [chunk]);

  ///  Errors both the readable and writable side of the transform
  /// stream.
  ///
  /// TransformStreamDefaultController.error(reason);
  ///
  Object error([dynamic reason]) => js_util.callMethod(this, 'error', [reason]);

  ///  Closes the readable side and errors the writable side of the
  /// stream.
  ///
  /// TransformStreamDefaultController.terminate();
  ///
  Object terminate() => js_util.callMethod(this, 'terminate', []);
}

@anonymous
@JS()
@staticInterop
class QueuingStrategy {
  external factory QueuingStrategy(
      {/* double | NaN */ dynamic highWaterMark, QueuingStrategySize size});
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
  external ByteLengthQueuingStrategy(QueuingStrategyInit init);
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
  external CountQueuingStrategy(QueuingStrategyInit init);
}

extension PropsCountQueuingStrategy on CountQueuingStrategy {
  /* double | NaN */ dynamic get highWaterMark =>
      js_util.getProperty(this, 'highWaterMark');
  Function get size => js_util.getProperty(this, 'size');
}

@JS()
@staticInterop
class GenericTransformStream {
  external GenericTransformStream();
}

extension PropsGenericTransformStream on GenericTransformStream {
  ReadableStream get readable => js_util.getProperty(this, 'readable');
  WritableStream get writable => js_util.getProperty(this, 'writable');
}
