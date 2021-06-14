/// WebTransport
///
/// https://w3c.github.io/webtransport/
@JS('window')
library webtransport;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'webtransport.dart';
import 'streams.dart';
import 'html.dart';
import 'webrtc.dart';
import 'hr_time_3.dart';

@JS()
mixin UnidirectionalStreamsTransport {
  external Promise<SendStream> createUnidirectionalStream(
      [SendStreamParameters? parameters]);
  external ReadableStream get incomingUnidirectionalStreams;
}

@anonymous
@JS()
class SendStreamParameters {
  external factory SendStreamParameters();
}

@JS()
mixin BidirectionalStreamsTransport {
  external Promise<BidirectionalStream> createBidirectionalStream();
  external ReadableStream get incomingBidirectionalStreams;
}

@JS()
mixin DatagramTransport {
  external int get maxDatagramSize;
  external DatagramDuplexStream get datagrams;
}

@JS()
class DatagramDuplexStream {
  external ReadableStream get readable;
  external WritableStream get writable;

  external factory DatagramDuplexStream();
}

@JS()
class WebTransport with UnidirectionalStreamsTransport {
  external factory WebTransport({String url, WebTransportOptions? options});
  external Promise<WebTransportStats> getStats();
  external WebTransportState get state;
  external Promise<Object> get ready;
  external Promise<WebTransportCloseInfo> get closed;
  external Object close([WebTransportCloseInfo? closeInfo]);
  external EventHandlerNonNull? get onstatechange;
  external set onstatechange(EventHandlerNonNull? newValue);
  external int get maxDatagramSize;
  external DatagramDuplexStream get datagrams;
  external Promise<BidirectionalStream> createBidirectionalStream();
  external ReadableStream get incomingBidirectionalStreams;
}

@anonymous
@JS()
class WebTransportOptions {
  external bool get allowPooling;
  external set allowPooling(bool newValue);
  external Iterable<RTCDtlsFingerprint> get serverCertificateFingerprints;
  external set serverCertificateFingerprints(
      Iterable<RTCDtlsFingerprint> newValue);

  external factory WebTransportOptions(
      {bool allowPooling,
      Iterable<RTCDtlsFingerprint> serverCertificateFingerprints});
}

@JS()
enum WebTransportState { connecting, connected, closed, failed }

@anonymous
@JS()
class WebTransportCloseInfo {
  external int get errorCode;
  external set errorCode(int newValue);
  external String get reason;
  external set reason(String newValue);

  external factory WebTransportCloseInfo(
      {int errorCode = 0, String reason = ''});
}

@anonymous
@JS()
class WebTransportStats {
  external double get timestamp;
  external set timestamp(double newValue);
  external int get bytesSent;
  external set bytesSent(int newValue);
  external int get packetsSent;
  external set packetsSent(int newValue);
  external int get numOutgoingStreamsCreated;
  external set numOutgoingStreamsCreated(int newValue);
  external int get numIncomingStreamsCreated;
  external set numIncomingStreamsCreated(int newValue);
  external int get bytesReceived;
  external set bytesReceived(int newValue);
  external int get packetsReceived;
  external set packetsReceived(int newValue);
  external double get minRtt;
  external set minRtt(double newValue);
  external int get numReceivedDatagramsDropped;
  external set numReceivedDatagramsDropped(int newValue);

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

@JS()
class SendStream extends WritableStream {
  external Promise<StreamAbortInfo> get remoteCanceled;
  external Object reset([StreamAbortInfo? abortInfo]);

  external factory SendStream();
}

@anonymous
@JS()
class StreamAbortInfo {
  external int get errorCode;
  external set errorCode(int newValue);

  external factory StreamAbortInfo({int errorCode = 0});
}

@JS()
class ReceiveStream extends ReadableStream {
  external Promise<StreamAbortInfo> get remoteReset;

  external factory ReceiveStream();
}

@JS()
class BidirectionalStream {
  external ReceiveStream get readable;
  external SendStream get writable;

  external factory BidirectionalStream();
}
