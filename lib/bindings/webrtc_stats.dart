/// Identifiers for WebRTC's Statistics API
///
/// https://w3c.github.io/webrtc-stats/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webrtc_stats;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

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
  int get ssrc => js_util.getProperty(this, 'ssrc');
  set ssrc(int newValue) {
    js_util.setProperty(this, 'ssrc', newValue);
  }

  String get kind => js_util.getProperty(this, 'kind');
  set kind(String newValue) {
    js_util.setProperty(this, 'kind', newValue);
  }

  String get transportId => js_util.getProperty(this, 'transportId');
  set transportId(String newValue) {
    js_util.setProperty(this, 'transportId', newValue);
  }

  String get codecId => js_util.getProperty(this, 'codecId');
  set codecId(String newValue) {
    js_util.setProperty(this, 'codecId', newValue);
  }
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
  int get payloadType => js_util.getProperty(this, 'payloadType');
  set payloadType(int newValue) {
    js_util.setProperty(this, 'payloadType', newValue);
  }

  RTCCodecType get codecType => js_util.getProperty(this, 'codecType');
  set codecType(RTCCodecType newValue) {
    js_util.setProperty(this, 'codecType', newValue);
  }

  String get transportId => js_util.getProperty(this, 'transportId');
  set transportId(String newValue) {
    js_util.setProperty(this, 'transportId', newValue);
  }

  String get mimeType => js_util.getProperty(this, 'mimeType');
  set mimeType(String newValue) {
    js_util.setProperty(this, 'mimeType', newValue);
  }

  int get clockRate => js_util.getProperty(this, 'clockRate');
  set clockRate(int newValue) {
    js_util.setProperty(this, 'clockRate', newValue);
  }

  int get channels => js_util.getProperty(this, 'channels');
  set channels(int newValue) {
    js_util.setProperty(this, 'channels', newValue);
  }

  String get sdpFmtpLine => js_util.getProperty(this, 'sdpFmtpLine');
  set sdpFmtpLine(String newValue) {
    js_util.setProperty(this, 'sdpFmtpLine', newValue);
  }
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
  int get packetsReceived => js_util.getProperty(this, 'packetsReceived');
  set packetsReceived(int newValue) {
    js_util.setProperty(this, 'packetsReceived', newValue);
  }

  int get packetsLost => js_util.getProperty(this, 'packetsLost');
  set packetsLost(int newValue) {
    js_util.setProperty(this, 'packetsLost', newValue);
  }

  double get jitter => js_util.getProperty(this, 'jitter');
  set jitter(double newValue) {
    js_util.setProperty(this, 'jitter', newValue);
  }

  int get packetsDiscarded => js_util.getProperty(this, 'packetsDiscarded');
  set packetsDiscarded(int newValue) {
    js_util.setProperty(this, 'packetsDiscarded', newValue);
  }

  int get packetsRepaired => js_util.getProperty(this, 'packetsRepaired');
  set packetsRepaired(int newValue) {
    js_util.setProperty(this, 'packetsRepaired', newValue);
  }

  int get burstPacketsLost => js_util.getProperty(this, 'burstPacketsLost');
  set burstPacketsLost(int newValue) {
    js_util.setProperty(this, 'burstPacketsLost', newValue);
  }

  int get burstPacketsDiscarded =>
      js_util.getProperty(this, 'burstPacketsDiscarded');
  set burstPacketsDiscarded(int newValue) {
    js_util.setProperty(this, 'burstPacketsDiscarded', newValue);
  }

  int get burstLossCount => js_util.getProperty(this, 'burstLossCount');
  set burstLossCount(int newValue) {
    js_util.setProperty(this, 'burstLossCount', newValue);
  }

  int get burstDiscardCount => js_util.getProperty(this, 'burstDiscardCount');
  set burstDiscardCount(int newValue) {
    js_util.setProperty(this, 'burstDiscardCount', newValue);
  }

  double get burstLossRate => js_util.getProperty(this, 'burstLossRate');
  set burstLossRate(double newValue) {
    js_util.setProperty(this, 'burstLossRate', newValue);
  }

  double get burstDiscardRate => js_util.getProperty(this, 'burstDiscardRate');
  set burstDiscardRate(double newValue) {
    js_util.setProperty(this, 'burstDiscardRate', newValue);
  }

  double get gapLossRate => js_util.getProperty(this, 'gapLossRate');
  set gapLossRate(double newValue) {
    js_util.setProperty(this, 'gapLossRate', newValue);
  }

  double get gapDiscardRate => js_util.getProperty(this, 'gapDiscardRate');
  set gapDiscardRate(double newValue) {
    js_util.setProperty(this, 'gapDiscardRate', newValue);
  }

  int get framesDropped => js_util.getProperty(this, 'framesDropped');
  set framesDropped(int newValue) {
    js_util.setProperty(this, 'framesDropped', newValue);
  }

  int get partialFramesLost => js_util.getProperty(this, 'partialFramesLost');
  set partialFramesLost(int newValue) {
    js_util.setProperty(this, 'partialFramesLost', newValue);
  }

  int get fullFramesLost => js_util.getProperty(this, 'fullFramesLost');
  set fullFramesLost(int newValue) {
    js_util.setProperty(this, 'fullFramesLost', newValue);
  }
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
  String get receiverId => js_util.getProperty(this, 'receiverId');
  set receiverId(String newValue) {
    js_util.setProperty(this, 'receiverId', newValue);
  }

  ///  A string which identifies the [RTCRemoteOutboundRtpStreamStats]
  /// object that provides statistics for the remote peer for this same
  /// SSRC. This ID is stable across multiple calls to [getStats()].
  ///
  String get remoteId => js_util.getProperty(this, 'remoteId');
  set remoteId(String newValue) {
    js_util.setProperty(this, 'remoteId', newValue);
  }

  ///  A long integer value indicating the total number of frames of
  /// video which have been correctly decoded so far for this media
  /// source. This is the number of frames that would have been
  /// rendered if none were dropped. Only valid for video streams.
  ///
  int get framesDecoded => js_util.getProperty(this, 'framesDecoded');
  set framesDecoded(int newValue) {
    js_util.setProperty(this, 'framesDecoded', newValue);
  }

  int get keyFramesDecoded => js_util.getProperty(this, 'keyFramesDecoded');
  set keyFramesDecoded(int newValue) {
    js_util.setProperty(this, 'keyFramesDecoded', newValue);
  }

  int get frameWidth => js_util.getProperty(this, 'frameWidth');
  set frameWidth(int newValue) {
    js_util.setProperty(this, 'frameWidth', newValue);
  }

  int get frameHeight => js_util.getProperty(this, 'frameHeight');
  set frameHeight(int newValue) {
    js_util.setProperty(this, 'frameHeight', newValue);
  }

  int get frameBitDepth => js_util.getProperty(this, 'frameBitDepth');
  set frameBitDepth(int newValue) {
    js_util.setProperty(this, 'frameBitDepth', newValue);
  }

  double get framesPerSecond => js_util.getProperty(this, 'framesPerSecond');
  set framesPerSecond(double newValue) {
    js_util.setProperty(this, 'framesPerSecond', newValue);
  }

  ///  A 64-bit value containing the sum of the QP values for every
  /// frame decoded by this RTP receiver. You can determine the average
  /// QP per frame by dividing this value by [framesDecoded]. Valid
  /// only for video streams.
  ///
  int get qpSum => js_util.getProperty(this, 'qpSum');
  set qpSum(int newValue) {
    js_util.setProperty(this, 'qpSum', newValue);
  }

  double get totalDecodeTime => js_util.getProperty(this, 'totalDecodeTime');
  set totalDecodeTime(double newValue) {
    js_util.setProperty(this, 'totalDecodeTime', newValue);
  }

  double get totalInterFrameDelay =>
      js_util.getProperty(this, 'totalInterFrameDelay');
  set totalInterFrameDelay(double newValue) {
    js_util.setProperty(this, 'totalInterFrameDelay', newValue);
  }

  double get totalSquaredInterFrameDelay =>
      js_util.getProperty(this, 'totalSquaredInterFrameDelay');
  set totalSquaredInterFrameDelay(double newValue) {
    js_util.setProperty(this, 'totalSquaredInterFrameDelay', newValue);
  }

  bool get voiceActivityFlag => js_util.getProperty(this, 'voiceActivityFlag');
  set voiceActivityFlag(bool newValue) {
    js_util.setProperty(this, 'voiceActivityFlag', newValue);
  }

  ///  A [double] indicating the time at which the last packet was
  /// received for this source. The [timestamp] property, on the other
  /// hand, indicates the time at which the statistics object was
  /// generated.
  ///
  double get lastPacketReceivedTimestamp =>
      js_util.getProperty(this, 'lastPacketReceivedTimestamp');
  set lastPacketReceivedTimestamp(double newValue) {
    js_util.setProperty(this, 'lastPacketReceivedTimestamp', newValue);
  }

  ///  A floating-point value indicating the average RTCP interval
  /// between two consecutive compound RTCP packets.
  ///
  double get averageRtcpInterval =>
      js_util.getProperty(this, 'averageRtcpInterval');
  set averageRtcpInterval(double newValue) {
    js_util.setProperty(this, 'averageRtcpInterval', newValue);
  }

  int get headerBytesReceived =>
      js_util.getProperty(this, 'headerBytesReceived');
  set headerBytesReceived(int newValue) {
    js_util.setProperty(this, 'headerBytesReceived', newValue);
  }

  ///  An integer value indicating the total number of RTP FEC packets
  /// received for this source. This counter may also be incremented
  /// when FEC packets arrive in-band along with media content; this
  /// can happen with Opus, for example.
  ///
  int get fecPacketsReceived => js_util.getProperty(this, 'fecPacketsReceived');
  set fecPacketsReceived(int newValue) {
    js_util.setProperty(this, 'fecPacketsReceived', newValue);
  }

  ///  An integer value indicating the number of RTP Forward Error
  /// Correction (FEC) packets which have been received for this
  /// source, for which the error correction payload was discarded.
  ///
  int get fecPacketsDiscarded =>
      js_util.getProperty(this, 'fecPacketsDiscarded');
  set fecPacketsDiscarded(int newValue) {
    js_util.setProperty(this, 'fecPacketsDiscarded', newValue);
  }

  ///  A 64-bit integer which indicates the total number of bytes that
  /// have been received so far for this media source.
  ///
  int get bytesReceived => js_util.getProperty(this, 'bytesReceived');
  set bytesReceived(int newValue) {
    js_util.setProperty(this, 'bytesReceived', newValue);
  }

  ///  An integer totaling the number of RTP packets that could not be
  /// decrypted. These packets are not counted by [packetsDiscarded].
  ///
  int get packetsFailedDecryption =>
      js_util.getProperty(this, 'packetsFailedDecryption');
  set packetsFailedDecryption(int newValue) {
    js_util.setProperty(this, 'packetsFailedDecryption', newValue);
  }

  ///  An integer value indicating the total number of packets that
  /// have been discarded because they were duplicates. These packets
  /// are not counted by [packetsDiscarded].
  ///
  int get packetsDuplicated => js_util.getProperty(this, 'packetsDuplicated');
  set packetsDuplicated(int newValue) {
    js_util.setProperty(this, 'packetsDuplicated', newValue);
  }

  ///  A record of key-value pairs with strings as the keys mapped to
  /// 32-bit integer values, each indicating the total number of
  /// packets this receiver has received on this RTP stream from this
  /// source for each Differentiated Services Code Point (DSCP).
  ///
  dynamic get perDscpPacketsReceived =>
      js_util.getProperty(this, 'perDscpPacketsReceived');
  set perDscpPacketsReceived(dynamic newValue) {
    js_util.setProperty(this, 'perDscpPacketsReceived', newValue);
  }

  ///  An integer value indicating the total number of Negative
  /// ACKnolwedgement (NACK) packets this receiver has sent.
  ///
  int get nackCount => js_util.getProperty(this, 'nackCount');
  set nackCount(int newValue) {
    js_util.setProperty(this, 'nackCount', newValue);
  }

  ///  An integer value which indicates the total number of Full Intra
  /// Request (FIR) packets which this receiver has sent to the sender.
  /// This is an indicator of how often the stream has lagged,
  /// requiring frames to be skipped in order to catch up. This value
  /// is only available for video streams.
  ///
  int get firCount => js_util.getProperty(this, 'firCount');
  set firCount(int newValue) {
    js_util.setProperty(this, 'firCount', newValue);
  }

  ///  An integer specifying the number of times the receiver has
  /// notified the sender that some amount of encoded video data for
  /// one or more frames has been lost, using Picture Loss Indication
  /// (PLI) packets. This is only available for video streams.
  ///
  int get pliCount => js_util.getProperty(this, 'pliCount');
  set pliCount(int newValue) {
    js_util.setProperty(this, 'pliCount', newValue);
  }

  ///  An integer indicating the number of times the receiver sent a
  /// Slice Loss Indication (SLI) frame to the sender to tell it that
  /// one or more consecutive (in terms of scan order) video
  /// macroblocks have been lost or corrupted. Available only for video
  /// streams.
  ///
  int get sliCount => js_util.getProperty(this, 'sliCount');
  set sliCount(int newValue) {
    js_util.setProperty(this, 'sliCount', newValue);
  }

  double get totalProcessingDelay =>
      js_util.getProperty(this, 'totalProcessingDelay');
  set totalProcessingDelay(double newValue) {
    js_util.setProperty(this, 'totalProcessingDelay', newValue);
  }

  double get estimatedPlayoutTimestamp =>
      js_util.getProperty(this, 'estimatedPlayoutTimestamp');
  set estimatedPlayoutTimestamp(double newValue) {
    js_util.setProperty(this, 'estimatedPlayoutTimestamp', newValue);
  }

  double get jitterBufferDelay =>
      js_util.getProperty(this, 'jitterBufferDelay');
  set jitterBufferDelay(double newValue) {
    js_util.setProperty(this, 'jitterBufferDelay', newValue);
  }

  int get jitterBufferEmittedCount =>
      js_util.getProperty(this, 'jitterBufferEmittedCount');
  set jitterBufferEmittedCount(int newValue) {
    js_util.setProperty(this, 'jitterBufferEmittedCount', newValue);
  }

  int get totalSamplesReceived =>
      js_util.getProperty(this, 'totalSamplesReceived');
  set totalSamplesReceived(int newValue) {
    js_util.setProperty(this, 'totalSamplesReceived', newValue);
  }

  int get totalSamplesDecoded =>
      js_util.getProperty(this, 'totalSamplesDecoded');
  set totalSamplesDecoded(int newValue) {
    js_util.setProperty(this, 'totalSamplesDecoded', newValue);
  }

  int get samplesDecodedWithSilk =>
      js_util.getProperty(this, 'samplesDecodedWithSilk');
  set samplesDecodedWithSilk(int newValue) {
    js_util.setProperty(this, 'samplesDecodedWithSilk', newValue);
  }

  int get samplesDecodedWithCelt =>
      js_util.getProperty(this, 'samplesDecodedWithCelt');
  set samplesDecodedWithCelt(int newValue) {
    js_util.setProperty(this, 'samplesDecodedWithCelt', newValue);
  }

  int get concealedSamples => js_util.getProperty(this, 'concealedSamples');
  set concealedSamples(int newValue) {
    js_util.setProperty(this, 'concealedSamples', newValue);
  }

  int get silentConcealedSamples =>
      js_util.getProperty(this, 'silentConcealedSamples');
  set silentConcealedSamples(int newValue) {
    js_util.setProperty(this, 'silentConcealedSamples', newValue);
  }

  int get concealmentEvents => js_util.getProperty(this, 'concealmentEvents');
  set concealmentEvents(int newValue) {
    js_util.setProperty(this, 'concealmentEvents', newValue);
  }

  int get insertedSamplesForDeceleration =>
      js_util.getProperty(this, 'insertedSamplesForDeceleration');
  set insertedSamplesForDeceleration(int newValue) {
    js_util.setProperty(this, 'insertedSamplesForDeceleration', newValue);
  }

  int get removedSamplesForAcceleration =>
      js_util.getProperty(this, 'removedSamplesForAcceleration');
  set removedSamplesForAcceleration(int newValue) {
    js_util.setProperty(this, 'removedSamplesForAcceleration', newValue);
  }

  double get audioLevel => js_util.getProperty(this, 'audioLevel');
  set audioLevel(double newValue) {
    js_util.setProperty(this, 'audioLevel', newValue);
  }

  double get totalAudioEnergy => js_util.getProperty(this, 'totalAudioEnergy');
  set totalAudioEnergy(double newValue) {
    js_util.setProperty(this, 'totalAudioEnergy', newValue);
  }

  double get totalSamplesDuration =>
      js_util.getProperty(this, 'totalSamplesDuration');
  set totalSamplesDuration(double newValue) {
    js_util.setProperty(this, 'totalSamplesDuration', newValue);
  }

  int get framesReceived => js_util.getProperty(this, 'framesReceived');
  set framesReceived(int newValue) {
    js_util.setProperty(this, 'framesReceived', newValue);
  }

  String get decoderImplementation =>
      js_util.getProperty(this, 'decoderImplementation');
  set decoderImplementation(String newValue) {
    js_util.setProperty(this, 'decoderImplementation', newValue);
  }
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
  String get localId => js_util.getProperty(this, 'localId');
  set localId(String newValue) {
    js_util.setProperty(this, 'localId', newValue);
  }

  double get roundTripTime => js_util.getProperty(this, 'roundTripTime');
  set roundTripTime(double newValue) {
    js_util.setProperty(this, 'roundTripTime', newValue);
  }

  double get totalRoundTripTime =>
      js_util.getProperty(this, 'totalRoundTripTime');
  set totalRoundTripTime(double newValue) {
    js_util.setProperty(this, 'totalRoundTripTime', newValue);
  }

  double get fractionLost => js_util.getProperty(this, 'fractionLost');
  set fractionLost(double newValue) {
    js_util.setProperty(this, 'fractionLost', newValue);
  }

  int get reportsReceived => js_util.getProperty(this, 'reportsReceived');
  set reportsReceived(int newValue) {
    js_util.setProperty(this, 'reportsReceived', newValue);
  }

  int get roundTripTimeMeasurements =>
      js_util.getProperty(this, 'roundTripTimeMeasurements');
  set roundTripTimeMeasurements(int newValue) {
    js_util.setProperty(this, 'roundTripTimeMeasurements', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCSentRtpStreamStats implements RTCRtpStreamStats {
  external factory RTCSentRtpStreamStats({int packetsSent, int bytesSent});
}

extension PropsRTCSentRtpStreamStats on RTCSentRtpStreamStats {
  int get packetsSent => js_util.getProperty(this, 'packetsSent');
  set packetsSent(int newValue) {
    js_util.setProperty(this, 'packetsSent', newValue);
  }

  int get bytesSent => js_util.getProperty(this, 'bytesSent');
  set bytesSent(int newValue) {
    js_util.setProperty(this, 'bytesSent', newValue);
  }
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
  int get rtxSsrc => js_util.getProperty(this, 'rtxSsrc');
  set rtxSsrc(int newValue) {
    js_util.setProperty(this, 'rtxSsrc', newValue);
  }

  String get mediaSourceId => js_util.getProperty(this, 'mediaSourceId');
  set mediaSourceId(String newValue) {
    js_util.setProperty(this, 'mediaSourceId', newValue);
  }

  ///  The [id] of the [RTCAudioSenderStats] or [RTCVideoSenderStats]
  /// object containing statistics about this stream's [RTCRtpSender].
  ///
  String get senderId => js_util.getProperty(this, 'senderId');
  set senderId(String newValue) {
    js_util.setProperty(this, 'senderId', newValue);
  }

  ///  A string which identifies the [RTCRemoteInboundRtpStreamStats]
  /// object that provides statistics for the remote peer for this same
  /// SSRC. This ID is stable across multiple calls to [getStats()].
  ///
  String get remoteId => js_util.getProperty(this, 'remoteId');
  set remoteId(String newValue) {
    js_util.setProperty(this, 'remoteId', newValue);
  }

  String get rid => js_util.getProperty(this, 'rid');
  set rid(String newValue) {
    js_util.setProperty(this, 'rid', newValue);
  }

  ///  A [double] indicating the time at which the last packet was sent
  /// for this SSRC. The [timestamp] property, on the other hand,
  /// indicates the time at which the [RTCOutboundRtpStreamStats]
  /// object was generated.
  ///
  double get lastPacketSentTimestamp =>
      js_util.getProperty(this, 'lastPacketSentTimestamp');
  set lastPacketSentTimestamp(double newValue) {
    js_util.setProperty(this, 'lastPacketSentTimestamp', newValue);
  }

  int get headerBytesSent => js_util.getProperty(this, 'headerBytesSent');
  set headerBytesSent(int newValue) {
    js_util.setProperty(this, 'headerBytesSent', newValue);
  }

  int get packetsDiscardedOnSend =>
      js_util.getProperty(this, 'packetsDiscardedOnSend');
  set packetsDiscardedOnSend(int newValue) {
    js_util.setProperty(this, 'packetsDiscardedOnSend', newValue);
  }

  int get bytesDiscardedOnSend =>
      js_util.getProperty(this, 'bytesDiscardedOnSend');
  set bytesDiscardedOnSend(int newValue) {
    js_util.setProperty(this, 'bytesDiscardedOnSend', newValue);
  }

  int get fecPacketsSent => js_util.getProperty(this, 'fecPacketsSent');
  set fecPacketsSent(int newValue) {
    js_util.setProperty(this, 'fecPacketsSent', newValue);
  }

  ///  The total number of packets that have needed to be retransmitted
  /// for this source as of the time the statistics were sampled. These
  /// retransmitted packets are included in the value returned by
  /// [packetsSent].
  ///
  int get retransmittedPacketsSent =>
      js_util.getProperty(this, 'retransmittedPacketsSent');
  set retransmittedPacketsSent(int newValue) {
    js_util.setProperty(this, 'retransmittedPacketsSent', newValue);
  }

  ///  The total number of bytes that have been retransmitted for this
  /// source as of the time the statistics were sampled. These
  /// retransmitted bytes comprise the packets included in the value
  /// returned by [retransmittedPacketsSent].
  ///
  int get retransmittedBytesSent =>
      js_util.getProperty(this, 'retransmittedBytesSent');
  set retransmittedBytesSent(int newValue) {
    js_util.setProperty(this, 'retransmittedBytesSent', newValue);
  }

  ///  A value indicating the bit rate the [RTCRtpSender]'s codec is
  /// configured to attempt to achieve in its output media.
  ///
  double get targetBitrate => js_util.getProperty(this, 'targetBitrate');
  set targetBitrate(double newValue) {
    js_util.setProperty(this, 'targetBitrate', newValue);
  }

  ///  A cumulative sum of the target frame sizes (the targeted maximum
  /// size of the frame in bytes when the codec is asked to compress
  /// it) for all of the frames encoded so far. This will likely differ
  /// from the total of the actual frame sizes.
  ///
  int get totalEncodedBytesTarget =>
      js_util.getProperty(this, 'totalEncodedBytesTarget');
  set totalEncodedBytesTarget(int newValue) {
    js_util.setProperty(this, 'totalEncodedBytesTarget', newValue);
  }

  int get frameWidth => js_util.getProperty(this, 'frameWidth');
  set frameWidth(int newValue) {
    js_util.setProperty(this, 'frameWidth', newValue);
  }

  int get frameHeight => js_util.getProperty(this, 'frameHeight');
  set frameHeight(int newValue) {
    js_util.setProperty(this, 'frameHeight', newValue);
  }

  int get frameBitDepth => js_util.getProperty(this, 'frameBitDepth');
  set frameBitDepth(int newValue) {
    js_util.setProperty(this, 'frameBitDepth', newValue);
  }

  double get framesPerSecond => js_util.getProperty(this, 'framesPerSecond');
  set framesPerSecond(double newValue) {
    js_util.setProperty(this, 'framesPerSecond', newValue);
  }

  int get framesSent => js_util.getProperty(this, 'framesSent');
  set framesSent(int newValue) {
    js_util.setProperty(this, 'framesSent', newValue);
  }

  int get hugeFramesSent => js_util.getProperty(this, 'hugeFramesSent');
  set hugeFramesSent(int newValue) {
    js_util.setProperty(this, 'hugeFramesSent', newValue);
  }

  ///  The number of frames that have been successfully encoded so far
  /// for sending on this RTP stream. Only valid for video streams.
  ///
  int get framesEncoded => js_util.getProperty(this, 'framesEncoded');
  set framesEncoded(int newValue) {
    js_util.setProperty(this, 'framesEncoded', newValue);
  }

  int get keyFramesEncoded => js_util.getProperty(this, 'keyFramesEncoded');
  set keyFramesEncoded(int newValue) {
    js_util.setProperty(this, 'keyFramesEncoded', newValue);
  }

  int get framesDiscardedOnSend =>
      js_util.getProperty(this, 'framesDiscardedOnSend');
  set framesDiscardedOnSend(int newValue) {
    js_util.setProperty(this, 'framesDiscardedOnSend', newValue);
  }

  ///  A 64-bit value containing the sum of the QP values for every
  /// frame encoded by this [RTCRtpSender]. Valid only for video
  /// streams.
  ///
  int get qpSum => js_util.getProperty(this, 'qpSum');
  set qpSum(int newValue) {
    js_util.setProperty(this, 'qpSum', newValue);
  }

  int get totalSamplesSent => js_util.getProperty(this, 'totalSamplesSent');
  set totalSamplesSent(int newValue) {
    js_util.setProperty(this, 'totalSamplesSent', newValue);
  }

  int get samplesEncodedWithSilk =>
      js_util.getProperty(this, 'samplesEncodedWithSilk');
  set samplesEncodedWithSilk(int newValue) {
    js_util.setProperty(this, 'samplesEncodedWithSilk', newValue);
  }

  int get samplesEncodedWithCelt =>
      js_util.getProperty(this, 'samplesEncodedWithCelt');
  set samplesEncodedWithCelt(int newValue) {
    js_util.setProperty(this, 'samplesEncodedWithCelt', newValue);
  }

  bool get voiceActivityFlag => js_util.getProperty(this, 'voiceActivityFlag');
  set voiceActivityFlag(bool newValue) {
    js_util.setProperty(this, 'voiceActivityFlag', newValue);
  }

  ///  A floating-point value indicating the total number of seconds
  /// that have been spent encoding the frames encoded so far by this
  /// [RTCRtpSender].
  ///
  double get totalEncodeTime => js_util.getProperty(this, 'totalEncodeTime');
  set totalEncodeTime(double newValue) {
    js_util.setProperty(this, 'totalEncodeTime', newValue);
  }

  double get totalPacketSendDelay =>
      js_util.getProperty(this, 'totalPacketSendDelay');
  set totalPacketSendDelay(double newValue) {
    js_util.setProperty(this, 'totalPacketSendDelay', newValue);
  }

  ///  A floating-point value indicating the average RTCP interval
  /// between two consecutive compound RTCP packets.
  ///
  double get averageRtcpInterval =>
      js_util.getProperty(this, 'averageRtcpInterval');
  set averageRtcpInterval(double newValue) {
    js_util.setProperty(this, 'averageRtcpInterval', newValue);
  }

  ///  A value from the [RTCQualityLimitationReason] enumerated type
  /// explaining why the resolution and/or frame rate is being limited
  /// for this RTP stream. Valid only for video streams.
  ///
  RTCQualityLimitationReason get qualityLimitationReason =>
      js_util.getProperty(this, 'qualityLimitationReason');
  set qualityLimitationReason(RTCQualityLimitationReason newValue) {
    js_util.setProperty(this, 'qualityLimitationReason', newValue);
  }

  ///  A record mapping each of the quality limitation reasons in the
  /// [RTCRemoteInboundRtpStreamStats] enumeration to a floating-point
  /// value indicating the number of seconds the stream has spent with
  /// its quality limited for that reason.
  ///
  dynamic get qualityLimitationDurations =>
      js_util.getProperty(this, 'qualityLimitationDurations');
  set qualityLimitationDurations(dynamic newValue) {
    js_util.setProperty(this, 'qualityLimitationDurations', newValue);
  }

  int get qualityLimitationResolutionChanges =>
      js_util.getProperty(this, 'qualityLimitationResolutionChanges');
  set qualityLimitationResolutionChanges(int newValue) {
    js_util.setProperty(this, 'qualityLimitationResolutionChanges', newValue);
  }

  ///  A record of key-value pairs with strings as the keys mapped to
  /// 32-bit integer values, each indicating the total number of
  /// packets this [RTCRtpSender] has transmitted for this source for
  /// each Differentiated Services Code Point (DSCP).
  ///
  dynamic get perDscpPacketsSent =>
      js_util.getProperty(this, 'perDscpPacketsSent');
  set perDscpPacketsSent(dynamic newValue) {
    js_util.setProperty(this, 'perDscpPacketsSent', newValue);
  }

  ///  An integer value indicating the total number of Negative
  /// ACKnolwedgement (NACK) packets this [RTCRtpSender] has received
  /// from the remote [RTCRtpReceiver].
  ///
  int get nackCount => js_util.getProperty(this, 'nackCount');
  set nackCount(int newValue) {
    js_util.setProperty(this, 'nackCount', newValue);
  }

  ///  An integer value which indicates the total number of Full Intra
  /// Request (FIR) packets which this [RTCRtpSender] has sent to the
  /// remote [RTCRtpReceiver]. This is an indicator of how often the
  /// stream has lagged, requiring frames to be skipped in order to
  /// catch up. Valid only for video streams.
  ///
  int get firCount => js_util.getProperty(this, 'firCount');
  set firCount(int newValue) {
    js_util.setProperty(this, 'firCount', newValue);
  }

  ///  An integer specifying the number of times the remote receiver
  /// has notified this [RTCRtpSender] that some amount of encoded
  /// video data for one or more frames has been lost, using Picture
  /// Loss Indication (PLI) packets. Only available for video streams.
  ///
  int get pliCount => js_util.getProperty(this, 'pliCount');
  set pliCount(int newValue) {
    js_util.setProperty(this, 'pliCount', newValue);
  }

  ///  An integer indicating the number of times this sender received a
  /// Slice Loss Indication (SLI) frame from the remote peer,
  /// indicating that one or more consecutive video macroblocks have
  /// been lost or corrupted. Available only for video streams.
  ///
  int get sliCount => js_util.getProperty(this, 'sliCount');
  set sliCount(int newValue) {
    js_util.setProperty(this, 'sliCount', newValue);
  }

  String get encoderImplementation =>
      js_util.getProperty(this, 'encoderImplementation');
  set encoderImplementation(String newValue) {
    js_util.setProperty(this, 'encoderImplementation', newValue);
  }
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
  ///  A [String] which is used to find the local
  /// [RTCInboundRtpStreamStats] object which shares the same
  /// Synchronization Source (SSRC).
  ///
  String get localId => js_util.getProperty(this, 'localId');
  set localId(String newValue) {
    js_util.setProperty(this, 'localId', newValue);
  }

  ///  A [double] specifying the timestamp (on the remote device) at
  /// which the statistics in the [RTCRemoteOutboundRtpStreamStats]
  /// object were sent by the remote endpoint. This is different from
  /// the [timestamp] found in the base [RTCStats] dictionary; it
  /// represents the time at which the object's statistics were
  /// received or generated by the local endpoint.
  ///
  double get remoteTimestamp => js_util.getProperty(this, 'remoteTimestamp');
  set remoteTimestamp(double newValue) {
    js_util.setProperty(this, 'remoteTimestamp', newValue);
  }

  int get reportsSent => js_util.getProperty(this, 'reportsSent');
  set reportsSent(int newValue) {
    js_util.setProperty(this, 'reportsSent', newValue);
  }

  double get roundTripTime => js_util.getProperty(this, 'roundTripTime');
  set roundTripTime(double newValue) {
    js_util.setProperty(this, 'roundTripTime', newValue);
  }

  double get totalRoundTripTime =>
      js_util.getProperty(this, 'totalRoundTripTime');
  set totalRoundTripTime(double newValue) {
    js_util.setProperty(this, 'totalRoundTripTime', newValue);
  }

  int get roundTripTimeMeasurements =>
      js_util.getProperty(this, 'roundTripTimeMeasurements');
  set roundTripTimeMeasurements(int newValue) {
    js_util.setProperty(this, 'roundTripTimeMeasurements', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCMediaSourceStats implements RTCStats {
  external factory RTCMediaSourceStats(
      {String trackIdentifier, String kind, bool relayedSource});
}

extension PropsRTCMediaSourceStats on RTCMediaSourceStats {
  String get trackIdentifier => js_util.getProperty(this, 'trackIdentifier');
  set trackIdentifier(String newValue) {
    js_util.setProperty(this, 'trackIdentifier', newValue);
  }

  String get kind => js_util.getProperty(this, 'kind');
  set kind(String newValue) {
    js_util.setProperty(this, 'kind', newValue);
  }

  bool get relayedSource => js_util.getProperty(this, 'relayedSource');
  set relayedSource(bool newValue) {
    js_util.setProperty(this, 'relayedSource', newValue);
  }
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
  double get audioLevel => js_util.getProperty(this, 'audioLevel');
  set audioLevel(double newValue) {
    js_util.setProperty(this, 'audioLevel', newValue);
  }

  double get totalAudioEnergy => js_util.getProperty(this, 'totalAudioEnergy');
  set totalAudioEnergy(double newValue) {
    js_util.setProperty(this, 'totalAudioEnergy', newValue);
  }

  double get totalSamplesDuration =>
      js_util.getProperty(this, 'totalSamplesDuration');
  set totalSamplesDuration(double newValue) {
    js_util.setProperty(this, 'totalSamplesDuration', newValue);
  }

  double get echoReturnLoss => js_util.getProperty(this, 'echoReturnLoss');
  set echoReturnLoss(double newValue) {
    js_util.setProperty(this, 'echoReturnLoss', newValue);
  }

  double get echoReturnLossEnhancement =>
      js_util.getProperty(this, 'echoReturnLossEnhancement');
  set echoReturnLossEnhancement(double newValue) {
    js_util.setProperty(this, 'echoReturnLossEnhancement', newValue);
  }
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
  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  int get bitDepth => js_util.getProperty(this, 'bitDepth');
  set bitDepth(int newValue) {
    js_util.setProperty(this, 'bitDepth', newValue);
  }

  int get frames => js_util.getProperty(this, 'frames');
  set frames(int newValue) {
    js_util.setProperty(this, 'frames', newValue);
  }

  double get framesPerSecond => js_util.getProperty(this, 'framesPerSecond');
  set framesPerSecond(double newValue) {
    js_util.setProperty(this, 'framesPerSecond', newValue);
  }
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
  int get contributorSsrc => js_util.getProperty(this, 'contributorSsrc');
  set contributorSsrc(int newValue) {
    js_util.setProperty(this, 'contributorSsrc', newValue);
  }

  String get inboundRtpStreamId =>
      js_util.getProperty(this, 'inboundRtpStreamId');
  set inboundRtpStreamId(String newValue) {
    js_util.setProperty(this, 'inboundRtpStreamId', newValue);
  }

  int get packetsContributedTo =>
      js_util.getProperty(this, 'packetsContributedTo');
  set packetsContributedTo(int newValue) {
    js_util.setProperty(this, 'packetsContributedTo', newValue);
  }

  double get audioLevel => js_util.getProperty(this, 'audioLevel');
  set audioLevel(double newValue) {
    js_util.setProperty(this, 'audioLevel', newValue);
  }
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
  int get dataChannelsOpened => js_util.getProperty(this, 'dataChannelsOpened');
  set dataChannelsOpened(int newValue) {
    js_util.setProperty(this, 'dataChannelsOpened', newValue);
  }

  int get dataChannelsClosed => js_util.getProperty(this, 'dataChannelsClosed');
  set dataChannelsClosed(int newValue) {
    js_util.setProperty(this, 'dataChannelsClosed', newValue);
  }

  int get dataChannelsRequested =>
      js_util.getProperty(this, 'dataChannelsRequested');
  set dataChannelsRequested(int newValue) {
    js_util.setProperty(this, 'dataChannelsRequested', newValue);
  }

  int get dataChannelsAccepted =>
      js_util.getProperty(this, 'dataChannelsAccepted');
  set dataChannelsAccepted(int newValue) {
    js_util.setProperty(this, 'dataChannelsAccepted', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCRtpTransceiverStats implements RTCStats {
  external factory RTCRtpTransceiverStats(
      {String senderId, String receiverId, String mid});
}

extension PropsRTCRtpTransceiverStats on RTCRtpTransceiverStats {
  String get senderId => js_util.getProperty(this, 'senderId');
  set senderId(String newValue) {
    js_util.setProperty(this, 'senderId', newValue);
  }

  String get receiverId => js_util.getProperty(this, 'receiverId');
  set receiverId(String newValue) {
    js_util.setProperty(this, 'receiverId', newValue);
  }

  String get mid => js_util.getProperty(this, 'mid');
  set mid(String newValue) {
    js_util.setProperty(this, 'mid', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCMediaHandlerStats implements RTCStats {
  external factory RTCMediaHandlerStats(
      {String trackIdentifier, bool ended, String kind});
}

extension PropsRTCMediaHandlerStats on RTCMediaHandlerStats {
  String get trackIdentifier => js_util.getProperty(this, 'trackIdentifier');
  set trackIdentifier(String newValue) {
    js_util.setProperty(this, 'trackIdentifier', newValue);
  }

  bool get ended => js_util.getProperty(this, 'ended');
  set ended(bool newValue) {
    js_util.setProperty(this, 'ended', newValue);
  }

  String get kind => js_util.getProperty(this, 'kind');
  set kind(String newValue) {
    js_util.setProperty(this, 'kind', newValue);
  }
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
  String get mediaSourceId => js_util.getProperty(this, 'mediaSourceId');
  set mediaSourceId(String newValue) {
    js_util.setProperty(this, 'mediaSourceId', newValue);
  }
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
  String get mediaSourceId => js_util.getProperty(this, 'mediaSourceId');
  set mediaSourceId(String newValue) {
    js_util.setProperty(this, 'mediaSourceId', newValue);
  }
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
  String get label => js_util.getProperty(this, 'label');
  set label(String newValue) {
    js_util.setProperty(this, 'label', newValue);
  }

  String get protocol => js_util.getProperty(this, 'protocol');
  set protocol(String newValue) {
    js_util.setProperty(this, 'protocol', newValue);
  }

  int get dataChannelIdentifier =>
      js_util.getProperty(this, 'dataChannelIdentifier');
  set dataChannelIdentifier(int newValue) {
    js_util.setProperty(this, 'dataChannelIdentifier', newValue);
  }

  RTCDataChannelState get state => js_util.getProperty(this, 'state');
  set state(RTCDataChannelState newValue) {
    js_util.setProperty(this, 'state', newValue);
  }

  int get messagesSent => js_util.getProperty(this, 'messagesSent');
  set messagesSent(int newValue) {
    js_util.setProperty(this, 'messagesSent', newValue);
  }

  int get bytesSent => js_util.getProperty(this, 'bytesSent');
  set bytesSent(int newValue) {
    js_util.setProperty(this, 'bytesSent', newValue);
  }

  int get messagesReceived => js_util.getProperty(this, 'messagesReceived');
  set messagesReceived(int newValue) {
    js_util.setProperty(this, 'messagesReceived', newValue);
  }

  int get bytesReceived => js_util.getProperty(this, 'bytesReceived');
  set bytesReceived(int newValue) {
    js_util.setProperty(this, 'bytesReceived', newValue);
  }
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
  int get packetsSent => js_util.getProperty(this, 'packetsSent');
  set packetsSent(int newValue) {
    js_util.setProperty(this, 'packetsSent', newValue);
  }

  int get packetsReceived => js_util.getProperty(this, 'packetsReceived');
  set packetsReceived(int newValue) {
    js_util.setProperty(this, 'packetsReceived', newValue);
  }

  int get bytesSent => js_util.getProperty(this, 'bytesSent');
  set bytesSent(int newValue) {
    js_util.setProperty(this, 'bytesSent', newValue);
  }

  int get bytesReceived => js_util.getProperty(this, 'bytesReceived');
  set bytesReceived(int newValue) {
    js_util.setProperty(this, 'bytesReceived', newValue);
  }

  String get rtcpTransportStatsId =>
      js_util.getProperty(this, 'rtcpTransportStatsId');
  set rtcpTransportStatsId(String newValue) {
    js_util.setProperty(this, 'rtcpTransportStatsId', newValue);
  }

  RTCIceRole get iceRole => js_util.getProperty(this, 'iceRole');
  set iceRole(RTCIceRole newValue) {
    js_util.setProperty(this, 'iceRole', newValue);
  }

  String get iceLocalUsernameFragment =>
      js_util.getProperty(this, 'iceLocalUsernameFragment');
  set iceLocalUsernameFragment(String newValue) {
    js_util.setProperty(this, 'iceLocalUsernameFragment', newValue);
  }

  RTCDtlsTransportState get dtlsState => js_util.getProperty(this, 'dtlsState');
  set dtlsState(RTCDtlsTransportState newValue) {
    js_util.setProperty(this, 'dtlsState', newValue);
  }

  RTCIceTransportState get iceState => js_util.getProperty(this, 'iceState');
  set iceState(RTCIceTransportState newValue) {
    js_util.setProperty(this, 'iceState', newValue);
  }

  String get selectedCandidatePairId =>
      js_util.getProperty(this, 'selectedCandidatePairId');
  set selectedCandidatePairId(String newValue) {
    js_util.setProperty(this, 'selectedCandidatePairId', newValue);
  }

  String get localCertificateId =>
      js_util.getProperty(this, 'localCertificateId');
  set localCertificateId(String newValue) {
    js_util.setProperty(this, 'localCertificateId', newValue);
  }

  String get remoteCertificateId =>
      js_util.getProperty(this, 'remoteCertificateId');
  set remoteCertificateId(String newValue) {
    js_util.setProperty(this, 'remoteCertificateId', newValue);
  }

  String get tlsVersion => js_util.getProperty(this, 'tlsVersion');
  set tlsVersion(String newValue) {
    js_util.setProperty(this, 'tlsVersion', newValue);
  }

  String get dtlsCipher => js_util.getProperty(this, 'dtlsCipher');
  set dtlsCipher(String newValue) {
    js_util.setProperty(this, 'dtlsCipher', newValue);
  }

  String get srtpCipher => js_util.getProperty(this, 'srtpCipher');
  set srtpCipher(String newValue) {
    js_util.setProperty(this, 'srtpCipher', newValue);
  }

  String get tlsGroup => js_util.getProperty(this, 'tlsGroup');
  set tlsGroup(String newValue) {
    js_util.setProperty(this, 'tlsGroup', newValue);
  }

  int get selectedCandidatePairChanges =>
      js_util.getProperty(this, 'selectedCandidatePairChanges');
  set selectedCandidatePairChanges(int newValue) {
    js_util.setProperty(this, 'selectedCandidatePairChanges', newValue);
  }
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
  String get transportId => js_util.getProperty(this, 'transportId');
  set transportId(String newValue) {
    js_util.setProperty(this, 'transportId', newValue);
  }

  double get smoothedRoundTripTime =>
      js_util.getProperty(this, 'smoothedRoundTripTime');
  set smoothedRoundTripTime(double newValue) {
    js_util.setProperty(this, 'smoothedRoundTripTime', newValue);
  }

  int get congestionWindow => js_util.getProperty(this, 'congestionWindow');
  set congestionWindow(int newValue) {
    js_util.setProperty(this, 'congestionWindow', newValue);
  }

  int get receiverWindow => js_util.getProperty(this, 'receiverWindow');
  set receiverWindow(int newValue) {
    js_util.setProperty(this, 'receiverWindow', newValue);
  }

  int get mtu => js_util.getProperty(this, 'mtu');
  set mtu(int newValue) {
    js_util.setProperty(this, 'mtu', newValue);
  }

  int get unackData => js_util.getProperty(this, 'unackData');
  set unackData(int newValue) {
    js_util.setProperty(this, 'unackData', newValue);
  }
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
  String get transportId => js_util.getProperty(this, 'transportId');
  set transportId(String newValue) {
    js_util.setProperty(this, 'transportId', newValue);
  }

  ///  A string containing the address of the candidate. This value may
  /// be an IPv4 address, an IPv6 address, or a fully-qualified domain
  /// name. This property was previously named [ip] and only accepted
  /// IP addresses.
  ///
  String? get address => js_util.getProperty(this, 'address');
  set address(String? newValue) {
    js_util.setProperty(this, 'address', newValue);
  }

  /// The network port number used by the candidate.
  ///
  int get port => js_util.getProperty(this, 'port');
  set port(int newValue) {
    js_util.setProperty(this, 'port', newValue);
  }

  ///  A string specifying the protocol ([tcp] or [udp]) used to
  /// transmit data on the [port].
  ///
  String get protocol => js_util.getProperty(this, 'protocol');
  set protocol(String newValue) {
    js_util.setProperty(this, 'protocol', newValue);
  }

  ///  A string matching one of the values in [RTCIceCandidate.type],
  /// indicating what kind of candidate the object provides statistics
  /// for.
  ///
  RTCIceCandidateType get candidateType =>
      js_util.getProperty(this, 'candidateType');
  set candidateType(RTCIceCandidateType newValue) {
    js_util.setProperty(this, 'candidateType', newValue);
  }

  ///  The candidate's priority, corresponding to
  /// [RTCIceCandidate.priority].
  ///
  int get priority => js_util.getProperty(this, 'priority');
  set priority(int newValue) {
    js_util.setProperty(this, 'priority', newValue);
  }

  ///  For local candidates, the property is the URL of the ICE server
  /// from which the candidate was received. This URL matches the one
  /// included in the [RTCPeerConnectionIceEvent] object representing
  /// the [icecandidate] event that delivered the candidate to the
  /// local peer.
  ///
  String get url => js_util.getProperty(this, 'url');
  set url(String newValue) {
    js_util.setProperty(this, 'url', newValue);
  }

  ///  A string identifying the protocol used by the endpoint for
  /// communicating with the TURN server; valid values are [tcp],
  /// [udp], and [tls]. Only present for local candidates.
  ///
  String get relayProtocol => js_util.getProperty(this, 'relayProtocol');
  set relayProtocol(String newValue) {
    js_util.setProperty(this, 'relayProtocol', newValue);
  }
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
  ///  A [String] that uniquely identifies the [RTCIceTransport] that
  /// was inspected to obtain the transport-related statistics (as
  /// found in [RTCTransportStats]) used in generating this object.
  ///
  String get transportId => js_util.getProperty(this, 'transportId');
  set transportId(String newValue) {
    js_util.setProperty(this, 'transportId', newValue);
  }

  ///  The unique ID string corresponding to the [RTCIceCandidate] from
  /// the data included in the [RTCIceCandidateStats] object providing
  /// statistics for the candidate pair's local candidate.
  ///
  String get localCandidateId => js_util.getProperty(this, 'localCandidateId');
  set localCandidateId(String newValue) {
    js_util.setProperty(this, 'localCandidateId', newValue);
  }

  ///  The unique ID string corresponding to the remote candidate from
  /// which data was taken to construct the [RTCIceCandidateStats]
  /// object describing the remote end of the connection.
  ///
  String get remoteCandidateId =>
      js_util.getProperty(this, 'remoteCandidateId');
  set remoteCandidateId(String newValue) {
    js_util.setProperty(this, 'remoteCandidateId', newValue);
  }

  ///  A [RTCStatsIceCandidatePairState] object which indicates the
  /// state of the connection between the two candidates.
  ///
  RTCStatsIceCandidatePairState get state => js_util.getProperty(this, 'state');
  set state(RTCStatsIceCandidatePairState newValue) {
    js_util.setProperty(this, 'state', newValue);
  }

  ///  A Boolean value which, if [true], indicates that the candidate
  /// pair described by this object is one which has been proposed for
  /// use, and will be (or was) used if its priority is the highest
  /// among the nominated candidate pairs. See RFC 5245, section
  /// 7.1.3.2.4 for details.
  ///
  bool get nominated => js_util.getProperty(this, 'nominated');
  set nominated(bool newValue) {
    js_util.setProperty(this, 'nominated', newValue);
  }

  /// The total number of packets sent on this candidate pair.
  ///
  int get packetsSent => js_util.getProperty(this, 'packetsSent');
  set packetsSent(int newValue) {
    js_util.setProperty(this, 'packetsSent', newValue);
  }

  /// The total number of packets received on this candidate pair.
  ///
  int get packetsReceived => js_util.getProperty(this, 'packetsReceived');
  set packetsReceived(int newValue) {
    js_util.setProperty(this, 'packetsReceived', newValue);
  }

  ///  The total number of payload bytes sent (that is, the total
  /// number of bytes sent minus any headers, padding, or other
  /// administrative overhead) so far on this candidate pair.
  ///
  int get bytesSent => js_util.getProperty(this, 'bytesSent');
  set bytesSent(int newValue) {
    js_util.setProperty(this, 'bytesSent', newValue);
  }

  ///  The total number of payload bytes received (that is, the total
  /// number of bytes received minus any headers, padding, or other
  /// administrative overhead) on this candidate pair so far.
  ///
  int get bytesReceived => js_util.getProperty(this, 'bytesReceived');
  set bytesReceived(int newValue) {
    js_util.setProperty(this, 'bytesReceived', newValue);
  }

  ///  A [double] value indicating the time at which the last packet
  /// was sent from the local peer to the remote peer for this
  /// candidate pair. Timestamps are not recorded for STUN packets.
  ///
  double get lastPacketSentTimestamp =>
      js_util.getProperty(this, 'lastPacketSentTimestamp');
  set lastPacketSentTimestamp(double newValue) {
    js_util.setProperty(this, 'lastPacketSentTimestamp', newValue);
  }

  ///  A [double] value indicating the time at which the last packet
  /// was received by the local peer from the remote peer for this
  /// candidate pair. Timestamps are not recorded for STUN packets.
  ///
  double get lastPacketReceivedTimestamp =>
      js_util.getProperty(this, 'lastPacketReceivedTimestamp');
  set lastPacketReceivedTimestamp(double newValue) {
    js_util.setProperty(this, 'lastPacketReceivedTimestamp', newValue);
  }

  ///  A [double] value which specifies the time at which the first
  /// STUN request was sent from the local peer to the remote peer for
  /// this candidate pair.
  ///
  double get firstRequestTimestamp =>
      js_util.getProperty(this, 'firstRequestTimestamp');
  set firstRequestTimestamp(double newValue) {
    js_util.setProperty(this, 'firstRequestTimestamp', newValue);
  }

  ///  A [double] value which specifies the time at which the last
  /// (most recent) STUN request was sent from the local peer to the
  /// remote peer for this candidate pair.
  ///
  double get lastRequestTimestamp =>
      js_util.getProperty(this, 'lastRequestTimestamp');
  set lastRequestTimestamp(double newValue) {
    js_util.setProperty(this, 'lastRequestTimestamp', newValue);
  }

  ///  A [double] value that specifies the time at which the last (most
  /// recent) STUN response was received by the local candidate from
  /// the remote candidate in this pair.
  ///
  double get lastResponseTimestamp =>
      js_util.getProperty(this, 'lastResponseTimestamp');
  set lastResponseTimestamp(double newValue) {
    js_util.setProperty(this, 'lastResponseTimestamp', newValue);
  }

  ///  A floating-point value indicating the total time, in seconds,
  /// that has elapsed between sending STUN requests and receiving
  /// responses to them, for all such requests made to date on this
  /// candidate pair. This includes both connectivity check and consent
  /// check requests. You can compute the average round trip time (RTT)
  /// by dividing this value by [responsesReceived].
  ///
  double get totalRoundTripTime =>
      js_util.getProperty(this, 'totalRoundTripTime');
  set totalRoundTripTime(double newValue) {
    js_util.setProperty(this, 'totalRoundTripTime', newValue);
  }

  ///  A floating-point value indicating the total time, in seconds,
  /// that elapsed between the most recently-sent STUN request and the
  /// response being received. This may be based upon requests that
  /// were involved in confirming permission to open the connection.
  ///
  double get currentRoundTripTime =>
      js_util.getProperty(this, 'currentRoundTripTime');
  set currentRoundTripTime(double newValue) {
    js_util.setProperty(this, 'currentRoundTripTime', newValue);
  }

  ///  Provides an informative value representing the available
  /// outbound capacity of the network by reporting the total number of
  /// bits per second available for all of the candidate pair's
  /// outgoing RTP streams. This does not take into account the size of
  /// the IP overhead, nor any other transport layers such as TCP or
  /// UDP.
  ///
  double get availableOutgoingBitrate =>
      js_util.getProperty(this, 'availableOutgoingBitrate');
  set availableOutgoingBitrate(double newValue) {
    js_util.setProperty(this, 'availableOutgoingBitrate', newValue);
  }

  ///  Provides an informative value representing the available inbound
  /// capacity of the network by reporting the total number of bits per
  /// second available for all of the candidate pair's incoming RTP
  /// streams. This does not take into account the size of the IP
  /// overhead, nor any other transport layers such as TCP or UDP.
  ///
  double get availableIncomingBitrate =>
      js_util.getProperty(this, 'availableIncomingBitrate');
  set availableIncomingBitrate(double newValue) {
    js_util.setProperty(this, 'availableIncomingBitrate', newValue);
  }

  ///  An integer value indicating the number of times the
  /// circuit-breaker has been triggered for this particular 5-tuple
  /// (the set of five values comprising a TCP connection: source IP
  /// address, source port number, destination IP address, destination
  /// port number, and protocol). The circuit breaker is triggered
  /// whenever a connection times out or otherwise needs to be
  /// automatically aborted.
  ///
  int get circuitBreakerTriggerCount =>
      js_util.getProperty(this, 'circuitBreakerTriggerCount');
  set circuitBreakerTriggerCount(int newValue) {
    js_util.setProperty(this, 'circuitBreakerTriggerCount', newValue);
  }

  ///  The total number of connectivity check requests that have been
  /// received, including retransmissions. This value includes both
  /// connectivity checks and STUN consent checks.
  ///
  int get requestsReceived => js_util.getProperty(this, 'requestsReceived');
  set requestsReceived(int newValue) {
    js_util.setProperty(this, 'requestsReceived', newValue);
  }

  ///  The total number of connectivity check requests that have been
  /// sent, not including retransmissions.
  ///
  int get requestsSent => js_util.getProperty(this, 'requestsSent');
  set requestsSent(int newValue) {
    js_util.setProperty(this, 'requestsSent', newValue);
  }

  ///  The total number of connectivity check responses that have been
  /// received.
  ///
  int get responsesReceived => js_util.getProperty(this, 'responsesReceived');
  set responsesReceived(int newValue) {
    js_util.setProperty(this, 'responsesReceived', newValue);
  }

  ///  The total number of connectivity check responses that have been
  /// sent. This includes both connectivity check requests and STUN
  /// consent requests.
  ///
  int get responsesSent => js_util.getProperty(this, 'responsesSent');
  set responsesSent(int newValue) {
    js_util.setProperty(this, 'responsesSent', newValue);
  }

  ///  The total number of times connectivity check request
  /// retransmissions were received. A retransmission is a connectivity
  /// check request whose [TRANSACTION_TRANSMIT_COUNTER] attribute's
  /// [req] field is greater than 1.
  ///
  int get retransmissionsReceived =>
      js_util.getProperty(this, 'retransmissionsReceived');
  set retransmissionsReceived(int newValue) {
    js_util.setProperty(this, 'retransmissionsReceived', newValue);
  }

  ///  The total number of times connectivity check request
  /// retransmissions were sent.
  ///
  int get retransmissionsSent =>
      js_util.getProperty(this, 'retransmissionsSent');
  set retransmissionsSent(int newValue) {
    js_util.setProperty(this, 'retransmissionsSent', newValue);
  }

  ///  The total number of consent requests that have been sent on this
  /// candidate pair.
  ///
  int get consentRequestsSent =>
      js_util.getProperty(this, 'consentRequestsSent');
  set consentRequestsSent(int newValue) {
    js_util.setProperty(this, 'consentRequestsSent', newValue);
  }

  ///  A [double] value indicating the time at which the most recent
  /// STUN binding response expired. This value is [Object] if no valid
  /// STUN binding responses have been sent on the candidate pair; this
  /// can only happen if [responsesReceived] is 0.
  ///
  double get consentExpiredTimestamp =>
      js_util.getProperty(this, 'consentExpiredTimestamp');
  set consentExpiredTimestamp(double newValue) {
    js_util.setProperty(this, 'consentExpiredTimestamp', newValue);
  }

  int get packetsDiscardedOnSend =>
      js_util.getProperty(this, 'packetsDiscardedOnSend');
  set packetsDiscardedOnSend(int newValue) {
    js_util.setProperty(this, 'packetsDiscardedOnSend', newValue);
  }

  int get bytesDiscardedOnSend =>
      js_util.getProperty(this, 'bytesDiscardedOnSend');
  set bytesDiscardedOnSend(int newValue) {
    js_util.setProperty(this, 'bytesDiscardedOnSend', newValue);
  }

  int get requestBytesSent => js_util.getProperty(this, 'requestBytesSent');
  set requestBytesSent(int newValue) {
    js_util.setProperty(this, 'requestBytesSent', newValue);
  }

  int get consentRequestBytesSent =>
      js_util.getProperty(this, 'consentRequestBytesSent');
  set consentRequestBytesSent(int newValue) {
    js_util.setProperty(this, 'consentRequestBytesSent', newValue);
  }

  int get responseBytesSent => js_util.getProperty(this, 'responseBytesSent');
  set responseBytesSent(int newValue) {
    js_util.setProperty(this, 'responseBytesSent', newValue);
  }
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
  String get fingerprint => js_util.getProperty(this, 'fingerprint');
  set fingerprint(String newValue) {
    js_util.setProperty(this, 'fingerprint', newValue);
  }

  String get fingerprintAlgorithm =>
      js_util.getProperty(this, 'fingerprintAlgorithm');
  set fingerprintAlgorithm(String newValue) {
    js_util.setProperty(this, 'fingerprintAlgorithm', newValue);
  }

  String get base64Certificate =>
      js_util.getProperty(this, 'base64Certificate');
  set base64Certificate(String newValue) {
    js_util.setProperty(this, 'base64Certificate', newValue);
  }

  String get issuerCertificateId =>
      js_util.getProperty(this, 'issuerCertificateId');
  set issuerCertificateId(String newValue) {
    js_util.setProperty(this, 'issuerCertificateId', newValue);
  }
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
  String get url => js_util.getProperty(this, 'url');
  set url(String newValue) {
    js_util.setProperty(this, 'url', newValue);
  }

  int get port => js_util.getProperty(this, 'port');
  set port(int newValue) {
    js_util.setProperty(this, 'port', newValue);
  }

  String get relayProtocol => js_util.getProperty(this, 'relayProtocol');
  set relayProtocol(String newValue) {
    js_util.setProperty(this, 'relayProtocol', newValue);
  }

  int get totalRequestsSent => js_util.getProperty(this, 'totalRequestsSent');
  set totalRequestsSent(int newValue) {
    js_util.setProperty(this, 'totalRequestsSent', newValue);
  }

  int get totalResponsesReceived =>
      js_util.getProperty(this, 'totalResponsesReceived');
  set totalResponsesReceived(int newValue) {
    js_util.setProperty(this, 'totalResponsesReceived', newValue);
  }

  double get totalRoundTripTime =>
      js_util.getProperty(this, 'totalRoundTripTime');
  set totalRoundTripTime(double newValue) {
    js_util.setProperty(this, 'totalRoundTripTime', newValue);
  }
}
