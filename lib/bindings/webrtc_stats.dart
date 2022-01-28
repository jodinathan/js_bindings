/// Identifiers for WebRTC's Statistics API
///
/// https://w3c.github.io/webrtc-stats/
@JS('window')
@staticInterop
library webrtc_stats;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webrtc
hr_time_3 */

enum RTCStatsType {
  codec,
  inboundRtp,
  outboundRtp,
  remoteInboundRtp,
  remoteOutboundRtp,
  mediaSource,
  csrc,
  peerConnection,
  dataChannel,
  stream,
  track,
  transceiver,
  sender,
  receiver,
  transport,
  sctpTransport,
  candidatePair,
  localCandidate,
  remoteCandidate,
  certificate,
  iceServer
}

///  The dictionary is returned by the
/// [RTCPeerConnection.getStats()], [RTCRtpSender.getStats()], and
/// [RTCRtpReceiver.getStats()] methods to provide detailed
/// statistics about WebRTC connectivity.
///  While the dictionary has a base set of properties that are
/// present in each of these cases, there are also additional
/// properties added depending on which interface the method is
/// called on.
///   is the base class for all RTP-related statistics reports. It's
/// based on RTCStats and adds the following additional fields.
///
///   Note: This interface was called [RTCRTPStreamStats] until a
/// specification update in the spring of 2017. Check the Browser
/// compatibility table to know if and when the name change was
/// implemented in specific browsers.
///
@anonymous
@JS()
@staticInterop
class RTCRtpStreamStats implements RTCStats {
  external factory RTCRtpStreamStats(
      {int ssrc, String kind, String transportId, String codecId});
}

extension PropsRTCRtpStreamStats on RTCRtpStreamStats {
  external int get ssrc;
  external set ssrc(int newValue);
  external String get kind;
  external set kind(String newValue);
  external String get transportId;
  external set transportId(String newValue);
  external String get codecId;
  external set codecId(String newValue);
}

@anonymous
@JS()
@staticInterop
class RTCCodecStats implements RTCStats {
  external factory RTCCodecStats(
      {int payloadType,
      RTCCodecType codecType,
      String transportId,
      String mimeType,
      int clockRate,
      int channels,
      String sdpFmtpLine});
}

extension PropsRTCCodecStats on RTCCodecStats {
  external int get payloadType;
  external set payloadType(int newValue);
  external RTCCodecType get codecType;
  external set codecType(RTCCodecType newValue);
  external String get transportId;
  external set transportId(String newValue);
  external String get mimeType;
  external set mimeType(String newValue);
  external int get clockRate;
  external set clockRate(int newValue);
  external int get channels;
  external set channels(int newValue);
  external String get sdpFmtpLine;
  external set sdpFmtpLine(String newValue);
}

enum RTCCodecType { encode, decode }

@anonymous
@JS()
@staticInterop
class RTCReceivedRtpStreamStats implements RTCRtpStreamStats {
  external factory RTCReceivedRtpStreamStats(
      {int packetsReceived,
      int packetsLost,
      double jitter,
      int packetsDiscarded,
      int packetsRepaired,
      int burstPacketsLost,
      int burstPacketsDiscarded,
      int burstLossCount,
      int burstDiscardCount,
      double burstLossRate,
      double burstDiscardRate,
      double gapLossRate,
      double gapDiscardRate,
      int framesDropped,
      int partialFramesLost,
      int fullFramesLost});
}

extension PropsRTCReceivedRtpStreamStats on RTCReceivedRtpStreamStats {
  external int get packetsReceived;
  external set packetsReceived(int newValue);
  external int get packetsLost;
  external set packetsLost(int newValue);
  external double get jitter;
  external set jitter(double newValue);
  external int get packetsDiscarded;
  external set packetsDiscarded(int newValue);
  external int get packetsRepaired;
  external set packetsRepaired(int newValue);
  external int get burstPacketsLost;
  external set burstPacketsLost(int newValue);
  external int get burstPacketsDiscarded;
  external set burstPacketsDiscarded(int newValue);
  external int get burstLossCount;
  external set burstLossCount(int newValue);
  external int get burstDiscardCount;
  external set burstDiscardCount(int newValue);
  external double get burstLossRate;
  external set burstLossRate(double newValue);
  external double get burstDiscardRate;
  external set burstDiscardRate(double newValue);
  external double get gapLossRate;
  external set gapLossRate(double newValue);
  external double get gapDiscardRate;
  external set gapDiscardRate(double newValue);
  external int get framesDropped;
  external set framesDropped(int newValue);
  external int get partialFramesLost;
  external set partialFramesLost(int newValue);
  external int get fullFramesLost;
  external set fullFramesLost(int newValue);
}

///  The WebRTC API's dictionary, based upon
/// [RTCReceivedRtpStreamStats] and [RTCStats], contains statistics
/// related to the receiving end of an RTP stream on the local end of
/// the [RTCPeerConnection].
@anonymous
@JS()
@staticInterop
class RTCInboundRtpStreamStats implements RTCReceivedRtpStreamStats {
  external factory RTCInboundRtpStreamStats(
      {String receiverId,
      String remoteId,
      int framesDecoded,
      int keyFramesDecoded,
      int frameWidth,
      int frameHeight,
      int frameBitDepth,
      double framesPerSecond,
      int qpSum,
      double totalDecodeTime,
      double totalInterFrameDelay,
      double totalSquaredInterFrameDelay,
      bool voiceActivityFlag,
      double lastPacketReceivedTimestamp,
      double averageRtcpInterval,
      int headerBytesReceived,
      int fecPacketsReceived,
      int fecPacketsDiscarded,
      int bytesReceived,
      int packetsFailedDecryption,
      int packetsDuplicated,
      dynamic perDscpPacketsReceived,
      int nackCount,
      int firCount,
      int pliCount,
      int sliCount,
      double totalProcessingDelay,
      double estimatedPlayoutTimestamp,
      double jitterBufferDelay,
      int jitterBufferEmittedCount,
      int totalSamplesReceived,
      int totalSamplesDecoded,
      int samplesDecodedWithSilk,
      int samplesDecodedWithCelt,
      int concealedSamples,
      int silentConcealedSamples,
      int concealmentEvents,
      int insertedSamplesForDeceleration,
      int removedSamplesForAcceleration,
      double audioLevel,
      double totalAudioEnergy,
      double totalSamplesDuration,
      int framesReceived,
      String decoderImplementation});
}

