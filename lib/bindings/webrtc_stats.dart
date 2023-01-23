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
  codec('codec'),
  inboundRtp('inbound-rtp'),
  outboundRtp('outbound-rtp'),
  remoteInboundRtp('remote-inbound-rtp'),
  remoteOutboundRtp('remote-outbound-rtp'),
  mediaSource('media-source'),
  mediaPlayout('media-playout'),
  peerConnection('peer-connection'),
  dataChannel('data-channel'),
  stream('stream'),
  track('track'),
  transport('transport'),
  candidatePair('candidate-pair'),
  localCandidate('local-candidate'),
  remoteCandidate('remote-candidate'),
  certificate('certificate');

  final String value;
  static RTCStatsType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCStatsType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCStatsType(this.value);
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
  external factory RTCCodecStats(
      {required int payloadType,
      required String transportId,
      required String mimeType,
      required int clockRate,
      required int channels,
      required String sdpFmtpLine});
}

extension PropsRTCCodecStats on RTCCodecStats {
  int get payloadType => js_util.getProperty(this, 'payloadType');
  set payloadType(int newValue) {
    js_util.setProperty(this, 'payloadType', newValue);
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

@anonymous
@JS()
@staticInterop
class RTCReceivedRtpStreamStats implements RTCRtpStreamStats {
  external factory RTCReceivedRtpStreamStats(
      {required int packetsReceived,
      required int packetsLost,
      required double jitter});
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
      {required String trackIdentifier,
      required String kind,
      required String mid,
      required String remoteId,
      required int framesDecoded,
      required int keyFramesDecoded,
      required int framesRendered,
      required int framesDropped,
      required int frameWidth,
      required int frameHeight,
      required double framesPerSecond,
      required int qpSum,
      required double totalDecodeTime,
      required double totalInterFrameDelay,
      required double totalSquaredInterFrameDelay,
      required int pauseCount,
      required double totalPausesDuration,
      required int freezeCount,
      required double totalFreezesDuration,
      required double lastPacketReceivedTimestamp,
      required int headerBytesReceived,
      required int packetsDiscarded,
      required int fecPacketsReceived,
      required int fecPacketsDiscarded,
      required int bytesReceived,
      required int nackCount,
      required int firCount,
      required int pliCount,
      required double totalProcessingDelay,
      required double estimatedPlayoutTimestamp,
      required double jitterBufferDelay,
      required double jitterBufferTargetDelay,
      required int jitterBufferEmittedCount,
      required double jitterBufferMinimumDelay,
      required int totalSamplesReceived,
      required int concealedSamples,
      required int silentConcealedSamples,
      required int concealmentEvents,
      required int insertedSamplesForDeceleration,
      required int removedSamplesForAcceleration,
      required double audioLevel,
      required double totalAudioEnergy,
      required double totalSamplesDuration,
      required int framesReceived,
      required String decoderImplementation,
      required String playoutId,
      required bool powerEfficientDecoder,
      required int framesAssembledFromMultiplePackets,
      required double totalAssemblyTime});
}

extension PropsRTCInboundRtpStreamStats on RTCInboundRtpStreamStats {
  String get trackIdentifier => js_util.getProperty(this, 'trackIdentifier');
  set trackIdentifier(String newValue) {
    js_util.setProperty(this, 'trackIdentifier', newValue);
  }

  String get kind => js_util.getProperty(this, 'kind');
  set kind(String newValue) {
    js_util.setProperty(this, 'kind', newValue);
  }

