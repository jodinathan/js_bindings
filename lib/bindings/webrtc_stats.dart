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

@anonymous
@JS()
@staticInterop
class RTCRtpStreamStats implements RTCStats {
  external factory RTCRtpStreamStats(
      {required int ssrc,
      required String kind,
      required String transportId,
      required String codecId});
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
  external factory RTCCodecStats._(
      {required int payloadType,
      required String codecType,
      required String transportId,
      required String mimeType,
      required int clockRate,
      required int channels,
      required String sdpFmtpLine});

  factory RTCCodecStats(
          {required int payloadType,
          required RTCCodecType codecType,
          required String transportId,
          required String mimeType,
          required int clockRate,
          required int channels,
          required String sdpFmtpLine}) =>
      RTCCodecStats._(
          payloadType: payloadType,
          codecType: codecType.name,
          transportId: transportId,
          mimeType: mimeType,
          clockRate: clockRate,
          channels: channels,
          sdpFmtpLine: sdpFmtpLine);
}

extension PropsRTCCodecStats on RTCCodecStats {
  int get payloadType => js_util.getProperty(this, 'payloadType');
  set payloadType(int newValue) {
    js_util.setProperty(this, 'payloadType', newValue);
  }

  RTCCodecType get codecType =>
      RTCCodecType.values.byName(js_util.getProperty(this, 'codecType'));
  set codecType(RTCCodecType newValue) {
    js_util.setProperty(this, 'codecType', newValue.name);
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
      {required int packetsReceived,
      required int packetsLost,
      required double jitter,
      required int packetsDiscarded,
      required int packetsRepaired,
      required int burstPacketsLost,
      required int burstPacketsDiscarded,
      required int burstLossCount,
      required int burstDiscardCount,
      required double burstLossRate,
      required double burstDiscardRate,
      required double gapLossRate,
      required double gapDiscardRate,
      required int framesDropped,
      required int partialFramesLost,
      required int fullFramesLost});
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

@anonymous
@JS()
@staticInterop
class RTCInboundRtpStreamStats implements RTCReceivedRtpStreamStats {
  external factory RTCInboundRtpStreamStats(
      {required String receiverId,
      required String remoteId,
      required int framesDecoded,
      required int keyFramesDecoded,
      required int frameWidth,
      required int frameHeight,
      required int frameBitDepth,
      required double framesPerSecond,
      required int qpSum,
      required double totalDecodeTime,
      required double totalInterFrameDelay,
      required double totalSquaredInterFrameDelay,
      required bool voiceActivityFlag,
      required double lastPacketReceivedTimestamp,
      required double averageRtcpInterval,
      required int headerBytesReceived,
      required int fecPacketsReceived,
      required int fecPacketsDiscarded,
      required int bytesReceived,
      required int packetsFailedDecryption,
      required int packetsDuplicated,
      dynamic perDscpPacketsReceived,
      required int nackCount,
      required int firCount,
      required int pliCount,
      required int sliCount,
      required double totalProcessingDelay,
      required double estimatedPlayoutTimestamp,
      required double jitterBufferDelay,
      required int jitterBufferEmittedCount,
      required int totalSamplesReceived,
      required int totalSamplesDecoded,
      required int samplesDecodedWithSilk,
      required int samplesDecodedWithCelt,
      required int concealedSamples,
      required int silentConcealedSamples,
      required int concealmentEvents,
      required int insertedSamplesForDeceleration,
      required int removedSamplesForAcceleration,
      required double audioLevel,
      required double totalAudioEnergy,
      required double totalSamplesDuration,
      required int framesReceived,
      required String decoderImplementation});
}

extension PropsRTCInboundRtpStreamStats on RTCInboundRtpStreamStats {
  String get receiverId => js_util.getProperty(this, 'receiverId');
  set receiverId(String newValue) {
    js_util.setProperty(this, 'receiverId', newValue);
  }