extension PropsRTCInboundRtpStreamStats on RTCInboundRtpStreamStats {
  ///  A string indicating which identifies the [RTCAudioReceiverStats]
  /// or [RTCVideoReceiverStats] object associated with the stream's
  /// receiver. This ID is stable across multiple calls to
  /// [getStats()].
  ///
  external String get receiverId;
  external set receiverId(String newValue);

  ///  A string which identifies the [RTCRemoteOutboundRtpStreamStats]
  /// object that provides statistics for the remote peer for this same
  /// SSRC. This ID is stable across multiple calls to [getStats()].
  ///
  external String get remoteId;
  external set remoteId(String newValue);

  ///  A long integer value indicating the total number of frames of
  /// video which have been correctly decoded so far for this media
  /// source. This is the number of frames that would have been
  /// rendered if none were dropped. Only valid for video streams.
  ///
  external int get framesDecoded;
  external set framesDecoded(int newValue);
  external int get keyFramesDecoded;
  external set keyFramesDecoded(int newValue);
  external int get frameWidth;
  external set frameWidth(int newValue);
  external int get frameHeight;
  external set frameHeight(int newValue);
  external int get frameBitDepth;
  external set frameBitDepth(int newValue);
  external double get framesPerSecond;
  external set framesPerSecond(double newValue);

  ///  A 64-bit value containing the sum of the QP values for every
  /// frame decoded by this RTP receiver. You can determine the average
  /// QP per frame by dividing this value by [framesDecoded]. Valid
  /// only for video streams.
  ///
  external int get qpSum;
  external set qpSum(int newValue);
  external double get totalDecodeTime;
  external set totalDecodeTime(double newValue);
  external double get totalInterFrameDelay;
  external set totalInterFrameDelay(double newValue);
  external double get totalSquaredInterFrameDelay;
  external set totalSquaredInterFrameDelay(double newValue);
  external bool get voiceActivityFlag;
  external set voiceActivityFlag(bool newValue);

  ///  A [DOMHighResTimeStamp] indicating the time at which the last
  /// packet was received for this source. The [timestamp] property, on
  /// the other hand, indicates the time at which the statistics object
  /// was generated.
  ///
  external double get lastPacketReceivedTimestamp;
  external set lastPacketReceivedTimestamp(double newValue);

  ///  A floating-point value indicating the average RTCP interval
  /// between two consecutive compound RTCP packets.
  ///
  external double get averageRtcpInterval;
  external set averageRtcpInterval(double newValue);
  external int get headerBytesReceived;
  external set headerBytesReceived(int newValue);

  ///  An integer value indicating the total number of RTP FEC packets
  /// received for this source. This counter may also be incremented
  /// when FEC packets arrive in-band along with media content; this
  /// can happen with Opus, for example.
  ///
  external int get fecPacketsReceived;
  external set fecPacketsReceived(int newValue);

  ///  An integer value indicating the number of RTP Forward Error
  /// Correction (FEC) packets which have been received for this
  /// source, for which the error correction payload was discarded.
  ///
  external int get fecPacketsDiscarded;
  external set fecPacketsDiscarded(int newValue);

  ///  A 64-bit integer which indicates the total number of bytes that
  /// have been received so far for this media source.
  ///
  external int get bytesReceived;
  external set bytesReceived(int newValue);

  ///  An integer totaling the number of RTP packets that could not be
  /// decrypted. These packets are not counted by [packetsDiscarded].
  ///
  external int get packetsFailedDecryption;
  external set packetsFailedDecryption(int newValue);

  ///  An integer value indicating the total number of packets that
  /// have been discarded because they were duplicates. These packets
  /// are not counted by [packetsDiscarded].
  ///
  external int get packetsDuplicated;
  external set packetsDuplicated(int newValue);

  ///  A record of key-value pairs with strings as the keys mapped to
  /// 32-bit integer values, each indicating the total number of
  /// packets this receiver has received on this RTP stream from this
  /// source for each Differentiated Services Code Point (DSCP).
  ///
  external dynamic get perDscpPacketsReceived;
  external set perDscpPacketsReceived(dynamic newValue);

  ///  An integer value indicating the total number of Negative
  /// ACKnolwedgement (NACK) packets this receiver has sent.
  ///
  external int get nackCount;
  external set nackCount(int newValue);

  ///  An integer value which indicates the total number of Full Intra
  /// Request (FIR) packets which this receiver has sent to the sender.
  /// This is an indicator of how often the stream has lagged,
  /// requiring frames to be skipped in order to catch up. This value
  /// is only available for video streams.
  ///
  external int get firCount;
  external set firCount(int newValue);

  ///  An integer specifying the number of times the receiver has
  /// notified the sender that some amount of encoded video data for
  /// one or more frames has been lost, using Picture Loss Indication
  /// (PLI) packets. This is only available for video streams.
  ///
  external int get pliCount;
  external set pliCount(int newValue);

