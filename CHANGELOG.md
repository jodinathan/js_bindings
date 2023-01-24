## 0.0.9
- Preparing for Dart 3

## 0.0.8
- Correctly translate enums to their JS types. Previously, the enum `name` getter was being provided to the interop layer, but in cases where this is camel cased the value was incorrect (same for the reverse).
- Updated bindings.

## 0.0.7
 - Adjusted to use the factory generator of ` staticInterop`  

## 0.0.6
 - Changed `Map` features to use builtin JS functions
 - Added `join` to `JsArray`
 - Added `toList()` to `JsArray` so you can use regular `for-in` loops.   
  (See https://github.com/dart-lang/sdk/issues/48327)
 - Started using the curated data from W3C to generate the source

## 0.0.5
 - Added `Map` and `Iterable` functionality to maplike, iterable and 
setlike JS types.

## 0.0.4+4
 - Typos readme

## 0.0.4+3
 - Added more info to the readme and todo list

## 0.0.4+2
 - Fixed some typos in example

## 0.0.4+1

 - Updated README

## 0.0.4

 - Changed Strings to Enums where possible. Ie:  `document.visibilityState` is of type `enum VisibilityState`
 - Variadic args now are multipled to 3 args, ie: `window.console.log(1, 2, 3)`
 - Added getter and setter operators for maps, sets and arrays, ie: `document.getElementById('foo')!.childNodes[0]`
 - Updated the classes names to be camelCase
 - Fixed the file names to be snake case correctly
 - Adjusted the builders to generate code clean of lints. 
 - Updated the documentation to use Dart types instead of JS types. Ie: `Some method returns a [Promise] of a [DomString]` to `Some method returns a [Future] of a [String]`
 - Changed the example to use dynamic generated elements
 - Breaking change: The `Promise` is gone. The builder now generates `Future` when it sees a `Promise`. So no need to use `promiseToFuture` at all.
 - Breaking change: The `allowInterop` is gone. The builder now automatically adds `allowInterop` so you can use regular Dart `Function()` on callbacks.  
Example: 
   - Old way: `element.addEventListener('click', allowInterop((ev) {}))`
   - New way: `element.addEventListener('click', (ev) {})`
 - Removed a number of runtime dependencies. 
 - Require Dart 2.16 or greater
 - Require package:js 0.6.4 or greater
 - Updated the builders to use `@staticInterop` along with dart:js_util
 - The `example` dir is working and has more examples

## 0.0.3

 - Formatting and example

## 0.0.2

 - Link MediaStream on ReadMe 

## 0.0.1

- Package tries to fully transpile WebIDLs to Dart.
