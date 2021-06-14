/// XMLHttpRequest Standard
///
/// https://xhr.spec.whatwg.org/
@JS('window')
library xhr;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'html.dart';
import 'fetch.dart';
import 'file_a_p_i.dart';

///
///
///   is the interface that describes the event handlers you can
/// implement in an object that will handle events for an
/// [XMLHttpRequest].
///
///
@JS()
class XMLHttpRequestEventTarget extends EventTarget {
  ///  Contains the function that gets called when the HTTP request
  /// first begins loading data and the [loadstart] event is received
  /// by this object.
  external EventHandlerNonNull? get onloadstart;
  external set onloadstart(EventHandlerNonNull? newValue);

  ///  Contains the function that is called periodically with
  /// information about the progress of the request and the [progress]
  /// event is received by this object.
  external EventHandlerNonNull? get onprogress;
  external set onprogress(EventHandlerNonNull? newValue);

  ///  Contains the function to call when a request is aborted and the
  /// [abort] event is received by this object.
  external EventHandlerNonNull? get onabort;
  external set onabort(EventHandlerNonNull? newValue);

  ///  Contains the function to call when a request encounters an error
  /// and the [error] event is received by this object.
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);

  ///  Contains the function to call when an HTTP request returns after
  /// successfully fetching content and the [load] event is received by
  /// this object.
  external EventHandlerNonNull? get onload;
  external set onload(EventHandlerNonNull? newValue);

  ///  Contains the function that is called if the event times out and
  /// the [timeout] event is received by this object; this only happens
  /// if a timeout has been previously established by setting the value
  /// of the [XMLHttpRequest] object's [timeout] attribute.
  external EventHandlerNonNull? get ontimeout;
  external set ontimeout(EventHandlerNonNull? newValue);

  ///  Contains the function that is called when the load is completed,
  /// even if the request failed, and the [loadend] event is received
  /// by this object.
  external EventHandlerNonNull? get onloadend;
  external set onloadend(EventHandlerNonNull? newValue);

  external factory XMLHttpRequestEventTarget();
}

@JS()
class XMLHttpRequestUpload extends XMLHttpRequestEventTarget {
  external factory XMLHttpRequestUpload();
}

@JS()
enum XMLHttpRequestResponseType {
  @JS('')
  empty,
  arraybuffer,
  blob,
  document,
  json,
  text
}

///
///
///   (XHR) objects are used to interact with servers. You can
/// retrieve data from a URL without having to do a full page
/// refresh. This enables a Web page to update just part of a page
/// without disrupting what the user is doing. is used heavily in
/// AJAX programming.
///
///  Despite its name, can be used to retrieve any type of data, not
/// just XML.
///
///  If your communication needs to involve receiving event data or
/// message data from a server, consider using server-sent events
/// through the [EventSource] interface. For full-duplex
/// communication, WebSockets may be a better choice.
///   Note: This feature is available in Web Workers, except for
/// Service Workers
///
@JS()
class XMLHttpRequest extends XMLHttpRequestEventTarget {
  external factory XMLHttpRequest();
  external EventHandlerNonNull? get onreadystatechange;
  external set onreadystatechange(EventHandlerNonNull? newValue);
  external static int get UNSENT;
  external static int get OPENED;
  external static int get HEADERS_RECEIVED;
  external static int get LOADING;
  external static int get DONE;
  external int get readyState;

  /// Initializes a request.
  /// XMLHttpRequest.open(method, url[, async[, user[, password]]])
  ///
  external Object open(String method,
      [String? url, bool mAsync, String? username, String? password]);

  ///  Sets the value of an HTTP request header. You must call
  /// [setRequestHeader()]after [open()], but before [send()].
  /// XMLHttpRequest.setRequestHeader(header, value)
  ///
  external Object setRequestHeader(String name, String value);
  external int get timeout;
  external set timeout(int newValue);
  external bool get withCredentials;
  external set withCredentials(bool newValue);
  external XMLHttpRequestUpload get upload;

  ///  Sends the request. If the request is asynchronous (which is the
  /// default), this method returns as soon as the request is sent.
  /// XMLHttpRequest.send(body)
  ///
  external Object send([dynamic body]);

  /// Aborts the request if it has already been sent.
  /// XMLHttpRequest.abort()
  /// This example begins loading content from the MDN home page, then due to some condition,
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
  external Object abort();
  external String get responseURL;
  external int get status;
  external String get statusText;