  ///  An integer indicating the number of times the receiver sent a
  /// Slice Loss Indication (SLI) frame to the sender to tell it that
  /// one or more consecutive (in terms of scan order) video
  /// macroblocks have been lost or corrupted. Available only for video
  /// streams.
  ///
  external int get sliCount;
  external set sliCount(int newValue);
  external double get totalProcessingDelay;
  external set totalProcessingDelay(double newValue);
  external double get estimatedPlayoutTimestamp;
  external set estimatedPlayoutTimestamp(double newValue);
  external double get jitterBufferDelay;
  external set jitterBufferDelay(double newValue);
  external int get jitterBufferEmittedCount;
  external set jitterBufferEmittedCount(int newValue);
  external int get totalSamplesReceived;
  external set totalSamplesReceived(int newValue);
  external int get totalSamplesDecoded;
  external set totalSamplesDecoded(int newValue);
  external int get samplesDecodedWithSilk;
  external set samplesDecodedWithSilk(int newValue);
  external int get samplesDecodedWithCelt;
  external set samplesDecodedWithCelt(int newValue);
  external int get concealedSamples;
  external set concealedSamples(int newValue);
  external int get silentConcealedSamples;
  external set silentConcealedSamples(int newValue);
  external int get concealmentEvents;
  external set concealmentEvents(int newValue);
  external int get insertedSamplesForDeceleration;
  external set insertedSamplesForDeceleration(int newValue);
  external int get removedSamplesForAcceleration;
  external set removedSamplesForAcceleration(int newValue);
  external double get audioLevel;
  external set audioLevel(double newValue);
  external double get totalAudioEnergy;
  external set totalAudioEnergy(double newValue);
  external double get totalSamplesDuration;
  external set totalSamplesDuration(double newValue);
  external int get framesReceived;
  external set framesReceived(int newValue);
  external String get decoderImplementation;
  external set decoderImplementation(String newValue);
}

@anonymous
@JS()
@staticInterop
class RTCRemoteInboundRtpStreamStats implements RTCReceivedRtpStreamStats {
  external factory RTCRemoteInboundRtpStreamStats(
      {String localId,
      double roundTripTime,
      double totalRoundTripTime,
      double fractionLost,
      int reportsReceived,
      int roundTripTimeMeasurements});
}

extension PropsRTCRemoteInboundRtpStreamStats
    on RTCRemoteInboundRtpStreamStats {
  external String get localId;
  external set localId(String newValue);
  external double get roundTripTime;
  external set roundTripTime(double newValue);
  external double get totalRoundTripTime;
  external set totalRoundTripTime(double newValue);
  external double get fractionLost;
  external set fractionLost(double newValue);
  external int get reportsReceived;
  external set reportsReceived(int newValue);
  external int get roundTripTimeMeasurements;
  external set roundTripTimeMeasurements(int newValue);
}

@anonymous
@JS()
@staticInterop
class RTCSentRtpStreamStats implements RTCRtpStreamStats {
  external factory RTCSentRtpStreamStats({int packetsSent, int bytesSent});
}

extension PropsRTCSentRtpStreamStats on RTCSentRtpStreamStats {
  external int get packetsSent;
  external set packetsSent(int newValue);
  external int get bytesSent;
  external set bytesSent(int newValue);
}

///  The dictionary is the [RTCStats]-based object which provides
/// metrics and statistics related to an outbound RTP stream being
/// sent by an [RTCRtpSender].
@anonymous
@JS()
@staticInterop
class RTCOutboundRtpStreamStats implements RTCSentRtpStreamStats {
  external factory RTCOutboundRtpStreamStats(
      {int rtxSsrc,
      String mediaSourceId,
      String senderId,
      String remoteId,
      String rid,
      double lastPacketSentTimestamp,
      int headerBytesSent,
      int packetsDiscardedOnSend,
      int bytesDiscardedOnSend,
      int fecPacketsSent,
      int retransmittedPacketsSent,
      int retransmittedBytesSent,
      double targetBitrate,
      int totalEncodedBytesTarget,
      int frameWidth,
      int frameHeight,
      int frameBitDepth,
      double framesPerSecond,
      int framesSent,
      int hugeFramesSent,
      int framesEncoded,
      int keyFramesEncoded,
      int framesDiscardedOnSend,
      int qpSum,
      int totalSamplesSent,
      int samplesEncodedWithSilk,
      int samplesEncodedWithCelt,
      bool voiceActivityFlag,
      double totalEncodeTime,
      double totalPacketSendDelay,
      double averageRtcpInterval,
      RTCQualityLimitationReason qualityLimitationReason,
      dynamic qualityLimitationDurations,
      int qualityLimitationResolutionChanges,
      dynamic perDscpPacketsSent,
      int nackCount,
      int firCount,
      int pliCount,
      int sliCount,
      String encoderImplementation});
}

extension PropsRTCOutboundRtpStreamStats on RTCOutboundRtpStreamStats {
  external int get rtxSsrc;
  external set rtxSsrc(int newValue);
  external String get mediaSourceId;
  external set mediaSourceId(String newValue);

  ///  The [id] of the [RTCAudioSenderStats] or [RTCVideoSenderStats]
  /// object containing statistics about this stream's [RTCRtpSender].
  ///
  external String get senderId;
  external set senderId(String newValue);

  ///  A string which identifies the [RTCRemoteInboundRtpStreamStats]
  /// object that provides statistics for the remote peer for this same
  /// SSRC. This ID is stable across multiple calls to [getStats()].
  ///
  external String get remoteId;
  external set remoteId(String newValue);
  external String get rid;
  external set rid(String newValue);

  ///  A [DOMHighResTimeStamp] indicating the time at which the last
  /// packet was sent for this SSRC. The [timestamp] property, on the
  /// other hand, indicates the time at which the
  /// [RTCOutboundRtpStreamStats] object was generated.
  ///
  external double get lastPacketSentTimestamp;
  external set lastPacketSentTimestamp(double newValue);
  external int get headerBytesSent;
  external set headerBytesSent(int newValue);
  external int get packetsDiscardedOnSend;
  external set packetsDiscardedOnSend(int newValue);
  external int get bytesDiscardedOnSend;
  external set bytesDiscardedOnSend(int newValue);
  external int get fecPacketsSent;
  external set fecPacketsSent(int newValue);