  String get mid => js_util.getProperty(this, 'mid');
  set mid(String newValue) {
    js_util.setProperty(this, 'mid', newValue);
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

  int get framesRendered => js_util.getProperty(this, 'framesRendered');
  set framesRendered(int newValue) {
    js_util.setProperty(this, 'framesRendered', newValue);
  }

  int get framesDropped => js_util.getProperty(this, 'framesDropped');
  set framesDropped(int newValue) {
    js_util.setProperty(this, 'framesDropped', newValue);
  }

  int get frameWidth => js_util.getProperty(this, 'frameWidth');
  set frameWidth(int newValue) {
    js_util.setProperty(this, 'frameWidth', newValue);
  }

  int get frameHeight => js_util.getProperty(this, 'frameHeight');
  set frameHeight(int newValue) {
    js_util.setProperty(this, 'frameHeight', newValue);
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

  int get pauseCount => js_util.getProperty(this, 'pauseCount');
  set pauseCount(int newValue) {
    js_util.setProperty(this, 'pauseCount', newValue);
  }

  double get totalPausesDuration =>
      js_util.getProperty(this, 'totalPausesDuration');
  set totalPausesDuration(double newValue) {
    js_util.setProperty(this, 'totalPausesDuration', newValue);
  }

  int get freezeCount => js_util.getProperty(this, 'freezeCount');
  set freezeCount(int newValue) {
    js_util.setProperty(this, 'freezeCount', newValue);
  }

  double get totalFreezesDuration =>
      js_util.getProperty(this, 'totalFreezesDuration');
  set totalFreezesDuration(double newValue) {
    js_util.setProperty(this, 'totalFreezesDuration', newValue);
  }

  double get lastPacketReceivedTimestamp =>
      js_util.getProperty(this, 'lastPacketReceivedTimestamp');
  set lastPacketReceivedTimestamp(double newValue) {
    js_util.setProperty(this, 'lastPacketReceivedTimestamp', newValue);
  }

  int get headerBytesReceived =>
      js_util.getProperty(this, 'headerBytesReceived');
  set headerBytesReceived(int newValue) {
    js_util.setProperty(this, 'headerBytesReceived', newValue);
  }

  int get packetsDiscarded => js_util.getProperty(this, 'packetsDiscarded');
  set packetsDiscarded(int newValue) {
    js_util.setProperty(this, 'packetsDiscarded', newValue);
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

  double get jitterBufferTargetDelay =>
      js_util.getProperty(this, 'jitterBufferTargetDelay');
  set jitterBufferTargetDelay(double newValue) {
    js_util.setProperty(this, 'jitterBufferTargetDelay', newValue);
  }

  int get jitterBufferEmittedCount =>
      js_util.getProperty(this, 'jitterBufferEmittedCount');
  set jitterBufferEmittedCount(int newValue) {
    js_util.setProperty(this, 'jitterBufferEmittedCount', newValue);
  }

  double get jitterBufferMinimumDelay =>
      js_util.getProperty(this, 'jitterBufferMinimumDelay');
  set jitterBufferMinimumDelay(double newValue) {
    js_util.setProperty(this, 'jitterBufferMinimumDelay', newValue);
  }

  int get totalSamplesReceived =>
      js_util.getProperty(this, 'totalSamplesReceived');
  set totalSamplesReceived(int newValue) {
    js_util.setProperty(this, 'totalSamplesReceived', newValue);
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

  String get playoutId => js_util.getProperty(this, 'playoutId');
  set playoutId(String newValue) {
    js_util.setProperty(this, 'playoutId', newValue);
  }

  bool get powerEfficientDecoder =>
      js_util.getProperty(this, 'powerEfficientDecoder');
  set powerEfficientDecoder(bool newValue) {
    js_util.setProperty(this, 'powerEfficientDecoder', newValue);
  }

  int get framesAssembledFromMultiplePackets =>
      js_util.getProperty(this, 'framesAssembledFromMultiplePackets');
  set framesAssembledFromMultiplePackets(int newValue) {
    js_util.setProperty(this, 'framesAssembledFromMultiplePackets', newValue);
  }

  double get totalAssemblyTime =>
      js_util.getProperty(this, 'totalAssemblyTime');
  set totalAssemblyTime(double newValue) {
    js_util.setProperty(this, 'totalAssemblyTime', newValue);
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

///  The dictionary is the [RTCStats]-based object which provides
/// metrics and statistics related to an outbound RTP stream being
/// sent by an [RTCRtpSender].
@anonymous
@JS()
@staticInterop
class RTCOutboundRtpStreamStats implements RTCSentRtpStreamStats {
  external factory RTCOutboundRtpStreamStats._(
      {required String mid,
      required String mediaSourceId,
      required String remoteId,
      required String rid,
      required int headerBytesSent,
      required int retransmittedPacketsSent,
      required int retransmittedBytesSent,
      required double targetBitrate,
      required int totalEncodedBytesTarget,
      required int frameWidth,
      required int frameHeight,
      required double framesPerSecond,
      required int framesSent,
      required int hugeFramesSent,
      required int framesEncoded,
      required int keyFramesEncoded,
      required int qpSum,
      required double totalEncodeTime,
      required double totalPacketSendDelay,
      required String qualityLimitationReason,
      dynamic qualityLimitationDurations,
      required int qualityLimitationResolutionChanges,
      required int nackCount,
      required int firCount,
      required int pliCount,
      required String encoderImplementation,
      required bool powerEfficientEncoder,
      required bool active,
      required String scalabilityMode});

  factory RTCOutboundRtpStreamStats(
          {required String mid,
          required String mediaSourceId,
          required String remoteId,
          required String rid,
          required int headerBytesSent,
          required int retransmittedPacketsSent,
          required int retransmittedBytesSent,
          required double targetBitrate,
          required int totalEncodedBytesTarget,
          required int frameWidth,
          required int frameHeight,
          required double framesPerSecond,
          required int framesSent,
          required int hugeFramesSent,
          required int framesEncoded,
          required int keyFramesEncoded,
          required int qpSum,
          required double totalEncodeTime,
          required double totalPacketSendDelay,
          required RTCQualityLimitationReason qualityLimitationReason,
          dynamic qualityLimitationDurations,
          required int qualityLimitationResolutionChanges,
          required int nackCount,
          required int firCount,
          required int pliCount,
          required String encoderImplementation,
          required bool powerEfficientEncoder,
          required bool active,
          required String scalabilityMode}) =>
      RTCOutboundRtpStreamStats._(
          mid: mid,
          mediaSourceId: mediaSourceId,
          remoteId: remoteId,
          rid: rid,
          headerBytesSent: headerBytesSent,
          retransmittedPacketsSent: retransmittedPacketsSent,
          retransmittedBytesSent: retransmittedBytesSent,
          targetBitrate: targetBitrate,
          totalEncodedBytesTarget: totalEncodedBytesTarget,
          frameWidth: frameWidth,
          frameHeight: frameHeight,
          framesPerSecond: framesPerSecond,
          framesSent: framesSent,
          hugeFramesSent: hugeFramesSent,
          framesEncoded: framesEncoded,
          keyFramesEncoded: keyFramesEncoded,
          qpSum: qpSum,
          totalEncodeTime: totalEncodeTime,
          totalPacketSendDelay: totalPacketSendDelay,
          qualityLimitationReason: qualityLimitationReason.value,
          qualityLimitationDurations: qualityLimitationDurations,
          qualityLimitationResolutionChanges:
              qualityLimitationResolutionChanges,
          nackCount: nackCount,
          firCount: firCount,
          pliCount: pliCount,
          encoderImplementation: encoderImplementation,
          powerEfficientEncoder: powerEfficientEncoder,
          active: active,
          scalabilityMode: scalabilityMode);
}

extension PropsRTCOutboundRtpStreamStats on RTCOutboundRtpStreamStats {
  String get mid => js_util.getProperty(this, 'mid');
  set mid(String newValue) {
    js_util.setProperty(this, 'mid', newValue);
  }

  String get mediaSourceId => js_util.getProperty(this, 'mediaSourceId');
  set mediaSourceId(String newValue) {
    js_util.setProperty(this, 'mediaSourceId', newValue);
  }

  String get remoteId => js_util.getProperty(this, 'remoteId');
  set remoteId(String newValue) {
    js_util.setProperty(this, 'remoteId', newValue);
  }

  String get rid => js_util.getProperty(this, 'rid');
  set rid(String newValue) {
    js_util.setProperty(this, 'rid', newValue);
  }

  int get headerBytesSent => js_util.getProperty(this, 'headerBytesSent');
  set headerBytesSent(int newValue) {
    js_util.setProperty(this, 'headerBytesSent', newValue);
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

  int get qpSum => js_util.getProperty(this, 'qpSum');
  set qpSum(int newValue) {
    js_util.setProperty(this, 'qpSum', newValue);
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

  RTCQualityLimitationReason get qualityLimitationReason =>
      RTCQualityLimitationReason.fromValue(
          js_util.getProperty(this, 'qualityLimitationReason'));
  set qualityLimitationReason(RTCQualityLimitationReason newValue) {
    js_util.setProperty(this, 'qualityLimitationReason', newValue.value);
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

  String get encoderImplementation =>
      js_util.getProperty(this, 'encoderImplementation');
  set encoderImplementation(String newValue) {
    js_util.setProperty(this, 'encoderImplementation', newValue);
  }

  bool get powerEfficientEncoder =>
      js_util.getProperty(this, 'powerEfficientEncoder');
  set powerEfficientEncoder(bool newValue) {
    js_util.setProperty(this, 'powerEfficientEncoder', newValue);
  }

  bool get active => js_util.getProperty(this, 'active');
  set active(bool newValue) {
    js_util.setProperty(this, 'active', newValue);
  }

  String get scalabilityMode => js_util.getProperty(this, 'scalabilityMode');
  set scalabilityMode(String newValue) {
    js_util.setProperty(this, 'scalabilityMode', newValue);
  }
}

enum RTCQualityLimitationReason {
  none('none'),
  cpu('cpu'),
  bandwidth('bandwidth'),
  other('other');

  final String value;
  static RTCQualityLimitationReason fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCQualityLimitationReason> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const RTCQualityLimitationReason(this.value);
}

///  The WebRTC statistics model's dictionary extends the underlying
/// [RTCSentRtpStreamStats] dictionary with properties measuring
/// metrics specific to outgoing RTP streams.
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
      {required String trackIdentifier, required String kind});
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
      required double echoReturnLossEnhancement,
      required double droppedSamplesDuration,
      required int droppedSamplesEvents,
      required double totalCaptureDelay,
      required int totalSamplesCaptured});
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

  double get droppedSamplesDuration =>
      js_util.getProperty(this, 'droppedSamplesDuration');
  set droppedSamplesDuration(double newValue) {
    js_util.setProperty(this, 'droppedSamplesDuration', newValue);
  }

  int get droppedSamplesEvents =>
      js_util.getProperty(this, 'droppedSamplesEvents');
  set droppedSamplesEvents(int newValue) {
    js_util.setProperty(this, 'droppedSamplesEvents', newValue);
  }

  double get totalCaptureDelay =>
      js_util.getProperty(this, 'totalCaptureDelay');
  set totalCaptureDelay(double newValue) {
    js_util.setProperty(this, 'totalCaptureDelay', newValue);
  }

  int get totalSamplesCaptured =>
      js_util.getProperty(this, 'totalSamplesCaptured');
  set totalSamplesCaptured(int newValue) {
    js_util.setProperty(this, 'totalSamplesCaptured', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCVideoSourceStats implements RTCMediaSourceStats {
  external factory RTCVideoSourceStats(
      {required int width,
      required int height,
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
class RTCAudioPlayoutStats implements RTCStats {
  external factory RTCAudioPlayoutStats(
      {required double synthesizedSamplesDuration,
      required int synthesizedSamplesEvents,
      required double totalSamplesDuration,
      required double totalPlayoutDelay,
      required int totalSamplesCount});
}

extension PropsRTCAudioPlayoutStats on RTCAudioPlayoutStats {
  double get synthesizedSamplesDuration =>
      js_util.getProperty(this, 'synthesizedSamplesDuration');
  set synthesizedSamplesDuration(double newValue) {
    js_util.setProperty(this, 'synthesizedSamplesDuration', newValue);
  }

  int get synthesizedSamplesEvents =>
      js_util.getProperty(this, 'synthesizedSamplesEvents');
  set synthesizedSamplesEvents(int newValue) {
    js_util.setProperty(this, 'synthesizedSamplesEvents', newValue);
  }

  double get totalSamplesDuration =>
      js_util.getProperty(this, 'totalSamplesDuration');
  set totalSamplesDuration(double newValue) {
    js_util.setProperty(this, 'totalSamplesDuration', newValue);
  }

  double get totalPlayoutDelay =>
      js_util.getProperty(this, 'totalPlayoutDelay');
  set totalPlayoutDelay(double newValue) {
    js_util.setProperty(this, 'totalPlayoutDelay', newValue);
  }

  int get totalSamplesCount => js_util.getProperty(this, 'totalSamplesCount');
  set totalSamplesCount(int newValue) {
    js_util.setProperty(this, 'totalSamplesCount', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class RTCPeerConnectionStats implements RTCStats {
  external factory RTCPeerConnectionStats(
      {required int dataChannelsOpened, required int dataChannelsClosed});
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
          state: state.value,
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
      RTCDataChannelState.fromValue(js_util.getProperty(this, 'state'));
  set state(RTCDataChannelState newValue) {
    js_util.setProperty(this, 'state', newValue.value);
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
      required String iceRole,
      required String iceLocalUsernameFragment,
      required String dtlsState,
      required String iceState,
      required String selectedCandidatePairId,
      required String localCertificateId,
      required String remoteCertificateId,
      required String tlsVersion,
      required String dtlsCipher,
      required String dtlsRole,
      required String srtpCipher,
      required int selectedCandidatePairChanges});

  factory RTCTransportStats(
          {required int packetsSent,
          required int packetsReceived,
          required int bytesSent,
          required int bytesReceived,
          required RTCIceRole iceRole,
          required String iceLocalUsernameFragment,
          required RTCDtlsTransportState dtlsState,
          required RTCIceTransportState iceState,
          required String selectedCandidatePairId,
          required String localCertificateId,
          required String remoteCertificateId,
          required String tlsVersion,
          required String dtlsCipher,
          required RTCDtlsRole dtlsRole,
          required String srtpCipher,
          required int selectedCandidatePairChanges}) =>
      RTCTransportStats._(
          packetsSent: packetsSent,
          packetsReceived: packetsReceived,
          bytesSent: bytesSent,
          bytesReceived: bytesReceived,
          iceRole: iceRole.value,
          iceLocalUsernameFragment: iceLocalUsernameFragment,
          dtlsState: dtlsState.value,
          iceState: iceState.value,
          selectedCandidatePairId: selectedCandidatePairId,
          localCertificateId: localCertificateId,
          remoteCertificateId: remoteCertificateId,
          tlsVersion: tlsVersion,
          dtlsCipher: dtlsCipher,
          dtlsRole: dtlsRole.value,
          srtpCipher: srtpCipher,
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

  RTCIceRole get iceRole =>
      RTCIceRole.fromValue(js_util.getProperty(this, 'iceRole'));
  set iceRole(RTCIceRole newValue) {
    js_util.setProperty(this, 'iceRole', newValue.value);
  }

  String get iceLocalUsernameFragment =>
      js_util.getProperty(this, 'iceLocalUsernameFragment');
  set iceLocalUsernameFragment(String newValue) {
    js_util.setProperty(this, 'iceLocalUsernameFragment', newValue);
  }

  RTCDtlsTransportState get dtlsState =>
      RTCDtlsTransportState.fromValue(js_util.getProperty(this, 'dtlsState'));
  set dtlsState(RTCDtlsTransportState newValue) {
    js_util.setProperty(this, 'dtlsState', newValue.value);
  }

  RTCIceTransportState get iceState =>
      RTCIceTransportState.fromValue(js_util.getProperty(this, 'iceState'));
  set iceState(RTCIceTransportState newValue) {
    js_util.setProperty(this, 'iceState', newValue.value);
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

  RTCDtlsRole get dtlsRole =>
      RTCDtlsRole.fromValue(js_util.getProperty(this, 'dtlsRole'));
  set dtlsRole(RTCDtlsRole newValue) {
    js_util.setProperty(this, 'dtlsRole', newValue.value);
  }

  String get srtpCipher => js_util.getProperty(this, 'srtpCipher');
  set srtpCipher(String newValue) {
    js_util.setProperty(this, 'srtpCipher', newValue);
  }

  int get selectedCandidatePairChanges =>
      js_util.getProperty(this, 'selectedCandidatePairChanges');
  set selectedCandidatePairChanges(int newValue) {
    js_util.setProperty(this, 'selectedCandidatePairChanges', newValue);
  }
}

enum RTCDtlsRole {
  client('client'),
  server('server'),
  unknown('unknown');

  final String value;
  static RTCDtlsRole fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCDtlsRole> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const RTCDtlsRole(this.value);
}

///  The WebRTC API's dictionary provides statistics related to an
/// [RTCIceCandidate].
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
      required String relayProtocol,
      required String foundation,
      required String relatedAddress,
      required int relatedPort,
      required String usernameFragment,
      required String tcpType});

  factory RTCIceCandidateStats(
          {required String transportId,
          String? address,
          required int port,
          required String protocol,
          required RTCIceCandidateType candidateType,
          required int priority,
          required String url,
          required RTCIceServerTransportProtocol relayProtocol,
          required String foundation,
          required String relatedAddress,
          required int relatedPort,
          required String usernameFragment,
          required RTCIceTcpCandidateType tcpType}) =>
      RTCIceCandidateStats._(
          transportId: transportId,
          address: address,
          port: port,
          protocol: protocol,
          candidateType: candidateType.value,
          priority: priority,
          url: url,
          relayProtocol: relayProtocol.value,
          foundation: foundation,
          relatedAddress: relatedAddress,
          relatedPort: relatedPort,
          usernameFragment: usernameFragment,
          tcpType: tcpType.value);
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

  RTCIceCandidateType get candidateType =>
      RTCIceCandidateType.fromValue(js_util.getProperty(this, 'candidateType'));
  set candidateType(RTCIceCandidateType newValue) {
    js_util.setProperty(this, 'candidateType', newValue.value);
  }

  int get priority => js_util.getProperty(this, 'priority');
  set priority(int newValue) {
    js_util.setProperty(this, 'priority', newValue);
  }

  String get url => js_util.getProperty(this, 'url');
  set url(String newValue) {
    js_util.setProperty(this, 'url', newValue);
  }

  RTCIceServerTransportProtocol get relayProtocol =>
      RTCIceServerTransportProtocol.fromValue(
          js_util.getProperty(this, 'relayProtocol'));
  set relayProtocol(RTCIceServerTransportProtocol newValue) {
    js_util.setProperty(this, 'relayProtocol', newValue.value);
  }

  String get foundation => js_util.getProperty(this, 'foundation');
  set foundation(String newValue) {
    js_util.setProperty(this, 'foundation', newValue);
  }

  String get relatedAddress => js_util.getProperty(this, 'relatedAddress');
  set relatedAddress(String newValue) {
    js_util.setProperty(this, 'relatedAddress', newValue);
  }

  int get relatedPort => js_util.getProperty(this, 'relatedPort');
  set relatedPort(int newValue) {
    js_util.setProperty(this, 'relatedPort', newValue);
  }

  String get usernameFragment => js_util.getProperty(this, 'usernameFragment');
  set usernameFragment(String newValue) {
    js_util.setProperty(this, 'usernameFragment', newValue);
  }

  RTCIceTcpCandidateType get tcpType =>
      RTCIceTcpCandidateType.fromValue(js_util.getProperty(this, 'tcpType'));
  set tcpType(RTCIceTcpCandidateType newValue) {
    js_util.setProperty(this, 'tcpType', newValue.value);
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
      required double totalRoundTripTime,
      required double currentRoundTripTime,
      required double availableOutgoingBitrate,
      required double availableIncomingBitrate,
      required int requestsReceived,
      required int requestsSent,
      required int responsesReceived,
      required int responsesSent,
      required int consentRequestsSent,
      required int packetsDiscardedOnSend,
      required int bytesDiscardedOnSend});

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
          required double totalRoundTripTime,
          required double currentRoundTripTime,
          required double availableOutgoingBitrate,
          required double availableIncomingBitrate,
          required int requestsReceived,
          required int requestsSent,
          required int responsesReceived,
          required int responsesSent,
          required int consentRequestsSent,
          required int packetsDiscardedOnSend,
          required int bytesDiscardedOnSend}) =>
      RTCIceCandidatePairStats._(
          transportId: transportId,
          localCandidateId: localCandidateId,
          remoteCandidateId: remoteCandidateId,
          state: state.value,
          nominated: nominated,
          packetsSent: packetsSent,
          packetsReceived: packetsReceived,
          bytesSent: bytesSent,
          bytesReceived: bytesReceived,
          lastPacketSentTimestamp: lastPacketSentTimestamp,
          lastPacketReceivedTimestamp: lastPacketReceivedTimestamp,
          totalRoundTripTime: totalRoundTripTime,
          currentRoundTripTime: currentRoundTripTime,
          availableOutgoingBitrate: availableOutgoingBitrate,
          availableIncomingBitrate: availableIncomingBitrate,
          requestsReceived: requestsReceived,
          requestsSent: requestsSent,
          responsesReceived: responsesReceived,
          responsesSent: responsesSent,
          consentRequestsSent: consentRequestsSent,
          packetsDiscardedOnSend: packetsDiscardedOnSend,
          bytesDiscardedOnSend: bytesDiscardedOnSend);
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
      RTCStatsIceCandidatePairState.fromValue(
          js_util.getProperty(this, 'state'));
  set state(RTCStatsIceCandidatePairState newValue) {
    js_util.setProperty(this, 'state', newValue.value);
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

  int get consentRequestsSent =>
      js_util.getProperty(this, 'consentRequestsSent');
  set consentRequestsSent(int newValue) {
    js_util.setProperty(this, 'consentRequestsSent', newValue);
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
}

enum RTCStatsIceCandidatePairState {
  frozen('frozen'),
  waiting('waiting'),
  inProgress('in-progress'),
  failed('failed'),
  succeeded('succeeded');

  final String value;
  static RTCStatsIceCandidatePairState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<RTCStatsIceCandidatePairState> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const RTCStatsIceCandidatePairState(this.value);
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