  String get remoteId => js_util.getProperty(this, 'remoteId');
  set remoteId(String newValue) {
    js_util.setProperty(this, 'remoteId', newValue);
  }

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

  double get lastPacketReceivedTimestamp =>
      js_util.getProperty(this, 'lastPacketReceivedTimestamp');
  set lastPacketReceivedTimestamp(double newValue) {
    js_util.setProperty(this, 'lastPacketReceivedTimestamp', newValue);
  }

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

  int get fecPacketsReceived => js_util.getProperty(this, 'fecPacketsReceived');
  set fecPacketsReceived(int newValue) {
    js_util.setProperty(this, 'fecPacketsReceived', newValue);
  }

  int get fecPacketsDiscarded =>
      js_util.getProperty(this, 'fecPacketsDiscarded');
  set fecPacketsDiscarded(int newValue) {
    js_util.setProperty(this, 'fecPacketsDiscarded', newValue);
  }

  int get bytesReceived => js_util.getProperty(this, 'bytesReceived');
  set bytesReceived(int newValue) {
    js_util.setProperty(this, 'bytesReceived', newValue);
  }

  int get packetsFailedDecryption =>
      js_util.getProperty(this, 'packetsFailedDecryption');
  set packetsFailedDecryption(int newValue) {
    js_util.setProperty(this, 'packetsFailedDecryption', newValue);
  }

  int get packetsDuplicated => js_util.getProperty(this, 'packetsDuplicated');
  set packetsDuplicated(int newValue) {
    js_util.setProperty(this, 'packetsDuplicated', newValue);
  }

  dynamic get perDscpPacketsReceived =>
      js_util.getProperty(this, 'perDscpPacketsReceived');
  set perDscpPacketsReceived(dynamic newValue) {
    js_util.setProperty(this, 'perDscpPacketsReceived', newValue);
  }

  int get nackCount => js_util.getProperty(this, 'nackCount');
  set nackCount(int newValue) {
    js_util.setProperty(this, 'nackCount', newValue);
  }

  int get firCount => js_util.getProperty(this, 'firCount');
  set firCount(int newValue) {
    js_util.setProperty(this, 'firCount', newValue);
  }

  int get pliCount => js_util.getProperty(this, 'pliCount');
  set pliCount(int newValue) {
    js_util.setProperty(this, 'pliCount', newValue);
  }

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
      {required String localId,
      required double roundTripTime,
      required double totalRoundTripTime,
      required double fractionLost,
      required int reportsReceived,
      required int roundTripTimeMeasurements});
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
  external factory RTCSentRtpStreamStats(
      {required int packetsSent, required int bytesSent});
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

@anonymous
@JS()
@staticInterop
class RTCOutboundRtpStreamStats implements RTCSentRtpStreamStats {
  external factory RTCOutboundRtpStreamStats._(
      {required int rtxSsrc,
      required String mediaSourceId,
      required String senderId,
      required String remoteId,
      required String rid,
      required double lastPacketSentTimestamp,
      required int headerBytesSent,
      required int packetsDiscardedOnSend,
      required int bytesDiscardedOnSend,
      required int fecPacketsSent,
      required int retransmittedPacketsSent,
      required int retransmittedBytesSent,
      required double targetBitrate,
      required int totalEncodedBytesTarget,
      required int frameWidth,
      required int frameHeight,
      required int frameBitDepth,
      required double framesPerSecond,
      required int framesSent,
      required int hugeFramesSent,
      required int framesEncoded,
      required int keyFramesEncoded,
      required int framesDiscardedOnSend,
      required int qpSum,
      required int totalSamplesSent,
      required int samplesEncodedWithSilk,
      required int samplesEncodedWithCelt,
      required bool voiceActivityFlag,
      required double totalEncodeTime,
      required double totalPacketSendDelay,
      required double averageRtcpInterval,
      required String qualityLimitationReason,
      dynamic qualityLimitationDurations,
      required int qualityLimitationResolutionChanges,
      dynamic perDscpPacketsSent,
      required int nackCount,
      required int firCount,
      required int pliCount,
      required int sliCount,
      required String encoderImplementation});

