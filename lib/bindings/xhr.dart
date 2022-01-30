/// XMLHttpRequest Standard
///
/// https://xhr.spec.whatwg.org/
@JS('window')
@staticInterop
library xhr;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html
fetch
file_a_p_i */

///   is the interface that describes the event handlers you can
/// implement in an object that will handle events for an
/// [XMLHttpRequest].
///
///
///
///    EventTarget
///
///
///
///
///
///    XMLHttpRequestEventTarget
///
///
@JS()
@staticInterop
class XMLHttpRequestEventTarget implements EventTarget {
  external XMLHttpRequestEventTarget();
}

extension PropsXMLHttpRequestEventTarget on XMLHttpRequestEventTarget {
  ///  Contains the function that gets called when the HTTP request
  /// first begins loading data and the [loadstart] event is received
  /// by this object.
  ///
  EventHandlerNonNull? get onloadstart =>
      js_util.getProperty(this, 'onloadstart');
  set onloadstart(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onloadstart', newValue);
  }

  ///  Contains the function that is called periodically with
  /// information about the progress of the request and the [progress]
  /// event is received by this object.
  ///
  EventHandlerNonNull? get onprogress =>
      js_util.getProperty(this, 'onprogress');
  set onprogress(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onprogress', newValue);
  }

  ///  Contains the function to call when a request is aborted and the
  /// [abort] event is received by this object.
  ///
  EventHandlerNonNull? get onabort => js_util.getProperty(this, 'onabort');
  set onabort(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onabort', newValue);
  }

  ///  Contains the function to call when a request encounters an error
  /// and the [error] event is received by this object.
  ///
  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  ///  Contains the function to call when an HTTP request returns after
  /// successfully fetching content and the [load] event is received by
  /// this object.
  ///
  EventHandlerNonNull? get onload => js_util.getProperty(this, 'onload');
  set onload(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onload', newValue);
  }

  ///  Contains the function that is called if the event times out and
  /// the [timeout] event is received by this object; this only happens
  /// if a timeout has been previously established by setting the value
  /// of the [XMLHttpRequest] object's [timeout] attribute.
  ///
  EventHandlerNonNull? get ontimeout => js_util.getProperty(this, 'ontimeout');
  set ontimeout(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'ontimeout', newValue);
  }

  ///  Contains the function that is called when the load is completed,
  /// even if the request failed, and the [loadend] event is received
  /// by this object.
  ///
  EventHandlerNonNull? get onloadend => js_util.getProperty(this, 'onloadend');
  set onloadend(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onloadend', newValue);
  }
}

@JS()
@staticInterop
class XMLHttpRequestUpload implements XMLHttpRequestEventTarget {
  external XMLHttpRequestUpload();
}

enum XMLHttpRequestResponseType {
  empty,
  arraybuffer,
  blob,
  document,
  json,
  text
}

///   (XHR) objects are used to interact with servers. You can
/// retrieve data from a URL without having to do a full page
/// refresh. This enables a Web page to update just part of a page
/// without disrupting what the user is doing.
///  is used heavily in AJAX programming.
///
///
///
///    EventTarget
///
///
///
///
///
///    XMLHttpRequestEventTarget
///
///
///
///
///
///    XMLHttpRequest
///
///
///  Despite its name, can be used to retrieve any type of data, not
/// just XML.
///  If your communication needs to involve receiving event data or
/// message data from a server, consider using server-sent events
/// through the [EventSource] interface. For full-duplex
/// communication, WebSockets may be a better choice.
///   Note: This feature is available in Web Workers, except for
/// Service Workers
///
@JS()
@staticInterop
class XMLHttpRequest implements XMLHttpRequestEventTarget {
  external static int get UNSENT;
  external static int get OPENED;
  external static int get HEADERS_RECEIVED;
  external static int get LOADING;
  external static int get DONE;
  external XMLHttpRequest();
}

