/// Streams Standard
///
/// https://streams.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library streams;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface of the Streams API represents a readable stream of
/// byte data. The Fetch API offers a concrete instance of a through
/// the [body] property of a [Response] object.
///  is a transferable object.
@JS()
@staticInterop
class ReadableStream {
  external factory ReadableStream(
      [dynamic underlyingSource, QueuingStrategy? strategy]);
}

extension PropsReadableStream on ReadableStream {
  bool get locked => js_util.getProperty(this, 'locked');
  Future<Object> cancel([dynamic reason]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'cancel', [reason]));

  dynamic getReader([ReadableStreamGetReaderOptions? options]) =>
      js_util.callMethod(this, 'getReader', [options]);

  ReadableStream pipeThrough(ReadableWritablePair transform,
          [StreamPipeOptions? options]) =>
      js_util.callMethod(this, 'pipeThrough', [transform, options]);

  Future<Object> pipeTo(WritableStream destination,
          [StreamPipeOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'pipeTo', [destination, options]));

  Iterable<ReadableStream> tee() => js_util.callMethod(this, 'tee', []);
}

enum ReadableStreamReaderMode { byob }

@anonymous
@JS()
@staticInterop
class ReadableStreamGetReaderOptions {
  external factory ReadableStreamGetReaderOptions._({required String mode});

  factory ReadableStreamGetReaderOptions(
          {required ReadableStreamReaderMode mode}) =>
      ReadableStreamGetReaderOptions._(mode: mode.name);
}

extension PropsReadableStreamGetReaderOptions
    on ReadableStreamGetReaderOptions {
  ReadableStreamReaderMode get mode =>
      ReadableStreamReaderMode.values.byName(js_util.getProperty(this, 'mode'));
  set mode(ReadableStreamReaderMode newValue) {
    js_util.setProperty(this, 'mode', newValue.name);
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
      {required UnderlyingSourceStartCallback start,
      required UnderlyingSourcePullCallback pull,
      required UnderlyingSourceCancelCallback cancel,
      required String type,
      required int autoAllocateChunkSize});

  factory UnderlyingSource(
          {required UnderlyingSourceStartCallback start,
          required UnderlyingSourcePullCallback pull,
          required UnderlyingSourceCancelCallback cancel,
          required ReadableStreamType type,
          required int autoAllocateChunkSize}) =>
      UnderlyingSource._(
          start: start,
          pull: pull,
          cancel: cancel,
          type: type.name,
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
      ReadableStreamType.values.byName(js_util.getProperty(this, 'type'));
  set type(ReadableStreamType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
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
  external factory ReadableStreamGenericReader();
}

extension PropsReadableStreamGenericReader on ReadableStreamGenericReader {
  Future<Object> get closed =>
      js_util.promiseToFuture(js_util.getProperty(this, 'closed'));
  Future<Object> cancel([dynamic reason]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'cancel', [reason]));
}

///  The interface of the Streams API represents a default reader
/// that can be used to read stream data supplied from a network
/// (such as a fetch request).
///  A can be used to read from a [ReadableStream] that has an
/// underlying source of any type (unlike a
/// [ReadableStreamBYOBReader], which can only be used with readable
/// streams that have an underlying byte source).
///
///   Note however that zero-copy transfer from an underlying source
/// is only supported for underlying byte sources that autoallocate
/// buffers.
///   In other words, the stream must have been constructed
/// specifying both [type="bytes"] and [autoAllocateChunkSize].
///   For any other underlying source, the stream will always satisfy
/// read requests with data from internal queues.
///
@JS()
@staticInterop
class ReadableStreamDefaultReader implements ReadableStreamGenericReader {
  external factory ReadableStreamDefaultReader(ReadableStream stream);
}

extension PropsReadableStreamDefaultReader on ReadableStreamDefaultReader {
  Future<ReadableStreamReadResult> read() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'read', []));

  Object releaseLock() => js_util.callMethod(this, 'releaseLock', []);
}