  factory RTCOutboundRtpStreamStats(
          {required int rtxSsrc,
          required String mediaSourceId,
          required String senderId,
          required String remoteId,
          required String rid,
          required double lastPacketSentTimestamp,
          required int headerBytesSent,
          required int packetsDiscardedOnSend,
          required int bytesDiscardedOnSend,
          required int fecPacketsSent,
          required int retransmittedPacketsSent,
          required int retransmittedBytesSent,
          required double targetBitrate,
          required int totalEncodedBytesTarget,
          required int frameWidth,
          required int frameHeight,
          required int frameBitDepth,
          required double framesPerSecond,
          required int framesSent,
          required int hugeFramesSent,
          required int framesEncoded,
          required int keyFramesEncoded,
          required int framesDiscardedOnSend,
          required int qpSum,
          required int totalSamplesSent,
          required int samplesEncodedWithSilk,
          required int samplesEncodedWithCelt,
          required bool voiceActivityFlag,
          required double totalEncodeTime,
          required double totalPacketSendDelay,
          required double averageRtcpInterval,
          required RTCQualityLimitationReason qualityLimitationReason,
          dynamic qualityLimitationDurations,
          required int qualityLimitationResolutionChanges,
          dynamic perDscpPacketsSent,
          required int nackCount,
          required int firCount,
          required int pliCount,
          required int sliCount,
          required String encoderImplementation}) =>
      RTCOutboundRtpStreamStats._(
          rtxSsrc: rtxSsrc,
          mediaSourceId: mediaSourceId,
          senderId: senderId,
          remoteId: remoteId,
          rid: rid,
          lastPacketSentTimestamp: lastPacketSentTimestamp,
          headerBytesSent: headerBytesSent,
          packetsDiscardedOnSend: packetsDiscardedOnSend,
          bytesDiscardedOnSend: bytesDiscardedOnSend,
          fecPacketsSent: fecPacketsSent,
          retransmittedPacketsSent: retransmittedPacketsSent,
          retransmittedBytesSent: retransmittedBytesSent,
          targetBitrate: targetBitrate,
          totalEncodedBytesTarget: totalEncodedBytesTarget,
          frameWidth: frameWidth,
          frameHeight: frameHeight,
          frameBitDepth: frameBitDepth,
          framesPerSecond: framesPerSecond,
          framesSent: framesSent,
          hugeFramesSent: hugeFramesSent,
          framesEncoded: framesEncoded,
          keyFramesEncoded: keyFramesEncoded,
          framesDiscardedOnSend: framesDiscardedOnSend,
          qpSum: qpSum,
          totalSamplesSent: totalSamplesSent,
          samplesEncodedWithSilk: samplesEncodedWithSilk,
          samplesEncodedWithCelt: samplesEncodedWithCelt,
          voiceActivityFlag: voiceActivityFlag,
          totalEncodeTime: totalEncodeTime,
          totalPacketSendDelay: totalPacketSendDelay,
          averageRtcpInterval: averageRtcpInterval,
          qualityLimitationReason: qualityLimitationReason.name,
          qualityLimitationDurations: qualityLimitationDurations,
          qualityLimitationResolutionChanges:
              qualityLimitationResolutionChanges,
          perDscpPacketsSent: perDscpPacketsSent,
          nackCount: nackCount,
          firCount: firCount,
          pliCount: pliCount,
          sliCount: sliCount,
          encoderImplementation: encoderImplementation);
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

  String get senderId => js_util.getProperty(this, 'senderId');
  set senderId(String newValue) {
    js_util.setProperty(this, 'senderId', newValue);
  }

  String get remoteId => js_util.getProperty(this, 'remoteId');
  set remoteId(String newValue) {
    js_util.setProperty(this, 'remoteId', newValue);
  }

  String get rid => js_util.getProperty(this, 'rid');
  set rid(String newValue) {
    js_util.setProperty(this, 'rid', newValue);
  }

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

