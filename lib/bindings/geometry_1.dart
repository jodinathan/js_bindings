/// Geometry Interfaces Module Level 1
///
/// https://drafts.fxtf.org/geometry/
@JS('window')
library geometry_1;

import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';

///
///
///  The interface specifies the coordinate and perspective fields
/// used by [DOMPoint] to define a 2D or 3D point in a coordinate
/// system.
///  Note: This feature is available in Web Workers
///  There are two ways to create a new instance. First, you can use
/// its constructor, passing in the values of the parameters for each
/// dimension and, optionally, the perspective:
///
/// [/* 2D */
/// const point = new DOMPointReadOnly(50, 50);
///
/// /* 3D */
/// const point = new DOMPointReadOnly(50, 50, 25);
///
/// /* 3D with perspective */
/// const point = new DOMPointReadOnly(100, 100, 100, 1.0);]
///
///  The other option is to use the static
/// [DOMPointReadOnly.fromPoint()] method:
///
///  [const point = DOMPointReadOnly.fromPoint({x: 100, y: 100, z:
/// 50; w: 1.0});]
@JS()
class DOMPointReadOnly {
  external factory DOMPointReadOnly(
      {/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic z = 0,
      /* double | NaN */ dynamic w = 1});
  external static dynamic fromPoint([DOMPointInit? other]);

  /// The point's horizontal coordinate, .
  external /* double | NaN */ dynamic get x;

  /// The point's vertical coordinate, .
  external /* double | NaN */ dynamic get y;

  /// The point's depth coordinate, .
  external /* double | NaN */ dynamic get z;

  /// The point's perspective value, .
  external /* double | NaN */ dynamic get w;

  ///  Applies a matrix transform specified as a [DOMMatrixInit] object
  /// to the [DOMPointReadOnly] object.
  external DOMPoint matrixTransform([DOMMatrixInit? matrix]);

  /// Returns a JSON representation of the [DOMPointReadOnly] object.
  /// pointJSON = DOMPointReadOnly.toJSON();
  /// This example creates a DOMPoint object representing the top-left corner
  ///  of the current window, in screen coordinates, then converts that to JSON.
  ///
  /// var topLeft = new DOMPoint(window.screenX, window.screenY);
  ///
  /// var pointJSON = topLeft.toJSON();
  external dynamic toJSON();
}

///
///
///  A object represents a 2D or 3D point in a coordinate system; it
/// includes values for the coordinates in up to three dimensions, as
/// well as an optional perspective value. is based on
/// [DOMPointReadOnly] but allows its properties' values to be
/// changed.
///
///  In general, a positive [x] component represents a position to
/// the right of the origin, a positive [y] component is downward
/// from the origin, and a positive [z] component extends outward
/// from the screen (in other words, toward the user).
@JS()
class DOMPoint extends DOMPointReadOnly {
  external factory DOMPoint(
      {/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic z = 0,
      /* double | NaN */ dynamic w = 1});
  external static DOMPoint fromPoint([DOMPointInit? other]);

  /// The coordinate of the [DOMPoint].
  @override
  external /* double | NaN */ dynamic get x;
  @override
  external set x(/* double | NaN */ dynamic newValue);

  /// The coordinate of the [DOMPoint].
  @override
  external /* double | NaN */ dynamic get y;
  @override
  external set y(/* double | NaN */ dynamic newValue);

  /// The coordinate of the [DOMPoint].
  @override
  external /* double | NaN */ dynamic get z;
  @override
  external set z(/* double | NaN */ dynamic newValue);

  /// The perspective value of the [DOMPoint].
  @override
  external /* double | NaN */ dynamic get w;
  @override
  external set w(/* double | NaN */ dynamic newValue);
}

///
///
///  The [DOMPointInit] dictionary is used to provide the values of
/// the coordinates and perspective when creating and JSONifying a
/// [DOMPoint] or [DOMPointReadOnly] object.
///
///  It's used as an input parameter to the
/// [DOMPoint]/[DOMPointReadOnly] method [fromPoint()]. It's used as
/// the return value when calling [toJSON()].
@anonymous
@JS()
class DOMPointInit {
  ///  An unrestricted floating-point value indicating the -coordinate
  /// of the point in space. This is generally the horizontal
  /// coordinate, with positive values being to the right and negative
  /// values to the left. The default value is [0].
  external /* double | NaN */ dynamic get x;
  external set x(/* double | NaN */ dynamic newValue);