  ///  The total number of packets that have needed to be retransmitted
  /// for this source as of the time the statistics were sampled. These
  /// retransmitted packets are included in the value returned by
  /// [packetsSent].
  ///
  external int get retransmittedPacketsSent;
  external set retransmittedPacketsSent(int newValue);

  ///  The total number of bytes that have been retransmitted for this
  /// source as of the time the statistics were sampled. These
  /// retransmitted bytes comprise the packets included in the value
  /// returned by [retransmittedPacketsSent].
  ///
  external int get retransmittedBytesSent;
  external set retransmittedBytesSent(int newValue);

  ///  A value indicating the bit rate the [RTCRtpSender]'s codec is
  /// configured to attempt to achieve in its output media.
  ///
  external double get targetBitrate;
  external set targetBitrate(double newValue);

  ///  A cumulative sum of the target frame sizes (the targeted maximum
  /// size of the frame in bytes when the codec is asked to compress
  /// it) for all of the frames encoded so far. This will likely differ
  /// from the total of the actual frame sizes.
  ///
  external int get totalEncodedBytesTarget;
  external set totalEncodedBytesTarget(int newValue);
  external int get frameWidth;
  external set frameWidth(int newValue);
  external int get frameHeight;
  external set frameHeight(int newValue);
  external int get frameBitDepth;
  external set frameBitDepth(int newValue);
  external double get framesPerSecond;
  external set framesPerSecond(double newValue);
  external int get framesSent;
  external set framesSent(int newValue);
  external int get hugeFramesSent;
  external set hugeFramesSent(int newValue);

  ///  The number of frames that have been successfully encoded so far
  /// for sending on this RTP stream. Only valid for video streams.
  ///
  external int get framesEncoded;
  external set framesEncoded(int newValue);
  external int get keyFramesEncoded;
  external set keyFramesEncoded(int newValue);
  external int get framesDiscardedOnSend;
  external set framesDiscardedOnSend(int newValue);

  ///  A 64-bit value containing the sum of the QP values for every
  /// frame encoded by this [RTCRtpSender]. Valid only for video
  /// streams.
  ///
  external int get qpSum;
  external set qpSum(int newValue);
  external int get totalSamplesSent;
  external set totalSamplesSent(int newValue);
  external int get samplesEncodedWithSilk;
  external set samplesEncodedWithSilk(int newValue);
  external int get samplesEncodedWithCelt;
  external set samplesEncodedWithCelt(int newValue);
  external bool get voiceActivityFlag;
  external set voiceActivityFlag(bool newValue);

  ///  A floating-point value indicating the total number of seconds
  /// that have been spent encoding the frames encoded so far by this
  /// [RTCRtpSender].
  ///
  external double get totalEncodeTime;
  external set totalEncodeTime(double newValue);
  external double get totalPacketSendDelay;
  external set totalPacketSendDelay(double newValue);

  ///  A floating-point value indicating the average RTCP interval
  /// between two consecutive compound RTCP packets.
  ///
  external double get averageRtcpInterval;
  external set averageRtcpInterval(double newValue);

  ///  A value from the [RTCQualityLimitationReason] enumerated type
  /// explaining why the resolution and/or frame rate is being limited
  /// for this RTP stream. Valid only for video streams.
  ///
  external RTCQualityLimitationReason get qualityLimitationReason;
  external set qualityLimitationReason(RTCQualityLimitationReason newValue);

  ///  A record mapping each of the quality limitation reasons in the
  /// [RTCRemoteInboundRtpStreamStats] enumeration to a floating-point
  /// value indicating the number of seconds the stream has spent with
  /// its quality limited for that reason.
  ///
  external dynamic get qualityLimitationDurations;
  external set qualityLimitationDurations(dynamic newValue);
  external int get qualityLimitationResolutionChanges;
  external set qualityLimitationResolutionChanges(int newValue);

  ///  A record of key-value pairs with strings as the keys mapped to
  /// 32-bit integer values, each indicating the total number of
  /// packets this [RTCRtpSender] has transmitted for this source for
  /// each Differentiated Services Code Point (DSCP).
  ///
  external dynamic get perDscpPacketsSent;
  external set perDscpPacketsSent(dynamic newValue);

  ///  An integer value indicating the total number of Negative
  /// ACKnolwedgement (NACK) packets this [RTCRtpSender] has received
  /// from the remote [RTCRtpReceiver].
  ///
  external int get nackCount;
  external set nackCount(int newValue);

  ///  An integer value which indicates the total number of Full Intra
  /// Request (FIR) packets which this [RTCRtpSender] has sent to the
  /// remote [RTCRtpReceiver]. This is an indicator of how often the
  /// stream has lagged, requiring frames to be skipped in order to
  /// catch up. Valid only for video streams.
  ///
  external int get firCount;
  external set firCount(int newValue);

  ///  An integer specifying the number of times the remote receiver
  /// has notified this [RTCRtpSender] that some amount of encoded
  /// video data for one or more frames has been lost, using Picture
  /// Loss Indication (PLI) packets. Only available for video streams.
  ///
  external int get pliCount;
  external set pliCount(int newValue);

  ///  An integer indicating the number of times this sender received a
  /// Slice Loss Indication (SLI) frame from the remote peer,
  /// indicating that one or more consecutive video macroblocks have
  /// been lost or corrupted. Available only for video streams.
  ///
  external int get sliCount;
  external set sliCount(int newValue);
  external String get encoderImplementation;
  external set encoderImplementation(String newValue);
}

enum RTCQualityLimitationReason { none, cpu, bandwidth, other }

///  The WebRTC statistics model's dictionary extends the underlying
/// [RTCSentRtpStreamStats] dictionary with properties measuring
/// metrics specific to outgoing RTP streams.
@anonymous
@JS()
@staticInterop
class RTCRemoteOutboundRtpStreamStats implements RTCSentRtpStreamStats {
  external factory RTCRemoteOutboundRtpStreamStats(
      {String localId,
      double remoteTimestamp,
      int reportsSent,
      double roundTripTime,
      double totalRoundTripTime,
      int roundTripTimeMeasurements});
}

