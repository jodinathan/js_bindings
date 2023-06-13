@JS()
library callbacks;

import 'dart:typed_data';
import 'package:js/js.dart';
import 'all_bindings.dart';

typedef RTCPeerConnectionErrorCallback = Function(Exception error);

typedef RTCSessionDescriptionCallback = Function(
    RTCSessionDescriptionInit description);

typedef AnimatorInstanceConstructor = Function(dynamic options,
    [dynamic state]);

typedef UnderlyingSourceStartCallback = Function(dynamic controller);

typedef UnderlyingSourcePullCallback = Function(dynamic controller);

typedef UnderlyingSourceCancelCallback = Function([dynamic reason]);

typedef UnderlyingSinkStartCallback = Function(
    WritableStreamDefaultController controller);

typedef UnderlyingSinkWriteCallback = Function(
    dynamic chunk, WritableStreamDefaultController controller);

typedef UnderlyingSinkCloseCallback = Function();

typedef UnderlyingSinkAbortCallback = Function([dynamic reason]);

typedef TransformerStartCallback = Function(
    TransformStreamDefaultController controller);

typedef TransformerFlushCallback = Function(
    TransformStreamDefaultController controller);

typedef TransformerTransformCallback = Function(
    dynamic chunk, TransformStreamDefaultController controller);

typedef QueuingStrategySize = Function(dynamic chunk);

typedef XRFrameRequestCallback = Function(double time, XRFrame frame);

typedef NavigatorUserMediaSuccessCallback = Function(MediaStream stream);

typedef NavigatorUserMediaErrorCallback = Function(Exception error);

typedef NavigationInterceptHandler = Function();

typedef ErrorCallback = Function(Exception err);

typedef FileSystemEntryCallback = Function(FileSystemEntry entry);

typedef FileSystemEntriesCallback = Function(Iterable<FileSystemEntry> entries);

typedef FileCallback = Function(File file);

typedef LoadDocumentCallback = Function(String url,
    [LoadDocumentOptions? options]);

typedef LockGrantedCallback = Function(Lock? lock);

typedef PressureUpdateCallback = Function(
    Iterable<PressureRecord> changes, PressureObserver observer);

typedef PerformanceObserverCallback = Function(
    PerformanceObserverEntryList entries, PerformanceObserver observer,
    [PerformanceObserverCallbackOptions? options]);

typedef DecodeErrorCallback = Function(Exception error);

typedef DecodeSuccessCallback = Function(AudioBuffer decodedData);

typedef AudioWorkletProcessorConstructor = Function(dynamic options);

typedef AudioWorkletProcessCallback = Function(
    Iterable<Iterable<Float32List>> inputs,
    Iterable<Iterable<Float32List>> outputs,
    dynamic parameters);

typedef RemotePlaybackAvailabilityCallback = Function(bool available);

@JS('Function')
@staticInterop
typedef FnFunction = Function(
    [dynamic arguments1, dynamic arguments2, dynamic arguments3]);

typedef VoidFunction = Function();

typedef GenerateAssertionCallback = Function(
    String contents, String origin, RTCIdentityProviderOptions options);

typedef ValidateAssertionCallback = Function(String assertion, String origin);

typedef BlobCallback = Function(Blob? blob);

typedef CustomElementConstructor = Function();

typedef FunctionStringCallback = Function(String data);

typedef OnErrorEventHandlerNonNull = Function(dynamic event,
    [String? source, int? lineno, int? colno, dynamic error]);

typedef OnBeforeUnloadEventHandlerNonNull = Function(Event event);

typedef FrameRequestCallback = Function(double time);

typedef PositionCallback = Function(GeolocationPosition position);

typedef PositionErrorCallback = Function(
    GeolocationPositionError positionError);

typedef EffectCallback = Function(
    double? progress, dynamic currentTarget, Animation animation);

typedef MediaSessionActionHandler = Function(MediaSessionActionDetails details);

typedef ResizeObserverCallback = Function(
    Iterable<ResizeObserverEntry> entries, ResizeObserver observer);

typedef VideoFrameRequestCallback = Function(
    double now, VideoFrameMetadata metadata);

typedef ReportingObserverCallback = Function(
    Iterable<Report> reports, ReportingObserver observer);

typedef NotificationPermissionCallback = Function(
    NotificationPermission permission);

typedef SchedulerPostTaskCallback = Function();

typedef LaunchConsumer = Function(LaunchParams params);

typedef IntersectionObserverCallback = Function(
    Iterable<IntersectionObserverEntry> entries, IntersectionObserver observer);

typedef EventListener = Function(Event event);

typedef MutationCallback = Function(
    Iterable<MutationRecord> mutations, MutationObserver observer);

typedef IdleRequestCallback = Function(IdleDeadline deadline);

typedef CreateHTMLCallback = Function(String input,
    [dynamic arguments1, dynamic arguments2, dynamic arguments3]);

typedef CreateScriptCallback = Function(String input,
    [dynamic arguments1, dynamic arguments2, dynamic arguments3]);

typedef CreateScriptURLCallback = Function(String input,
    [dynamic arguments1, dynamic arguments2, dynamic arguments3]);

typedef AudioDataOutputCallback = Function(AudioData output);

typedef VideoFrameOutputCallback = Function(VideoFrame output);

typedef EncodedAudioChunkOutputCallback = Function(EncodedAudioChunk output,
    [EncodedAudioChunkMetadata? metadata]);

typedef EncodedVideoChunkOutputCallback = Function(EncodedVideoChunk chunk,
    [EncodedVideoChunkMetadata? metadata]);

typedef WebCodecsErrorCallback = Function(Exception error);
