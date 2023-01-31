/// Geometry Interfaces Module Level 1
///
/// https://drafts.fxtf.org/geometry/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library geometry_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

///  The interface specifies the coordinate and perspective fields
/// used by [DOMPoint] to define a 2D or 3D point in a coordinate
/// system.
///  Note: This feature is available in Web Workers
///
///  There are two ways to create a new instance. First, you can use
/// its constructor, passing in the values of the parameters for each
/// dimension and, optionally, the perspective:
/// [/* 2D */
/// const point = new DOMPointReadOnly(50, 50);
///
/// /* 3D */
/// const point = new DOMPointReadOnly(50, 50, 25);
///
/// /* 3D with perspective */
/// const point = new DOMPointReadOnly(100, 100, 100, 1.0);
/// ]
///  The other option is to use the static
/// [DOMPointReadOnly.fromPoint()] method:
///  [const point = DOMPointReadOnly.fromPoint({x: 100, y: 100, z:
/// 50; w: 1.0});
/// ]
@JS()
@staticInterop
class DOMPointReadOnly {
  external factory DOMPointReadOnly(
      [/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic z = 0,
      /* double | NaN */ dynamic w = 1]);
  external static dynamic fromPoint([DOMPointInit? other]);
}

extension PropsDOMPointReadOnly on DOMPointReadOnly {
  /* double | NaN */ dynamic get x => js_util.getProperty(this, 'x');
/* double | NaN */ dynamic get y => js_util.getProperty(this, 'y');
/* double | NaN */ dynamic get z => js_util.getProperty(this, 'z');
/* double | NaN */ dynamic get w => js_util.getProperty(this, 'w');
  DOMPoint matrixTransform([DOMMatrixInit? matrix]) =>
      js_util.callMethod(this, 'matrixTransform', [matrix]);

  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

///  A object represents a 2D or 3D point in a coordinate system; it
/// includes values for the coordinates in up to three dimensions, as
/// well as an optional perspective value. is based on
/// [DOMPointReadOnly] but allows its properties' values to be
/// changed.
///  In general, a positive [x] component represents a position to
/// the right of the origin, a positive [y] component is downward
/// from the origin, and a positive [z] component extends outward
/// from the screen (in other words, toward the user).
///
///
///
///    DOMPointReadOnly
///
///
///
///
///
///    DOMPoint
///
///
@JS()
@staticInterop
class DOMPoint implements DOMPointReadOnly {
  external factory DOMPoint(
      [/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic z = 0,
      /* double | NaN */ dynamic w = 1]);
  external static DOMPoint fromPoint([DOMPointInit? other]);
}

extension PropsDOMPoint on DOMPoint {
  /* double | NaN */ dynamic get x => js_util.getProperty(this, 'x');
  set x(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

/* double | NaN */ dynamic get y => js_util.getProperty(this, 'y');
  set y(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

/* double | NaN */ dynamic get z => js_util.getProperty(this, 'z');
  set z(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'z', newValue);
  }

/* double | NaN */ dynamic get w => js_util.getProperty(this, 'w');
  set w(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'w', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class DOMPointInit {
  external factory DOMPointInit(
      {/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic z = 0,
      /* double | NaN */ dynamic w = 1});
}

extension PropsDOMPointInit on DOMPointInit {
  /* double | NaN */ dynamic get x => js_util.getProperty(this, 'x');
  set x(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

/* double | NaN */ dynamic get y => js_util.getProperty(this, 'y');
  set y(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

/* double | NaN */ dynamic get z => js_util.getProperty(this, 'z');
  set z(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'z', newValue);
  }

/* double | NaN */ dynamic get w => js_util.getProperty(this, 'w');
  set w(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'w', newValue);
  }
}

///  The interface specifies the standard properties used by
/// [DOMRect] to define a rectangle whose properties are immutable.
@JS()
@staticInterop
class DOMRectReadOnly {
  external factory DOMRectReadOnly(
      [/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic width = 0,
      /* double | NaN */ dynamic height = 0]);
  external static dynamic fromRect([DOMRectInit? other]);
}

extension PropsDOMRectReadOnly on DOMRectReadOnly {
  /* double | NaN */ dynamic get x => js_util.getProperty(this, 'x');
/* double | NaN */ dynamic get y => js_util.getProperty(this, 'y');
/* double | NaN */ dynamic get width => js_util.getProperty(this, 'width');
/* double | NaN */ dynamic get height => js_util.getProperty(this, 'height');
/* double | NaN */ dynamic get top => js_util.getProperty(this, 'top');
/* double | NaN */ dynamic get right => js_util.getProperty(this, 'right');
/* double | NaN */ dynamic get bottom => js_util.getProperty(this, 'bottom');
/* double | NaN */ dynamic get left => js_util.getProperty(this, 'left');
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

/// A describes the size and position of a rectangle.
///  The type of box represented by the is specified by the method or
/// property that returned it. For example,
/// [VREyeParameters.renderRect] from the WebVR API specifies the
/// viewport of a canvas into which visuals for one eye of a head
/// mounted display should be rendered.
/// It inherits from its parent, [DOMRectReadOnly].
///
///
///
///    DOMRectReadOnly
///
///
///
///
///
///    DOMRect
///
///
@JS()
@staticInterop
class DOMRect implements DOMRectReadOnly {
  external factory DOMRect(
      [/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic width = 0,
      /* double | NaN */ dynamic height = 0]);
  external static DOMRect fromRect([DOMRectInit? other]);
}

extension PropsDOMRect on DOMRect {
  /* double | NaN */ dynamic get x => js_util.getProperty(this, 'x');
  set x(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

/* double | NaN */ dynamic get y => js_util.getProperty(this, 'y');
  set y(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

/* double | NaN */ dynamic get width => js_util.getProperty(this, 'width');
  set width(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

/* double | NaN */ dynamic get height => js_util.getProperty(this, 'height');
  set height(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'height', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class DOMRectInit {
  external factory DOMRectInit(
      {/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic width = 0,
      /* double | NaN */ dynamic height = 0});
}

extension PropsDOMRectInit on DOMRectInit {
  /* double | NaN */ dynamic get x => js_util.getProperty(this, 'x');
  set x(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

/* double | NaN */ dynamic get y => js_util.getProperty(this, 'y');
  set y(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

/* double | NaN */ dynamic get width => js_util.getProperty(this, 'width');
  set width(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

/* double | NaN */ dynamic get height => js_util.getProperty(this, 'height');
  set height(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'height', newValue);
  }
}

@JS()
@staticInterop
class DOMRectList {
  external factory DOMRectList();
}

extension PropsDOMRectList on DOMRectList {
  int get length => js_util.getProperty(this, 'length');
  DOMRect? item(int index) => js_util.callMethod(this, 'item', [index]);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  A is a collection of four [DOMPoint]s defining the corners of an
/// arbitrary quadrilateral. Returning s lets [getBoxQuads()] return
/// accurate information even when arbitrary 2D or 3D transforms are
/// present. It has a handy [bounds] attribute returning a
/// [DOMRectReadOnly] for those cases where you just want an
/// axis-aligned bounding rectangle.
@experimental
@JS()
@staticInterop
class DOMQuad {
  external factory DOMQuad(
      [DOMPointInit? p1, DOMPointInit? p2, DOMPointInit? p3, DOMPointInit? p4]);
  external static DOMQuad fromRect([DOMRectInit? other]);
  external static DOMQuad fromQuad([DOMQuadInit? other]);
}

extension PropsDOMQuad on DOMQuad {
  DOMPoint get p1 => js_util.getProperty(this, 'p1');
  DOMPoint get p2 => js_util.getProperty(this, 'p2');
  DOMPoint get p3 => js_util.getProperty(this, 'p3');
  DOMPoint get p4 => js_util.getProperty(this, 'p4');
  DOMRect getBounds() => js_util.callMethod(this, 'getBounds', []);

  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@anonymous
@JS()
@staticInterop
class DOMQuadInit {
  external factory DOMQuadInit(
      {DOMPointInit? p1, DOMPointInit? p2, DOMPointInit? p3, DOMPointInit? p4});
}

extension PropsDOMQuadInit on DOMQuadInit {
  DOMPointInit get p1 => js_util.getProperty(this, 'p1');
  set p1(DOMPointInit newValue) {
    js_util.setProperty(this, 'p1', newValue);
  }

  DOMPointInit get p2 => js_util.getProperty(this, 'p2');
  set p2(DOMPointInit newValue) {
    js_util.setProperty(this, 'p2', newValue);
  }

  DOMPointInit get p3 => js_util.getProperty(this, 'p3');
  set p3(DOMPointInit newValue) {
    js_util.setProperty(this, 'p3', newValue);
  }

  DOMPointInit get p4 => js_util.getProperty(this, 'p4');
  set p4(DOMPointInit newValue) {
    js_util.setProperty(this, 'p4', newValue);
  }
}

///  The interface represents a read-only 4×4 matrix, suitable for 2D
/// and 3D operations. The [DOMMatrix] interface — which is based
/// upon —adds mutability, allowing you to alter the matrix after
/// creating it.
///  This interface should be available inside web workers, though
/// some implementations doesn't allow it yet.
@JS()
@staticInterop
class DOMMatrixReadOnly {
  external factory DOMMatrixReadOnly([dynamic init]);
  external static dynamic fromMatrix([DOMMatrixInit? other]);
  external static dynamic fromFloat32Array(Float32List array32);
  external static dynamic fromFloat64Array(Float64List array64);
}

extension PropsDOMMatrixReadOnly on DOMMatrixReadOnly {
  /* double | NaN */ dynamic get a => js_util.getProperty(this, 'a');
/* double | NaN */ dynamic get b => js_util.getProperty(this, 'b');
/* double | NaN */ dynamic get c => js_util.getProperty(this, 'c');
/* double | NaN */ dynamic get d => js_util.getProperty(this, 'd');
/* double | NaN */ dynamic get e => js_util.getProperty(this, 'e');
/* double | NaN */ dynamic get f => js_util.getProperty(this, 'f');
/* double | NaN */ dynamic get m11 => js_util.getProperty(this, 'm11');
/* double | NaN */ dynamic get m12 => js_util.getProperty(this, 'm12');
/* double | NaN */ dynamic get m13 => js_util.getProperty(this, 'm13');
/* double | NaN */ dynamic get m14 => js_util.getProperty(this, 'm14');
/* double | NaN */ dynamic get m21 => js_util.getProperty(this, 'm21');
/* double | NaN */ dynamic get m22 => js_util.getProperty(this, 'm22');
/* double | NaN */ dynamic get m23 => js_util.getProperty(this, 'm23');
/* double | NaN */ dynamic get m24 => js_util.getProperty(this, 'm24');
/* double | NaN */ dynamic get m31 => js_util.getProperty(this, 'm31');
/* double | NaN */ dynamic get m32 => js_util.getProperty(this, 'm32');
/* double | NaN */ dynamic get m33 => js_util.getProperty(this, 'm33');
/* double | NaN */ dynamic get m34 => js_util.getProperty(this, 'm34');
/* double | NaN */ dynamic get m41 => js_util.getProperty(this, 'm41');
/* double | NaN */ dynamic get m42 => js_util.getProperty(this, 'm42');
/* double | NaN */ dynamic get m43 => js_util.getProperty(this, 'm43');
/* double | NaN */ dynamic get m44 => js_util.getProperty(this, 'm44');
  bool get is2D => js_util.getProperty(this, 'is2D');
  bool get isIdentity => js_util.getProperty(this, 'isIdentity');
  DOMMatrix translate(
          [/* double | NaN */ dynamic tx = 0,
          /* double | NaN */ dynamic ty = 0,
          /* double | NaN */ dynamic tz = 0]) =>
      js_util.callMethod(this, 'translate', [tx, ty, tz]);

  DOMMatrix scale(
          [/* double | NaN */ dynamic scaleX = 1,
          /* double | NaN */ dynamic scaleY,
          /* double | NaN */ dynamic scaleZ = 1,
          /* double | NaN */ dynamic originX = 0,
          /* double | NaN */ dynamic originY = 0,
          /* double | NaN */ dynamic originZ = 0]) =>
      js_util.callMethod(
          this, 'scale', [scaleX, scaleY, scaleZ, originX, originY, originZ]);

  DOMMatrix scaleNonUniform(
          [/* double | NaN */ dynamic scaleX = 1,
          /* double | NaN */ dynamic scaleY = 1]) =>
      js_util.callMethod(this, 'scaleNonUniform', [scaleX, scaleY]);

  DOMMatrix scale3d(
          [/* double | NaN */ dynamic scale = 1,
          /* double | NaN */ dynamic originX = 0,
          /* double | NaN */ dynamic originY = 0,
          /* double | NaN */ dynamic originZ = 0]) =>
      js_util.callMethod(this, 'scale3d', [scale, originX, originY, originZ]);

  DOMMatrix rotate(
          [/* double | NaN */ dynamic rotX = 0,
          /* double | NaN */ dynamic rotY,
          /* double | NaN */ dynamic rotZ]) =>
      js_util.callMethod(this, 'rotate', [rotX, rotY, rotZ]);

  DOMMatrix rotateFromVector(
          [/* double | NaN */ dynamic x = 0,
          /* double | NaN */ dynamic y = 0]) =>
      js_util.callMethod(this, 'rotateFromVector', [x, y]);

  DOMMatrix rotateAxisAngle(
          [/* double | NaN */ dynamic x = 0,
          /* double | NaN */ dynamic y = 0,
          /* double | NaN */ dynamic z = 0,
          /* double | NaN */ dynamic angle = 0]) =>
      js_util.callMethod(this, 'rotateAxisAngle', [x, y, z, angle]);

  DOMMatrix skewX([/* double | NaN */ dynamic sx = 0]) =>
      js_util.callMethod(this, 'skewX', [sx]);

  DOMMatrix skewY([/* double | NaN */ dynamic sy = 0]) =>
      js_util.callMethod(this, 'skewY', [sy]);

  DOMMatrix multiply([DOMMatrixInit? other]) =>
      js_util.callMethod(this, 'multiply', [other]);

  DOMMatrix flipX() => js_util.callMethod(this, 'flipX', []);

  DOMMatrix flipY() => js_util.callMethod(this, 'flipY', []);

  DOMMatrix inverse() => js_util.callMethod(this, 'inverse', []);

  DOMPoint transformPoint([DOMPointInit? point]) =>
      js_util.callMethod(this, 'transformPoint', [point]);

  Float32List toFloat32Array() =>
      js_util.callMethod(this, 'toFloat32Array', []);

  Float64List toFloat64Array() =>
      js_util.callMethod(this, 'toFloat64Array', []);

  String mToString() => js_util.callMethod(this, 'toString', []);

  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

///  The interface represents 4×4 matrices, suitable for 2D and 3D
/// operations including rotation and translation. It is a mutable
/// version of the [DOMMatrixReadOnly] interface.
/// [WebKitCSSMatrix] is an alias to .
///  This interface should be available inside web workers, though
/// some implementations don't allow it yet.
///
///
///
///    DOMMatrixReadOnly
///
///
///
///
///
///    DOMMatrix
///
///
@experimental
@JS()
@staticInterop
class DOMMatrix implements DOMMatrixReadOnly {
  external factory DOMMatrix([dynamic init]);
  external static DOMMatrix fromMatrix([DOMMatrixInit? other]);
  external static DOMMatrix fromFloat32Array(Float32List array32);
  external static DOMMatrix fromFloat64Array(Float64List array64);
}

extension PropsDOMMatrix on DOMMatrix {
  /* double | NaN */ dynamic get a => js_util.getProperty(this, 'a');
  set a(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'a', newValue);
  }

/* double | NaN */ dynamic get b => js_util.getProperty(this, 'b');
  set b(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'b', newValue);
  }

/* double | NaN */ dynamic get c => js_util.getProperty(this, 'c');
  set c(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'c', newValue);
  }

/* double | NaN */ dynamic get d => js_util.getProperty(this, 'd');
  set d(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'd', newValue);
  }

/* double | NaN */ dynamic get e => js_util.getProperty(this, 'e');
  set e(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'e', newValue);
  }

/* double | NaN */ dynamic get f => js_util.getProperty(this, 'f');
  set f(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'f', newValue);
  }

/* double | NaN */ dynamic get m11 => js_util.getProperty(this, 'm11');
  set m11(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm11', newValue);
  }

/* double | NaN */ dynamic get m12 => js_util.getProperty(this, 'm12');
  set m12(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm12', newValue);
  }

/* double | NaN */ dynamic get m13 => js_util.getProperty(this, 'm13');
  set m13(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm13', newValue);
  }

/* double | NaN */ dynamic get m14 => js_util.getProperty(this, 'm14');
  set m14(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm14', newValue);
  }

/* double | NaN */ dynamic get m21 => js_util.getProperty(this, 'm21');
  set m21(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm21', newValue);
  }

/* double | NaN */ dynamic get m22 => js_util.getProperty(this, 'm22');
  set m22(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm22', newValue);
  }

/* double | NaN */ dynamic get m23 => js_util.getProperty(this, 'm23');
  set m23(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm23', newValue);
  }

/* double | NaN */ dynamic get m24 => js_util.getProperty(this, 'm24');
  set m24(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm24', newValue);
  }

/* double | NaN */ dynamic get m31 => js_util.getProperty(this, 'm31');
  set m31(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm31', newValue);
  }

/* double | NaN */ dynamic get m32 => js_util.getProperty(this, 'm32');
  set m32(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm32', newValue);
  }

/* double | NaN */ dynamic get m33 => js_util.getProperty(this, 'm33');
  set m33(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm33', newValue);
  }

/* double | NaN */ dynamic get m34 => js_util.getProperty(this, 'm34');
  set m34(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm34', newValue);
  }

/* double | NaN */ dynamic get m41 => js_util.getProperty(this, 'm41');
  set m41(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm41', newValue);
  }

/* double | NaN */ dynamic get m42 => js_util.getProperty(this, 'm42');
  set m42(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm42', newValue);
  }

/* double | NaN */ dynamic get m43 => js_util.getProperty(this, 'm43');
  set m43(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm43', newValue);
  }

/* double | NaN */ dynamic get m44 => js_util.getProperty(this, 'm44');
  set m44(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm44', newValue);
  }

  DOMMatrix multiplySelf([DOMMatrixInit? other]) =>
      js_util.callMethod(this, 'multiplySelf', [other]);

  DOMMatrix preMultiplySelf([DOMMatrixInit? other]) =>
      js_util.callMethod(this, 'preMultiplySelf', [other]);

  DOMMatrix translateSelf(
          [/* double | NaN */ dynamic tx = 0,
          /* double | NaN */ dynamic ty = 0,
          /* double | NaN */ dynamic tz = 0]) =>
      js_util.callMethod(this, 'translateSelf', [tx, ty, tz]);

  DOMMatrix scaleSelf(
          [/* double | NaN */ dynamic scaleX = 1,
          /* double | NaN */ dynamic scaleY,
          /* double | NaN */ dynamic scaleZ = 1,
          /* double | NaN */ dynamic originX = 0,
          /* double | NaN */ dynamic originY = 0,
          /* double | NaN */ dynamic originZ = 0]) =>
      js_util.callMethod(this, 'scaleSelf',
          [scaleX, scaleY, scaleZ, originX, originY, originZ]);

  DOMMatrix scale3dSelf(
          [/* double | NaN */ dynamic scale = 1,
          /* double | NaN */ dynamic originX = 0,
          /* double | NaN */ dynamic originY = 0,
          /* double | NaN */ dynamic originZ = 0]) =>
      js_util
          .callMethod(this, 'scale3dSelf', [scale, originX, originY, originZ]);

  DOMMatrix rotateSelf(
          [/* double | NaN */ dynamic rotX = 0,
          /* double | NaN */ dynamic rotY,
          /* double | NaN */ dynamic rotZ]) =>
      js_util.callMethod(this, 'rotateSelf', [rotX, rotY, rotZ]);

  DOMMatrix rotateFromVectorSelf(
          [/* double | NaN */ dynamic x = 0,
          /* double | NaN */ dynamic y = 0]) =>
      js_util.callMethod(this, 'rotateFromVectorSelf', [x, y]);

  DOMMatrix rotateAxisAngleSelf(
          [/* double | NaN */ dynamic x = 0,
          /* double | NaN */ dynamic y = 0,
          /* double | NaN */ dynamic z = 0,
          /* double | NaN */ dynamic angle = 0]) =>
      js_util.callMethod(this, 'rotateAxisAngleSelf', [x, y, z, angle]);

  DOMMatrix skewXSelf([/* double | NaN */ dynamic sx = 0]) =>
      js_util.callMethod(this, 'skewXSelf', [sx]);

  DOMMatrix skewYSelf([/* double | NaN */ dynamic sy = 0]) =>
      js_util.callMethod(this, 'skewYSelf', [sy]);

  DOMMatrix invertSelf() => js_util.callMethod(this, 'invertSelf', []);

  DOMMatrix setMatrixValue(String transformList) =>
      js_util.callMethod(this, 'setMatrixValue', [transformList]);
}

@anonymous
@JS()
@staticInterop
class DOMMatrix2DInit {
  external factory DOMMatrix2DInit(
      {/* double | NaN */ dynamic a,
      /* double | NaN */ dynamic b,
      /* double | NaN */ dynamic c,
      /* double | NaN */ dynamic d,
      /* double | NaN */ dynamic e,
      /* double | NaN */ dynamic f,
      /* double | NaN */ dynamic m11,
      /* double | NaN */ dynamic m12,
      /* double | NaN */ dynamic m21,
      /* double | NaN */ dynamic m22,
      /* double | NaN */ dynamic m41,
      /* double | NaN */ dynamic m42});
}

extension PropsDOMMatrix2DInit on DOMMatrix2DInit {
  /* double | NaN */ dynamic get a => js_util.getProperty(this, 'a');
  set a(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'a', newValue);
  }

/* double | NaN */ dynamic get b => js_util.getProperty(this, 'b');
  set b(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'b', newValue);
  }

/* double | NaN */ dynamic get c => js_util.getProperty(this, 'c');
  set c(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'c', newValue);
  }

/* double | NaN */ dynamic get d => js_util.getProperty(this, 'd');
  set d(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'd', newValue);
  }

/* double | NaN */ dynamic get e => js_util.getProperty(this, 'e');
  set e(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'e', newValue);
  }

/* double | NaN */ dynamic get f => js_util.getProperty(this, 'f');
  set f(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'f', newValue);
  }

/* double | NaN */ dynamic get m11 => js_util.getProperty(this, 'm11');
  set m11(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm11', newValue);
  }

/* double | NaN */ dynamic get m12 => js_util.getProperty(this, 'm12');
  set m12(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm12', newValue);
  }

/* double | NaN */ dynamic get m21 => js_util.getProperty(this, 'm21');
  set m21(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm21', newValue);
  }

/* double | NaN */ dynamic get m22 => js_util.getProperty(this, 'm22');
  set m22(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm22', newValue);
  }

/* double | NaN */ dynamic get m41 => js_util.getProperty(this, 'm41');
  set m41(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm41', newValue);
  }

/* double | NaN */ dynamic get m42 => js_util.getProperty(this, 'm42');
  set m42(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm42', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class DOMMatrixInit implements DOMMatrix2DInit {
  external factory DOMMatrixInit(
      {/* double | NaN */ dynamic m13 = 0,
      /* double | NaN */ dynamic m14 = 0,
      /* double | NaN */ dynamic m23 = 0,
      /* double | NaN */ dynamic m24 = 0,
      /* double | NaN */ dynamic m31 = 0,
      /* double | NaN */ dynamic m32 = 0,
      /* double | NaN */ dynamic m33 = 1,
      /* double | NaN */ dynamic m34 = 0,
      /* double | NaN */ dynamic m43 = 0,
      /* double | NaN */ dynamic m44 = 1,
      bool? is2D});
}

extension PropsDOMMatrixInit on DOMMatrixInit {
  /* double | NaN */ dynamic get m13 => js_util.getProperty(this, 'm13');
  set m13(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm13', newValue);
  }

/* double | NaN */ dynamic get m14 => js_util.getProperty(this, 'm14');
  set m14(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm14', newValue);
  }

/* double | NaN */ dynamic get m23 => js_util.getProperty(this, 'm23');
  set m23(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm23', newValue);
  }

/* double | NaN */ dynamic get m24 => js_util.getProperty(this, 'm24');
  set m24(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm24', newValue);
  }

/* double | NaN */ dynamic get m31 => js_util.getProperty(this, 'm31');
  set m31(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm31', newValue);
  }

/* double | NaN */ dynamic get m32 => js_util.getProperty(this, 'm32');
  set m32(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm32', newValue);
  }

/* double | NaN */ dynamic get m33 => js_util.getProperty(this, 'm33');
  set m33(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm33', newValue);
  }

/* double | NaN */ dynamic get m34 => js_util.getProperty(this, 'm34');
  set m34(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm34', newValue);
  }

/* double | NaN */ dynamic get m43 => js_util.getProperty(this, 'm43');
  set m43(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm43', newValue);
  }

/* double | NaN */ dynamic get m44 => js_util.getProperty(this, 'm44');
  set m44(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm44', newValue);
  }

  bool get is2D => js_util.getProperty(this, 'is2D');
  set is2D(bool newValue) {
    js_util.setProperty(this, 'is2D', newValue);
  }
}
