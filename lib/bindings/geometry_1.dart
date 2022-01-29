/// Geometry Interfaces Module Level 1
///
/// https://drafts.fxtf.org/geometry/
@JS('window')
@staticInterop
library geometry_1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps:  */

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
  external DOMPointReadOnly(
      [/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic z = 0,
      /* double | NaN */ dynamic w = 1]);
}

extension PropsDOMPointReadOnly on DOMPointReadOnly {
  external static dynamic fromPoint([DOMPointInit? other]);

  /// The point's horizontal coordinate, .
  ///
  /* double | NaN */ dynamic get x => js_util.getProperty(this, 'x');

  /// The point's vertical coordinate, .
  ///
  /* double | NaN */ dynamic get y => js_util.getProperty(this, 'y');

  /// The point's depth coordinate, .
  ///
  /* double | NaN */ dynamic get z => js_util.getProperty(this, 'z');

  /// The point's perspective value, .
  ///
  /* double | NaN */ dynamic get w => js_util.getProperty(this, 'w');

  ///  Applies a matrix transform specified as an object to the
  /// [DOMPointReadOnly] object.
  ///
  DOMPoint matrixTransform([DOMMatrixInit? matrix]) =>
      js_util.callMethod(this, 'matrixTransform', [matrix]);

  /// Returns a JSON representation of the [DOMPointReadOnly] object.
  ///
  /// pointJSON = DOMPointReadOnly.toJSON();
  ///
  ///
  ///  This example creates a DOMPoint object representing the top-left corner
  ///  of the current window, in screen coordinates, then converts that to JSON.
  ///
  /// var topLeft = new DOMPoint(window.screenX, window.screenY);
  ///
  /// var pointJSON = topLeft.toJSON();
  ///
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
@JS()
@staticInterop
class DOMPoint implements DOMPointReadOnly {
  external DOMPoint(
      [/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic z = 0,
      /* double | NaN */ dynamic w = 1]);
}

extension PropsDOMPoint on DOMPoint {
  external static DOMPoint fromPoint([DOMPointInit? other]);

  /// The coordinate of the [DOMPoint].
  ///
  @override
  /* double | NaN */ dynamic get x => js_util.getProperty(this, 'x');
  @override
  set x(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  /// The coordinate of the [DOMPoint].
  ///
  @override
  /* double | NaN */ dynamic get y => js_util.getProperty(this, 'y');
  @override
  set y(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

  /// The coordinate of the [DOMPoint].
  ///
  @override
  /* double | NaN */ dynamic get z => js_util.getProperty(this, 'z');
  @override
  set z(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'z', newValue);
  }

  /// The perspective value of the [DOMPoint].
  ///
  @override
  /* double | NaN */ dynamic get w => js_util.getProperty(this, 'w');
  @override
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
  external DOMRectReadOnly(
      [/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic width = 0,
      /* double | NaN */ dynamic height = 0]);
}

extension PropsDOMRectReadOnly on DOMRectReadOnly {
  external static dynamic fromRect([DOMRectInit? other]);

  /// The x coordinate of the [DOMRect]'s origin.
  ///
  /* double | NaN */ dynamic get x => js_util.getProperty(this, 'x');

  /// The y coordinate of the [DOMRect]'s origin.
  ///
  /* double | NaN */ dynamic get y => js_util.getProperty(this, 'y');

  /// The width of the [DOMRect].
  ///
  /* double | NaN */ dynamic get width => js_util.getProperty(this, 'width');

  /// The height of the [DOMRect].
  ///
  /* double | NaN */ dynamic get height => js_util.getProperty(this, 'height');

  ///  Returns the top coordinate value of the [DOMRect] (usually the
  /// same as [y].)
  ///
  /* double | NaN */ dynamic get top => js_util.getProperty(this, 'top');

  ///  Returns the right coordinate value of the [DOMRect] (usually the
  /// same as [x + width]).
  ///
  /* double | NaN */ dynamic get right => js_util.getProperty(this, 'right');

