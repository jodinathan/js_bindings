import 'dart:async';

import 'package:js_bindings/js_bindings.dart';
import 'package:collection/collection.dart';

// extension FileDialogDocument on Document {
//   Future<File?> selectFile({String? contentType}) async =>
//       (await _selectFiles(contentType: contentType, multiple: false))
//           .item(0);
//
//   Future<FileList> selectFiles(
//       {String? contentType}) => _selectFiles(contentType: contentType);
//
//   Future<FileList> _selectFiles(
//       {String? contentType, bool multiple = true}) {
//     final cmp = Completer<FileList>();
//     final input = HTMLInputElement()
//       ..type = 'file'
//       ..multiple = multiple
//       ..accept = contentType ?? '';
//     late final StreamSubscription change;
//     late final StreamSubscription abort;
//
//     void resolve(FileList? files) {
//       cmp.complete(files);
//       change.cancel();
//       abort.cancel();
//     }
//
//     change = input.onChange.listen((ev) {
//       resolve(input.files);
//     });
//
//     abort = input.onAbort.listen((ev) {
//       resolve(input.files);
//     });
//
//     input.click();
//     return cmp.future;
//   }
// }
