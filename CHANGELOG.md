## 0.0.4-dev.5
 - Added getter and setter operators for maps, sets and arrays, ie: `document.getElementById('foo')!.childNodes[0]`
 - Updated the classes names to be camelCase
 - Fixed the file names to be snake case correctly
 - Adjusted the builders to generate code clean of lints. 

## 0.0.4-dev.4
 - Updated the documentation to use Dart types instead of JS types. Ie: `Some method returns a [Promise] of a [DomString]` to `Some method returns a [Future] of a [String]`

## 0.0.4-dev.3

 - Changed the example to use dynamic generated elements

## 0.0.4-dev.2

 - Breaking change: The `Promise` is gone. The builder now generates `Future` when it sees a `Promise`. So no need to use `promiseToFuture` at all.
 - Breaking change: The `allowInterop` is gone. The builder now automatically adds `allowInterop` so you can use regular Dart `Function()` on callbacks.  
Example: 
   - Old way: `element.addEventListener('click', allowInterop((ev) {}))`
   - New way: `element.addEventListener('click', (ev) {})`

## 0.0.4-dev

 - Removed a number of runtime dependencies. 
 - Require Dart 2.14 or greater
 - Require package:js 0.6.4 or greater
 - Updated the builders to use `@staticInterop` along with dart:js_util
 - The `example` dir is working and has more examples

## 0.0.3

 - Formatting and example

## 0.0.2

 - Link MediaStream on ReadMe 

## 0.0.1

- Package tries to fully transpile WebIDLs to Dart.