  ///  Returns the bottom coordinate value of the [DOMRect] (usually
  /// the same as [y + height]).
  ///
  /* double | NaN */ dynamic get bottom => js_util.getProperty(this, 'bottom');

  ///  Returns the left coordinate value of the [DOMRect] (usually the
  /// same as [x]).
  ///
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
  external DOMRect(
      [/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic width = 0,
      /* double | NaN */ dynamic height = 0]);
}

extension PropsDOMRect on DOMRect {
  external static DOMRect fromRect([DOMRectInit? other]);

  ///  The x coordinate of the [DOMRect]'s origin (typically the
  /// top-left corner of the rectangle).
  ///
  @override
  /* double | NaN */ dynamic get x => js_util.getProperty(this, 'x');
  @override
  set x(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  ///  The y coordinate of the [DOMRect]'s origin (typically the
  /// top-left corner of the rectangle).
  ///
  @override
  /* double | NaN */ dynamic get y => js_util.getProperty(this, 'y');
  @override
  set y(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

  /// The width of the [DOMRect].
  ///
  @override
  /* double | NaN */ dynamic get width => js_util.getProperty(this, 'width');
  @override
  set width(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  /// The height of the [DOMRect].
  ///
  @override
  /* double | NaN */ dynamic get height => js_util.getProperty(this, 'height');
  @override
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
  external DOMRectList();
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
  external DOMQuad(
      [DOMPointInit? p1, DOMPointInit? p2, DOMPointInit? p3, DOMPointInit? p4]);
}

extension PropsDOMQuad on DOMQuad {
  ///  Returns a new [DOMQuad] object based on the passed set of
  /// coordinates.
  ///
  external static DOMQuad fromRect([DOMRectInit? other]);

  ///  Returns a new [DOMQuad] object based on the passed set of
  /// coordinates.
  ///
  external static DOMQuad fromQuad([DOMQuadInit? other]);
  DOMPoint get p1 => js_util.getProperty(this, 'p1');
  DOMPoint get p2 => js_util.getProperty(this, 'p2');
  DOMPoint get p3 => js_util.getProperty(this, 'p3');
  DOMPoint get p4 => js_util.getProperty(this, 'p4');

  ///  Returns a [DOMRect] object with the coordinates and dimensions
  /// of the [DOMQuad] object.
  ///
  DOMRect getBounds() => js_util.callMethod(this, 'getBounds', []);

  /// Returns a JSON representation of the [DOMQuad] object.
  ///
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

@anonymous
@JS()
@staticInterop
class DOMQuadInit {
  external factory DOMQuadInit(
      {DOMPointInit p1, DOMPointInit p2, DOMPointInit p3, DOMPointInit p4});
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
/// and 3D operations. The [DOMMatrix] interrface—which is based upon
/// —adds mutability, allowing you to alter the matrix after creating
/// it.
///  This interface should be available inside web workers, though
/// some implementations doesn't allow it yet.
@JS()
@staticInterop
class DOMMatrixReadOnly {
  external DOMMatrixReadOnly([dynamic init]);
}

extension PropsDOMMatrixReadOnly on DOMMatrixReadOnly {
  external static dynamic fromMatrix([DOMMatrixInit? other]);
  external static dynamic fromFloat32Array(Float32List array32);
  external static dynamic fromFloat64Array(Float64List array64);

  ///  Double-precision floating-point values representing the
  /// components of a 4×4 matrix which are required in order to perform
  /// 2D rotations and translations. These are aliases for specific
  /// components of a 4×4 matrix, as shown below.
  ///
  ///
  ///
  ///      2D
  ///      3D equivalent
  ///
  ///
  ///
  ///
  ///
  ///      [m11]
  ///
  ///
  ///      [b]
  ///      [m12]
  ///
  ///
  ///      [c]
  ///      [m21]
  ///
  ///
  ///      [d]
  ///      [m22]
  ///
  ///
  ///      [e]
  ///      [m41]
  ///
  ///
  ///      [f]
  ///      [m42]
  ///
  ///
  ///
  ///
  /* double | NaN */ dynamic get a => js_util.getProperty(this, 'a');
  /* double | NaN */ dynamic get b => js_util.getProperty(this, 'b');
  /* double | NaN */ dynamic get c => js_util.getProperty(this, 'c');
  /* double | NaN */ dynamic get d => js_util.getProperty(this, 'd');
  /* double | NaN */ dynamic get e => js_util.getProperty(this, 'e');
  /* double | NaN */ dynamic get f => js_util.getProperty(this, 'f');

  ///  Double-precision floating-point values representing each
  /// component of a 4×4 matrix, where through [m14] are the first
  /// column, [m21] through [m24] are the second column, and so forth.
  ///
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

  ///  A Boolean flag whose value is [true] if the matrix was
  /// initialized as a 2D matrix. If [false], the matrix is 3D.
  ///
  bool get is2D => js_util.getProperty(this, 'is2D');

  ///  A Boolean whose value is [true] if the matrix is the identity
  /// matrix. The identity matrix is one in which every value is [0]
  /// except those on the main diagonal from top-left to bottom-right
  /// corner (in other words, where the offsets in each direction are
  /// equal).
  ///
  bool get isIdentity => js_util.getProperty(this, 'isIdentity');

  ///  Returns a new [DOMMatrix] containing a matrix calculated by
  /// translating the source matrix using the specified vector. By
  /// default, the vector is [(0, 0, 0)]. The original matrix is not
  /// changed.
  ///
  /// DOMMatrix.translate(translateX, translateY);
  /// DOMMatrix.translate(translateX, translateY, translateZ);
  ///
  DOMMatrix translate(
          [/* double | NaN */ dynamic tx = 0,
          /* double | NaN */ dynamic ty = 0,
          /* double | NaN */ dynamic tz = 0]) =>
      js_util.callMethod(this, 'translate', [tx, ty, tz]);

  ///  Returns a new [DOMMatrix] created by scaling the source matrix
  /// by the amount specified for each axis, centered on the given
  /// origin. By default, the X and Z axes are scaled by [1] and the Y
  /// axis has no default scaling value. The default origin is [(0, 0,
  /// 0)]. The original matrix is not modified.
  ///
  /// The scale() method is specified with either one or six values.
  /// DOMMatrixReadOnly.scale(scaleX);
  /// DOMMatrixReadOnly.scale(scaleX, scaleY);
  /// DOMMatrixReadOnly.scale(scaleX, scaleY, scaleZ);
  /// DOMMatrixReadOnly.scale(scaleX, scaleY, scaleZ, originX);
  /// DOMMatrixReadOnly.scale(scaleX, scaleY, scaleZ, originX, originY);
  /// DOMMatrixReadOnly.scale(scaleX, scaleY, scaleZ, originX, originY, originZ);
  ///
  DOMMatrix scale(
          [/* double | NaN */ dynamic scaleX = 1,
          /* double | NaN */ dynamic scaleY,
          /* double | NaN */ dynamic scaleZ = 1,
          /* double | NaN */ dynamic originX = 0,
          /* double | NaN */ dynamic originY = 0,
          /* double | NaN */ dynamic originZ = 0]) =>
      js_util.callMethod(
          this, 'scale', [scaleX, scaleY, scaleZ, originX, originY, originZ]);

  ///  Returns a new [DOMMatrix] created by applying the specified
  /// scaling on the X, Y, and Z axes, centered at the given origin. By
  /// default, the Y and Z axes' scaling factors are both [1], but the
  /// scaling factor for X must be specified. The default origin is
  /// [(0, 0, 0)]. The original matrix is not changed.
  ///
  @deprecated
  DOMMatrix scaleNonUniform(
          [/* double | NaN */ dynamic scaleX = 1,
          /* double | NaN */ dynamic scaleY = 1]) =>
      js_util.callMethod(this, 'scaleNonUniform', [scaleX, scaleY]);

  ///  Returns a new [DOMMatrix] created by scaling the source 3D
  /// matrix by the given factor along all its axes, centered on the
  /// specified origin point. The default origin is [(0, 0, 0)]. The
  /// original matrix is not modified.
  ///
  DOMMatrix scale3d(
          [/* double | NaN */ dynamic scale = 1,
          /* double | NaN */ dynamic originX = 0,
          /* double | NaN */ dynamic originY = 0,
          /* double | NaN */ dynamic originZ = 0]) =>
      js_util.callMethod(this, 'scale3d', [scale, originX, originY, originZ]);

  ///  Returns a new [DOMMatrix] created by rotating the source matrix
  /// around each of its axes by the specified number of degrees. The
  /// original matrix is not altered.
  ///
  DOMMatrix rotate(
          [/* double | NaN */ dynamic rotX = 0,
          /* double | NaN */ dynamic rotY,
          /* double | NaN */ dynamic rotZ]) =>
      js_util.callMethod(this, 'rotate', [rotX, rotY, rotZ]);

  ///  Returns a new [DOMMatrix] created by rotating the source matrix
  /// by the angle between the specified vector and [(1, 0)]. The
  /// original matrix is not modified.
  ///
  DOMMatrix rotateFromVector(
          [/* double | NaN */ dynamic x = 0,
          /* double | NaN */ dynamic y = 0]) =>
      js_util.callMethod(this, 'rotateFromVector', [x, y]);

  ///  Returns a new [DOMMatrix] created by rotating the source matrix
  /// by the given angle around the specified vector. The original
  /// matrix is not modified.
  ///
  DOMMatrix rotateAxisAngle(
          [/* double | NaN */ dynamic x = 0,
          /* double | NaN */ dynamic y = 0,
          /* double | NaN */ dynamic z = 0,
          /* double | NaN */ dynamic angle = 0]) =>
      js_util.callMethod(this, 'rotateAxisAngle', [x, y, z, angle]);

  ///  Returns a new [DOMMatrix] created by applying the specified skew
  /// transformation to the source matrix along its X-axis. The
  /// original matrix is not modified.
  ///
  DOMMatrix skewX([/* double | NaN */ dynamic sx = 0]) =>
      js_util.callMethod(this, 'skewX', [sx]);

  ///  Returns a new [DOMMatrix] created by applying the specified skew
  /// transformation to the source matrix along its Y-axis. The
  /// original matrix is not modified.
  ///
  DOMMatrix skewY([/* double | NaN */ dynamic sy = 0]) =>
      js_util.callMethod(this, 'skewY', [sy]);

  ///  Returns a new [DOMMatrix] created by computing the dot product
  /// of the source matrix and the specified matrix: [A⋅B]. If no
  /// matrix is specified as the multiplier, the matrix is multiplied
  /// by a matrix in which every element is [0] except the bottom-right
  /// corner and the element immediately above and to its left: [m33]
  /// and [m34]. These have the default value of [1]. The original
  /// matrix is not modified.
  ///
  DOMMatrix multiply([DOMMatrixInit? other]) =>
      js_util.callMethod(this, 'multiply', [other]);

  ///  Returns a new [DOMMatrix] created by flipping the source matrix
  /// around its X-axis. This is equivalent to multiplying the matrix
  /// by [DOMMatrix(-1, 0, 0, 1, 0, 0)]. The original matrix is not
  /// modified.
  ///
  ///  DOMMatrixReadOnly.flipX();
  ///
  DOMMatrix flipX() => js_util.callMethod(this, 'flipX', []);

  ///  Returns a new [DOMMatrix] created by flipping the source matrix
  /// around its Y-axis. This is equivalent to multiplying the matrix
  /// by [DOMMatrix(1, 0, 0, -1, 0, 0)]. The original matrix is not
  /// modified.
  ///
  DOMMatrix flipY() => js_util.callMethod(this, 'flipY', []);

  ///  Returns a new [DOMMatrix] created by inverting the source
  /// matrix. If the matrix cannot be inverted, the new matrix's
  /// components are all set to [NaN] and its [is2D] property is set to
  /// [false]. The original matrix is not altered.
  ///
  DOMMatrix inverse() => js_util.callMethod(this, 'inverse', []);

  ///  Transforms the specified point using the matrix, returning a new
  /// [DOMPoint] object containing the transformed point. Neither the
  /// matrix nor the original point are altered.
  ///
  DOMPoint transformPoint([DOMPointInit? point]) =>
      js_util.callMethod(this, 'transformPoint', [point]);

  ///  Returns a new [Float32Array] containing all 16 elements ([m11],
  /// [m12], [m13], [m14], [m21], [m22], [m23], [m24], [m31], [m32],
  /// [m33], [m34], [m41], [m42], [m43], [m44]) which comprise the
  /// matrix. The elements are stored into the array as
  /// single-precision floating-point numbers in column-major
  /// (colexographical access, or "colex") order. (In other words, down
  /// the first column from top to bottom, then the second column, and
  /// so forth.)
  ///
  Float32List toFloat32Array() =>
      js_util.callMethod(this, 'toFloat32Array', []);

  ///  Returns a new [Float64Array] containing all 16 elements ([m11],
  /// [m12], [m13], [m14], [m21], [m22], [m23], [m24], [m31], [m32],
  /// [m33], [m34], [m41], [m42], [m43], [m44]) which comprise the
  /// matrix. The elements are stored into the array as
  /// double-precision floating-point numbers in column-major
  /// (colexographical access, or "colex") order. (In other words, down
  /// the first column from top to bottom, then the second column, and
  /// so forth.)
  ///
  Float64List toFloat64Array() =>
      js_util.callMethod(this, 'toFloat64Array', []);

  String mToString() => js_util.callMethod(this, 'toString', []);

  /// Returns a JSON representation of the [DOMMatrixReadOnly] object.
  ///
  dynamic toJSON() => js_util.callMethod(this, 'toJSON', []);
}

///  The interface represents 4×4 matrices, suitable for 2D and 3D
/// operations including rotation and translation. It is a mutable
/// version of the [DOMMatrixReadOnly] interface.
/// [WebKitCSSMatrix] is an alias to .
///  This interface should be available inside web workers, though
/// some implementations don't allow it yet.
@experimental
@JS()
@staticInterop
class DOMMatrix implements DOMMatrixReadOnly {
  external DOMMatrix([dynamic init]);
}

extension PropsDOMMatrix on DOMMatrix {
  external static DOMMatrix fromMatrix([DOMMatrixInit? other]);
  external static DOMMatrix fromFloat32Array(Float32List array32);
  external static DOMMatrix fromFloat64Array(Float64List array64);

  ///  Double-precision floating-point values representing the
  /// components of a 4×4 matrix which are required in order to perform
  /// 2D rotations and translations. These are aliases for specific
  /// components of a 4×4 matrix, as shown below.
  ///
  ///
  ///
  ///      [2D]
  ///      [3D equivalent]
  ///
  ///
  ///
  ///
  ///
  ///      [m11]
  ///
  ///
  ///      [b]
  ///      [m12]
  ///
  ///
  ///      [c]
  ///      [m21]
  ///
  ///
  ///      [d]
  ///      [m22]
  ///
  ///
  ///      [e]
  ///      [m41]
  ///
  ///
  ///      [f]
  ///      [m42]
  ///
  ///
  ///
  ///
  @override
  /* double | NaN */ dynamic get a => js_util.getProperty(this, 'a');
  @override
  set a(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'a', newValue);
  }

  @override
  /* double | NaN */ dynamic get b => js_util.getProperty(this, 'b');
  @override
  set b(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'b', newValue);
  }

  @override
  /* double | NaN */ dynamic get c => js_util.getProperty(this, 'c');
  @override
  set c(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'c', newValue);
  }

  @override
  /* double | NaN */ dynamic get d => js_util.getProperty(this, 'd');
  @override
  set d(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'd', newValue);
  }

  @override
  /* double | NaN */ dynamic get e => js_util.getProperty(this, 'e');
  @override
  set e(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'e', newValue);
  }