@anonymous
@JS()
@staticInterop
class ReadableStreamReadResult {
  external factory ReadableStreamReadResult(
      {dynamic value, required bool done});
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

///
///   The interface of the Streams API defines a reader for a
/// [ReadableStream] that supports zero-copy reading from an
/// underlying byte source.
///   It is used for efficient copying from underlying sources where
/// the data is delivered as an "anonymous" sequence of bytes, such
/// as files.
///   An instance of this reader type should usually be obtained by
/// calling [ReadableStream.getReader()] on the stream, specifying
/// [mode: "byob"] in the options parameter.
///   The readable stream must have an underlying byte source. In
/// other words, it must have been constructed specifying an
/// underlying source with [type: "bytes"]).
///   Using this kind of reader, a [read()] request when the readable
/// stream's internal queues are empty will result in a zero copy
/// transfer from the underlying source (bypassing the stream's
/// internal queues).
///   If the internal queues are not empty, a [read()] will satisfy
/// the request from the buffered data.
///   Note that the methods and properties are similar to those for
/// the default reader ([ReadableStreamDefaultReader]).
///   The [read()] method differs in that it provide a view into
/// which data should be written.
///
@JS()
@staticInterop
class ReadableStreamBYOBReader implements ReadableStreamGenericReader {
  external factory ReadableStreamBYOBReader(ReadableStream stream);
}

extension PropsReadableStreamBYOBReader on ReadableStreamBYOBReader {
  Future<ReadableStreamReadResult> read(dynamic view) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'read', [view]));

  Object releaseLock() => js_util.callMethod(this, 'releaseLock', []);
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
  Object close() => js_util.callMethod(this, 'close', []);

  Object enqueue([dynamic chunk]) =>
      js_util.callMethod(this, 'enqueue', [chunk]);

  Object error([dynamic e]) => js_util.callMethod(this, 'error', [e]);
}

///
///   The interface of the Streams API represents a controller for a
/// readable byte stream.
///   It allows control of the state and internal queue of a
/// [ReadableStream] with an underlying byte source, and enables
/// efficient zero-copy transfer of data from the underlying source
/// to a consumer when the stream's internal queue is empty.
///   An instance of this controller type is created if an
/// [underlyingSource] object with the property [type="bytes"] is
/// passed as an argument to the [ReadableStream()] constructor.
///   The [underlyingSource] object may also define [start()] and
/// [pull()] callback functions.
///   These are called with the controller as a parameter, in order
/// to setup the underlying source, and request data when needed.
///   The underlying source uses the controller to supply data to the
/// stream via its [byobRequest] property or [enqueue()] method.
///   [byobRequest] is a [ReadableStreamBYOBRequest] object that
/// represents a pending request from a consumer to make a zero-copy
/// transfer of data direct to a consumer.
///   [byobRequest] must be used to copy data if it exists (do not
/// use [enqueue()] in this case)!
///   If the underlying source needs to pass data to the stream and
/// [byobRequest] is [null] then the source can call [enqueue()] to
/// add the data to the stream's internal queues.
///   Note that the [byobRequest] is only created in "BYOB mode" when
/// there is a request from a reader and the stream's internal queue
/// is empty.
///   "BYOB mode" is enabled when using a [ReadableStreamBYOBReader]
/// (typically constructed by calling [ReadableStream.getReader()]
/// with the argument [{ mode: 'byob' }]).
///   It is also enabled when using a default reader and
/// [autoAllocateChunkSize] is specified in the
/// [ReadableController()] constructor.
///   An underlying byte source can also use the controller to
/// [close()] the stream when all the data has been sent and report
/// errors from the underlying source using [error()].
///   The controller's [desiredSize] property is used to apply
/// "backpressure", informing the underlying source of the size of
/// the internal queue (small values indicate that the queue is
/// filling up, hinting to the underlying source that it is be
/// desirable to pause or throttle the inflow).
///
///  Note that even though the controller is primarily used by the
/// underlying byte source, there is no reason it cannot be stored
/// used by other parts of the system to signal the stream.
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
  Object close() => js_util.callMethod(this, 'close', []);

  Object enqueue(dynamic chunk) => js_util.callMethod(this, 'enqueue', [chunk]);

  Object error([dynamic e]) => js_util.callMethod(this, 'error', [e]);
}

///  The interface of the Streams API represents a "pull request" for
/// data from an underlying source that will made as a zero-copy
/// transfer to a consumer (bypassing the stream's internal queues).
///
///    objects are created in "BYOB mode" when a consumer makes a
/// request for data and the stream's internal queue is empty.
///   (The stream will resolve the consumer's request directly if it
/// already has buffered data).
///   An underlying byte source can access active BYOB requests
/// through its controller's
/// [ReadableByteStreamController.byobRequest] property, which will
/// be set to [null] if there is no outstanding request.
///   An underlying source that supports "BYOB mode" should check for
/// [ReadableByteStreamController.byobRequest] and must use it for
/// transferring data, if present.
///   If data arrives from the underlying source when
/// [ReadableByteStreamController.byobRequest] is [null], it can be
/// queued using [ReadableByteStreamController.enqueue()].
///   This might happen when an underlying push source receives new
/// data when the stream's internal buffers are not empty.
///   An underlying source uses the request by writing data to the
/// BYOB request's [view] and then calling [respond()], or by calling
/// [respondWithNewView()] and passing a new view as an argument.
///   Note that the "new view" must actually be a view over the same
/// buffer as the original [view], starting at the same offset.
///   This might be used to return a shorter buffer if the underlying
/// source is unable to fill the entire original view.
///   Note that a [ReadableByteStreamController] is only created for
/// underlying sources when [type="bytes"] is specified for the
/// source in the [ReadableStream()] constructor.
///   "BYOB mode" is enabled when either [autoAllocateChunkSize] is
/// specified in the [ReadableController()] constructor or when using
/// a [ReadableStreamBYOBReader] (typically constructed by calling
/// [ReadableStream.getReader()] with the argument [{ mode: 'byob'
/// }]).
///
@JS()
@staticInterop
class ReadableStreamBYOBRequest {
  external factory ReadableStreamBYOBRequest();
}