  int get retransmittedPacketsSent =>
      js_util.getProperty(this, 'retransmittedPacketsSent');
  set retransmittedPacketsSent(int newValue) {
    js_util.setProperty(this, 'retransmittedPacketsSent', newValue);
  }

  int get retransmittedBytesSent =>
      js_util.getProperty(this, 'retransmittedBytesSent');
  set retransmittedBytesSent(int newValue) {
    js_util.setProperty(this, 'retransmittedBytesSent', newValue);
  }

  double get targetBitrate => js_util.getProperty(this, 'targetBitrate');
  set targetBitrate(double newValue) {
    js_util.setProperty(this, 'targetBitrate', newValue);
  }

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

  double get totalEncodeTime => js_util.getProperty(this, 'totalEncodeTime');
  set totalEncodeTime(double newValue) {
    js_util.setProperty(this, 'totalEncodeTime', newValue);
  }

  double get totalPacketSendDelay =>
      js_util.getProperty(this, 'totalPacketSendDelay');
  set totalPacketSendDelay(double newValue) {
    js_util.setProperty(this, 'totalPacketSendDelay', newValue);
  }

  double get averageRtcpInterval =>
      js_util.getProperty(this, 'averageRtcpInterval');
  set averageRtcpInterval(double newValue) {
    js_util.setProperty(this, 'averageRtcpInterval', newValue);
  }

  RTCQualityLimitationReason get qualityLimitationReason =>
      RTCQualityLimitationReason.values
          .byName(js_util.getProperty(this, 'qualityLimitationReason'));
  set qualityLimitationReason(RTCQualityLimitationReason newValue) {
    js_util.setProperty(this, 'qualityLimitationReason', newValue.name);
  }

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

  dynamic get perDscpPacketsSent =>
      js_util.getProperty(this, 'perDscpPacketsSent');
  set perDscpPacketsSent(dynamic newValue) {
    js_util.setProperty(this, 'perDscpPacketsSent', newValue);
  }

  int get nackCount => js_util.getProperty(this, 'nackCount');
  set nackCount(int newValue) {
    js_util.setProperty(this, 'nackCount', newValue);
  }

  int get firCount => js_util.getProperty(this, 'firCount');
  set firCount(int newValue) {
    js_util.setProperty(this, 'firCount', newValue);
  }