  @override
  /* double | NaN */ dynamic get f => js_util.getProperty(this, 'f');
  @override
  set f(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'f', newValue);
  }

  ///  Double-precision floating-point values representing each
  /// component of a 4×4 matrix, where through [m14] are the first
  /// column, [m21] through [m24] are the second column, and so forth.
  ///
  @override
  /* double | NaN */ dynamic get m11 => js_util.getProperty(this, 'm11');
  @override
  set m11(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm11', newValue);
  }

  @override
  /* double | NaN */ dynamic get m12 => js_util.getProperty(this, 'm12');
  @override
  set m12(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm12', newValue);
  }

  @override
  /* double | NaN */ dynamic get m13 => js_util.getProperty(this, 'm13');
  @override
  set m13(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm13', newValue);
  }

  @override
  /* double | NaN */ dynamic get m14 => js_util.getProperty(this, 'm14');
  @override
  set m14(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm14', newValue);
  }

  @override
  /* double | NaN */ dynamic get m21 => js_util.getProperty(this, 'm21');
  @override
  set m21(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm21', newValue);
  }

  @override
  /* double | NaN */ dynamic get m22 => js_util.getProperty(this, 'm22');
  @override
  set m22(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm22', newValue);
  }

  @override
  /* double | NaN */ dynamic get m23 => js_util.getProperty(this, 'm23');
  @override
  set m23(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm23', newValue);
  }

