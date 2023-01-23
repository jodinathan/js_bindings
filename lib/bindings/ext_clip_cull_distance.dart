/// WebGL EXT_clip_cull_distance Extension Draft Specification
///
/// https://registry.khronos.org/webgl/extensions/EXT_clip_cull_distance/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library ext_clip_cull_distance;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS('EXT_clip_cull_distance')
@staticInterop
class EXTClipCullDistance {
  @JS('MAX_CLIP_DISTANCES_EXT')
  external static int get maxClipDistancesExt;

  @JS('MAX_CULL_DISTANCES_EXT')
  external static int get maxCullDistancesExt;

  @JS('MAX_COMBINED_CLIP_AND_CULL_DISTANCES_EXT')
  external static int get maxCombinedClipAndCullDistancesExt;

  @JS('CLIP_DISTANCE0_EXT')
  external static int get clipDistance0Ext;

  @JS('CLIP_DISTANCE1_EXT')
  external static int get clipDistance1Ext;

  @JS('CLIP_DISTANCE2_EXT')
  external static int get clipDistance2Ext;

  @JS('CLIP_DISTANCE3_EXT')
  external static int get clipDistance3Ext;

  @JS('CLIP_DISTANCE4_EXT')
  external static int get clipDistance4Ext;

  @JS('CLIP_DISTANCE5_EXT')
  external static int get clipDistance5Ext;

  @JS('CLIP_DISTANCE6_EXT')
  external static int get clipDistance6Ext;

  @JS('CLIP_DISTANCE7_EXT')
  external static int get clipDistance7Ext;

  external factory EXTClipCullDistance();
}