extension PropsRTCRemoteOutboundRtpStreamStats
    on RTCRemoteOutboundRtpStreamStats {
  ///  A [DOMString] which is used to find the local
  /// [RTCInboundRtpStreamStats] object which shares the same
  /// Synchronization Source (SSRC).
  ///
  external String get localId;
  external set localId(String newValue);

  ///  A [DOMHighResTimeStamp] specifying the timestamp (on the remote
  /// device) at which the statistics in the
  /// [RTCRemoteOutboundRtpStreamStats] object were sent by the remote
  /// endpoint. This is different from the [timestamp] found in the
  /// base [RTCStats] dictionary; it represents the time at which the
  /// object's statistics were received or generated by the local
  /// endpoint.
  ///
  external double get remoteTimestamp;
  external set remoteTimestamp(double newValue);
  external int get reportsSent;
  external set reportsSent(int newValue);
  external double get roundTripTime;
  external set roundTripTime(double newValue);
  external double get totalRoundTripTime;
  external set totalRoundTripTime(double newValue);
  external int get roundTripTimeMeasurements;
  external set roundTripTimeMeasurements(int newValue);
}

@anonymous
@JS()
@staticInterop
class RTCMediaSourceStats implements RTCStats {
  external factory RTCMediaSourceStats(
      {String trackIdentifier, String kind, bool relayedSource});
}

extension PropsRTCMediaSourceStats on RTCMediaSourceStats {
  external String get trackIdentifier;
  external set trackIdentifier(String newValue);
  external String get kind;
  external set kind(String newValue);
  external bool get relayedSource;
  external set relayedSource(bool newValue);
}

@anonymous
@JS()
@staticInterop
class RTCAudioSourceStats implements RTCMediaSourceStats {
  external factory RTCAudioSourceStats(
      {double audioLevel,
      double totalAudioEnergy,
      double totalSamplesDuration,
      double echoReturnLoss,
      double echoReturnLossEnhancement});
}

extension PropsRTCAudioSourceStats on RTCAudioSourceStats {
  external double get audioLevel;
  external set audioLevel(double newValue);
  external double get totalAudioEnergy;
  external set totalAudioEnergy(double newValue);
  external double get totalSamplesDuration;
  external set totalSamplesDuration(double newValue);
  external double get echoReturnLoss;
  external set echoReturnLoss(double newValue);
  external double get echoReturnLossEnhancement;
  external set echoReturnLossEnhancement(double newValue);
}

@anonymous
@JS()
@staticInterop
class RTCVideoSourceStats implements RTCMediaSourceStats {
  external factory RTCVideoSourceStats(
      {int width,
      int height,
      int bitDepth,
      int frames,
      double framesPerSecond});
}

extension PropsRTCVideoSourceStats on RTCVideoSourceStats {
  external int get width;
  external set width(int newValue);
  external int get height;
  external set height(int newValue);
  external int get bitDepth;
  external set bitDepth(int newValue);
  external int get frames;
  external set frames(int newValue);
  external double get framesPerSecond;
  external set framesPerSecond(double newValue);
}

@anonymous
@JS()
@staticInterop
class RTCRtpContributingSourceStats implements RTCStats {
  external factory RTCRtpContributingSourceStats(
      {int contributorSsrc,
      String inboundRtpStreamId,
      int packetsContributedTo,
      double audioLevel});
}

extension PropsRTCRtpContributingSourceStats on RTCRtpContributingSourceStats {
  external int get contributorSsrc;
  external set contributorSsrc(int newValue);
  external String get inboundRtpStreamId;
  external set inboundRtpStreamId(String newValue);
  external int get packetsContributedTo;
  external set packetsContributedTo(int newValue);
  external double get audioLevel;
  external set audioLevel(double newValue);
}

@anonymous
@JS()
@staticInterop
class RTCPeerConnectionStats implements RTCStats {
  external factory RTCPeerConnectionStats(
      {int dataChannelsOpened,
      int dataChannelsClosed,
      int dataChannelsRequested,
      int dataChannelsAccepted});
}

extension PropsRTCPeerConnectionStats on RTCPeerConnectionStats {
  external int get dataChannelsOpened;
  external set dataChannelsOpened(int newValue);
  external int get dataChannelsClosed;
  external set dataChannelsClosed(int newValue);
  external int get dataChannelsRequested;
  external set dataChannelsRequested(int newValue);
  external int get dataChannelsAccepted;
  external set dataChannelsAccepted(int newValue);
}

@anonymous
@JS()
@staticInterop
class RTCRtpTransceiverStats implements RTCStats {
  external factory RTCRtpTransceiverStats(
      {String senderId, String receiverId, String mid});
}

extension PropsRTCRtpTransceiverStats on RTCRtpTransceiverStats {
  external String get senderId;
  external set senderId(String newValue);
  external String get receiverId;
  external set receiverId(String newValue);
  external String get mid;
  external set mid(String newValue);
}

@anonymous
@JS()
@staticInterop
class RTCMediaHandlerStats implements RTCStats {
  external factory RTCMediaHandlerStats(
      {String trackIdentifier, bool ended, String kind});
}

extension PropsRTCMediaHandlerStats on RTCMediaHandlerStats {
  external String get trackIdentifier;
  external set trackIdentifier(String newValue);
  external bool get ended;
  external set ended(bool newValue);
  external String get kind;
  external set kind(String newValue);
}

@anonymous
@JS()
@staticInterop
class RTCVideoHandlerStats implements RTCMediaHandlerStats {
  external factory RTCVideoHandlerStats();
}

@anonymous
@JS()
@staticInterop
class RTCVideoSenderStats implements RTCVideoHandlerStats {
  external factory RTCVideoSenderStats({String mediaSourceId});
}

