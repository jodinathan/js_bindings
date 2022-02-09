/// WebTransport
///
/// https://w3c.github.io/webtransport/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webtransport;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class WebTransportDatagramDuplexStream {
  external WebTransportDatagramDuplexStream();
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
  external WebTransport(String url, [WebTransportOptions? options]);
}

extension PropsWebTransport on WebTransport {
  Future<WebTransportStats> getStats() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'getStats', []));

  Future<Object> get ready =>
      js_util.promiseToFuture(js_util.getProperty(this, 'ready'));
  Future<WebTransportCloseInfo> get closed =>
      js_util.promiseToFuture(js_util.getProperty(this, 'closed'));
  Object close([WebTransportCloseInfo? closeInfo]) =>
      js_util.callMethod(this, 'close', [closeInfo]);

  WebTransportDatagramDuplexStream get datagrams =>
      js_util.getProperty(this, 'datagrams');
  Future<WebTransportBidirectionalStream> createBidirectionalStream() =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'createBidirectionalStream', []));

  ReadableStream get incomingBidirectionalStreams =>
      js_util.getProperty(this, 'incomingBidirectionalStreams');
  Future<WritableStream> createUnidirectionalStream() =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'createUnidirectionalStream', []));

  ReadableStream get incomingUnidirectionalStreams =>
      js_util.getProperty(this, 'incomingUnidirectionalStreams');
}

@anonymous
@JS()
@staticInterop
class WebTransportHash {
  external factory WebTransportHash({required String algorithm, dynamic value});
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
  external factory WebTransportOptions(
      {required bool allowPooling,
      required Iterable<WebTransportHash> serverCertificateHashes});
}

extension PropsWebTransportOptions on WebTransportOptions {
  bool get allowPooling => js_util.getProperty(this, 'allowPooling');
  set allowPooling(bool newValue) {
    js_util.setProperty(this, 'allowPooling', newValue);
  }

  Iterable<WebTransportHash> get serverCertificateHashes =>
      js_util.getProperty(this, 'serverCertificateHashes');
  set serverCertificateHashes(Iterable<WebTransportHash> newValue) {
    js_util.setProperty(this, 'serverCertificateHashes', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class WebTransportCloseInfo {
  external factory WebTransportCloseInfo(
      {int? closeCode = 0, String? reason = ''});
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
      {required double timestamp,
      required int bytesSent,
      required int packetsSent,
      required int numOutgoingStreamsCreated,
      required int numIncomingStreamsCreated,
      required int bytesReceived,
      required int packetsReceived,
      required double smoothedRtt,
      required double rttVariation,
      required double minRtt,
      required int numReceivedDatagramsDropped});
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

  int get numReceivedDatagramsDropped =>
      js_util.getProperty(this, 'numReceivedDatagramsDropped');
  set numReceivedDatagramsDropped(int newValue) {
    js_util.setProperty(this, 'numReceivedDatagramsDropped', newValue);
  }
}

@JS()
@staticInterop
class WebTransportBidirectionalStream {
  external WebTransportBidirectionalStream();
}

extension PropsWebTransportBidirectionalStream
    on WebTransportBidirectionalStream {
  ReadableStream get readable => js_util.getProperty(this, 'readable');
  WritableStream get writable => js_util.getProperty(this, 'writable');
}

@JS()
@staticInterop
class WebTransportError implements DOMException {
  external WebTransportError([WebTransportErrorInit? init]);
}

extension PropsWebTransportError on WebTransportError {
  WebTransportErrorSource get source => WebTransportErrorSource.values
      .byName(js_util.getProperty(this, 'source'));
  int? get streamErrorCode => js_util.getProperty(this, 'streamErrorCode');
}

@anonymous
@JS()
@staticInterop
class WebTransportErrorInit {
  external factory WebTransportErrorInit(
      {required int streamErrorCode, required String message});
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

enum WebTransportErrorSource { stream, session }