extension PropsXMLHttpRequest on XMLHttpRequest {
  ///  An Event handler that is called whenever the [readyState]
  /// attribute changes.
  ///
  EventHandlerNonNull? get onreadystatechange =>
      js_util.getProperty(this, 'onreadystatechange');
  set onreadystatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onreadystatechange', newValue);
  }

  /// Returns an [int], the state of the request.
  ///
  int get readyState => js_util.getProperty(this, 'readyState');

  /// Initializes a request.
  ///
  /// XMLHttpRequest.open(method, url[, async[, user[, password]]])
  ///
  Object open(

          ///
          ///    The HTTP request method to use, such as
          ///    ["GET"], ["POST"], ["PUT"], ["DELETE"],
          ///    etc. Ignored for non-HTTP(S) URLs.
          ///
          ///
          String method,
          [

          /// A [String] representing the URL to send the request to.
          ///
          String? url,

          ///
          ///     An optional Boolean parameter, defaulting to [true],
          /// indicating whether
          ///     or not to perform the operation asynchronously. If this value
          /// is [false],
          ///     the [send()] method does not return until the response is
          /// received. If
          ///     [true], notification of a completed transaction is provided
          /// using event
          ///    listeners. This must be true if the [multipart] attribute is
          ///    [true], or an exception will be thrown.
          ///
          ///
          ///
          ///     Note: Synchronous requests on the main thread can
          ///      be easily disruptive to the user experience and should be
          /// avoided; in fact, many
          ///      browsers have deprecated synchronous XHR support on the main
          /// thread entirely.
          ///     Synchronous requests are permitted in [Worker]s.
          ///
          ///
          ///
          bool? mAsync,
          String? username,

          ///
          ///     The optional password to use for authentication purposes; by
          /// default, this is the
          ///    [null] value.
          ///
          ///
          String? password]) =>
      js_util
          .callMethod(this, 'open', [method, url, mAsync, username, password]);

  ///  Sets the value of an HTTP request header. You must call
  /// [setRequestHeader()]after [open()], but before [send()].
  ///
  /// XMLHttpRequest.setRequestHeader(header, value)
  ///
  Object setRequestHeader(
          String name,

          /// The value to set as the body of the header.
          ///
          String value) =>
      js_util.callMethod(this, 'setRequestHeader', [name, value]);

  ///  Is an [int] representing the number of milliseconds a request
  /// can take before automatically being terminated.
  ///
  int get timeout => js_util.getProperty(this, 'timeout');
  set timeout(int newValue) {
    js_util.setProperty(this, 'timeout', newValue);
  }

  ///  Is a boolean value that indicates whether or not cross-site
  /// [Access-Control] requests should be made using credentials such
  /// as cookies or authorization headers.
  ///
  bool get withCredentials => js_util.getProperty(this, 'withCredentials');
  set withCredentials(bool newValue) {
    js_util.setProperty(this, 'withCredentials', newValue);
  }

  /// Is an [XMLHttpRequestUpload], representing the upload process.
  ///
  XMLHttpRequestUpload get upload => js_util.getProperty(this, 'upload');

  ///  Sends the request. If the request is asynchronous (which is the
  /// default), this method returns as soon as the request is sent.
  ///
  /// XMLHttpRequest.send(body)
  ///
  Object send(
          [

          /// A body of data to be sent in the XHR request. This can be:
          ///
          ///     A [Document], in which case it is serialized before being
          /// sent.
          ///
          ///     An [XMLHttpRequestBodyInit], which per the
          /// Fetch spec can be a [Blob], [BufferSource],
          ///     [FormData], [URLSearchParams], or
          ///     [String] object.
          ///
          ///    [null]
          ///
          ///    If no value is specified for the body, a default value of
          /// [null] is used.
          ///
          dynamic body]) =>
      js_util.callMethod(this, 'send', [body]);

  /// Aborts the request if it has already been sent.
  ///
  /// XMLHttpRequest.abort()
  ///
  ///
  ///  This example begins loading content from the MDN home page, then due to some condition,
  ///  aborts the transfer by calling abort().
  ///
  /// var xhr = new XMLHttpRequest(),
  ///   method = "GET",
  ///   url = "https://developer.mozilla.org/";
  /// xhr.open(method, url, true);
  ///
  /// xhr.send();
  ///
  /// if (OH_NOES_WE_NEED_TO_CANCEL_RIGHT_NOW_OR_ELSE) {
  ///  xhr.abort();
  /// }
  ///
  Object abort() => js_util.callMethod(this, 'abort', []);

  ///  Returns the serialized URL of the response or the empty string
  /// if the URL is null.
  ///
  String get responseURL => js_util.getProperty(this, 'responseURL');

  /// Returns an [int] with the status of the response of the request.
  ///
  int get status => js_util.getProperty(this, 'status');

  ///  Returns a [String] containing the response string returned by
  /// the HTTP server. Unlike [XMLHttpRequest.status], this includes
  /// the entire text of the response message ("[200 OK]", for
  /// example).
  ///
  ///     Note: According to the HTTP/2 specification (8.1.2.4 Response
  /// Pseudo-Header Fields), HTTP/2 does not define a way to carry the
  /// version or reason phrase that is included in an HTTP/1.1 status
  /// line.
  ///
  ///
  String get statusText => js_util.getProperty(this, 'statusText');

  ///  Returns the string containing the text of the specified header,
  /// or [null] if either the response has not yet been received or the
  /// header doesn't exist in the response.
  ///
  /// var myHeader = XMLHttpRequest.getResponseHeader(headerName);
  ///
  ///
  ///  In this example, a request is created and sent, and a readystatechange
  ///  handler is established to look for the readyState to indicate that the headers have been received; when that is the case,
  ///  the value of the Content-Type header is fetched. If the
  ///  Content-Type isn't the desired value, the XMLHttpRequest is
  ///  canceled by calling abort().
  ///
  /// var client = new XMLHttpRequest();
  /// client.open("GET", "unicorns-are-teh-awesome.txt", true);
  /// client.send();
  ///
  /// client.onreadystatechange = function() {
  ///  if(this.readyState == this.HEADERS_RECEIVED) {
  ///   var contentType = client.getResponseHeader("Content-Type");
  ///   if (contentType != my_expected_type) {
  ///    client.abort();
  ///   }
  ///  }
  /// }
  ///
  String? getResponseHeader(String name) =>
      js_util.callMethod(this, 'getResponseHeader', [name]);

  ///  Returns all the response headers, separated by CRLF, as a
  /// string, or [null] if no response has been received.
  ///
  /// var headers = XMLHttpRequest.getAllResponseHeaders();
  ///
  ///
  ///  This example examines the headers in the request's readystatechange event
  ///  handler, XMLHttpRequest.onreadystatechange. The code shows how to obtain
  ///  the raw header string, as well as how to convert it into an array of individual headers
  ///  and then how to take that array and create a mapping of header names to their values.
  ///
  /// var request = new XMLHttpRequest();
  /// request.open("GET", "foo.txt", true);
  /// request.send();
  ///
  /// request.onreadystatechange = function() {
  ///  if(this.readyState == this.HEADERS_RECEIVED) {
  ///
  ///   // Get the raw header string
  ///   var headers = request.getAllResponseHeaders();
  ///
  ///   // Convert the header string into an array
  ///   // of individual headers
  ///   var arr = headers.trim().split(/[\r\n]+/);
  ///
  ///   // Create a map of header names to values
  ///   var headerMap = {};
  ///   arr.forEach(function (line) {
  ///    var parts = line.split(': ');
  ///    var header = parts.shift();
  ///    var value = parts.join(': ');
  ///    headerMap[header] = value;
  ///   });
  ///  }
  /// }
  ///
  /// Once this is done, you can, for example:
  /// var contentType = headerMap["content-type"];
  ///  This obtains the value of the Content-Type header into the variable
  ///  contentType.
  ///
  String getAllResponseHeaders() =>
      js_util.callMethod(this, 'getAllResponseHeaders', []);

  /// Overrides the MIME type returned by the server.
  ///
  /// XMLHttpRequest.overrideMimeType(mimeType)
  ///
  ///
  ///  This example specifies a MIME type of "text/plain", overriding the
  ///  server's stated type for the data being received.
  ///
  ///   Note: If the server doesn't provide a
  ///   Content-Type
  ///   header, XMLHttpRequest assumes that the MIME type is
  ///   "text/xml". If the content isn't valid XML, an "XML Parsing Error: not
  ///   well-formed" error occurs. You can avoid this by calling
  ///   overrideMimeType() to specify a different type.
  ///
  ///
  /// // Interpret the received data as plain text
  ///
  /// req = new XMLHttpRequest();
  /// req.overrideMimeType("text/plain");
  /// req.addEventListener("load", callback, false);
  /// req.open("get", url);
  /// req.send();
  ///
  Object overrideMimeType(String mime) =>
      js_util.callMethod(this, 'overrideMimeType', [mime]);

  /// Is an enumerated value that defines the response type.
  ///
  XMLHttpRequestResponseType get responseType =>
      js_util.getProperty(this, 'responseType');
  set responseType(XMLHttpRequestResponseType newValue) {
    js_util.setProperty(this, 'responseType', newValue);
  }

  ///  Returns an [ArrayBuffer], [Blob], [Document], JavaScript object,
  /// or a [String], depending on the value of
  /// [XMLHttpRequest.responseType], that contains the response entity
  /// body.
  ///
  dynamic get response => js_util.getProperty(this, 'response');

  ///  Returns a [String] that contains the response to the request as
  /// text, or [null] if the request was unsuccessful or has not yet
  /// been sent.
  ///
  String get responseText => js_util.getProperty(this, 'responseText');

  ///  Returns a [Document] containing the response to the request, or
  /// [null] if the request was unsuccessful, has not yet been sent, or
  /// cannot be parsed as XML or HTML. Not available in workers.
  ///
  Document? get responseXML => js_util.getProperty(this, 'responseXML');
}

