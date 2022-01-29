/// WebTransport
///
/// https://w3c.github.io/webtransport/
@JS('window')
@staticInterop
library webtransport;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webtransport
streams
html
webrtc
hr_time_3 */

@JS()
@staticInterop
class UnidirectionalStreamsTransport {
  external UnidirectionalStreamsTransport();
}

extension PropsUnidirectionalStreamsTransport
    on UnidirectionalStreamsTransport {
  Promise<SendStream> createUnidirectionalStream(
          [SendStreamParameters? parameters]) =>
      js_util.callMethod(this, 'createUnidirectionalStream', [parameters]);

  ReadableStream get incomingUnidirectionalStreams =>
      js_util.getProperty(this, 'incomingUnidirectionalStreams');
}

@anonymous
@JS()
@staticInterop
class SendStreamParameters {
  external factory SendStreamParameters();
}

@JS()
@staticInterop
class BidirectionalStreamsTransport {
  external BidirectionalStreamsTransport();
}

extension PropsBidirectionalStreamsTransport on BidirectionalStreamsTransport {
  Promise<BidirectionalStream> createBidirectionalStream() =>
      js_util.callMethod(this, 'createBidirectionalStream', []);

  ReadableStream get incomingBidirectionalStreams =>
      js_util.getProperty(this, 'incomingBidirectionalStreams');
}

@JS()
@staticInterop
class DatagramTransport {
  external DatagramTransport();
}

extension PropsDatagramTransport on DatagramTransport {
  int get maxDatagramSize => js_util.getProperty(this, 'maxDatagramSize');
  DatagramDuplexStream get datagrams => js_util.getProperty(this, 'datagrams');
}

@JS()
@staticInterop
class DatagramDuplexStream {
  external DatagramDuplexStream();
}

extension PropsDatagramDuplexStream on DatagramDuplexStream {
  ReadableStream get readable => js_util.getProperty(this, 'readable');
  WritableStream get writable => js_util.getProperty(this, 'writable');
}

@JS()
@staticInterop
class WebTransport implements UnidirectionalStreamsTransport {
  external WebTransport(String url, [WebTransportOptions? options]);
}

extension PropsWebTransport on WebTransport {
  Promise<WebTransportStats> getStats() =>
      js_util.callMethod(this, 'getStats', []);

  WebTransportState get state => js_util.getProperty(this, 'state');
  Promise<Object> get ready => js_util.getProperty(this, 'ready');
  Promise<WebTransportCloseInfo> get closed =>
      js_util.getProperty(this, 'closed');
  Object close([WebTransportCloseInfo? closeInfo]) =>
      js_util.callMethod(this, 'close', [closeInfo]);

  EventHandlerNonNull? get onstatechange =>
      js_util.getProperty(this, 'onstatechange');
  set onstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstatechange', newValue);
  }

  int get maxDatagramSize => js_util.getProperty(this, 'maxDatagramSize');
  DatagramDuplexStream get datagrams => js_util.getProperty(this, 'datagrams');
  Promise<BidirectionalStream> createBidirectionalStream() =>
      js_util.callMethod(this, 'createBidirectionalStream', []);

  ReadableStream get incomingBidirectionalStreams =>
      js_util.getProperty(this, 'incomingBidirectionalStreams');
}

@anonymous
@JS()
@staticInterop
class WebTransportOptions {
  external factory WebTransportOptions(
      {bool allowPooling,
      Iterable<RTCDtlsFingerprint> serverCertificateFingerprints});
}

extension PropsWebTransportOptions on WebTransportOptions {
  bool get allowPooling => js_util.getProperty(this, 'allowPooling');
  set allowPooling(bool newValue) {
    js_util.setProperty(this, 'allowPooling', newValue);
  }

  Iterable<RTCDtlsFingerprint> get serverCertificateFingerprints =>
      js_util.getProperty(this, 'serverCertificateFingerprints');
  set serverCertificateFingerprints(Iterable<RTCDtlsFingerprint> newValue) {
    js_util.setProperty(this, 'serverCertificateFingerprints', newValue);
  }
}

enum WebTransportState { connecting, connected, closed, failed }

@anonymous
@JS()
@staticInterop
class WebTransportCloseInfo {
  external factory WebTransportCloseInfo(
      {int errorCode = 0, String reason = ''});
}

extension PropsWebTransportCloseInfo on WebTransportCloseInfo {
  int get errorCode => js_util.getProperty(this, 'errorCode');
  set errorCode(int newValue) {
    js_util.setProperty(this, 'errorCode', newValue);
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
      {double timestamp,
      int bytesSent,
      int packetsSent,
      int numOutgoingStreamsCreated,
      int numIncomingStreamsCreated,
      int bytesReceived,
      int packetsReceived,
      double minRtt,
      int numReceivedDatagramsDropped});
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
class SendStream implements WritableStream {
  external SendStream();
}

extension PropsSendStream on SendStream {
  Promise<StreamAbortInfo> get remoteCanceled =>
      js_util.getProperty(this, 'remoteCanceled');
  Object reset([StreamAbortInfo? abortInfo]) =>
      js_util.callMethod(this, 'reset', [abortInfo]);
}

@anonymous
@JS()
@staticInterop
class StreamAbortInfo {
  external factory StreamAbortInfo({int errorCode = 0});
}

extension PropsStreamAbortInfo on StreamAbortInfo {
  int get errorCode => js_util.getProperty(this, 'errorCode');
  set errorCode(int newValue) {
    js_util.setProperty(this, 'errorCode', newValue);
  }
}

@JS()
@staticInterop
class ReceiveStream implements ReadableStream {
  external ReceiveStream();
}

extension PropsReceiveStream on ReceiveStream {
  Promise<StreamAbortInfo> get remoteReset =>
      js_util.getProperty(this, 'remoteReset');
}

@JS()
@staticInterop
class BidirectionalStream {
  external BidirectionalStream();
}

extension PropsBidirectionalStream on BidirectionalStream {
  ReceiveStream get readable => js_util.getProperty(this, 'readable');
  SendStream get writable => js_util.getProperty(this, 'writable');
}
