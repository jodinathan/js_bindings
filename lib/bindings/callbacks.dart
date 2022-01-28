@JS()
library callbacks;

import 'dart:typed_data';
import 'package:js/js.dart';
import 'all_bindings.dart';

typedef PositionCallback = Function(GeolocationPosition position);

typedef PositionErrorCallback = Function(
    GeolocationPositionError positionError);

typedef MediaSessionActionHandler = Function(MediaSessionActionDetails details);

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

typedef QueuingStrategySize = Function([dynamic chunk]);

typedef SchedulerPostTaskCallback = Function();

typedef CreateHTMLCallback = Function(String input, [dynamic arguments]);

typedef CreateScriptCallback = Function(String input, [dynamic arguments]);

typedef CreateScriptURLCallback = Function(String input, [dynamic arguments]);

typedef IdleRequestCallback = Function(IdleDeadline deadline);

typedef ErrorCallback = Function(Exception err);

typedef FileSystemEntryCallback = Function(FileSystemEntry entry);

typedef FileSystemEntriesCallback = Function(Iterable<FileSystemEntry> entries);

typedef FileCallback = Function(File file);

typedef ClipboardItemDelayedCallback = Function();

typedef RTCPeerConnectionErrorCallback = Function(Exception error);

typedef RTCSessionDescriptionCallback = Function(
    RTCSessionDescriptionInit description);

typedef DecodeErrorCallback = Function(Exception error);

typedef DecodeSuccessCallback = Function(AudioBuffer decodedData);

typedef AudioWorkletProcessorConstructor = Function(dynamic options);

typedef AudioWorkletProcessCallback = Function(
    Iterable<Iterable<Float32List>> inputs,
    Iterable<Iterable<Float32List>> outputs,
    dynamic parameters);

typedef AudioDataOutputCallback = Function(AudioData output);

typedef VideoFrameOutputCallback = Function(VideoFrame output);

typedef EncodedAudioChunkOutputCallback = Function(EncodedAudioChunk output,
    [EncodedAudioChunkMetadata? metadata]);

typedef EncodedVideoChunkOutputCallback = Function(EncodedVideoChunk chunk,
    [EncodedVideoChunkMetadata? metadata]);

typedef WebCodecsErrorCallback = Function(Exception error);

typedef IntersectionObserverCallback = Function(
    Iterable<IntersectionObserverEntry> entries, IntersectionObserver observer);

typedef LockGrantedCallback = Function(Lock? lock);

typedef MutationCallback = Function(
    Iterable<MutationRecord> mutations, MutationObserver observer);

typedef ReportingObserverCallback = Function(
    Iterable<Report> reports, ReportingObserver observer);

typedef NavigatorUserMediaSuccessCallback = Function(MediaStream stream);

typedef NavigatorUserMediaErrorCallback = Function(Exception error);

typedef VideoFrameRequestCallback = Function(
    double now, VideoFrameMetadata metadata);

typedef GenerateAssertionCallback = Function(
    String contents, String origin, RTCIdentityProviderOptions options);

typedef ValidateAssertionCallback = Function(String assertion, String origin);

typedef XRFrameRequestCallback = Function(double time, XRFrame frame);

typedef NotificationPermissionCallback = Function(
    NotificationPermission permission);

typedef AnimatorInstanceConstructor = Function(dynamic options,
    [dynamic state]);

typedef ResizeObserverCallback = Function(
    Iterable<ResizeObserverEntry> entries, ResizeObserver observer);

typedef RemotePlaybackAvailabilityCallback = Function(bool available);

typedef EffectCallback = Function(
    double? progress, dynamic currentTarget, Animation animation);

typedef BlobCallback = Function(Blob? blob);

typedef CustomElementConstructor = Function();

typedef FunctionStringCallback = Function(String data);

typedef EventHandlerNonNull = Function(Event event);

typedef OnErrorEventHandlerNonNull = Function(dynamic event,
    [String? source, int? lineno, int? colno, dynamic error]);

typedef OnBeforeUnloadEventHandlerNonNull = Function(Event event);

typedef FrameRequestCallback = Function(double time);

typedef MIDISuccessCallback = Function(MIDIAccess access, MIDIOptions options);

typedef PerformanceObserverCallback = Function(
    PerformanceObserverEntryList entries, PerformanceObserver observer,
    [PerformanceObserverCallbackOptions? options]);

@JS('Function')
@staticInterop
typedef FnFunction = Function([dynamic arguments]);

typedef VoidFunction = Function();
