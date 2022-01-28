/// Streams Standard
///
/// https://streams.spec.whatwg.org/
@JS('window')
@staticInterop
library streams;

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
  external factory ReadableStream(
      [dynamic underlyingSource, QueuingStrategy? strategy]);
}

extension PropsReadableStream on ReadableStream {
  ///  The getter returns whether or not the readable stream is locked
  /// to a reader.
  ///
  external bool get locked;

  ///  Returns a [Promise] that resolves when the stream is canceled.
  /// Calling this method signals a loss of interest in the stream by a
  /// consumer. The supplied [reason] argument will be given to the
  /// underlying source, which may or may not use it.
  ///
  /// var promise = readableStream.cancel(reason);
  ///
  external Promise<Object> cancel([dynamic reason]);

  ///  Creates a reader and locks the stream to it. While the stream is
  /// locked, no other reader can be acquired until this one is
  /// released.
  ///
  /// var reader = readableStream.getReader({mode});
  ///
  external dynamic getReader([ReadableStreamGetReaderOptions? options]);

  ///  Provides a chainable way of piping the current stream through a
  /// transform stream or any other writable/readable pair.
  ///
  /// pipeThrough(transformStream);
  /// pipeThrough(transformStream, options);
  ///
  external ReadableStream pipeThrough(ReadableWritablePair transform,
      [StreamPipeOptions? options]);

  ///  Pipes the current ReadableStream to a given [WritableStream] and
  /// returns a [Promise] that fulfills when the piping process
  /// completes successfully, or rejects if any errors were
  /// encountered.
  ///
  /// var promise = readableStream.pipeTo(destination[, options]);
  ///
  external Promise<Object> pipeTo(WritableStream destination,
      [StreamPipeOptions? options]);

  ///  The method tees this readable stream, returning a two-element
  /// array containing the two resulting branches as new
  /// [ReadableStream] instances. Each of those streams receives the
  /// same incoming data.
  ///
  /// var teedStreams = readableStream.tee();
  ///
  external Iterable<ReadableStream> tee();
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
  external ReadableStreamReaderMode get mode;
  external set mode(ReadableStreamReaderMode newValue);
}

@anonymous
@JS()
@staticInterop
class ReadableStreamIteratorOptions {
  external factory ReadableStreamIteratorOptions({bool preventCancel = false});
}

extension PropsReadableStreamIteratorOptions on ReadableStreamIteratorOptions {
  external bool get preventCancel;
  external set preventCancel(bool newValue);
}

@anonymous
@JS()
@staticInterop
class ReadableWritablePair {
  external factory ReadableWritablePair(
      {ReadableStream readable, WritableStream writable});
}

extension PropsReadableWritablePair on ReadableWritablePair {
  external ReadableStream get readable;
  external set readable(ReadableStream newValue);
  external WritableStream get writable;
  external set writable(WritableStream newValue);
}

@anonymous
@JS()
@staticInterop
class StreamPipeOptions {
  external factory StreamPipeOptions(
      {bool preventClose = false,
      bool preventAbort = false,
      bool preventCancel = false,
      AbortSignal signal});
}

extension PropsStreamPipeOptions on StreamPipeOptions {
  external bool get preventClose;
  external set preventClose(bool newValue);
  external bool get preventAbort;
  external set preventAbort(bool newValue);
  external bool get preventCancel;
  external set preventCancel(bool newValue);
  external AbortSignal get signal;
  external set signal(AbortSignal newValue);
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
  external UnderlyingSourceStartCallback get start;
  external set start(UnderlyingSourceStartCallback newValue);
  external UnderlyingSourcePullCallback get pull;
  external set pull(UnderlyingSourcePullCallback newValue);
  external UnderlyingSourceCancelCallback get cancel;
  external set cancel(UnderlyingSourceCancelCallback newValue);
  external ReadableStreamType get type;
  external set type(ReadableStreamType newValue);
  external int get autoAllocateChunkSize;
  external set autoAllocateChunkSize(int newValue);
}

enum ReadableStreamType { bytes }

@JS()
@staticInterop
class ReadableStreamGenericReader {
  external factory ReadableStreamGenericReader();
}

extension PropsReadableStreamGenericReader on ReadableStreamGenericReader {
  external Promise<Object> get closed;
  external Promise<Object> cancel([dynamic reason]);
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
  ///  Returns a promise providing access to the next chunk in the
  /// stream's internal queue.
  ///
  /// var promise = readableStreamDefaultReader.read();
  ///
  external Promise<ReadableStreamDefaultReadResult> read();