  @override
  /* double | NaN */ dynamic get m24 => js_util.getProperty(this, 'm24');
  @override
  set m24(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm24', newValue);
  }

  @override
  /* double | NaN */ dynamic get m31 => js_util.getProperty(this, 'm31');
  @override
  set m31(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm31', newValue);
  }

  @override
  /* double | NaN */ dynamic get m32 => js_util.getProperty(this, 'm32');
  @override
  set m32(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm32', newValue);
  }

  @override
  /* double | NaN */ dynamic get m33 => js_util.getProperty(this, 'm33');
  @override
  set m33(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm33', newValue);
  }

  @override
  /* double | NaN */ dynamic get m34 => js_util.getProperty(this, 'm34');
  @override
  set m34(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm34', newValue);
  }

  @override
  /* double | NaN */ dynamic get m41 => js_util.getProperty(this, 'm41');
  @override
  set m41(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm41', newValue);
  }

  @override
  /* double | NaN */ dynamic get m42 => js_util.getProperty(this, 'm42');
  @override
  set m42(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm42', newValue);
  }

  @override
  /* double | NaN */ dynamic get m43 => js_util.getProperty(this, 'm43');
  @override
  set m43(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm43', newValue);
  }

  @override
  /* double | NaN */ dynamic get m44 => js_util.getProperty(this, 'm44');
  @override
  set m44(/* double | NaN */ dynamic newValue) {
    js_util.setProperty(this, 'm44', newValue);
  }