  ///  Returns the string containing the text of the specified header,
  /// or [null] if either the response has not yet been received or the
  /// header doesn't exist in the response.
  /// var myHeader = XMLHttpRequest.getResponseHeader(headerName);
  /// In this example, a request is created and sent, and a readystatechange
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
  external String? getResponseHeader(String name);

  ///  Returns all the response headers, separated by CRLF, as a
  /// string, or [null] if no response has been received.
  /// var headers = XMLHttpRequest.getAllResponseHeaders();
  /// This example examines the headers in the request's readystatechange event
  ///  handler, XMLHttpRequest.onreadystatechange. The code shows how to obtain
  ///  the raw header string, as well as how to convert it into an array of individual headers
  ///  and then how to take that array and create a mapping of header names to their values.
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
  ///
  /// var contentType = headerMap["content-type"];
  ///
  /// This obtains the value of the Content-Type header into the variable
  ///  contentType.
  external String getAllResponseHeaders();

  /// Overrides the MIME type returned by the server.
  /// XMLHttpRequest.overrideMimeType(mimeType)
  /// This example specifies a MIME type of "text/plain", overriding the
  ///  server's stated type for the data being received.
  ///  Note: If the server doesn't provide a
  ///   Content-Type
  ///   header, XMLHttpRequest assumes that the MIME type is
  ///   "text/xml". If the content isn't valid XML, an "XML Parsing Error: not
  ///   well-formed" error occurs. You can avoid this by calling
  ///   overrideMimeType() to specify a different type.
  /// // Interpret the received data as plain text
  ///
  /// req = new XMLHttpRequest();
  /// req.overrideMimeType("text/plain");
  /// req.addEventListener("load", callback, false);
  /// req.open("get", url);
  /// req.send();
  ///
  external Object overrideMimeType(String mime);
  external XMLHttpRequestResponseType get responseType;
  external set responseType(XMLHttpRequestResponseType newValue);

  ///  Returns an [ArrayBuffer], [Blob], [Document], JavaScript object,
  /// or a [DOMString], depending on the value of
  /// [XMLHttpRequest.responseType], that contains the response entity
  /// body.
  external dynamic get response;
  external String get responseText;
  external Document? get responseXML;
}

///
///
///  The interface provides a way to easily construct a set of
/// key/value pairs representing form fields and their values, which
/// can then be easily sent using the [XMLHttpRequest.send()] method.
/// It uses the same format a form would use if the encoding type
/// were set to ["multipart/form-data"].
///
///  You can also pass it directly to the [URLSearchParams]
/// constructor if you want to generate query parameters in the way a
/// [<form>] would do if it were using simple [GET] submission.
///
///  An object implementing can directly be used in a [for...of]
/// structure, instead of [entries()]: [for (var p of myFormData)] is
/// equivalent to [for (var p of myFormData.entries())].
/// Note: This feature is available in Web Workers.
///
@JS()
class FormData {
  external factory FormData({HTMLFormElement? form});

  ///  Appends a new value onto an existing key inside a [FormData]
  /// object, or adds the key if it does not already exist.
  /// There are two versions of this method: a two and a three parameter version:
  ///
  /// formData.append(name, value);
  /// formData.append(name, value, filename);
  /// The following line creates an empty FormData object:
  ///
  /// var formData = new FormData(); // Currently empty
  ///
  /// You can add key/value pairs to this using FormData.append:
  ///
  /// formData.append('username', 'Chris');
  /// formData.append('userpic', myFileInput.files[0], 'chris.jpg');
  ///
  /// As with regular form data, you can append multiple values with the same name. For example (and being compatible with PHP's naming conventions by adding [] to the name):
  ///
  /// formData.append('userpic[]', myFileInput.files[0], 'chris1.jpg');
  /// formData.append('userpic[]', myFileInput.files[1], 'chris2.jpg');
  ///
  /// This technique makes it simpler to process multi-file uploads because the resultant data structure is more conducive to looping.
  ///
  /// If the sent value is different than String or Blob it will be automatically converted to String:
  ///
  /// formData.append('name', true);
  /// formData.append('name', 74);
  /// formData.append('name', 'John');
  ///
  /// formData.getAll('name'); // ["true", "74", "John"]
  ///
  external Object append(String name, [Blob? blobValue, String? filename]);

  /// Deletes a key/value pair from a [FormData] object.
  /// formData.delete(name);
  /// The following line creates an empty FormData object and prepopulates it with key/value pairs from a form:
  ///
  /// var formData = new FormData(myForm);
  ///
  /// You can delete keys and their values using delete():
  ///
  /// formData.delete('username');
  ///
  external Object delete(String name);