extension PropsReadableStreamBYOBRequest on ReadableStreamBYOBRequest {
  dynamic get view => js_util.getProperty(this, 'view');
  Object respond(int bytesWritten) =>
      js_util.callMethod(this, 'respond', [bytesWritten]);

  Object respondWithNewView(dynamic view) =>
      js_util.callMethod(this, 'respondWithNewView', [view]);
}

///
///   The interface of the Streams API provides a standard
/// abstraction for writing streaming data to a destination, known as
/// a sink.
///  This object comes with built-in backpressure and queuing.
///
///  is a transferable object.
@JS()
@staticInterop
class WritableStream {
  external factory WritableStream(
      [dynamic underlyingSink, QueuingStrategy? strategy]);
}

extension PropsWritableStream on WritableStream {
  bool get locked => js_util.getProperty(this, 'locked');
  Future<Object> abort([dynamic reason]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'abort', [reason]));

  Future<Object> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));

  WritableStreamDefaultWriter getWriter() =>
      js_util.callMethod(this, 'getWriter', []);
}

@anonymous
@JS()
@staticInterop
class UnderlyingSink {
  external factory UnderlyingSink(
      {required UnderlyingSinkStartCallback start,
      required UnderlyingSinkWriteCallback write,
      required UnderlyingSinkCloseCallback close,
      required UnderlyingSinkAbortCallback abort,
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
  Future<Object> get closed =>
      js_util.promiseToFuture(js_util.getProperty(this, 'closed'));
  /* double | NaN */ dynamic get desiredSize =>
      js_util.getProperty(this, 'desiredSize');
  Future<Object> get ready =>
      js_util.promiseToFuture(js_util.getProperty(this, 'ready'));
  Future<Object> abort([dynamic reason]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'abort', [reason]));

  Future<Object> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));

  Object releaseLock() => js_util.callMethod(this, 'releaseLock', []);

  Future<Object> write([dynamic chunk]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'write', [chunk]));
}

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
  Object error([dynamic e]) => js_util.callMethod(this, 'error', [e]);
}

///  The interface of the Streams API represents a concrete
/// implementation of the pipe chain transform stream concept.
///
///   It may be passed to the [ReadableStream.pipeThrough()] method
/// in order to transform a stream of data from one format into
/// another.
///   For example, it might be used to decode (or encode) video
/// frames, decompress data, or convert the stream from XML to JSON.
///   A transformation algorithm may be provided as an optional
/// argument to the object constructor.
///   If not supplied, data is not modified when piped through the
/// stream.
///
///  is a transferable object.
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
      {required TransformerStartCallback start,
      required TransformerTransformCallback transform,
      required TransformerFlushCallback flush,
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
/// via the callback methods of [TransformStream()].
@JS()
@staticInterop
class TransformStreamDefaultController {
  external factory TransformStreamDefaultController();
}

extension PropsTransformStreamDefaultController
    on TransformStreamDefaultController {
  /* double | NaN */ dynamic get desiredSize =>
      js_util.getProperty(this, 'desiredSize');
  Object enqueue([dynamic chunk]) =>
      js_util.callMethod(this, 'enqueue', [chunk]);

  Object error([dynamic reason]) => js_util.callMethod(this, 'error', [reason]);

  Object terminate() => js_util.callMethod(this, 'terminate', []);
}

@anonymous
@JS()
@staticInterop
class QueuingStrategy {
  external factory QueuingStrategy(
      {/* double | NaN */ dynamic highWaterMark,
      required QueuingStrategySize size});
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

///  The interface of the Streams API provides a built-in byte length
/// queuing strategy that can be used when constructing streams.
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

///  The interface of the Streams API provides a built-in chunk
/// counting queuing strategy that can be used when constructing
/// streams.
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