  ///  Modifies the matrix by post-multiplying it with the specified
  /// [DOMMatrix]. This is equivalent to the dot product [A⋅B], where
  /// matrix [A] is the source matrix and [B] is the matrix given as an
  /// input to the method. Returns itself.
  ///
  DOMMatrix multiplySelf([DOMMatrixInit? other]) =>
      js_util.callMethod(this, 'multiplySelf', [other]);

  ///  Modifies the matrix by pre-multiplying it with the specified
  /// [DOMMatrix]. This is equivalent to the dot product [B⋅A], where
  /// matrix [A] is the source matrix and [B] is the matrix given as an
  /// input to the method. Returns itself.
  ///
  DOMMatrix preMultiplySelf([DOMMatrixInit? other]) =>
      js_util.callMethod(this, 'preMultiplySelf', [other]);

  ///  Modifies the matrix by applying the specified vector. The
  /// default vector is [[0, 0, 0]]. Returns itself.
  ///
  DOMMatrix translateSelf(
          [/* double | NaN */ dynamic tx = 0,
          /* double | NaN */ dynamic ty = 0,
          /* double | NaN */ dynamic tz = 0]) =>
      js_util.callMethod(this, 'translateSelf', [tx, ty, tz]);

  ///  Modifies the matrix by applying the specified scaling factors,
  /// with the center located at the specified origin. Also returns
  /// itself. By default, the scaling factor is [1] for all three axes,
  /// and the origin is [(0, 0, 0)]. Returns itself.
  ///
  DOMMatrix scaleSelf(
          [/* double | NaN */ dynamic scaleX = 1,
          /* double | NaN */ dynamic scaleY,
          /* double | NaN */ dynamic scaleZ = 1,
          /* double | NaN */ dynamic originX = 0,
          /* double | NaN */ dynamic originY = 0,
          /* double | NaN */ dynamic originZ = 0]) =>
      js_util.callMethod(this, 'scaleSelf',
          [scaleX, scaleY, scaleZ, originX, originY, originZ]);