  /// Releases the reader's lock on the stream.
  ///
  /// readableStreamDefaultReader.releaseLock();
  ///
  external Object releaseLock();
}

@anonymous
@JS()
@staticInterop
class ReadableStreamDefaultReadResult {
  external factory ReadableStreamDefaultReadResult({dynamic value, bool done});
}

extension PropsReadableStreamDefaultReadResult
    on ReadableStreamDefaultReadResult {
  external dynamic get value;
  external set value(dynamic newValue);
  external bool get done;
  external set done(bool newValue);
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
  ///  Returns a [Promise] that resolves with an object indicating the
  /// state of the stream: either the next chunk in the stream or an
  /// indication that the stream is closed.
  ///
  /// var promise = readableStreamBYOBReader.read(view);
  ///
  external Promise<ReadableStreamBYOBReadResult> read(dynamic view);

  /// Releases the reader's lock on the stream.
  ///
  /// readableStreamBYOBReader.releaseLock();
  ///
  external Object releaseLock();
}

@anonymous
@JS()
@staticInterop
class ReadableStreamBYOBReadResult {
  external factory ReadableStreamBYOBReadResult({dynamic value, bool done});
}

extension PropsReadableStreamBYOBReadResult on ReadableStreamBYOBReadResult {
  external dynamic get value;
  external set value(dynamic newValue);
  external bool get done;
  external set done(bool newValue);
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
  ///  Returns the desired size required to fill the stream's internal
  /// queue.
  ///
  external /* double | NaN */ dynamic? get desiredSize;

  /// Closes the associated stream.
  ///
  /// readableStreamDefaultController.close();
  ///
  external Object close();

  /// Enqueues a given chunk in the associated stream.
  ///
  /// readableStreamDefaultController.enqueue(chunk);
  ///
  external Object enqueue([dynamic chunk]);

  ///  Causes any future interactions with the associated stream to
  /// error.
  ///
  /// readableStreamDefaultController.error(e);
  ///
  external Object error([dynamic e]);
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
  /// Returns the current BYOB pull request.
  ///
  external ReadableStreamBYOBRequest? get byobRequest;

  ///  Returns the desired size required to fill the stream's internal
  /// queue.
  ///
  external /* double | NaN */ dynamic? get desiredSize;

  /// Closes the associated stream.
  ///
  /// readableByteStreamController.close();
  ///
  external Object close();

  /// Enqueues a given chunk in the associated stream.
  ///
  /// readableByteStreamController.enqueue(chunk);
  ///
  external Object enqueue(dynamic chunk);

  ///  Causes any future interactions with the associated stream to
  /// error.
  ///
  /// readableByteStreamController.error(e);
  ///
  external Object error([dynamic e]);
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
  /// Returns the current view.
  ///
  external dynamic get view;

  /// xxx
  ///
  /// readableStreamBYOBRequestInstance.respond(bytesWritten);
  ///
  external Object respond(int bytesWritten);

  /// xxx
  ///
  /// readableStreamBYOBRequestInstance.respondWithNewView(view);
  ///
  external Object respondWithNewView(dynamic view);
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
  ///  A boolean indicating whether the [WritableStream] is locked to a
  /// writer.
  ///
  external bool get locked;

  ///  Aborts the stream, signaling that the producer can no longer
  /// successfully write to the stream and it is to be immediately
  /// moved to an error state, with any queued writes discarded.
  ///
  /// var promise = writableStream.abort(reason);
  ///
  external Promise<Object> abort([dynamic reason]);

  /// Closes the stream.
  ///
  external Promise<Object> close();

  ///  Returns a new instance of [WritableStreamDefaultWriter] and
  /// locks the stream to that instance. While the stream is locked, no
  /// other writer can be acquired until this one is released.
  ///
  /// var writer = writableStream.getWriter();
  ///
  external WritableStreamDefaultWriter getWriter();
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
  external UnderlyingSinkStartCallback get start;
  external set start(UnderlyingSinkStartCallback newValue);
  external UnderlyingSinkWriteCallback get write;
  external set write(UnderlyingSinkWriteCallback newValue);
  external UnderlyingSinkCloseCallback get close;
  external set close(UnderlyingSinkCloseCallback newValue);
  external UnderlyingSinkAbortCallback get abort;
  external set abort(UnderlyingSinkAbortCallback newValue);
  external dynamic get type;
  external set type(dynamic newValue);
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
  ///  Allows you to write code that responds to an end to the
  /// streaming process. Returns a promise that fulfills if the stream
  /// becomes closed or the writer's lock is released, or rejects if
  /// the stream errors.
  ///
  external Promise<Object> get closed;

