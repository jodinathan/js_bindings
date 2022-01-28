/// WebTransport
///
/// https://w3c.github.io/webtransport/
@JS('window')
@staticInterop
library webtransport;

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
  external factory UnidirectionalStreamsTransport();
}

extension PropsUnidirectionalStreamsTransport
    on UnidirectionalStreamsTransport {
  external Promise<SendStream> createUnidirectionalStream(
      [SendStreamParameters? parameters]);
  external ReadableStream get incomingUnidirectionalStreams;
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
  external factory BidirectionalStreamsTransport();
}

extension PropsBidirectionalStreamsTransport on BidirectionalStreamsTransport {
  external Promise<BidirectionalStream> createBidirectionalStream();
  external ReadableStream get incomingBidirectionalStreams;
}

@JS()
@staticInterop
class DatagramTransport {
  external factory DatagramTransport();
}

extension PropsDatagramTransport on DatagramTransport {
  external int get maxDatagramSize;
  external DatagramDuplexStream get datagrams;
}

@JS()
@staticInterop
class DatagramDuplexStream {
  external factory DatagramDuplexStream();
}

extension PropsDatagramDuplexStream on DatagramDuplexStream {
  external ReadableStream get readable;
  external WritableStream get writable;
}

@JS()
@staticInterop
class WebTransport implements UnidirectionalStreamsTransport {
  external factory WebTransport(String url, [WebTransportOptions? options]);
}

extension PropsWebTransport on WebTransport {
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
@staticInterop
class WebTransportOptions {
  external factory WebTransportOptions(
      {bool allowPooling,
      Iterable<RTCDtlsFingerprint> serverCertificateFingerprints});
}

extension PropsWebTransportOptions on WebTransportOptions {
  external bool get allowPooling;
  external set allowPooling(bool newValue);
  external Iterable<RTCDtlsFingerprint> get serverCertificateFingerprints;
  external set serverCertificateFingerprints(
      Iterable<RTCDtlsFingerprint> newValue);
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
  external int get errorCode;
  external set errorCode(int newValue);
  external String get reason;
  external set reason(String newValue);
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
}

@JS()
@staticInterop
class SendStream implements WritableStream {
  external factory SendStream();
}

extension PropsSendStream on SendStream {
  external Promise<StreamAbortInfo> get remoteCanceled;
  external Object reset([StreamAbortInfo? abortInfo]);
}

@anonymous
@JS()
@staticInterop
class StreamAbortInfo {
  external factory StreamAbortInfo({int errorCode = 0});
}

extension PropsStreamAbortInfo on StreamAbortInfo {
  external int get errorCode;
  external set errorCode(int newValue);
}

@JS()
@staticInterop
class ReceiveStream implements ReadableStream {
  external factory ReceiveStream();
}

extension PropsReceiveStream on ReceiveStream {
  external Promise<StreamAbortInfo> get remoteReset;
}

@JS()
@staticInterop
class BidirectionalStream {
  external factory BidirectionalStream();
}

extension PropsBidirectionalStream on BidirectionalStream {
  external ReceiveStream get readable;
  external SendStream get writable;
}
