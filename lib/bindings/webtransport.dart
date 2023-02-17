/// WebTransport
///
/// https://w3c.github.io/webtransport/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webtransport;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class WebTransportDatagramDuplexStream {
  external factory WebTransportDatagramDuplexStream();
}

extension PropsWebTransportDatagramDuplexStream
    on WebTransportDatagramDuplexStream {
  ReadableStream get readable => js_util.getProperty(this, 'readable');
  WritableStream get writable => js_util.getProperty(this, 'writable');
  int get maxDatagramSize => js_util.getProperty(this, 'maxDatagramSize');
  double? get incomingMaxAge => js_util.getProperty(this, 'incomingMaxAge');
  set incomingMaxAge(double? newValue) {
    js_util.setProperty(this, 'incomingMaxAge', newValue);
  }

  double? get outgoingMaxAge => js_util.getProperty(this, 'outgoingMaxAge');
  set outgoingMaxAge(double? newValue) {
    js_util.setProperty(this, 'outgoingMaxAge', newValue);
  }

  int get incomingHighWaterMark =>
      js_util.getProperty(this, 'incomingHighWaterMark');
  set incomingHighWaterMark(int newValue) {
    js_util.setProperty(this, 'incomingHighWaterMark', newValue);
  }

  int get outgoingHighWaterMark =>
      js_util.getProperty(this, 'outgoingHighWaterMark');
  set outgoingHighWaterMark(int newValue) {
    js_util.setProperty(this, 'outgoingHighWaterMark', newValue);
  }
}

@JS()
@staticInterop
class WebTransport {
  external factory WebTransport(String url, [WebTransportOptions? options]);
}

extension PropsWebTransport on WebTransport {
  Future<WebTransportStats> getStats() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getStats', []));

  Future<void> get ready =>
      js_util.promiseToFuture(js_util.getProperty(this, 'ready'));
  WebTransportReliabilityMode get reliability =>
      WebTransportReliabilityMode.fromValue(
          js_util.getProperty(this, 'reliability'));
  WebTransportCongestionControl get congestionControl =>
      WebTransportCongestionControl.fromValue(
          js_util.getProperty(this, 'congestionControl'));
  Future<WebTransportCloseInfo> get closed =>
      js_util.promiseToFuture(js_util.getProperty(this, 'closed'));
  void close([WebTransportCloseInfo? closeInfo]) =>
      js_util.callMethod(this, 'close', [closeInfo]);

  WebTransportDatagramDuplexStream get datagrams =>
      js_util.getProperty(this, 'datagrams');
  Future<WebTransportBidirectionalStream> createBidirectionalStream() =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'createBidirectionalStream', []));

  ReadableStream get incomingBidirectionalStreams =>
      js_util.getProperty(this, 'incomingBidirectionalStreams');
  Future<WebTransportSendStream> createUnidirectionalStream() =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'createUnidirectionalStream', []));

  ReadableStream get incomingUnidirectionalStreams =>
      js_util.getProperty(this, 'incomingUnidirectionalStreams');
}

enum WebTransportReliabilityMode {
  pending('pending'),
  reliableOnly('reliable-only'),
  supportsUnreliable('supports-unreliable');

  final String value;
  static WebTransportReliabilityMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<WebTransportReliabilityMode> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const WebTransportReliabilityMode(this.value);
}

@anonymous
@JS()
@staticInterop
class WebTransportHash {
  external factory WebTransportHash({String? algorithm, dynamic value});
}

extension PropsWebTransportHash on WebTransportHash {
  String get algorithm => js_util.getProperty(this, 'algorithm');
  set algorithm(String newValue) {
    js_util.setProperty(this, 'algorithm', newValue);
  }