///  The interface provides a way to easily construct a set of
/// key/value pairs representing form fields and their values, which
/// can then be easily sent using the [XMLHttpRequest.send()] method.
/// It uses the same format a form would use if the encoding type
/// were set to ["multipart/form-data"].
///  You can also pass it directly to the [URLSearchParams]
/// constructor if you want to generate query parameters in the way a
/// [<form>] would do if it were using simple [GET] submission.
///  An object implementing can directly be used in a [for...of]
/// structure, instead of [entries()]: [for (var p of myFormData)] is
/// equivalent to [for (var p of myFormData.entries())].
///
///  Note: This feature is available in Web Workers.
///
@JS()
@staticInterop
class FormData {
  external FormData([HTMLFormElement? form]);
}

extension PropsFormData on FormData {
  ///  Appends a new value onto an existing key inside a [FormData]
  /// object, or adds the key if it does not already exist.
  ///
  /// There are two versions of this method: a two and a three parameter version:
  /// formData.append(name, value);
  /// formData.append(name, value, filename);
  ///
  /// The following line creates an empty FormData object:
  /// var formData = new FormData(); // Currently empty
  ///
  /// You can add key/value pairs to this using FormData.append:
  /// formData.append('username', 'Chris');
  /// formData.append('userpic', myFileInput.files[0], 'chris.jpg');
  ///
  /// As with regular form data, you can append multiple values with the same name. For example (and being compatible with PHP's naming conventions by adding [] to the name):
  /// formData.append('userpic[]', myFileInput.files[0], 'chris1.jpg');
  /// formData.append('userpic[]', myFileInput.files[1], 'chris2.jpg');
  ///
  /// This technique makes it simpler to process multi-file uploads because the resultant data structure is more conducive to looping.
  /// If the sent value is different than String or Blob it will be automatically converted to String:
  /// formData.append('name', true);
  /// formData.append('name', 74);
  /// formData.append('name', 'John');
  ///
  /// formData.getAll('name'); // ["true", "74", "John"]
  ///
  Object append(

          /// The name of the field whose data is contained in [value].
          ///
          String name,
          [Blob? blobValue,

          ///  The filename reported to the server (a [String]), when a [Blob]
          /// or [File] is passed as the second parameter. The default filename
          /// for [Blob] objects is "blob". The default filename for [File]
          /// objects is the file's filename.
          ///
          String? filename]) =>
      js_util.callMethod(this, 'append', [name, blobValue, filename]);

