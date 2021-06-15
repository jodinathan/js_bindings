/// Fetch Standard
///
/// https://fetch.spec.whatwg.org/
@JS('window')
library fetch;

import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'fetch.dart';
import 'file_a_p_i.dart';
import 'xhr.dart';
import 'url.dart';
import 'streams.dart';
import 'referrer_policy.dart';
import 'dom.dart';
import 'html.dart';

///
///
///  The interface of the Fetch API allows you to perform various
/// actions on HTTP request and response headers. These actions
/// include retrieving, setting, adding to, and removing headers from
/// the list of the request's headers. A object has an associated
/// header list, which is initially empty and consists of zero or
/// more name and value pairs. You can add to this using methods like
/// [append()] (see Examples.) In all methods of this interface,
/// header names are matched by case-insensitive byte sequence.
///
///  For security reasons, some headers can only be controlled by the
/// user agent. These headers include the forbidden header names and
/// forbidden response header names.
///
///  A Headers object also has an associated guard, which takes a
/// value of [immutable], [request], [request-no-cors], [response],
/// or [none]. This affects whether the [set()], [delete()], and
/// [append()] methods will mutate the header. For more information
/// see Guard.
///
///  You can retrieve a object via the [Request.headers] and
/// [Response.headers] properties, and create a new object using the
/// [Headers.Headers()] constructor.
///
///  An object implementing can directly be used in a [for...of]
/// structure, instead of [entries()]: [for (var p of myHeaders)] is
/// equivalent to [for (var p of myHeaders.entries())].
///  Note: you can find more out about the available headers by
/// reading our HTTP headers reference.
///
@experimental
@JS()
class Headers {
  external factory Headers([dynamic init]);

  ///  Appends a new value onto an existing header inside a [Headers]
  /// object, or adds the header if it does not already exist.
  /// myHeaders.append(name, value);
  /// Creating an empty Headers object is simple:
  ///
  /// var myHeaders = new Headers(); // Currently empty
  ///
  /// You could add a header to this using append():
  ///
  /// myHeaders.append('Content-Type', 'image/jpeg');
  /// myHeaders.get('Content-Type'); // Returns 'image/jpeg'
  /// If the specified header already exists, append() will change its value to
  ///  the specified value. If the specified header already exists and accepts multiple values,
  ///  append() will append the new value to the end of the value set:
  ///
  /// myHeaders.append('Accept-Encoding', 'deflate');
  /// myHeaders.append('Accept-Encoding', 'gzip');
  /// myHeaders.get('Accept-Encoding'); // Returns 'deflate, gzip'
  ///
  /// To overwrite the old value with a new one, use Headers.set.
  external Object append(String name, String value);

  /// Deletes a header from a [Headers] object.
  /// myHeaders.delete(name);
  /// Creating an empty Headers object is simple:
  ///
  /// var myHeaders = new Headers(); // Currently empty
  ///
  /// You could add a header to this using Headers.append:
  ///
  /// myHeaders.append('Content-Type', 'image/jpeg');
  /// myHeaders.get('Content-Type'); // Returns 'image/jpeg'
  /// You can then delete it again:
  ///
  /// myHeaders.delete('Content-Type');
  /// myHeaders.get('Content-Type'); // Returns null, as it has been deleted
  external Object delete(String name);

  ///  Returns a [ByteString] sequence of all the values of a header
  /// within a [Headers] object with a given name.
  /// myHeaders.get(name);
  /// Creating an empty Headers object is simple:
  ///
  /// var myHeaders = new Headers(); // Currently empty
  /// myHeaders.get('Not-Set'); // Returns null
  /// You could add a header to this using Headers.append, then retrieve it
  ///  using get():
  ///
  /// myHeaders.append('Content-Type', 'image/jpeg');
  /// myHeaders.get('Content-Type'); // Returns "image/jpeg"
  /// If the header has multiple values associated with it, the byte string will contain all
  ///  the values, in the order they were added to the Headers object:
  ///
  /// myHeaders.append('Accept-Encoding', 'deflate');
  /// myHeaders.append('Accept-Encoding', 'gzip');
  /// myHeaders.get('Accept-Encoding'); // Returns "deflate,gzip"
  /// myHeaders.get('Accept-Encoding').split(',').map(v => v.trimStart()); // Returns [ "deflate", "gzip" ]
  ///
  ///  Note: Headers.getAll used to have this functionality,
  ///   with Headers.get returning only the first value added to the
  ///   Headers object. The latest spec has removed getAll(), and
  ///   updated get() to return all values.
  ///
  @JS('get')
  external String? mGet(String name);