  ///  Modifies the matrix by applying the specified scaling factor to
  /// all three axes, centered on the given origin. Returns itself.
  ///
  DOMMatrix scale3dSelf(
          [/* double | NaN */ dynamic scale = 1,
          /* double | NaN */ dynamic originX = 0,
          /* double | NaN */ dynamic originY = 0,
          /* double | NaN */ dynamic originZ = 0]) =>
      js_util
          .callMethod(this, 'scale3dSelf', [scale, originX, originY, originZ]);

  ///  Modifies the matrix by rotating itself around each axis by the
  /// specified number of degrees. Returns itself.
  ///
  DOMMatrix rotateSelf(
          [/* double | NaN */ dynamic rotX = 0,
          /* double | NaN */ dynamic rotY,
          /* double | NaN */ dynamic rotZ]) =>
      js_util.callMethod(this, 'rotateSelf', [rotX, rotY, rotZ]);

  ///  Modifies the matrix by rotating it by the angle between the
  /// specified vector and [(1, 0)]. Returns itself.
  ///
  DOMMatrix rotateFromVectorSelf(
          [/* double | NaN */ dynamic x = 0,
          /* double | NaN */ dynamic y = 0]) =>
      js_util.callMethod(this, 'rotateFromVectorSelf', [x, y]);