  /// Deletes a key/value pair from a [FormData] object.
  ///
  /// formData.delete(name);
  ///
  /// The following line creates an empty FormData object and prepopulates it with key/value pairs from a form:
  /// var formData = new FormData(myForm);
  ///
  /// You can delete keys and their values using delete():
  /// formData.delete('username');
  ///
  Object delete(

          /// The name of the key you want to delete.
          ///
          String name) =>
      js_util.callMethod(this, 'delete', [name]);

  ///  Returns the first value associated with a given key from within
  /// a [FormData] object.
  ///
  /// formData.get(name);
  ///
  /// The following line creates an empty FormData object:
  /// var formData = new FormData();
  ///
  /// If we add two username values using FormData.append:
  /// formData.append('username', 'Chris');
  /// formData.append('username', 'Bob');
  ///  The following get() function will only return the first
  ///  username value appended:
  ///
  /// formData.get('username'); // Returns "Chris"
  ///
  @JS('get')
  @staticInterop
  dynamic mGet(

          ///  A [String] representing the name of the key you want to
          /// retrieve.
          ///
          String name) =>
      js_util.callMethod(this, 'get', [name]);

  ///  Returns an array of all the values associated with a given key
  /// from within a [FormData].
  ///
  /// formData.getAll(name);
  ///
  /// The following line creates an empty FormData object:
  /// var formData = new FormData();
  ///
  /// If we add two username values using FormData.append:
  /// formData.append('username', 'Chris');
  /// formData.append('username', 'Bob');
  ///
  /// The following getAll() function will return both username values in an array:
  /// formData.getAll('username'); // Returns ["Chris", "Bob"]
  ///
  Iterable<dynamic> getAll(

          ///  A [String] representing the name of the key you want to
          /// retrieve.
          ///
          String name) =>
      js_util.callMethod(this, 'getAll', [name]);