  ///  An unrestricted floating-point number providing the point's
  /// -coordinate. This is the vertical coordinate, and barring any
  /// transforms applied to the coordinate system, positive values are
  /// downward and negative values upward toward the top of the screen.
  /// The default is [0].
  external /* double | NaN */ dynamic get y;
  external set y(/* double | NaN */ dynamic newValue);

  ///  An unrestricted floating-point value which gives the point's
  /// -coordinate, which is (assuming no transformations that alter the
  /// situation) the depth coordinate; positive values are closer to
  /// the user and negative values retreat back into the screen. The
  /// default value is [0].
  external /* double | NaN */ dynamic get z;
  external set z(/* double | NaN */ dynamic newValue);

  ///  The point's perspective value, given as an unrestricted
  /// floating-point number. The default is [1].
  external /* double | NaN */ dynamic get w;
  external set w(/* double | NaN */ dynamic newValue);

  external factory DOMPointInit(
      {/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic z = 0,
      /* double | NaN */ dynamic w = 1});
}

///
///
///  The interface specifies the standard properties used by
/// [DOMRect] to define a rectangle whose properties are immutable.
@JS()
class DOMRectReadOnly {
  external factory DOMRectReadOnly(
      {/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic width = 0,
      /* double | NaN */ dynamic height = 0});
  external static dynamic fromRect([DOMRectInit? other]);

  /// The x coordinate of the [DOMRect]'s origin.
  external /* double | NaN */ dynamic get x;

  /// The y coordinate of the [DOMRect]'s origin.
  external /* double | NaN */ dynamic get y;

  /// The width of the [DOMRect].
  external /* double | NaN */ dynamic get width;

  /// The height of the [DOMRect].
  external /* double | NaN */ dynamic get height;

  ///  Returns the top coordinate value of the [DOMRect] (usually the
  /// same as [y].)
  external /* double | NaN */ dynamic get top;

  ///  Returns the right coordinate value of the [DOMRect] (usually the
  /// same as [x + width]).
  external /* double | NaN */ dynamic get right;

  ///  Returns the bottom coordinate value of the [DOMRect] (usually
  /// the same as [y + height]).
  external /* double | NaN */ dynamic get bottom;

  ///  Returns the left coordinate value of the [DOMRect] (usually the
  /// same as [x]).
  external /* double | NaN */ dynamic get left;
  external dynamic toJSON();
}

///
///   Draft
///   This page is not complete.
///
/// A describes the size and position of a rectangle.
///
///  The type of box represented by the is specified by the method or
/// property that returned it. For example,
/// [VREyeParameters.renderRect] from the WebVR API specifies the
/// viewport of a canvas into which visuals for one eye of a head
/// mounted display should be rendered.
///
/// It inherits from its parent, [DOMRectReadOnly].
///
///
@JS()
class DOMRect extends DOMRectReadOnly {
  external factory DOMRect(
      {/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic width = 0,
      /* double | NaN */ dynamic height = 0});
  external static DOMRect fromRect([DOMRectInit? other]);

  ///  The x coordinate of the [DOMRect]'s origin (typically the
  /// top-left corner of the rectangle).
  @override
  external /* double | NaN */ dynamic get x;
  @override
  external set x(/* double | NaN */ dynamic newValue);

  ///  The y coordinate of the [DOMRect]'s origin (typically the
  /// top-left corner of the rectangle).
  @override
  external /* double | NaN */ dynamic get y;
  @override
  external set y(/* double | NaN */ dynamic newValue);

  /// The width of the [DOMRect].
  @override
  external /* double | NaN */ dynamic get width;
  @override
  external set width(/* double | NaN */ dynamic newValue);

  /// The height of the [DOMRect].
  @override
  external /* double | NaN */ dynamic get height;
  @override
  external set height(/* double | NaN */ dynamic newValue);
}