  ///  Modifies the matrix by rotating it by the specified angle around
  /// the given vector. Returns itself.
  ///
  DOMMatrix rotateAxisAngleSelf(
          [/* double | NaN */ dynamic x = 0,
          /* double | NaN */ dynamic y = 0,
          /* double | NaN */ dynamic z = 0,
          /* double | NaN */ dynamic angle = 0]) =>
      js_util.callMethod(this, 'rotateAxisAngleSelf', [x, y, z, angle]);

  ///  Modifies the matrix by applying the specified skew
  /// transformation along the X-axis. Returns itself.
  ///
  DOMMatrix skewXSelf([/* double | NaN */ dynamic sx = 0]) =>
      js_util.callMethod(this, 'skewXSelf', [sx]);

  ///  Modifies the matrix by applying the specified skew
  /// transformation along the Y-axis. Returns itself.
  ///
  DOMMatrix skewYSelf([/* double | NaN */ dynamic sy = 0]) =>
      js_util.callMethod(this, 'skewYSelf', [sy]);

  ///  Modifies the matrix by inverting it. If the matrix can't be
  /// inverted, its components are all set to [NaN], and [is2D] returns
  /// [false].
  ///
  DOMMatrix invertSelf() => js_util.callMethod(this, 'invertSelf', []);

  ///  Replaces the contents of the matrix with the matrix described by
  /// the specified transform or transforms. Returns itself.
  ///
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
      bool is2D});
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