  ///  Returns a boolean stating whether a [Headers] object contains a
  /// certain header.
  /// myHeaders.has(name);
  /// Creating an empty Headers object is simple:
  ///
  /// var myHeaders = new Headers(); // Currently empty
  ///
  /// You could add a header to this using Headers.append, then test for the
  /// 	existence of it using has():
  ///
  /// myHeaders.append('Content-Type', 'image/jpeg');
  /// myHeaders.has('Content-Type'); // Returns true
  /// myHeaders.has('Accept-Encoding'); // Returns false
  ///
  external bool has(String name);

  ///  Sets a new value for an existing header inside a [Headers]
  /// object, or adds the header if it does not already exist.
  /// myHeaders.set(name, value);
  /// Creating an empty Headers object is simple:
  ///
  /// var myHeaders = new Headers(); // Currently empty
  ///
  /// You could add a header to this using Headers.append, then set a new
  ///  value for this header using set():
  ///
  /// myHeaders.append('Content-Type', 'image/jpeg');
  /// myHeaders.set('Content-Type', 'text/html');
  /// If the specified header does not already exist, set() will create it and
  ///  set its value to the specified value. If the specified header does already exist and
  ///  does accept multiple values, set() will overwrite the existing value with
  ///  the new one:
  ///
  /// myHeaders.set('Accept-Encoding', 'deflate');
  /// myHeaders.set('Accept-Encoding', 'gzip');
  /// myHeaders.get('Accept-Encoding'); // Returns 'gzip'
  ///
  /// You'd need Headers.append to append the new value onto the values, not
  ///  overwrite it.
  @JS('set')
  external Object mSet(String name, String value);
}

///
///
///  The mixin of the Fetch API represents the body of the
/// response/request, allowing you to declare what its content type
/// is and how it should be handled.
///
///   is implemented by both [Request] and [Response]. This provides
/// these objects with an associated body (a stream), a used flag
/// (initially unset), and a MIME type (initially the empty byte
/// sequence).
@experimental
@JS()
mixin Body {
  ///  A simple getter used to expose a [ReadableStream] of the body
  /// contents.
  external ReadableStream? get body;

  /// A [Boolean] that indicates whether the body has been read.
  external bool get bodyUsed;

  ///  Takes a [Response] stream and reads it to completion. It returns
  /// a promise that resolves with an [ArrayBuffer].
  /// response.arrayBuffer().then(function(buffer) {
  ///  // do something with buffer
  /// });
  external Promise<ByteBuffer> arrayBuffer();

  ///  Takes a [Response] stream and reads it to completion. It returns
  /// a promise that resolves with a [Blob].
  /// response.blob().then(function(myBlob) {
  ///  // do something with myBlob
  /// });
  /// In our fetch
  ///   request example (run fetch request live), we
  ///  create a new request using the Request() constructor,
  ///  then use it to fetch a JPG. When the fetch is successful, we read a Blob
  ///  out of the response using blob(), put it into an object URL using
  ///  URL.createObjectURL, and then set that URL as the source of an
  ///  <img> element to display the image.
  ///
  /// var myImage = document.querySelector('img');
  ///
  /// var myRequest = new Request('flowers.jpg');
  ///
  /// fetch(myRequest)
  /// .then(response => response.blob())
  /// .then(function(myBlob) {
  ///  var objectURL = URL.createObjectURL(myBlob);
  ///  myImage.src = objectURL;
  /// });
  ///
  external Promise<Blob> blob();

  ///  Takes a [Response] stream and reads it to completion. It returns
  /// a promise that resolves with a [FormData] object.
  /// response.formData()
  /// .then(function(formdata) {
  ///  // do something with your formdata
  /// });
  /// TBD.
  external Promise<FormData> formData();

  ///  Takes a [Response] stream and reads it to completion. It returns
  /// a promise that resolves with the result of parsing the body text
  /// as [JSON].
  /// response.json().then(data => {
  ///  // do something with your data
  /// });
  /// In our fetch
  ///   json example (run fetch
  ///   json live), we create a new request using the Request() constructor, then use it to fetch a .json file. When the
  ///  fetch is successful, we read and parse the data using json(), then read
  ///  values out of the resulting objects as you'd expect and insert them into list items to
  ///  display our product data.
  ///
  /// const myList = document.querySelector('ul');
  /// const myRequest = new Request('products.json');
  ///
  /// fetch(myRequest)
  ///  .then(response => response.json())
  ///  .then(data => {
  ///   for (const product of data.products) {
  ///    let listItem = document.createElement('li');
  ///    listItem.appendChild(
  ///     document.createElement('strong')
  ///    ).textContent = product.Name;
  ///    listItem.append(
  ///     ` can be found in ${
  ///      product.Location
  ///     }. Cost: `
  ///    );
  ///    listItem.appendChild(
  ///     document.createElement('strong')
  ///    ).textContent = `£${product.Price}`;
  ///    myList.appendChild(listItem);
  ///   }
  ///  })
  ///  .catch(console.error);
  external Promise<dynamic> json();

  ///  Takes a [Response] stream and reads it to completion. It returns
  /// a promise that resolves with a [USVString] (text). The response
  /// is always decoded using UTF-8.
  /// response.text().then(function (text) {
  ///  // do something with the text response
  /// });
  /// In our fetch
  ///   text example (run fetch
  ///   text live), we have an <article> element and three links (stored
  ///  in the myLinks array.) First, we loop through all of these and give each
  ///  one an onclick event handler so that the getData() function is
  ///  run — with the link's data-page identifier passed to it as an argument —
  ///  when one of the links is clicked.
  ///
  /// When getData() is run, we create a new request using the
  ///  Request() constructor, then use it to fetch a specific
  ///  .txt file. When the fetch is successful, we read a USVString
  ///  (text) object out of the response using text(), then set the
  ///  innerHTML of the <article> element
  ///  equal to the text object.
  ///
  /// let myArticle = document.querySelector('article');
  /// let myLinks = document.querySelectorAll('ul a');
  ///
  /// for(let i = 0; i <= myLinks.length-1; i++) {
  ///  myLinks[i].onclick = function(e) {
  ///   e.preventDefault();
  ///   let linkData = e.target.getAttribute('data-page');
  ///   getData(linkData);
  ///  }
  /// };
  ///
  /// function getData(pageId) {
  ///  console.log(pageId);
  ///  var myRequest = new Request(pageId + '.txt');
  ///  fetch(myRequest).then(function(response) {
  ///   return response.text().then(function(text) {
  ///    myArticle.innerHTML = text;
  ///   });
  ///  });
  /// }
  external Promise<String> text();
}