  ///  Returns a boolean stating whether a [FormData] object contains a
  /// certain key.
  ///
  /// formData.has(name);
  ///
  /// The following line creates an empty FormData object:
  /// var formData = new FormData();
  ///
  /// The following snippet shows the results of testing for the existence of username in the FormData object, before and after appending a username value to it with FormData.append:
  /// formData.has('username'); // Returns false
  /// formData.append('username', 'Chris');
  /// formData.has('username'); // Returns true
  ///
  bool has(

          ///  A [String] representing the name of the key you want to test
          /// for.
          ///
          String name) =>
      js_util.callMethod(this, 'has', [name]);

  ///  Sets a new value for an existing key inside a [FormData] object,
  /// or adds the key/value if it does not already exist.
  ///
  /// There are two versions of this method: a two and a three parameter version:
  /// formData.set(name, value);
  /// formData.set(name, value, filename);
  ///
  /// Parameters
  ///
  ///  name
  ///
  ///   The name of the field whose data is contained in value.
  ///
  ///  value
  ///
  ///   The field's value. This can be a USVString or Blob (including subclasses such as File). If none of these are specified the value is converted to a string.
  ///
  ///  filename Optional
  ///
  ///   The filename reported to the server (a USVString), when a Blob or File is passed as the second parameter. The default filename for Blob objects is "blob". The default filename for File objects is the file's filename.
  ///
  ///  Note: If you specify a Blob as the data to append to the FormData object, the filename that will be reported to the server in the "Content-Disposition" header used to vary from browser to browser.
  ///
  /// The following line creates an empty FormData object:
  /// var formData = new FormData(); // Currently empty
  ///
  /// You can set key/value pairs on this using FormData.set:
  /// formData.set('username', 'Chris');
  /// formData.set('userpic', myFileInput.files[0], 'chris.jpg');
  ///
  /// If the sent value is different than String or Blob it will be automatically converted to String:
  /// formData.set('name', 72);
  /// formData.get('name'); // "72"
  ///
  @JS('set')
  @staticInterop
  Object mSet(String name, [Blob? blobValue, String? filename]) =>
      js_util.callMethod(this, 'set', [name, blobValue, filename]);
}

///  The interface represents events measuring progress of an
/// underlying process, like an HTTP request (for an
/// [XMLHttpRequest], or the loading of the underlying resource of an
/// [<img>], [<audio>], [<video>], [<style>] or [<link>]).
///
///
///
///    Event
///
///
///
///
///
///    ProgressEvent
///
///
@JS()
@staticInterop
class ProgressEvent implements Event {
  external ProgressEvent(String type, [ProgressEventInit? eventInitDict]);
}

extension PropsProgressEvent on ProgressEvent {
  ///  A boolean flag indicating if the total work to be done, and the
  /// amount of work already done, by the underlying process is
  /// calculable. In other words, it tells if the progress is
  /// measurable or not.
  ///
  bool get lengthComputable => js_util.getProperty(this, 'lengthComputable');

  ///  A 64-bit unsigned integer value indicating the amount of work
  /// already performed by the underlying process. The ratio of work
  /// done can be calculated by dividing [total] by the value of this
  /// property. When downloading a resource using HTTP, this only
  /// counts the body of the HTTP message, and doesn't include headers
  /// and other overhead.
  ///
  int get loaded => js_util.getProperty(this, 'loaded');

  ///  A 64-bit unsigned integer representing the total amount of work
  /// that the underlying process is in the progress of performing.
  /// When downloading a resource using HTTP, this is the
  /// [Content-Length] (the size of the body of the message), and
  /// doesn't include the headers and other overhead.
  ///
  int get total => js_util.getProperty(this, 'total');
}

@anonymous
@JS()
@staticInterop
class ProgressEventInit implements EventInit {
  external factory ProgressEventInit(
      {bool lengthComputable = false, int? loaded = 0, int? total = 0});
}

extension PropsProgressEventInit on ProgressEventInit {
  bool get lengthComputable => js_util.getProperty(this, 'lengthComputable');
  set lengthComputable(bool newValue) {
    js_util.setProperty(this, 'lengthComputable', newValue);
  }

  int get loaded => js_util.getProperty(this, 'loaded');
  set loaded(int newValue) {
    js_util.setProperty(this, 'loaded', newValue);
  }

  int get total => js_util.getProperty(this, 'total');
  set total(int newValue) {
    js_util.setProperty(this, 'total', newValue);
  }
}