extension PropsRTCVideoSenderStats on RTCVideoSenderStats {
  external String get mediaSourceId;
  external set mediaSourceId(String newValue);
}

@anonymous
@JS()
@staticInterop
class RTCVideoReceiverStats implements RTCVideoHandlerStats {
  external factory RTCVideoReceiverStats();
}

@anonymous
@JS()
@staticInterop
class RTCAudioHandlerStats implements RTCMediaHandlerStats {
  external factory RTCAudioHandlerStats();
}

@anonymous
@JS()
@staticInterop
class RTCAudioSenderStats implements RTCAudioHandlerStats {
  external factory RTCAudioSenderStats({String mediaSourceId});
}

extension PropsRTCAudioSenderStats on RTCAudioSenderStats {
  external String get mediaSourceId;
  external set mediaSourceId(String newValue);
}

@anonymous
@JS()
@staticInterop
class RTCAudioReceiverStats implements RTCAudioHandlerStats {
  external factory RTCAudioReceiverStats();
}

@anonymous
@JS()
@staticInterop
class RTCDataChannelStats implements RTCStats {
  external factory RTCDataChannelStats(
      {String label,
      String protocol,
      int dataChannelIdentifier,
      RTCDataChannelState state,
      int messagesSent,
      int bytesSent,
      int messagesReceived,
      int bytesReceived});
}

extension PropsRTCDataChannelStats on RTCDataChannelStats {
  external String get label;
  external set label(String newValue);
  external String get protocol;
  external set protocol(String newValue);
  external int get dataChannelIdentifier;
  external set dataChannelIdentifier(int newValue);
  external RTCDataChannelState get state;
  external set state(RTCDataChannelState newValue);
  external int get messagesSent;
  external set messagesSent(int newValue);
  external int get bytesSent;
  external set bytesSent(int newValue);
  external int get messagesReceived;
  external set messagesReceived(int newValue);
  external int get bytesReceived;
  external set bytesReceived(int newValue);
}

@anonymous
@JS()
@staticInterop
class RTCTransportStats implements RTCStats {
  external factory RTCTransportStats(
      {int packetsSent,
      int packetsReceived,
      int bytesSent,
      int bytesReceived,
      String rtcpTransportStatsId,
      RTCIceRole iceRole,
      String iceLocalUsernameFragment,
      RTCDtlsTransportState dtlsState,
      RTCIceTransportState iceState,
      String selectedCandidatePairId,
      String localCertificateId,
      String remoteCertificateId,
      String tlsVersion,
      String dtlsCipher,
      String srtpCipher,
      String tlsGroup,
      int selectedCandidatePairChanges});
}

extension PropsRTCTransportStats on RTCTransportStats {
  external int get packetsSent;
  external set packetsSent(int newValue);
  external int get packetsReceived;
  external set packetsReceived(int newValue);
  external int get bytesSent;
  external set bytesSent(int newValue);
  external int get bytesReceived;
  external set bytesReceived(int newValue);
  external String get rtcpTransportStatsId;
  external set rtcpTransportStatsId(String newValue);
  external RTCIceRole get iceRole;
  external set iceRole(RTCIceRole newValue);
  external String get iceLocalUsernameFragment;
  external set iceLocalUsernameFragment(String newValue);
  external RTCDtlsTransportState get dtlsState;
  external set dtlsState(RTCDtlsTransportState newValue);
  external RTCIceTransportState get iceState;
  external set iceState(RTCIceTransportState newValue);
  external String get selectedCandidatePairId;
  external set selectedCandidatePairId(String newValue);
  external String get localCertificateId;
  external set localCertificateId(String newValue);
  external String get remoteCertificateId;
  external set remoteCertificateId(String newValue);
  external String get tlsVersion;
  external set tlsVersion(String newValue);
  external String get dtlsCipher;
  external set dtlsCipher(String newValue);
  external String get srtpCipher;
  external set srtpCipher(String newValue);
  external String get tlsGroup;
  external set tlsGroup(String newValue);
  external int get selectedCandidatePairChanges;
  external set selectedCandidatePairChanges(int newValue);
}

@anonymous
@JS()
@staticInterop
class RTCSctpTransportStats implements RTCStats {
  external factory RTCSctpTransportStats(
      {String transportId,
      double smoothedRoundTripTime,
      int congestionWindow,
      int receiverWindow,
      int mtu,
      int unackData});
}

extension PropsRTCSctpTransportStats on RTCSctpTransportStats {
  external String get transportId;
  external set transportId(String newValue);
  external double get smoothedRoundTripTime;
  external set smoothedRoundTripTime(double newValue);
  external int get congestionWindow;
  external set congestionWindow(int newValue);
  external int get receiverWindow;
  external set receiverWindow(int newValue);
  external int get mtu;
  external set mtu(int newValue);
  external int get unackData;
  external set unackData(int newValue);
}

///  The WebRTC API's dictionary provides statistics related to an
/// [RTCIceCandidate].
@anonymous
@JS()
@staticInterop
class RTCIceCandidateStats implements RTCStats {
  external factory RTCIceCandidateStats(
      {String transportId,
      String? address,
      int port,
      String protocol,
      RTCIceCandidateType candidateType,
      int priority,
      String url,
      String relayProtocol});
}

extension PropsRTCIceCandidateStats on RTCIceCandidateStats {
  ///  A string uniquely identifying the transport object that was
  /// inspected in order to obtain the [RTCTransportStats] associated
  /// with the candidate corresponding to these statistics.
  ///
  external String get transportId;
  external set transportId(String newValue);

  ///  A string containing the address of the candidate. This value may
  /// be an IPv4 address, an IPv6 address, or a fully-qualified domain
  /// name. This property was previously named [ip] and only accepted
  /// IP addresses.
  ///
  external String? get address;
  external set address(String? newValue);

  /// The network port number used by the candidate.
  ///
  external int get port;
  external set port(int newValue);