  int get pliCount => js_util.getProperty(this, 'pliCount');
  set pliCount(int newValue) {
    js_util.setProperty(this, 'pliCount', newValue);
  }

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

@anonymous
@JS()
@staticInterop
class RTCRemoteOutboundRtpStreamStats implements RTCSentRtpStreamStats {
  external factory RTCRemoteOutboundRtpStreamStats(
      {required String localId,
      required double remoteTimestamp,
      required int reportsSent,
      required double roundTripTime,
      required double totalRoundTripTime,
      required int roundTripTimeMeasurements});
}

extension PropsRTCRemoteOutboundRtpStreamStats
    on RTCRemoteOutboundRtpStreamStats {
  String get localId => js_util.getProperty(this, 'localId');
  set localId(String newValue) {
    js_util.setProperty(this, 'localId', newValue);
  }

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
      {required String trackIdentifier,
      required String kind,
      required bool relayedSource});
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
      {required double audioLevel,
      required double totalAudioEnergy,
      required double totalSamplesDuration,
      required double echoReturnLoss,
      required double echoReturnLossEnhancement});
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
      {required int width,
      required int height,
      required int bitDepth,
      required int frames,
      required double framesPerSecond});
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
      {required int contributorSsrc,
      required String inboundRtpStreamId,
      required int packetsContributedTo,
      required double audioLevel});
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
      {required int dataChannelsOpened,
      required int dataChannelsClosed,
      required int dataChannelsRequested,
      required int dataChannelsAccepted});
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
      {required String senderId,
      required String receiverId,
      required String mid});
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
      {required String trackIdentifier,
      required bool ended,
      required String kind});
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
  external factory RTCVideoSenderStats({required String mediaSourceId});
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
  external factory RTCAudioSenderStats({required String mediaSourceId});
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
  external factory RTCDataChannelStats._(
      {required String label,
      required String protocol,
      required int dataChannelIdentifier,
      required String state,
      required int messagesSent,
      required int bytesSent,
      required int messagesReceived,
      required int bytesReceived});

  factory RTCDataChannelStats(
          {required String label,
          required String protocol,
          required int dataChannelIdentifier,
          required RTCDataChannelState state,
          required int messagesSent,
          required int bytesSent,
          required int messagesReceived,
          required int bytesReceived}) =>
      RTCDataChannelStats._(
          label: label,
          protocol: protocol,
          dataChannelIdentifier: dataChannelIdentifier,
          state: state.name,
          messagesSent: messagesSent,
          bytesSent: bytesSent,
          messagesReceived: messagesReceived,
          bytesReceived: bytesReceived);
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

  RTCDataChannelState get state =>
      RTCDataChannelState.values.byName(js_util.getProperty(this, 'state'));
  set state(RTCDataChannelState newValue) {
    js_util.setProperty(this, 'state', newValue.name);
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
  external factory RTCTransportStats._(
      {required int packetsSent,
      required int packetsReceived,
      required int bytesSent,
      required int bytesReceived,
      required String rtcpTransportStatsId,
      required String iceRole,
      required String iceLocalUsernameFragment,
      required String dtlsState,
      required String iceState,
      required String selectedCandidatePairId,
      required String localCertificateId,
      required String remoteCertificateId,
      required String tlsVersion,
      required String dtlsCipher,
      required String srtpCipher,
      required String tlsGroup,
      required int selectedCandidatePairChanges});

  factory RTCTransportStats(
          {required int packetsSent,
          required int packetsReceived,
          required int bytesSent,
          required int bytesReceived,
          required String rtcpTransportStatsId,
          required RTCIceRole iceRole,
          required String iceLocalUsernameFragment,
          required RTCDtlsTransportState dtlsState,
          required RTCIceTransportState iceState,
          required String selectedCandidatePairId,
          required String localCertificateId,
          required String remoteCertificateId,
          required String tlsVersion,
          required String dtlsCipher,
          required String srtpCipher,
          required String tlsGroup,
          required int selectedCandidatePairChanges}) =>
      RTCTransportStats._(
          packetsSent: packetsSent,
          packetsReceived: packetsReceived,
          bytesSent: bytesSent,
          bytesReceived: bytesReceived,
          rtcpTransportStatsId: rtcpTransportStatsId,
          iceRole: iceRole.name,
          iceLocalUsernameFragment: iceLocalUsernameFragment,
          dtlsState: dtlsState.name,
          iceState: iceState.name,
          selectedCandidatePairId: selectedCandidatePairId,
          localCertificateId: localCertificateId,
          remoteCertificateId: remoteCertificateId,
          tlsVersion: tlsVersion,
          dtlsCipher: dtlsCipher,
          srtpCipher: srtpCipher,
          tlsGroup: tlsGroup,
          selectedCandidatePairChanges: selectedCandidatePairChanges);
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

  RTCIceRole get iceRole =>
      RTCIceRole.values.byName(js_util.getProperty(this, 'iceRole'));
  set iceRole(RTCIceRole newValue) {
    js_util.setProperty(this, 'iceRole', newValue.name);
  }

  String get iceLocalUsernameFragment =>
      js_util.getProperty(this, 'iceLocalUsernameFragment');
  set iceLocalUsernameFragment(String newValue) {
    js_util.setProperty(this, 'iceLocalUsernameFragment', newValue);
  }

  RTCDtlsTransportState get dtlsState => RTCDtlsTransportState.values
      .byName(js_util.getProperty(this, 'dtlsState'));
  set dtlsState(RTCDtlsTransportState newValue) {
    js_util.setProperty(this, 'dtlsState', newValue.name);
  }

  RTCIceTransportState get iceState =>
      RTCIceTransportState.values.byName(js_util.getProperty(this, 'iceState'));
  set iceState(RTCIceTransportState newValue) {
    js_util.setProperty(this, 'iceState', newValue.name);
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
      {required String transportId,
      required double smoothedRoundTripTime,
      required int congestionWindow,
      required int receiverWindow,
      required int mtu,
      required int unackData});
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

@anonymous
@JS()
@staticInterop
class RTCIceCandidateStats implements RTCStats {
  external factory RTCIceCandidateStats._(
      {required String transportId,
      String? address,
      required int port,
      required String protocol,
      required String candidateType,
      required int priority,
      required String url,
      required String relayProtocol});

  factory RTCIceCandidateStats(
          {required String transportId,
          String? address,
          required int port,
          required String protocol,
          required RTCIceCandidateType candidateType,
          required int priority,
          required String url,
          required String relayProtocol}) =>
      RTCIceCandidateStats._(
          transportId: transportId,
          address: address,
          port: port,
          protocol: protocol,
          candidateType: candidateType.name,
          priority: priority,
          url: url,
          relayProtocol: relayProtocol);
}

extension PropsRTCIceCandidateStats on RTCIceCandidateStats {
  String get transportId => js_util.getProperty(this, 'transportId');
  set transportId(String newValue) {
    js_util.setProperty(this, 'transportId', newValue);
  }

  String? get address => js_util.getProperty(this, 'address');
  set address(String? newValue) {
    js_util.setProperty(this, 'address', newValue);
  }

  int get port => js_util.getProperty(this, 'port');
  set port(int newValue) {
    js_util.setProperty(this, 'port', newValue);
  }

  String get protocol => js_util.getProperty(this, 'protocol');
  set protocol(String newValue) {
    js_util.setProperty(this, 'protocol', newValue);
  }

  RTCIceCandidateType get candidateType => RTCIceCandidateType.values
      .byName(js_util.getProperty(this, 'candidateType'));
  set candidateType(RTCIceCandidateType newValue) {
    js_util.setProperty(this, 'candidateType', newValue.name);
  }

  int get priority => js_util.getProperty(this, 'priority');
  set priority(int newValue) {
    js_util.setProperty(this, 'priority', newValue);
  }

  String get url => js_util.getProperty(this, 'url');
  set url(String newValue) {
    js_util.setProperty(this, 'url', newValue);
  }

  String get relayProtocol => js_util.getProperty(this, 'relayProtocol');
  set relayProtocol(String newValue) {
    js_util.setProperty(this, 'relayProtocol', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCIceCandidatePairStats implements RTCStats {
  external factory RTCIceCandidatePairStats._(
      {required String transportId,
      required String localCandidateId,
      required String remoteCandidateId,
      required String state,
      required bool nominated,
      required int packetsSent,
      required int packetsReceived,
      required int bytesSent,
      required int bytesReceived,
      required double lastPacketSentTimestamp,
      required double lastPacketReceivedTimestamp,
      required double firstRequestTimestamp,
      required double lastRequestTimestamp,
      required double lastResponseTimestamp,
      required double totalRoundTripTime,
      required double currentRoundTripTime,
      required double availableOutgoingBitrate,
      required double availableIncomingBitrate,
      required int circuitBreakerTriggerCount,
      required int requestsReceived,
      required int requestsSent,
      required int responsesReceived,
      required int responsesSent,
      required int retransmissionsReceived,
      required int retransmissionsSent,
      required int consentRequestsSent,
      required double consentExpiredTimestamp,
      required int packetsDiscardedOnSend,
      required int bytesDiscardedOnSend,
      required int requestBytesSent,
      required int consentRequestBytesSent,
      required int responseBytesSent});

  factory RTCIceCandidatePairStats(
          {required String transportId,
          required String localCandidateId,
          required String remoteCandidateId,
          required RTCStatsIceCandidatePairState state,
          required bool nominated,
          required int packetsSent,
          required int packetsReceived,
          required int bytesSent,
          required int bytesReceived,
          required double lastPacketSentTimestamp,
          required double lastPacketReceivedTimestamp,
          required double firstRequestTimestamp,
          required double lastRequestTimestamp,
          required double lastResponseTimestamp,
          required double totalRoundTripTime,
          required double currentRoundTripTime,
          required double availableOutgoingBitrate,
          required double availableIncomingBitrate,
          required int circuitBreakerTriggerCount,
          required int requestsReceived,
          required int requestsSent,
          required int responsesReceived,
          required int responsesSent,
          required int retransmissionsReceived,
          required int retransmissionsSent,
          required int consentRequestsSent,
          required double consentExpiredTimestamp,
          required int packetsDiscardedOnSend,
          required int bytesDiscardedOnSend,
          required int requestBytesSent,
          required int consentRequestBytesSent,
          required int responseBytesSent}) =>
      RTCIceCandidatePairStats._(
          transportId: transportId,
          localCandidateId: localCandidateId,
          remoteCandidateId: remoteCandidateId,
          state: state.name,
          nominated: nominated,
          packetsSent: packetsSent,
          packetsReceived: packetsReceived,
          bytesSent: bytesSent,
          bytesReceived: bytesReceived,
          lastPacketSentTimestamp: lastPacketSentTimestamp,
          lastPacketReceivedTimestamp: lastPacketReceivedTimestamp,
          firstRequestTimestamp: firstRequestTimestamp,
          lastRequestTimestamp: lastRequestTimestamp,
          lastResponseTimestamp: lastResponseTimestamp,
          totalRoundTripTime: totalRoundTripTime,
          currentRoundTripTime: currentRoundTripTime,
          availableOutgoingBitrate: availableOutgoingBitrate,
          availableIncomingBitrate: availableIncomingBitrate,
          circuitBreakerTriggerCount: circuitBreakerTriggerCount,
          requestsReceived: requestsReceived,
          requestsSent: requestsSent,
          responsesReceived: responsesReceived,
          responsesSent: responsesSent,
          retransmissionsReceived: retransmissionsReceived,
          retransmissionsSent: retransmissionsSent,
          consentRequestsSent: consentRequestsSent,
          consentExpiredTimestamp: consentExpiredTimestamp,
          packetsDiscardedOnSend: packetsDiscardedOnSend,
          bytesDiscardedOnSend: bytesDiscardedOnSend,
          requestBytesSent: requestBytesSent,
          consentRequestBytesSent: consentRequestBytesSent,
          responseBytesSent: responseBytesSent);
}

extension PropsRTCIceCandidatePairStats on RTCIceCandidatePairStats {
  String get transportId => js_util.getProperty(this, 'transportId');
  set transportId(String newValue) {
    js_util.setProperty(this, 'transportId', newValue);
  }

  String get localCandidateId => js_util.getProperty(this, 'localCandidateId');
  set localCandidateId(String newValue) {
    js_util.setProperty(this, 'localCandidateId', newValue);
  }

  String get remoteCandidateId =>
      js_util.getProperty(this, 'remoteCandidateId');
  set remoteCandidateId(String newValue) {
    js_util.setProperty(this, 'remoteCandidateId', newValue);
  }

  RTCStatsIceCandidatePairState get state =>
      RTCStatsIceCandidatePairState.values
          .byName(js_util.getProperty(this, 'state'));
  set state(RTCStatsIceCandidatePairState newValue) {
    js_util.setProperty(this, 'state', newValue.name);
  }

  bool get nominated => js_util.getProperty(this, 'nominated');
  set nominated(bool newValue) {
    js_util.setProperty(this, 'nominated', newValue);
  }

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

  double get lastPacketSentTimestamp =>
      js_util.getProperty(this, 'lastPacketSentTimestamp');
  set lastPacketSentTimestamp(double newValue) {
    js_util.setProperty(this, 'lastPacketSentTimestamp', newValue);
  }

  double get lastPacketReceivedTimestamp =>
      js_util.getProperty(this, 'lastPacketReceivedTimestamp');
  set lastPacketReceivedTimestamp(double newValue) {
    js_util.setProperty(this, 'lastPacketReceivedTimestamp', newValue);
  }

  double get firstRequestTimestamp =>
      js_util.getProperty(this, 'firstRequestTimestamp');
  set firstRequestTimestamp(double newValue) {
    js_util.setProperty(this, 'firstRequestTimestamp', newValue);
  }

  double get lastRequestTimestamp =>
      js_util.getProperty(this, 'lastRequestTimestamp');
  set lastRequestTimestamp(double newValue) {
    js_util.setProperty(this, 'lastRequestTimestamp', newValue);
  }

  double get lastResponseTimestamp =>
      js_util.getProperty(this, 'lastResponseTimestamp');
  set lastResponseTimestamp(double newValue) {
    js_util.setProperty(this, 'lastResponseTimestamp', newValue);
  }

  double get totalRoundTripTime =>
      js_util.getProperty(this, 'totalRoundTripTime');
  set totalRoundTripTime(double newValue) {
    js_util.setProperty(this, 'totalRoundTripTime', newValue);
  }

  double get currentRoundTripTime =>
      js_util.getProperty(this, 'currentRoundTripTime');
  set currentRoundTripTime(double newValue) {
    js_util.setProperty(this, 'currentRoundTripTime', newValue);
  }

  double get availableOutgoingBitrate =>
      js_util.getProperty(this, 'availableOutgoingBitrate');
  set availableOutgoingBitrate(double newValue) {
    js_util.setProperty(this, 'availableOutgoingBitrate', newValue);
  }

  double get availableIncomingBitrate =>
      js_util.getProperty(this, 'availableIncomingBitrate');
  set availableIncomingBitrate(double newValue) {
    js_util.setProperty(this, 'availableIncomingBitrate', newValue);
  }

  int get circuitBreakerTriggerCount =>
      js_util.getProperty(this, 'circuitBreakerTriggerCount');
  set circuitBreakerTriggerCount(int newValue) {
    js_util.setProperty(this, 'circuitBreakerTriggerCount', newValue);
  }

  int get requestsReceived => js_util.getProperty(this, 'requestsReceived');
  set requestsReceived(int newValue) {
    js_util.setProperty(this, 'requestsReceived', newValue);
  }

  int get requestsSent => js_util.getProperty(this, 'requestsSent');
  set requestsSent(int newValue) {
    js_util.setProperty(this, 'requestsSent', newValue);
  }

  int get responsesReceived => js_util.getProperty(this, 'responsesReceived');
  set responsesReceived(int newValue) {
    js_util.setProperty(this, 'responsesReceived', newValue);
  }

  int get responsesSent => js_util.getProperty(this, 'responsesSent');
  set responsesSent(int newValue) {
    js_util.setProperty(this, 'responsesSent', newValue);
  }

  int get retransmissionsReceived =>
      js_util.getProperty(this, 'retransmissionsReceived');
  set retransmissionsReceived(int newValue) {
    js_util.setProperty(this, 'retransmissionsReceived', newValue);
  }

  int get retransmissionsSent =>
      js_util.getProperty(this, 'retransmissionsSent');
  set retransmissionsSent(int newValue) {
    js_util.setProperty(this, 'retransmissionsSent', newValue);
  }

  int get consentRequestsSent =>
      js_util.getProperty(this, 'consentRequestsSent');
  set consentRequestsSent(int newValue) {
    js_util.setProperty(this, 'consentRequestsSent', newValue);
  }

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
      {required String fingerprint,
      required String fingerprintAlgorithm,
      required String base64Certificate,
      required String issuerCertificateId});
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
      {required String url,
      required int port,
      required String relayProtocol,
      required int totalRequestsSent,
      required int totalResponsesReceived,
      required double totalRoundTripTime});
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