///
///
/// The interface of the Fetch API represents a resource request.
///
///  You can create a new object using the [Request()] constructor,
/// but you are more likely to encounter a object being returned as
/// the result of another API operation, such as a service worker
/// [FetchEvent.request].
@JS()
class Request with Body {
  external factory Request(dynamic input, [RequestInit? init]);

  /// Contains the request's method ([GET], [POST], etc.)
  external String get method;

  /// Contains the URL of the request.
  external String get url;

  /// Contains the associated [Headers] object of the request.
  external Headers get headers;

  ///  Returns a string from the [RequestDestination] enum describing
  /// the request's destination. This is a string indicating the type
  /// of content being requested.
  external RequestDestination get destination;

  /// Contains the referrer of the request (e.g., [client]).
  external String get referrer;

  ///  Contains the referrer policy of the request (e.g.,
  /// [no-referrer]).
  external ReferrerPolicy get referrerPolicy;

  ///  Contains the mode of the request (e.g., [cors], [no-cors],
  /// [same-origin], [navigate].)
  external RequestMode get mode;

  ///  Contains the credentials of the request (e.g., [omit],
  /// [same-origin], [include]). The default is [same-origin].
  external RequestCredentials get credentials;

  ///  Contains the cache mode of the request (e.g., [default],
  /// [reload], [no-cache]).
  external RequestCache get cache;

  ///  Contains the mode for how redirects are handled. It may be one
  /// of [follow], [error], or [manual].
  external RequestRedirect get redirect;

  ///  Contains the subresource integrity value of the request (e.g.,
  /// [sha256-BpfBw7ivV8q2jLiT13fxDYAe2tJllusRSZ273h2nFSE=]).
  external String get integrity;
  external bool get keepalive;
  external bool get isReloadNavigation;
  external bool get isHistoryNavigation;
  external AbortSignal get signal;

  /// Creates a copy of the current [Request] object.
  /// var newRequest = request.clone();
  /// In the following snippet, we create a new request using the Request.Request() constructor (for an image file in the same directory as the script), then clone the request.
  ///
  /// var myRequest = new Request('flowers.jpg');
  /// var newRequest = myRequest.clone(); // a copy of the request is now stored in newRequest
  external Request clone();
}

@anonymous
@JS()
class RequestInit {
  external String get method;
  external set method(String newValue);
  external dynamic get headers;
  external set headers(dynamic newValue);
  external dynamic get body;
  external set body(dynamic newValue);
  external String get referrer;
  external set referrer(String newValue);
  external ReferrerPolicy get referrerPolicy;
  external set referrerPolicy(ReferrerPolicy newValue);
  external RequestMode get mode;
  external set mode(RequestMode newValue);
  external RequestCredentials get credentials;
  external set credentials(RequestCredentials newValue);
  external RequestCache get cache;
  external set cache(RequestCache newValue);
  external RequestRedirect get redirect;
  external set redirect(RequestRedirect newValue);
  external String get integrity;
  external set integrity(String newValue);
  external bool get keepalive;
  external set keepalive(bool newValue);
  external AbortSignal? get signal;
  external set signal(AbortSignal? newValue);
  external dynamic get window;
  external set window(dynamic newValue);