  ///  A string specifying the protocol ([tcp] or [udp]) used to
  /// transmit data on the [port].
  ///
  external String get protocol;
  external set protocol(String newValue);

  ///  A string matching one of the values in [RTCIceCandidate.type],
  /// indicating what kind of candidate the object provides statistics
  /// for.
  ///
  external RTCIceCandidateType get candidateType;
  external set candidateType(RTCIceCandidateType newValue);

  ///  The candidate's priority, corresponding to
  /// [RTCIceCandidate.priority].
  ///
  external int get priority;
  external set priority(int newValue);

  ///  For local candidates, the property is the URL of the ICE server
  /// from which the candidate was received. This URL matches the one
  /// included in the [RTCPeerConnectionIceEvent] object representing
  /// the [icecandidate] event that delivered the candidate to the
  /// local peer.
  ///
  external String get url;
  external set url(String newValue);

  ///  A string identifying the protocol used by the endpoint for
  /// communicating with the TURN server; valid values are [tcp],
  /// [udp], and [tls]. Only present for local candidates.
  ///
  external String get relayProtocol;
  external set relayProtocol(String newValue);
}

///  The WebRTC dictionary reports statistics which provide insight
/// into the quality and performance of an [RTCPeerConnection] while
/// connected and configured as described by the specified pair of
/// ICE candidates.
///  If a [RTCStats]-based object's [type] is [candidate-pair], it's
/// an object.
@anonymous
@JS()
@staticInterop
class RTCIceCandidatePairStats implements RTCStats {
  external factory RTCIceCandidatePairStats(
      {String transportId,
      String localCandidateId,
      String remoteCandidateId,
      RTCStatsIceCandidatePairState state,
      bool nominated,
      int packetsSent,
      int packetsReceived,
      int bytesSent,
      int bytesReceived,
      double lastPacketSentTimestamp,
      double lastPacketReceivedTimestamp,
      double firstRequestTimestamp,
      double lastRequestTimestamp,
      double lastResponseTimestamp,
      double totalRoundTripTime,
      double currentRoundTripTime,
      double availableOutgoingBitrate,
      double availableIncomingBitrate,
      int circuitBreakerTriggerCount,
      int requestsReceived,
      int requestsSent,
      int responsesReceived,
      int responsesSent,
      int retransmissionsReceived,
      int retransmissionsSent,
      int consentRequestsSent,
      double consentExpiredTimestamp,
      int packetsDiscardedOnSend,
      int bytesDiscardedOnSend,
      int requestBytesSent,
      int consentRequestBytesSent,
      int responseBytesSent});
}

extension PropsRTCIceCandidatePairStats on RTCIceCandidatePairStats {
  ///  A [DOMString] that uniquely identifies the [RTCIceTransport]
  /// that was inspected to obtain the transport-related statistics (as
  /// found in [RTCTransportStats]) used in generating this object.
  ///
  external String get transportId;
  external set transportId(String newValue);

  ///  The unique ID string corresponding to the [RTCIceCandidate] from
  /// the data included in the [RTCIceCandidateStats] object providing
  /// statistics for the candidate pair's local candidate.
  ///
  external String get localCandidateId;
  external set localCandidateId(String newValue);

  ///  The unique ID string corresponding to the remote candidate from
  /// which data was taken to construct the [RTCIceCandidateStats]
  /// object describing the remote end of the connection.
  ///
  external String get remoteCandidateId;
  external set remoteCandidateId(String newValue);

  ///  A [RTCStatsIceCandidatePairState] object which indicates the
  /// state of the connection between the two candidates.
  ///
  external RTCStatsIceCandidatePairState get state;
  external set state(RTCStatsIceCandidatePairState newValue);

  ///  A Boolean value which, if [true], indicates that the candidate
  /// pair described by this object is one which has been proposed for
  /// use, and will be (or was) used if its priority is the highest
  /// among the nominated candidate pairs. See RFC 5245, section
  /// 7.1.3.2.4 for details.
  ///
  external bool get nominated;
  external set nominated(bool newValue);

  /// The total number of packets sent on this candidate pair.
  ///
  external int get packetsSent;
  external set packetsSent(int newValue);

  /// The total number of packets received on this candidate pair.
  ///
  external int get packetsReceived;
  external set packetsReceived(int newValue);

  ///  The total number of payload bytes sent (that is, the total
  /// number of bytes sent minus any headers, padding, or other
  /// administrative overhead) so far on this candidate pair.
  ///
  external int get bytesSent;
  external set bytesSent(int newValue);

  ///  The total number of payload bytes received (that is, the total
  /// number of bytes received minus any headers, padding, or other
  /// administrative overhead) on this candidate pair so far.
  ///
  external int get bytesReceived;
  external set bytesReceived(int newValue);

  ///  A [DOMHighResTimeStamp] value indicating the time at which the
  /// last packet was sent from the local peer to the remote peer for
  /// this candidate pair. Timestamps are not recorded for STUN
  /// packets.
  ///
  external double get lastPacketSentTimestamp;
  external set lastPacketSentTimestamp(double newValue);

  ///  A [DOMHighResTimeStamp] value indicating the time at which the
  /// last packet was received by the local peer from the remote peer
  /// for this candidate pair. Timestamps are not recorded for STUN
  /// packets.
  ///
  external double get lastPacketReceivedTimestamp;
  external set lastPacketReceivedTimestamp(double newValue);

  ///  A [DOMHighResTimeStamp] value which specifies the time at which
  /// the first STUN request was sent from the local peer to the remote
  /// peer for this candidate pair.
  ///
  external double get firstRequestTimestamp;
  external set firstRequestTimestamp(double newValue);

  ///  A [DOMHighResTimeStamp] value which specifies the time at which
  /// the last (most recent) STUN request was sent from the local peer
  /// to the remote peer for this candidate pair.
  ///
  external double get lastRequestTimestamp;
  external set lastRequestTimestamp(double newValue);