  ///  Returns the desired size required to fill the stream's internal
  /// queue.
  ///
  external /* double | NaN */ dynamic? get desiredSize;

  ///  Returns a [Promise] that resolves when the desired size of the
  /// stream's internal queue transitions from non-positive to
  /// positive, signaling that it is no longer applying backpressure.
  ///
  external Promise<Object> get ready;

  ///  Aborts the stream, signaling that the producer can no longer
  /// successfully write to the stream and it is to be immediately
  /// moved to an error state, with any queued writes discarded.
  ///
  /// var promise = writableStreamDefaultWriter.abort(reason);
  ///
  external Promise<Object> abort([dynamic reason]);

  /// Closes the associated writable stream.
  ///
  /// var promise = writableStreamDefaultWriter.close();
  ///
  external Promise<Object> close();

  ///  Releases the writer's lock on the corresponding stream. After
  /// the lock is released, the writer is no longer active. If the
  /// associated stream is errored when the lock is released, the
  /// writer will appear errored in the same way from now on;
  /// otherwise, the writer will appear closed.
  ///
  /// writableStreamDefaultWritere.releaseLock()
  ///
  external Object releaseLock();

  ///  Writes a passed chunk of data to a [WritableStream] and its
  /// underlying sink, then returns a [Promise] that resolves to
  /// indicate the success or failure of the write operation.
  ///
  /// var promise = writableStreamDefaultWriter.write(chunk);
  ///
  external Promise<Object> write([dynamic chunk]);
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
  ///  Causes any future interactions with the associated stream to
  /// error.
  ///
  /// writableStreamDefaultController.error(e);
  ///
  external Object error([dynamic e]);
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
  /// The end of a TransformStream.
  ///
  external ReadableStream get readable;

  /// The end of a TransformStream.
  ///
  external WritableStream get writable;
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
  external TransformerStartCallback get start;
  external set start(TransformerStartCallback newValue);
  external TransformerTransformCallback get transform;
  external set transform(TransformerTransformCallback newValue);
  external TransformerFlushCallback get flush;
  external set flush(TransformerFlushCallback newValue);
  external dynamic get readableType;
  external set readableType(dynamic newValue);
  external dynamic get writableType;
  external set writableType(dynamic newValue);
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
  ///  Returns the desired size to fill the readable side of the
  /// stream's internal queue.
  ///
  external /* double | NaN */ dynamic? get desiredSize;

  ///  Enqueues a chunk (single piece of data) in the readable side of
  /// the stream.
  ///
  /// TransformStreamDefaultController.enqueue(chunk);
  ///
  external Object enqueue([dynamic chunk]);

  ///  Errors both the readable and writable side of the transform
  /// stream.
  ///
  /// TransformStreamDefaultController.error(reason);
  ///
  external Object error([dynamic reason]);

  ///  Closes the readable side and errors the writable side of the
  /// stream.
  ///
  /// TransformStreamDefaultController.terminate();
  ///
  external Object terminate();
}

@anonymous
@JS()
@staticInterop
class QueuingStrategy {
  external factory QueuingStrategy(
      {/* double | NaN */ dynamic highWaterMark, QueuingStrategySize size});
}

extension PropsQueuingStrategy on QueuingStrategy {
  external /* double | NaN */ dynamic get highWaterMark;
  external set highWaterMark(/* double | NaN */ dynamic newValue);
  external QueuingStrategySize get size;
  external set size(QueuingStrategySize newValue);
}

@anonymous
@JS()
@staticInterop
class QueuingStrategyInit {
  external factory QueuingStrategyInit(
      {/* double | NaN */ dynamic highWaterMark});
}

extension PropsQueuingStrategyInit on QueuingStrategyInit {
  external /* double | NaN */ dynamic get highWaterMark;
  external set highWaterMark(/* double | NaN */ dynamic newValue);
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
  external /* double | NaN */ dynamic get highWaterMark;
  external Function get size;
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
  external /* double | NaN */ dynamic get highWaterMark;
  external Function get size;
}

@JS()
@staticInterop
class GenericTransformStream {
  external factory GenericTransformStream();
}

extension PropsGenericTransformStream on GenericTransformStream {
  external ReadableStream get readable;
  external WritableStream get writable;
}