  external factory RequestInit(
      {String method,
      dynamic headers,
      dynamic body,
      String referrer,
      ReferrerPolicy referrerPolicy,
      RequestMode mode,
      RequestCredentials credentials,
      RequestCache cache,
      RequestRedirect redirect,
      String integrity,
      bool keepalive,
      AbortSignal? signal,
      dynamic window});
}

@JS()
enum RequestDestination {
  @JS('')
  empty,
  audio,
  audioworklet,
  document,
  embed,
  font,
  frame,
  iframe,
  image,
  manifest,
  object,
  paintworklet,
  report,
  script,
  sharedworker,
  style,
  track,
  video,
  worker,
  xslt
}

@JS()
enum RequestMode {
  navigate,
  @JS('same-origin')
  sameOrigin,
  @JS('no-cors')
  noCors,
  cors
}

@JS()
enum RequestCredentials {
  omit,
  @JS('same-origin')
  sameOrigin,
  include
}

@JS()
enum RequestCache {
  @JS('default')
  valueDefault,
  @JS('no-store')
  noStore,
  reload,
  @JS('no-cache')
  noCache,
  @JS('force-cache')
  forceCache,
  @JS('only-if-cached')
  onlyIfCached
}

@JS()
enum RequestRedirect { follow, error, manual }

///
///
///  The interface of the Fetch API represents the response to a
/// request.
///
///  You can create a new object using the [Response.Response()]
/// constructor, but you are more likely to encounter a object being
/// returned as the result of another API operation—for example, a
/// service worker [Fetchevent.respondWith], or a simple
/// [WindowOrWorkerGlobalScope.fetch()].
@experimental
@JS()
class Response with Body {
  external factory Response([dynamic body, ResponseInit? init]);

  /// Returns a new [Response] object associated with a network error.
  /// var errorResponse = Response.error();
  /// TBD (does not yet appear to be supported anywhere).
  external static Response error();

  /// Creates a new response with a different URL.
  /// var response = Response.redirect(url, status);
  /// responseObj.redirect('https://www.example.com', 302);
  external static Response redirect(String url, [int? status = 302]);

  /// The type of the response (e.g., [basic], [cors]).
  external ResponseType get type;

  /// The URL of the response.
  external String get url;

  ///  Indicates whether or not the response is the result of a
  /// redirect (that is, its URL list has more than one entry).
  external bool get redirected;

  ///  The status code of the response. (This will be [200] for a
  /// success).
  external int get status;

  ///  A boolean indicating whether the response was successful (status
  /// in the range [200]–[299]) or not.
  external bool get ok;

  ///  The status message corresponding to the status code. (e.g., [OK]
  /// for [200]).
  external String get statusText;

  /// The [Headers] object associated with the response.
  external Headers get headers;

  /// Creates a clone of a [Response] object.
  /// var response2 = response1.clone();
  /// In our Fetch
  ///   Response clone example (see Fetch Response clone
  ///   live) we create a new Request object using the
  ///  Request() constructor, passing it a JPG path. We then
  ///  fetch this request using fetch(). When the fetch
  ///  resolves successfully, we clone it, extract a blob from both responses using two
  ///  Body.blob calls, create object URLs out of the blobs using
  ///  URL.createObjectURL, and display them in two separate
  ///  <img> elements.
  ///
  /// var image1 = document.querySelector('.img1');
  /// var image2 = document.querySelector('.img2');
  ///
  /// var myRequest = new Request('flowers.jpg');
  ///
  /// fetch(myRequest).then(function(response) {
  ///  var response2 = response.clone();
  ///
  ///  response.blob().then(function(myBlob) {
  ///   var objectURL = URL.createObjectURL(myBlob);
  ///   image1.src = objectURL;
  ///  });
  ///
  ///  response2.blob().then(function(myBlob) {
  ///   var objectURL = URL.createObjectURL(myBlob);
  ///   image2.src = objectURL;
  ///  });
  /// });
  external Response clone();
}

@anonymous
@JS()
class ResponseInit {
  external int get status;
  external set status(int newValue);
  external String get statusText;
  external set statusText(String newValue);
  external dynamic get headers;
  external set headers(dynamic newValue);

  external factory ResponseInit(
      {int status = 200, String statusText = '', dynamic headers});
}

@JS()
enum ResponseType {
  basic,
  cors,
  @JS('default')
  valueDefault,
  error,
  opaque,
  opaqueredirect
}