  ///  A [DOMHighResTimeStamp] value that specifies the time at which
  /// the last (most recent) STUN response was received by the local
  /// candidate from the remote candidate in this pair.
  ///
  external double get lastResponseTimestamp;
  external set lastResponseTimestamp(double newValue);

  ///  A floating-point value indicating the total time, in seconds,
  /// that has elapsed between sending STUN requests and receiving
  /// responses to them, for all such requests made to date on this
  /// candidate pair. This includes both connectivity check and consent
  /// check requests. You can compute the average round trip time (RTT)
  /// by dividing this value by [responsesReceived].
  ///
  external double get totalRoundTripTime;
  external set totalRoundTripTime(double newValue);

  ///  A floating-point value indicating the total time, in seconds,
  /// that elapsed between the most recently-sent STUN request and the
  /// response being received. This may be based upon requests that
  /// were involved in confirming permission to open the connection.
  ///
  external double get currentRoundTripTime;
  external set currentRoundTripTime(double newValue);

  ///  Provides an informative value representing the available
  /// outbound capacity of the network by reporting the total number of
  /// bits per second available for all of the candidate pair's
  /// outgoing RTP streams. This does not take into account the size of
  /// the IP overhead, nor any other transport layers such as TCP or
  /// UDP.
  ///
  external double get availableOutgoingBitrate;
  external set availableOutgoingBitrate(double newValue);

  ///  Provides an informative value representing the available inbound
  /// capacity of the network by reporting the total number of bits per
  /// second available for all of the candidate pair's incoming RTP
  /// streams. This does not take into account the size of the IP
  /// overhead, nor any other transport layers such as TCP or UDP.
  ///
  external double get availableIncomingBitrate;
  external set availableIncomingBitrate(double newValue);

  ///  An integer value indicating the number of times the
  /// circuit-breaker has been triggered for this particular 5-tuple
  /// (the set of five values comprising a TCP connection: source IP
  /// address, source port number, destination IP address, destination
  /// port number, and protocol). The circuit breaker is triggered
  /// whenever a connection times out or otherwise needs to be
  /// automatically aborted.
  ///
  external int get circuitBreakerTriggerCount;
  external set circuitBreakerTriggerCount(int newValue);

  ///  The total number of connectivity check requests that have been
  /// received, including retransmissions. This value includes both
  /// connectivity checks and STUN consent checks.
  ///
  external int get requestsReceived;
  external set requestsReceived(int newValue);

  ///  The total number of connectivity check requests that have been
  /// sent, not including retransmissions.
  ///
  external int get requestsSent;
  external set requestsSent(int newValue);

  ///  The total number of connectivity check responses that have been
  /// received.
  ///
  external int get responsesReceived;
  external set responsesReceived(int newValue);

  ///  The total number of connectivity check responses that have been
  /// sent. This includes both connectivity check requests and STUN
  /// consent requests.
  ///
  external int get responsesSent;
  external set responsesSent(int newValue);

  ///  The total number of times connectivity check request
  /// retransmissions were received. A retransmission is a connectivity
  /// check request whose [TRANSACTION_TRANSMIT_COUNTER] attribute's
  /// [req] field is greater than 1.
  ///
  external int get retransmissionsReceived;
  external set retransmissionsReceived(int newValue);

  ///  The total number of times connectivity check request
  /// retransmissions were sent.
  ///
  external int get retransmissionsSent;
  external set retransmissionsSent(int newValue);

  ///  The total number of consent requests that have been sent on this
  /// candidate pair.
  ///
  external int get consentRequestsSent;
  external set consentRequestsSent(int newValue);

  ///  A [DOMHighResTimeStamp] value indicating the time at which the
  /// most recent STUN binding response expired. This value is
  /// [undefined] if no valid STUN binding responses have been sent on
  /// the candidate pair; this can only happen if [responsesReceived]
  /// is 0.
  ///
  external double get consentExpiredTimestamp;
  external set consentExpiredTimestamp(double newValue);
  external int get packetsDiscardedOnSend;
  external set packetsDiscardedOnSend(int newValue);
  external int get bytesDiscardedOnSend;
  external set bytesDiscardedOnSend(int newValue);
  external int get requestBytesSent;
  external set requestBytesSent(int newValue);
  external int get consentRequestBytesSent;
  external set consentRequestBytesSent(int newValue);
  external int get responseBytesSent;
  external set responseBytesSent(int newValue);
}

enum RTCStatsIceCandidatePairState {
  frozen,
  waiting,
  inProgress,
  failed,
  succeeded
}

@anonymous
@JS()
@staticInterop
class RTCCertificateStats implements RTCStats {
  external factory RTCCertificateStats(
      {String fingerprint,
      String fingerprintAlgorithm,
      String base64Certificate,
      String issuerCertificateId});
}

extension PropsRTCCertificateStats on RTCCertificateStats {
  external String get fingerprint;
  external set fingerprint(String newValue);
  external String get fingerprintAlgorithm;
  external set fingerprintAlgorithm(String newValue);
  external String get base64Certificate;
  external set base64Certificate(String newValue);
  external String get issuerCertificateId;
  external set issuerCertificateId(String newValue);
}

@anonymous
@JS()
@staticInterop
class RTCIceServerStats implements RTCStats {
  external factory RTCIceServerStats(
      {String url,
      int port,
      String relayProtocol,
      int totalRequestsSent,
      int totalResponsesReceived,
      double totalRoundTripTime});
}

extension PropsRTCIceServerStats on RTCIceServerStats {
  external String get url;
  external set url(String newValue);
  external int get port;
  external set port(int newValue);
  external String get relayProtocol;
  external set relayProtocol(String newValue);
  external int get totalRequestsSent;
  external set totalRequestsSent(int newValue);
  external int get totalResponsesReceived;
  external set totalResponsesReceived(int newValue);
  external double get totalRoundTripTime;
  external set totalRoundTripTime(double newValue);
}