@anonymous
@JS()
class DOMRectInit {
  external /* double | NaN */ dynamic get x;
  external set x(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get y;
  external set y(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get width;
  external set width(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get height;
  external set height(/* double | NaN */ dynamic newValue);

  external factory DOMRectInit(
      {/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic width = 0,
      /* double | NaN */ dynamic height = 0});
}

@JS()
class DOMRectList {
  external int get length;
  external DOMRect? item(int index);

  external factory DOMRectList();
}

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  A is a collection of four [DOMPoint]s defining the corners of an
/// arbitrary quadrilateral. Returning s lets [getBoxQuads()] return
/// accurate information even when arbitrary 2D or 3D transforms are
/// present. It has a handy [bounds] attribute returning a
/// [DOMRectReadOnly] for those cases where you just want an
/// axis-aligned bounding rectangle.
@experimental
@JS()
class DOMQuad {
  external factory DOMQuad(
      {DOMPointInit? p1, DOMPointInit? p2, DOMPointInit? p3, DOMPointInit? p4});

  ///  Returns a new [DOMQuad] object based on the passed set of
  /// coordinates.
  external static DOMQuad fromRect([DOMRectInit? other]);

  ///  Returns a new [DOMQuad] object based on the passed set of
  /// coordinates.
  external static DOMQuad fromQuad([DOMQuadInit? other]);
  external DOMPoint get p1;
  external DOMPoint get p2;
  external DOMPoint get p3;
  external DOMPoint get p4;

  ///  Returns a [DOMRect] object with the coordinates and dimensions
  /// of the [DOMQuad] object.
  external DOMRect getBounds();

  /// Returns a JSON representation of the [DOMQuad] object.
  external dynamic toJSON();
}

@anonymous
@JS()
class DOMQuadInit {
  external DOMPointInit get p1;
  external set p1(DOMPointInit newValue);
  external DOMPointInit get p2;
  external set p2(DOMPointInit newValue);
  external DOMPointInit get p3;
  external set p3(DOMPointInit newValue);
  external DOMPointInit get p4;
  external set p4(DOMPointInit newValue);

  external factory DOMQuadInit(
      {DOMPointInit p1, DOMPointInit p2, DOMPointInit p3, DOMPointInit p4});
}

///
///
///  The [DOMMatrixReadOnly] interface represents a read-only 4×4
/// matrix, suitable for 2D and 3D operations. The [DOMMatrix]
/// interrface—which is based upon —adds mutability, allowing you to
/// alter the matrix after creating it. A 4×4 matrix is suitable to
/// describe any rotation and translation in 3D.
///
///  This interface should be available inside web workers, though
/// some implementations doesn't allow it yet.
@JS()
class DOMMatrixReadOnly {
  external factory DOMMatrixReadOnly({dynamic init});
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
  ///
  ///   2D
  ///   3D equivalent
  ///
  ///
  ///
  ///
  ///
  ///   [m11]
  ///
  ///
  ///   [b]
  ///   [m12]
  ///
  ///
  ///   [c]
  ///   [m21]
  ///
  ///
  ///   [d]
  ///   [m22]
  ///
  ///
  ///   [e]
  ///   [m41]
  ///
  ///
  ///   [f]
  ///   [m42]
  ///
  ///
  ///
  ///
  external /* double | NaN */ dynamic get a;
  external /* double | NaN */ dynamic get b;
  external /* double | NaN */ dynamic get c;
  external /* double | NaN */ dynamic get d;
  external /* double | NaN */ dynamic get e;
  external /* double | NaN */ dynamic get f;

  ///  Double-precision floating-point values representing each
  /// component of a 4×4 matrix, where through [m14] are the first
  /// column, [m21] through [m24] are the second column, and so forth.
  external /* double | NaN */ dynamic get m11;
  external /* double | NaN */ dynamic get m12;
  external /* double | NaN */ dynamic get m13;
  external /* double | NaN */ dynamic get m14;
  external /* double | NaN */ dynamic get m21;
  external /* double | NaN */ dynamic get m22;
  external /* double | NaN */ dynamic get m23;
  external /* double | NaN */ dynamic get m24;
  external /* double | NaN */ dynamic get m31;
  external /* double | NaN */ dynamic get m32;
  external /* double | NaN */ dynamic get m33;
  external /* double | NaN */ dynamic get m34;
  external /* double | NaN */ dynamic get m41;
  external /* double | NaN */ dynamic get m42;
  external /* double | NaN */ dynamic get m43;
  external /* double | NaN */ dynamic get m44;

  ///  A Boolean flag whose value is [true] if the matrix was
  /// initialized as a 2D matrix. If [false], the matrix is 3D.
  external bool get is2D;

  ///  A Boolean whose value is [true] if the matrix is the identity
  /// matrix. The identity matrix is one in which every value is [0]
  /// except those on the main diagonal from top-left to bottom-right
  /// corner (in other words, where the offsets in each direction are
  /// equal).
  external bool get isIdentity;

  ///  Returns a new [DOMMatrix] containing a matrix calculated by
  /// translating the source matrix using the specified vector. By
  /// default, the vector is [(0, 0, 0)]. The original matrix is not
  /// changed.
  /// The translate() method accepts two or three values.
  ///
  /// DOMMatrix.translate(translateX, translateY[, translateZ])
  external DOMMatrix translate(
      [/* double | NaN */ dynamic tx = 0,
      /* double | NaN */ dynamic ty = 0,
      /* double | NaN */ dynamic tz = 0]);

  ///  Returns a new [DOMMatrix] created by scaling the source matrix
  /// by the amount specified for each axis, centered on the given
  /// origin. By default, the X and Z axes are scaled by [1] and the Y
  /// axis has no default scaling value. The default origin is [(0, 0,
  /// 0)]. The original matrix is not modified.
  /// The scale() method is specified with either one or six values.
  ///
  /// DOMMatrix.scale(scaleX[, scaleY][, scaleZ][, originX][, originY][, originZ])
  external DOMMatrix scale(
      [/* double | NaN */ dynamic scaleX = 1,
      /* double | NaN */ dynamic scaleY,
      /* double | NaN */ dynamic scaleZ = 1,
      /* double | NaN */ dynamic originX = 0,
      /* double | NaN */ dynamic originY = 0,
      /* double | NaN */ dynamic originZ = 0]);

  ///  Returns a new [DOMMatrix] created by applying the specified
  /// scaling on the X, Y, and Z axes, centered at the given origin. By
  /// default, the Y and Z axes' scaling factors are both [1], but the
  /// scaling factor for X must be specified. The default origin is
  /// [(0, 0, 0)]. The original matrix is not changed.
  @deprecated
  external DOMMatrix scaleNonUniform(
      [/* double | NaN */ dynamic scaleX = 1,
      /* double | NaN */ dynamic scaleY = 1]);

  ///  Returns a new [DOMMatrix] created by scaling the source 3D
  /// matrix by the given factor along all its axes, centered on the
  /// specified origin point. The default origin is [(0, 0, 0)]. The
  /// original matrix is not modified.
  external DOMMatrix scale3d(
      [/* double | NaN */ dynamic scale = 1,
      /* double | NaN */ dynamic originX = 0,
      /* double | NaN */ dynamic originY = 0,
      /* double | NaN */ dynamic originZ = 0]);

  ///  Returns a new [DOMMatrix] created by rotating the source matrix
  /// around each of its axes by the specified number of degrees. The
  /// original matrix is not altered.
  external DOMMatrix rotate(
      [/* double | NaN */ dynamic rotX = 0,
      /* double | NaN */ dynamic rotY,
      /* double | NaN */ dynamic rotZ]);

  ///  Returns a new [DOMMatrix] created by rotating the source matrix
  /// by the angle between the specified vector and [(1, 0)]. The
  /// original matrix is not modified.
  external DOMMatrix rotateFromVector(
      [/* double | NaN */ dynamic x = 0, /* double | NaN */ dynamic y = 0]);

  ///  Returns a new [DOMMatrix] created by rotating the source matrix
  /// by the given angle around the specified vector. The original
  /// matrix is not modified.
  external DOMMatrix rotateAxisAngle(
      [/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic z = 0,
      /* double | NaN */ dynamic angle = 0]);

  ///  Returns a new [DOMMatrix] created by applying the specified skew
  /// transformation to the source matrix along its X-axis. The
  /// original matrix is not modified.
  external DOMMatrix skewX([/* double | NaN */ dynamic sx = 0]);

  ///  Returns a new [DOMMatrix] created by applying the specified skew
  /// transformation to the source matrix along its Y-axis. The
  /// original matrix is not modified.
  external DOMMatrix skewY([/* double | NaN */ dynamic sy = 0]);

  ///  Returns a new [DOMMatrix] created by computing the dot product
  /// of the source matrix and the specified matrix: [A⋅B]. If no
  /// matrix is specified as the multiplier, the matrix is multiplied
  /// by a matrix in which every element is [0] except the bottom-right
  /// corner and the element immediately above and to its left: [m33]
  /// and [m34]. These have the default value of [1]. The original
  /// matrix is not modified.
  external DOMMatrix multiply([DOMMatrixInit? other]);

  ///  Returns a new [DOMMatrix] created by flipping the source matrix
  /// around its X-axis. This is equivalent to multiplying the matrix
  /// by [DOMMatrix(-1, 0, 0, 1, 0, 0)]. The original matrix is not
  /// modified.
  /// DOMMatrix.flipX()
  external DOMMatrix flipX();

  ///  Returns a new [DOMMatrix] created by flipping the source matrix
  /// around its Y-axis. This is equivalent to multiplying the matrix
  /// by [DOMMatrix(1, 0, 0, -1, 0, 0)]. The original matrix is not
  /// modified.
  external DOMMatrix flipY();

  ///  Returns a new [DOMMatrix] created by inverting the source
  /// matrix. If the matrix cannot be inverted, the new matrix's
  /// components are all set to [NaN] and its [is2D] property is set to
  /// [false]. The original matrix is not altered.
  external DOMMatrix inverse();

  ///  Transforms the specified point using the matrix, returning a new
  /// [DOMPoint] object containing the transformed point. Neither the
  /// matrix nor the original point are altered.
  external DOMPoint transformPoint([DOMPointInit? point]);

  ///  Returns a new [Float32Array] containing all 16 elements ([m11],
  /// [m12], [m13], [m14], [m21], [m22], [m23], [m24], [m31], [m32],
  /// [m33], [m34], [m41], [m42], [m43], [m44]) which comprise the
  /// matrix. The elements are stored into the array as
  /// single-precision floating-point numbers in column-major
  /// (colexographical access, or "colex") order. (In other words, down
  /// the first column from top to bottom, then the second column, and
  /// so forth.)
  external Float32List toFloat32Array();

  ///  Returns a new [Float64Array] containing all 16 elements ([m11],
  /// [m12], [m13], [m14], [m21], [m22], [m23], [m24], [m31], [m32],
  /// [m33], [m34], [m41], [m42], [m43], [m44]) which comprise the
  /// matrix. The elements are stored into the array as
  /// double-precision floating-point numbers in column-major
  /// (colexographical access access or "colex") order. (In other
  /// words, down the first column from top to bottom, then the second
  /// column, and so forth.)
  external Float64List toFloat64Array();
  @override
  external String toString();

  /// Returns a JSON representation of the [DOMMatrixReadOnly] object.
  external dynamic toJSON();
}

///
///
///  The [DOMMatrix] interface represents 4×4 matrices, suitable for
/// 2D and 3D operations including rotation and translation. It is a
/// mutable version of the [DOMMatrixReadOnly] interface.
///
/// [WebKitCSSMatrix] is an alias to [DOMMatrix].
///
///  This interface should be available inside web workers, though
/// some implementations don't allow it yet.
@experimental
@JS()
class DOMMatrix extends DOMMatrixReadOnly {
  external factory DOMMatrix({dynamic init});
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
  ///
  ///   [2D]
  ///   [3D equivalent]
  ///
  ///
  ///
  ///
  ///
  ///   [m11]
  ///
  ///
  ///   [b]
  ///   [m12]
  ///
  ///
  ///   [c]
  ///   [m21]
  ///
  ///
  ///   [d]
  ///   [m22]
  ///
  ///
  ///   [e]
  ///   [m41]
  ///
  ///
  ///   [f]
  ///   [m42]
  ///
  ///
  ///
  ///
  @override
  external /* double | NaN */ dynamic get a;
  @override
  external set a(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get b;
  @override
  external set b(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get c;
  @override
  external set c(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get d;
  @override
  external set d(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get e;
  @override
  external set e(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get f;
  @override
  external set f(/* double | NaN */ dynamic newValue);

  ///  Double-precision floating-point values representing each
  /// component of a 4×4 matrix, where through [m14] are the first
  /// column, [m21] through [m24] are the second column, and so forth.
  @override
  external /* double | NaN */ dynamic get m11;
  @override
  external set m11(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get m12;
  @override
  external set m12(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get m13;
  @override
  external set m13(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get m14;
  @override
  external set m14(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get m21;
  @override
  external set m21(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get m22;
  @override
  external set m22(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get m23;
  @override
  external set m23(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get m24;
  @override
  external set m24(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get m31;
  @override
  external set m31(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get m32;
  @override
  external set m32(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get m33;
  @override
  external set m33(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get m34;
  @override
  external set m34(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get m41;
  @override
  external set m41(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get m42;
  @override
  external set m42(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get m43;
  @override
  external set m43(/* double | NaN */ dynamic newValue);
  @override
  external /* double | NaN */ dynamic get m44;
  @override
  external set m44(/* double | NaN */ dynamic newValue);

  ///  Modifies the matrix by post-multiplying it with the specified
  /// [DOMMatrix]. This is equivalent to the dot product [A⋅B], where
  /// matrix [A] is the source matrix and [B] is the matrix given as an
  /// input to the method. Returns itself.
  external DOMMatrix multiplySelf([DOMMatrixInit? other]);

  ///  Modifies the matrix by pre-multiplying it with the specified
  /// [DOMMatrix]. This is equivalent to the dot product [B⋅A], where
  /// matrix [A] is the source matrix and [B] is the matrix given as an
  /// input to the method. Returns itself.
  external DOMMatrix preMultiplySelf([DOMMatrixInit? other]);

  ///  Modifies the matrix by applying the specified vector. The
  /// default vector is [[0, 0, 0]]. Returns itself.
  external DOMMatrix translateSelf(
      [/* double | NaN */ dynamic tx = 0,
      /* double | NaN */ dynamic ty = 0,
      /* double | NaN */ dynamic tz = 0]);

  ///  Modifies the matrix by applying the specified scaling factors,
  /// with the center located at the specified origin. Also returns
  /// itself. By default, the scaling factor is [1] for all three axes,
  /// and the origin is [(0, 0, 0)]. Returns itself.
  external DOMMatrix scaleSelf(
      [/* double | NaN */ dynamic scaleX = 1,
      /* double | NaN */ dynamic scaleY,
      /* double | NaN */ dynamic scaleZ = 1,
      /* double | NaN */ dynamic originX = 0,
      /* double | NaN */ dynamic originY = 0,
      /* double | NaN */ dynamic originZ = 0]);

  ///  Modifies the matrix by applying the specified scaling factor to
  /// all three axes, centered on the given origin. Returns itself.
  external DOMMatrix scale3dSelf(
      [/* double | NaN */ dynamic scale = 1,
      /* double | NaN */ dynamic originX = 0,
      /* double | NaN */ dynamic originY = 0,
      /* double | NaN */ dynamic originZ = 0]);

  ///  Modifies the matrix by rotating itself around each axis by the
  /// specified number of degrees. Returns itself.
  external DOMMatrix rotateSelf(
      [/* double | NaN */ dynamic rotX = 0,
      /* double | NaN */ dynamic rotY,
      /* double | NaN */ dynamic rotZ]);

  ///  Modifies the matrix by rotating it by the angle between the
  /// specified vector and [(1, 0)]. Returns itself.
  external DOMMatrix rotateFromVectorSelf(
      [/* double | NaN */ dynamic x = 0, /* double | NaN */ dynamic y = 0]);

  ///  Modifies the matrix by rotating it by the specified angle around
  /// the given vector. Returns itself.
  external DOMMatrix rotateAxisAngleSelf(
      [/* double | NaN */ dynamic x = 0,
      /* double | NaN */ dynamic y = 0,
      /* double | NaN */ dynamic z = 0,
      /* double | NaN */ dynamic angle = 0]);

  ///  Modifies the matrix by applying the specified skew
  /// transformation along the X-axis. Returns itself.
  external DOMMatrix skewXSelf([/* double | NaN */ dynamic sx = 0]);

  ///  Modifies the matrix by applying the specified skew
  /// transformation along the Y-axis. Returns itself.
  external DOMMatrix skewYSelf([/* double | NaN */ dynamic sy = 0]);

  ///  Modifies the matrix by inverting it. If the matrix can't be
  /// inverted, its components are all set to [NaN], and [is2D] returns
  /// [false].
  external DOMMatrix invertSelf();

  ///  Replaces the contents of the matrix with the matrix described by
  /// the specified transform or transforms. Returns itself.
  external DOMMatrix setMatrixValue(String transformList);
}

@anonymous
@JS()
class DOMMatrix2DInit {
  external /* double | NaN */ dynamic get a;
  external set a(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get b;
  external set b(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get c;
  external set c(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get d;
  external set d(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get e;
  external set e(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get f;
  external set f(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get m11;
  external set m11(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get m12;
  external set m12(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get m21;
  external set m21(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get m22;
  external set m22(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get m41;
  external set m41(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get m42;
  external set m42(/* double | NaN */ dynamic newValue);

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

@anonymous
@JS()
class DOMMatrixInit extends DOMMatrix2DInit {
  external /* double | NaN */ dynamic get m13;
  external set m13(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get m14;
  external set m14(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get m23;
  external set m23(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get m24;
  external set m24(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get m31;
  external set m31(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get m32;
  external set m32(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get m33;
  external set m33(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get m34;
  external set m34(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get m43;
  external set m43(/* double | NaN */ dynamic newValue);
  external /* double | NaN */ dynamic get m44;
  external set m44(/* double | NaN */ dynamic newValue);
  external bool get is2D;
  external set is2D(bool newValue);

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