  ///  Returns the first value associated with a given key from within
  /// a [FormData] object.
  /// formData.get(name);
  /// The following line creates an empty FormData object:
  ///
  /// var formData = new FormData();
  ///
  /// If we add two username values using FormData.append:
  ///
  /// formData.append('username', 'Chris');
  /// formData.append('username', 'Bob');
  ///
  /// The following get() function will only return the first
  ///  username value appended:
  ///
  /// formData.get('username'); // Returns "Chris"
  @JS('get')
  external dynamic mGet(String name);

  ///  Returns an array of all the values associated with a given key
  /// from within a [FormData].
  /// formData.getAll(name);
  /// The following line creates an empty FormData object:
  ///
  /// var formData = new FormData();
  ///
  /// If we add two username values using FormData.append:
  ///
  /// formData.append('username', 'Chris');
  /// formData.append('username', 'Bob');
  ///
  /// The following getAll() function will return both username values in an array:
  ///
  /// formData.getAll('username'); // Returns ["Chris", "Bob"]
  external Iterable<dynamic> getAll(String name);

  ///  Returns a boolean stating whether a [FormData] object contains a
  /// certain key.
  /// formData.has(name);
  /// The following line creates an empty FormData object:
  ///
  /// var formData = new FormData();
  ///
  /// The following snippet shows the results of testing for the existence of username in the FormData object, before and after appending a username value to it with FormData.append:
  ///
  /// formData.has('username'); // Returns false
  /// formData.append('username', 'Chris');
  /// formData.has('username'); // Returns true
  ///
  ///
  external bool has(String name);

  ///  Sets a new value for an existing key inside a [FormData] object,
  /// or adds the key/value if it does not already exist.
  /// There are two versions of this method: a two and a three parameter version:
  ///
  /// formData.set(name, value);
  /// formData.set(name, value, filename);
  ///
  /// Parameters
  ///  name
  ///  The name of the field whose data is contained in value.
  ///  value
  ///  The field's value. This can be a USVString or Blob (including subclasses such as File). If none of these are specified the value is converted to a string.
  ///  filename Optional
  ///  The filename reported to the server (a USVString), when a Blob or File is passed as the second parameter. The default filename for Blob objects is "blob". The default filename for File objects is the file's filename.
  ///
  /// Note: If you specify a Blob as the data to append to the FormData object, the filename that will be reported to the server in the "Content-Disposition" header used to vary from browser to browser.
  ///
  /// The following line creates an empty FormData object:
  ///
  /// var formData = new FormData(); // Currently empty
  ///
  /// You can set key/value pairs on this using FormData.set:
  ///
  /// formData.set('username', 'Chris');
  /// formData.set('userpic', myFileInput.files[0], 'chris.jpg');
  ///
  /// If the sent value is different than String or Blob it will be automatically converted to String:
  ///
  /// formData.set('name', 72);
  /// formData.get('name'); // "72"
  @JS('set')
  external Object mSet(String name, [Blob? blobValue, String? filename]);
}

///
///
///  The interface represents events measuring progress of an
/// underlying process, like an HTTP request (for an
/// [XMLHttpRequest], or the loading of the underlying resource of an
/// [<img>], [<audio>], [<video>], [<style>] or [<link>]).
///
///
@JS()
class ProgressEvent extends Event {
  external factory ProgressEvent(
      {String type, ProgressEventInit? eventInitDict});

  ///  A [Boolean] flag indicating if the total work to be done, and
  /// the amount of work already done, by the underlying process is
  /// calculable. In other words, it tells if the progress is
  /// measurable or not.
  external bool get lengthComputable;

  ///  A 64-bit unsigned integer value indicating the amount of work
  /// already performed by the underlying process. The ratio of work
  /// done can be calculated by dividing [total] by the value of this
  /// property. When downloading a resource using HTTP, this only
  /// counts the body of the HTTP message, and doesn't include headers
  /// and other overhead.
  external int get loaded;

  ///  A 64-bit unsigned integer representing the total amount of work
  /// that the underlying process is in the progress of performing.
  /// When downloading a resource using HTTP, this is the
  /// [Content-Length] (the size of the body of the message), and
  /// doesn't include the headers and other overhead.
  external int get total;
}

@anonymous
@JS()
class ProgressEventInit extends EventInit {
  external bool get lengthComputable;
  external set lengthComputable(bool newValue);
  external int get loaded;
  external set loaded(int newValue);
  external int get total;
  external set total(int newValue);

  external factory ProgressEventInit(
      {bool lengthComputable = false, int loaded = 0, int total = 0});
}