  dynamic get value => js_util.getProperty(this, 'value');
  set value(dynamic newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class WebTransportOptions {
  external factory WebTransportOptions._(
      {bool? allowPooling,
      bool? requireUnreliable,
      Iterable<WebTransportHash>? serverCertificateHashes,
      String? congestionControl});

  factory WebTransportOptions(
          {bool? allowPooling,
          bool? requireUnreliable,
          Iterable<WebTransportHash>? serverCertificateHashes,
          WebTransportCongestionControl? congestionControl}) =>
      WebTransportOptions._(
          allowPooling: allowPooling ?? false,
          requireUnreliable: requireUnreliable ?? false,
          serverCertificateHashes: serverCertificateHashes ?? undefined,
          congestionControl: congestionControl?.value ??
              WebTransportCongestionControl.valueDefault.value);
}

extension PropsWebTransportOptions on WebTransportOptions {
  bool get allowPooling => js_util.getProperty(this, 'allowPooling');
  set allowPooling(bool newValue) {
    js_util.setProperty(this, 'allowPooling', newValue);
  }

  bool get requireUnreliable => js_util.getProperty(this, 'requireUnreliable');
  set requireUnreliable(bool newValue) {
    js_util.setProperty(this, 'requireUnreliable', newValue);
  }

  Iterable<WebTransportHash> get serverCertificateHashes =>
      js_util.getProperty(this, 'serverCertificateHashes');
  set serverCertificateHashes(Iterable<WebTransportHash> newValue) {
    js_util.setProperty(this, 'serverCertificateHashes', newValue);
  }

  WebTransportCongestionControl get congestionControl =>
      WebTransportCongestionControl.fromValue(
          js_util.getProperty(this, 'congestionControl'));
  set congestionControl(WebTransportCongestionControl newValue) {
    js_util.setProperty(this, 'congestionControl', newValue.value);
  }
}

enum WebTransportCongestionControl {
  valueDefault('default'),
  throughput('throughput'),
  lowLatency('low-latency');

  final String value;
  static WebTransportCongestionControl fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<WebTransportCongestionControl> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const WebTransportCongestionControl(this.value);
}

@anonymous
@JS()
@staticInterop
class WebTransportCloseInfo {
  external factory WebTransportCloseInfo._({int? closeCode, String? reason});

  factory WebTransportCloseInfo({int? closeCode, String? reason}) =>
      WebTransportCloseInfo._(closeCode: closeCode ?? 0, reason: reason ?? '');
}

extension PropsWebTransportCloseInfo on WebTransportCloseInfo {
  int get closeCode => js_util.getProperty(this, 'closeCode');
  set closeCode(int newValue) {
    js_util.setProperty(this, 'closeCode', newValue);
  }

  String get reason => js_util.getProperty(this, 'reason');
  set reason(String newValue) {
    js_util.setProperty(this, 'reason', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class WebTransportStats {
  external factory WebTransportStats(
      {double? timestamp,
      int? bytesSent,
      int? packetsSent,
      int? packetsLost,
      int? numOutgoingStreamsCreated,
      int? numIncomingStreamsCreated,
      int? bytesReceived,
      int? packetsReceived,
      double? smoothedRtt,
      double? rttVariation,
      double? minRtt,
      WebTransportDatagramStats? datagrams});
}

extension PropsWebTransportStats on WebTransportStats {
  double get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(double newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  int get bytesSent => js_util.getProperty(this, 'bytesSent');
  set bytesSent(int newValue) {
    js_util.setProperty(this, 'bytesSent', newValue);
  }

  int get packetsSent => js_util.getProperty(this, 'packetsSent');
  set packetsSent(int newValue) {
    js_util.setProperty(this, 'packetsSent', newValue);
  }

  int get packetsLost => js_util.getProperty(this, 'packetsLost');
  set packetsLost(int newValue) {
    js_util.setProperty(this, 'packetsLost', newValue);
  }

  int get numOutgoingStreamsCreated =>
      js_util.getProperty(this, 'numOutgoingStreamsCreated');
  set numOutgoingStreamsCreated(int newValue) {
    js_util.setProperty(this, 'numOutgoingStreamsCreated', newValue);
  }

  int get numIncomingStreamsCreated =>
      js_util.getProperty(this, 'numIncomingStreamsCreated');
  set numIncomingStreamsCreated(int newValue) {
    js_util.setProperty(this, 'numIncomingStreamsCreated', newValue);
  }

  int get bytesReceived => js_util.getProperty(this, 'bytesReceived');
  set bytesReceived(int newValue) {
    js_util.setProperty(this, 'bytesReceived', newValue);
  }

  int get packetsReceived => js_util.getProperty(this, 'packetsReceived');
  set packetsReceived(int newValue) {
    js_util.setProperty(this, 'packetsReceived', newValue);
  }

  double get smoothedRtt => js_util.getProperty(this, 'smoothedRtt');
  set smoothedRtt(double newValue) {
    js_util.setProperty(this, 'smoothedRtt', newValue);
  }

  double get rttVariation => js_util.getProperty(this, 'rttVariation');
  set rttVariation(double newValue) {
    js_util.setProperty(this, 'rttVariation', newValue);
  }

  double get minRtt => js_util.getProperty(this, 'minRtt');
  set minRtt(double newValue) {
    js_util.setProperty(this, 'minRtt', newValue);
  }

  WebTransportDatagramStats get datagrams =>
      js_util.getProperty(this, 'datagrams');
  set datagrams(WebTransportDatagramStats newValue) {
    js_util.setProperty(this, 'datagrams', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class WebTransportDatagramStats {
  external factory WebTransportDatagramStats(
      {double? timestamp,
      int? expiredOutgoing,
      int? droppedIncoming,
      int? lostOutgoing});
}

extension PropsWebTransportDatagramStats on WebTransportDatagramStats {
  double get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(double newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  int get expiredOutgoing => js_util.getProperty(this, 'expiredOutgoing');
  set expiredOutgoing(int newValue) {
    js_util.setProperty(this, 'expiredOutgoing', newValue);
  }

  int get droppedIncoming => js_util.getProperty(this, 'droppedIncoming');
  set droppedIncoming(int newValue) {
    js_util.setProperty(this, 'droppedIncoming', newValue);
  }

  int get lostOutgoing => js_util.getProperty(this, 'lostOutgoing');
  set lostOutgoing(int newValue) {
    js_util.setProperty(this, 'lostOutgoing', newValue);
  }
}

@JS()
@staticInterop
class WebTransportSendStream implements WritableStream {
  external factory WebTransportSendStream();
}

extension PropsWebTransportSendStream on WebTransportSendStream {
  Future<WebTransportSendStreamStats> getStats() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getStats', []));
}

@anonymous
@JS()
@staticInterop
class WebTransportSendStreamStats {
  external factory WebTransportSendStreamStats(
      {double? timestamp,
      int? bytesWritten,
      int? bytesSent,
      int? bytesAcknowledged});
}

extension PropsWebTransportSendStreamStats on WebTransportSendStreamStats {
  double get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(double newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  int get bytesWritten => js_util.getProperty(this, 'bytesWritten');
  set bytesWritten(int newValue) {
    js_util.setProperty(this, 'bytesWritten', newValue);
  }

  int get bytesSent => js_util.getProperty(this, 'bytesSent');
  set bytesSent(int newValue) {
    js_util.setProperty(this, 'bytesSent', newValue);
  }

  int get bytesAcknowledged => js_util.getProperty(this, 'bytesAcknowledged');
  set bytesAcknowledged(int newValue) {
    js_util.setProperty(this, 'bytesAcknowledged', newValue);
  }
}

@JS()
@staticInterop
class WebTransportReceiveStream implements ReadableStream {
  external factory WebTransportReceiveStream();
}

extension PropsWebTransportReceiveStream on WebTransportReceiveStream {
  Future<WebTransportReceiveStreamStats> getStats() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getStats', []));
}

@anonymous
@JS()
@staticInterop
class WebTransportReceiveStreamStats {
  external factory WebTransportReceiveStreamStats(
      {double? timestamp, int? bytesReceived, int? bytesRead});
}

extension PropsWebTransportReceiveStreamStats
    on WebTransportReceiveStreamStats {
  double get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(double newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  int get bytesReceived => js_util.getProperty(this, 'bytesReceived');
  set bytesReceived(int newValue) {
    js_util.setProperty(this, 'bytesReceived', newValue);
  }

  int get bytesRead => js_util.getProperty(this, 'bytesRead');
  set bytesRead(int newValue) {
    js_util.setProperty(this, 'bytesRead', newValue);
  }
}

@JS()
@staticInterop
class WebTransportBidirectionalStream {
  external factory WebTransportBidirectionalStream();
}

extension PropsWebTransportBidirectionalStream
    on WebTransportBidirectionalStream {
  ReadableStream get readable => js_util.getProperty(this, 'readable');
  WritableStream get writable => js_util.getProperty(this, 'writable');
}

@JS()
@staticInterop
class WebTransportError implements DOMException {
  external factory WebTransportError([WebTransportErrorInit? init]);
}

extension PropsWebTransportError on WebTransportError {
  WebTransportErrorSource get source =>
      WebTransportErrorSource.fromValue(js_util.getProperty(this, 'source'));
  int? get streamErrorCode => js_util.getProperty(this, 'streamErrorCode');
}

@anonymous
@JS()
@staticInterop
class WebTransportErrorInit {
  external factory WebTransportErrorInit(
      {int? streamErrorCode, String? message});
}

extension PropsWebTransportErrorInit on WebTransportErrorInit {
  int get streamErrorCode => js_util.getProperty(this, 'streamErrorCode');
  set streamErrorCode(int newValue) {
    js_util.setProperty(this, 'streamErrorCode', newValue);
  }

  String get message => js_util.getProperty(this, 'message');
  set message(String newValue) {
    js_util.setProperty(this, 'message', newValue);
  }
}

enum WebTransportErrorSource {
  stream('stream'),
  session('session');

  final String value;
  static WebTransportErrorSource fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<WebTransportErrorSource> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const WebTransportErrorSource(this.value);
}
