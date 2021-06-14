/// WebGL Specification
///
/// https://www.khronos.org/registry/webgl/specs/latest/1.0/
@JS('window')
library webgl1;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';

@JS()
enum WebGLPowerPreference {
  @JS('default')
  valueDefault,
  @JS('low-power')
  lowPower,
  @JS('high-performance')
  highPerformance
}

@anonymous
@JS()
class WebGLContextAttributes {
  external bool get alpha;
  external set alpha(bool newValue);
  external bool get depth;
  external set depth(bool newValue);
  external bool get stencil;
  external set stencil(bool newValue);
  external bool get antialias;
  external set antialias(bool newValue);
  external bool get premultipliedAlpha;
  external set premultipliedAlpha(bool newValue);
  external bool get preserveDrawingBuffer;
  external set preserveDrawingBuffer(bool newValue);
  external WebGLPowerPreference get powerPreference;
  external set powerPreference(WebGLPowerPreference newValue);
  external bool get failIfMajorPerformanceCaveat;
  external set failIfMajorPerformanceCaveat(bool newValue);
  external bool get desynchronized;
  external set desynchronized(bool newValue);
  external bool get xrCompatible;
  external set xrCompatible(bool newValue);

  external factory WebGLContextAttributes(
      {bool alpha = true,
      bool depth = true,
      bool stencil = false,
      bool antialias = true,
      bool premultipliedAlpha = true,
      bool preserveDrawingBuffer = false,
      WebGLPowerPreference powerPreference = WebGLPowerPreference.valueDefault,
      bool failIfMajorPerformanceCaveat = false,
      bool desynchronized = false,
      bool xrCompatible = false});
}

@JS()
class WebGLObject {
  external factory WebGLObject();
}

///
///
///  The WebGLBuffer interface is part of the WebGL API and
/// represents an opaque buffer object storing data such as vertices
/// or colors.
@JS()
class WebGLBuffer extends WebGLObject {
  external factory WebGLBuffer();
}

///
///
///  The WebGLFramebuffer interface is part of the WebGL API and
/// represents a collection of buffers that serve as a rendering
/// destination.
@JS()
class WebGLFramebuffer extends WebGLObject {
  external factory WebGLFramebuffer();
}

///
///
///  The [WebGLProgram] is part of the WebGL API and is a combination
/// of two compiled [WebGLShader]s consisting of a vertex shader and
/// a fragment shader (both written in GLSL). To create a , call the
/// GL context's [createProgram()] function. After attaching the
/// shader programs using [attachShader()], you link them into a
/// usable program. This is shown in the code below.
///
/// [var program = gl.createProgram();
///
/// // Attach pre-existing shaders
/// gl.attachShader(program, vertexShader);
/// gl.attachShader(program, fragmentShader);
///
/// gl.linkProgram(program);
///
/// if ( !gl.getProgramParameter( program, gl.LINK_STATUS) ) {
///  var info = gl.getProgramInfoLog(program);
///  throw 'Could not compile WebGL program. \n\n' + info;
/// }
/// ]
///
///  See [WebGLShader] for information on creating the [vertexShader]
/// and [fragmentShader] in the above example.
@JS()
class WebGLProgram extends WebGLObject {
  external factory WebGLProgram();
}

///
///
///  The WebGLRenderbuffer interface is part of the WebGL API and
/// represents a buffer that can contain an image, or can be source
/// or target of an rendering operation.
@JS()
class WebGLRenderbuffer extends WebGLObject {
  external factory WebGLRenderbuffer();
}

///
///
///  The WebGLShader is part of the WebGL API and can either be a
/// vertex or a fragment shader. A [WebGLProgram] requires both types
/// of shaders.
@JS()
class WebGLShader extends WebGLObject {
  external factory WebGLShader();
}

///
///
///  The WebGLTexture interface is part of the WebGL API and
/// represents an opaque texture object providing storage and state
/// for texturing operations.
@JS()
class WebGLTexture extends WebGLObject {
  external factory WebGLTexture();
}

///
///
///  The WebGLUniformLocation interface is part of the WebGL API and
/// represents the location of a uniform variable in a shader
/// program.
@JS()
class WebGLUniformLocation {
  external factory WebGLUniformLocation();
}

///
///
///  The WebGLActiveInfo interface is part of the WebGL API and
/// represents the information returned by calling the
/// [WebGLRenderingContext.getActiveAttrib()] and
/// [WebGLRenderingContext.getActiveUniform()] methods.
@JS()
class WebGLActiveInfo {
  /// The read-only size of the requested variable.
  external int get size;

  /// The read-only type of the requested variable.
  external int get type;

  /// The read-only name of the requested variable.
  external String get name;

  external factory WebGLActiveInfo();
}

///
///
///  The WebGLShaderPrecisionFormat interface is part of the WebGL
/// API and represents the information returned by calling the
/// [WebGLRenderingContext.getShaderPrecisionFormat()] method.
@JS()
class WebGLShaderPrecisionFormat {
  ///  The base 2 log of the absolute value of the minimum value that
  /// can be represented.
  external int get rangeMin;

  ///  The base 2 log of the absolute value of the maximum value that
  /// can be represented.
  external int get rangeMax;

  ///  The number of bits of precision that can be represented. For
  /// integer formats this value is always 0.
  external int get precision;

  external factory WebGLShaderPrecisionFormat();
}

@JS()
abstract class WebGLRenderingContextBase {
  external static int get DEPTH_BUFFER_BIT;
  external static int get STENCIL_BUFFER_BIT;
  external static int get COLOR_BUFFER_BIT;
  external static int get POINTS;
  external static int get LINES;
  external static int get LINE_LOOP;
  external static int get LINE_STRIP;
  external static int get TRIANGLES;
  external static int get TRIANGLE_STRIP;
  external static int get TRIANGLE_FAN;
  external static int get ZERO;
  external static int get ONE;
  external static int get SRC_COLOR;
  external static int get ONE_MINUS_SRC_COLOR;
  external static int get SRC_ALPHA;
  external static int get ONE_MINUS_SRC_ALPHA;
  external static int get DST_ALPHA;
  external static int get ONE_MINUS_DST_ALPHA;
  external static int get DST_COLOR;
  external static int get ONE_MINUS_DST_COLOR;
  external static int get SRC_ALPHA_SATURATE;
  external static int get FUNC_ADD;
  external static int get BLEND_EQUATION;
  external static int get BLEND_EQUATION_RGB;
  external static int get BLEND_EQUATION_ALPHA;
  external static int get FUNC_SUBTRACT;
  external static int get FUNC_REVERSE_SUBTRACT;
  external static int get BLEND_DST_RGB;
  external static int get BLEND_SRC_RGB;
  external static int get BLEND_DST_ALPHA;
  external static int get BLEND_SRC_ALPHA;
  external static int get CONSTANT_COLOR;
  external static int get ONE_MINUS_CONSTANT_COLOR;
  external static int get CONSTANT_ALPHA;
  external static int get ONE_MINUS_CONSTANT_ALPHA;
  external static int get BLEND_COLOR;
  external static int get ARRAY_BUFFER;
  external static int get ELEMENT_ARRAY_BUFFER;
  external static int get ARRAY_BUFFER_BINDING;
  external static int get ELEMENT_ARRAY_BUFFER_BINDING;
  external static int get STREAM_DRAW;
  external static int get STATIC_DRAW;
  external static int get DYNAMIC_DRAW;
  external static int get BUFFER_SIZE;
  external static int get BUFFER_USAGE;
  external static int get CURRENT_VERTEX_ATTRIB;
  external static int get FRONT;
  external static int get BACK;
  external static int get FRONT_AND_BACK;
  external static int get CULL_FACE;
  external static int get BLEND;
  external static int get DITHER;
  external static int get STENCIL_TEST;
  external static int get DEPTH_TEST;
  external static int get SCISSOR_TEST;
  external static int get POLYGON_OFFSET_FILL;
  external static int get SAMPLE_ALPHA_TO_COVERAGE;
  external static int get SAMPLE_COVERAGE;
  external static int get NO_ERROR;
  external static int get INVALID_ENUM;
  external static int get INVALID_VALUE;
  external static int get INVALID_OPERATION;
  external static int get OUT_OF_MEMORY;
  external static int get CW;
  external static int get CCW;
  external static int get LINE_WIDTH;
  external static int get ALIASED_POINT_SIZE_RANGE;
  external static int get ALIASED_LINE_WIDTH_RANGE;
  external static int get CULL_FACE_MODE;
  external static int get FRONT_FACE;
  external static int get DEPTH_RANGE;
  external static int get DEPTH_WRITEMASK;
  external static int get DEPTH_CLEAR_VALUE;
  external static int get DEPTH_FUNC;
  external static int get STENCIL_CLEAR_VALUE;
  external static int get STENCIL_FUNC;
  external static int get STENCIL_FAIL;
  external static int get STENCIL_PASS_DEPTH_FAIL;
  external static int get STENCIL_PASS_DEPTH_PASS;
  external static int get STENCIL_REF;
  external static int get STENCIL_VALUE_MASK;
  external static int get STENCIL_WRITEMASK;
  external static int get STENCIL_BACK_FUNC;
  external static int get STENCIL_BACK_FAIL;
  external static int get STENCIL_BACK_PASS_DEPTH_FAIL;
  external static int get STENCIL_BACK_PASS_DEPTH_PASS;
  external static int get STENCIL_BACK_REF;
  external static int get STENCIL_BACK_VALUE_MASK;
  external static int get STENCIL_BACK_WRITEMASK;
  external static int get VIEWPORT;
  external static int get SCISSOR_BOX;
  external static int get COLOR_CLEAR_VALUE;
  external static int get COLOR_WRITEMASK;
  external static int get UNPACK_ALIGNMENT;
  external static int get PACK_ALIGNMENT;
  external static int get MAX_TEXTURE_SIZE;
  external static int get MAX_VIEWPORT_DIMS;
  external static int get SUBPIXEL_BITS;
  external static int get RED_BITS;
  external static int get GREEN_BITS;
  external static int get BLUE_BITS;
  external static int get ALPHA_BITS;
  external static int get DEPTH_BITS;
  external static int get STENCIL_BITS;
  external static int get POLYGON_OFFSET_UNITS;
  external static int get POLYGON_OFFSET_FACTOR;
  external static int get TEXTURE_BINDING_2D;
  external static int get SAMPLE_BUFFERS;
  external static int get SAMPLES;
  external static int get SAMPLE_COVERAGE_VALUE;
  external static int get SAMPLE_COVERAGE_INVERT;
  external static int get COMPRESSED_TEXTURE_FORMATS;
  external static int get DONT_CARE;
  external static int get FASTEST;
  external static int get NICEST;
  external static int get GENERATE_MIPMAP_HINT;
  external static int get BYTE;
  external static int get UNSIGNED_BYTE;
  external static int get SHORT;
  external static int get UNSIGNED_SHORT;
  external static int get INT;
  external static int get UNSIGNED_INT;
  external static int get FLOAT;
  external static int get DEPTH_COMPONENT;
  external static int get ALPHA;
  external static int get RGB;
  external static int get RGBA;
  external static int get LUMINANCE;
  external static int get LUMINANCE_ALPHA;
  external static int get UNSIGNED_SHORT_4_4_4_4;
  external static int get UNSIGNED_SHORT_5_5_5_1;
  external static int get UNSIGNED_SHORT_5_6_5;
  external static int get FRAGMENT_SHADER;
  external static int get VERTEX_SHADER;
  external static int get MAX_VERTEX_ATTRIBS;
  external static int get MAX_VERTEX_UNIFORM_VECTORS;
  external static int get MAX_VARYING_VECTORS;
  external static int get MAX_COMBINED_TEXTURE_IMAGE_UNITS;
  external static int get MAX_VERTEX_TEXTURE_IMAGE_UNITS;
  external static int get MAX_TEXTURE_IMAGE_UNITS;
  external static int get MAX_FRAGMENT_UNIFORM_VECTORS;
  external static int get SHADER_TYPE;
  external static int get DELETE_STATUS;
  external static int get LINK_STATUS;
  external static int get VALIDATE_STATUS;
  external static int get ATTACHED_SHADERS;
  external static int get ACTIVE_UNIFORMS;
  external static int get ACTIVE_ATTRIBUTES;
  external static int get SHADING_LANGUAGE_VERSION;
  external static int get CURRENT_PROGRAM;
  external static int get NEVER;
  external static int get LESS;
  external static int get EQUAL;
  external static int get LEQUAL;
  external static int get GREATER;
  external static int get NOTEQUAL;
  external static int get GEQUAL;
  external static int get ALWAYS;
  external static int get KEEP;
  external static int get REPLACE;
  external static int get INCR;
  external static int get DECR;
  external static int get INVERT;
  external static int get INCR_WRAP;
  external static int get DECR_WRAP;
  external static int get VENDOR;
  external static int get RENDERER;
  external static int get VERSION;
  external static int get NEAREST;
  external static int get LINEAR;
  external static int get NEAREST_MIPMAP_NEAREST;
  external static int get LINEAR_MIPMAP_NEAREST;
  external static int get NEAREST_MIPMAP_LINEAR;
  external static int get LINEAR_MIPMAP_LINEAR;
  external static int get TEXTURE_MAG_FILTER;
  external static int get TEXTURE_MIN_FILTER;
  external static int get TEXTURE_WRAP_S;
  external static int get TEXTURE_WRAP_T;
  external static int get TEXTURE_2D;
  external static int get TEXTURE;
  external static int get TEXTURE_CUBE_MAP;
  external static int get TEXTURE_BINDING_CUBE_MAP;
  external static int get TEXTURE_CUBE_MAP_POSITIVE_X;
  external static int get TEXTURE_CUBE_MAP_NEGATIVE_X;
  external static int get TEXTURE_CUBE_MAP_POSITIVE_Y;
  external static int get TEXTURE_CUBE_MAP_NEGATIVE_Y;
  external static int get TEXTURE_CUBE_MAP_POSITIVE_Z;
  external static int get TEXTURE_CUBE_MAP_NEGATIVE_Z;
  external static int get MAX_CUBE_MAP_TEXTURE_SIZE;
  external static int get TEXTURE0;
  external static int get TEXTURE1;
  external static int get TEXTURE2;
  external static int get TEXTURE3;
  external static int get TEXTURE4;
  external static int get TEXTURE5;
  external static int get TEXTURE6;
  external static int get TEXTURE7;
  external static int get TEXTURE8;
  external static int get TEXTURE9;
  external static int get TEXTURE10;
  external static int get TEXTURE11;
  external static int get TEXTURE12;
  external static int get TEXTURE13;
  external static int get TEXTURE14;
  external static int get TEXTURE15;
  external static int get TEXTURE16;
  external static int get TEXTURE17;
  external static int get TEXTURE18;
  external static int get TEXTURE19;
  external static int get TEXTURE20;
  external static int get TEXTURE21;
  external static int get TEXTURE22;
  external static int get TEXTURE23;
  external static int get TEXTURE24;
  external static int get TEXTURE25;
  external static int get TEXTURE26;
  external static int get TEXTURE27;
  external static int get TEXTURE28;
  external static int get TEXTURE29;
  external static int get TEXTURE30;
  external static int get TEXTURE31;
  external static int get ACTIVE_TEXTURE;
  external static int get REPEAT;
  external static int get CLAMP_TO_EDGE;
  external static int get MIRRORED_REPEAT;
  external static int get FLOAT_VEC2;
  external static int get FLOAT_VEC3;
  external static int get FLOAT_VEC4;
  external static int get INT_VEC2;
  external static int get INT_VEC3;
  external static int get INT_VEC4;
  external static int get BOOL;
  external static int get BOOL_VEC2;
  external static int get BOOL_VEC3;
  external static int get BOOL_VEC4;
  external static int get FLOAT_MAT2;
  external static int get FLOAT_MAT3;
  external static int get FLOAT_MAT4;
  external static int get SAMPLER_2D;
  external static int get SAMPLER_CUBE;
  external static int get VERTEX_ATTRIB_ARRAY_ENABLED;
  external static int get VERTEX_ATTRIB_ARRAY_SIZE;
  external static int get VERTEX_ATTRIB_ARRAY_STRIDE;
  external static int get VERTEX_ATTRIB_ARRAY_TYPE;
  external static int get VERTEX_ATTRIB_ARRAY_NORMALIZED;
  external static int get VERTEX_ATTRIB_ARRAY_POINTER;
  external static int get VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
  external static int get IMPLEMENTATION_COLOR_READ_TYPE;
  external static int get IMPLEMENTATION_COLOR_READ_FORMAT;
  external static int get COMPILE_STATUS;
  external static int get LOW_FLOAT;
  external static int get MEDIUM_FLOAT;
  external static int get HIGH_FLOAT;
  external static int get LOW_INT;
  external static int get MEDIUM_INT;
  external static int get HIGH_INT;
  external static int get FRAMEBUFFER;
  external static int get RENDERBUFFER;
  external static int get RGBA4;
  external static int get RGB5_A1;
  external static int get RGB565;
  external static int get DEPTH_COMPONENT16;
  external static int get STENCIL_INDEX8;
  external static int get DEPTH_STENCIL;
  external static int get RENDERBUFFER_WIDTH;
  external static int get RENDERBUFFER_HEIGHT;
  external static int get RENDERBUFFER_INTERNAL_FORMAT;
  external static int get RENDERBUFFER_RED_SIZE;
  external static int get RENDERBUFFER_GREEN_SIZE;
  external static int get RENDERBUFFER_BLUE_SIZE;
  external static int get RENDERBUFFER_ALPHA_SIZE;
  external static int get RENDERBUFFER_DEPTH_SIZE;
  external static int get RENDERBUFFER_STENCIL_SIZE;
  external static int get FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE;
  external static int get FRAMEBUFFER_ATTACHMENT_OBJECT_NAME;
  external static int get FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL;
  external static int get FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE;
  external static int get COLOR_ATTACHMENT0;
  external static int get DEPTH_ATTACHMENT;
  external static int get STENCIL_ATTACHMENT;
  external static int get DEPTH_STENCIL_ATTACHMENT;
  external static int get NONE;
  external static int get FRAMEBUFFER_COMPLETE;
  external static int get FRAMEBUFFER_INCOMPLETE_ATTACHMENT;
  external static int get FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT;
  external static int get FRAMEBUFFER_INCOMPLETE_DIMENSIONS;
  external static int get FRAMEBUFFER_UNSUPPORTED;
  external static int get FRAMEBUFFER_BINDING;
  external static int get RENDERBUFFER_BINDING;
  external static int get MAX_RENDERBUFFER_SIZE;
  external static int get INVALID_FRAMEBUFFER_OPERATION;
  external static int get UNPACK_FLIP_Y_WEBGL;
  external static int get UNPACK_PREMULTIPLY_ALPHA_WEBGL;
  external static int get CONTEXT_LOST_WEBGL;
  external static int get UNPACK_COLORSPACE_CONVERSION_WEBGL;
  external static int get BROWSER_DEFAULT_WEBGL;
  external dynamic get canvas;
  external int get drawingBufferWidth;
  external int get drawingBufferHeight;
  external WebGLContextAttributes? getContextAttributes();
  external bool isContextLost();
  external Iterable<String> getSupportedExtensions();
  external dynamic getExtension(String name);
  external Object activeTexture(int texture);
  external Object attachShader(WebGLProgram program, WebGLShader shader);
  external Object bindAttribLocation(
      WebGLProgram program, int index, String name);
  external Object bindBuffer(int target, WebGLBuffer? buffer);
  external Object bindFramebuffer(int target, WebGLFramebuffer? framebuffer);
  external Object bindRenderbuffer(int target, WebGLRenderbuffer? renderbuffer);
  external Object bindTexture(int target, WebGLTexture? texture);
  external Object blendColor(
      /* double | NaN */ dynamic red,
      /* double | NaN */ dynamic green,
      /* double | NaN */ dynamic blue,
      /* double | NaN */ dynamic alpha);
  external Object blendEquation(int mode);
  external Object blendEquationSeparate(int modeRGB, int modeAlpha);
  external Object blendFunc(int sfactor, int dfactor);
  external Object blendFuncSeparate(
      int srcRGB, int dstRGB, int srcAlpha, int dstAlpha);
  external int checkFramebufferStatus(int target);
  external Object clear(int mask);
  external Object clearColor(
      /* double | NaN */ dynamic red,
      /* double | NaN */ dynamic green,
      /* double | NaN */ dynamic blue,
      /* double | NaN */ dynamic alpha);
  external Object clearDepth(/* double | NaN */ dynamic depth);
  external Object clearStencil(int s);
  external Object colorMask(bool red, bool green, bool blue, bool alpha);
  external Object compileShader(WebGLShader shader);
  external Object copyTexImage2D(int target, int level, int internalformat,
      int x, int y, int width, int height, int border);
  external Object copyTexSubImage2D(int target, int level, int xoffset,
      int yoffset, int x, int y, int width, int height);
  external WebGLBuffer? createBuffer();
  external WebGLFramebuffer? createFramebuffer();
  external WebGLProgram? createProgram();
  external WebGLRenderbuffer? createRenderbuffer();
  external WebGLShader? createShader(int type);
  external WebGLTexture? createTexture();
  external Object cullFace(int mode);
  external Object deleteBuffer(WebGLBuffer? buffer);
  external Object deleteFramebuffer(WebGLFramebuffer? framebuffer);
  external Object deleteProgram(WebGLProgram? program);
  external Object deleteRenderbuffer(WebGLRenderbuffer? renderbuffer);
  external Object deleteShader(WebGLShader? shader);
  external Object deleteTexture(WebGLTexture? texture);
  external Object depthFunc(int func);
  external Object depthMask(bool flag);
  external Object depthRange(
      /* double | NaN */ dynamic zNear, /* double | NaN */ dynamic zFar);
  external Object detachShader(WebGLProgram program, WebGLShader shader);
  external Object disable(int cap);
  external Object disableVertexAttribArray(int index);
  external Object drawArrays(int mode, int first, int count);
  external Object drawElements(int mode, int count, int type, int offset);
  external Object enable(int cap);
  external Object enableVertexAttribArray(int index);
  external Object finish();
  external Object flush();
  external Object framebufferRenderbuffer(int target, int attachment,
      int renderbuffertarget, WebGLRenderbuffer? renderbuffer);
  external Object framebufferTexture2D(int target, int attachment,
      int textarget, WebGLTexture? texture, int level);
  external Object frontFace(int mode);
  external Object generateMipmap(int target);
  external WebGLActiveInfo? getActiveAttrib(WebGLProgram program, int index);
  external WebGLActiveInfo? getActiveUniform(WebGLProgram program, int index);
  external Iterable<WebGLShader> getAttachedShaders(WebGLProgram program);
  external int getAttribLocation(WebGLProgram program, String name);
  external dynamic getBufferParameter(int target, int pname);
  external dynamic getParameter(int pname);
  external int getError();
  external dynamic getFramebufferAttachmentParameter(
      int target, int attachment, int pname);
  external dynamic getProgramParameter(WebGLProgram program, int pname);
  external String? getProgramInfoLog(WebGLProgram program);
  external dynamic getRenderbufferParameter(int target, int pname);
  external dynamic getShaderParameter(WebGLShader shader, int pname);
  external WebGLShaderPrecisionFormat? getShaderPrecisionFormat(
      int shadertype, int precisiontype);
  external String? getShaderInfoLog(WebGLShader shader);
  external String? getShaderSource(WebGLShader shader);
  external dynamic getTexParameter(int target, int pname);
  external dynamic getUniform(
      WebGLProgram program, WebGLUniformLocation location);
  external WebGLUniformLocation? getUniformLocation(
      WebGLProgram program, String name);
  external dynamic getVertexAttrib(int index, int pname);
  external int getVertexAttribOffset(int index, int pname);
  external Object hint(int target, int mode);
  external bool isBuffer(WebGLBuffer? buffer);
  external bool isEnabled(int cap);
  external bool isFramebuffer(WebGLFramebuffer? framebuffer);
  external bool isProgram(WebGLProgram? program);
  external bool isRenderbuffer(WebGLRenderbuffer? renderbuffer);
  external bool isShader(WebGLShader? shader);
  external bool isTexture(WebGLTexture? texture);
  external Object lineWidth(/* double | NaN */ dynamic width);
  external Object linkProgram(WebGLProgram program);
  external Object pixelStorei(int pname, int param);
  external Object polygonOffset(
      /* double | NaN */ dynamic factor, /* double | NaN */ dynamic units);
  external Object renderbufferStorage(
      int target, int internalformat, int width, int height);
  external Object sampleCoverage(/* double | NaN */ dynamic value, bool invert);
  external Object scissor(int x, int y, int width, int height);
  external Object shaderSource(WebGLShader shader, String source);
  external Object stencilFunc(int func, int ref, int mask);
  external Object stencilFuncSeparate(int face, int func, int ref, int mask);
  external Object stencilMask(int mask);
  external Object stencilMaskSeparate(int face, int mask);
  external Object stencilOp(int fail, int zfail, int zpass);
  external Object stencilOpSeparate(int face, int fail, int zfail, int zpass);
  external Object texParameterf(
      int target, int pname, /* double | NaN */ dynamic param);
  external Object texParameteri(int target, int pname, int param);
  external Object uniform1f(
      WebGLUniformLocation? location, /* double | NaN */ dynamic x);
  external Object uniform2f(WebGLUniformLocation? location,
      /* double | NaN */ dynamic x, /* double | NaN */ dynamic y);
  external Object uniform3f(
      WebGLUniformLocation? location,
      /* double | NaN */ dynamic x,
      /* double | NaN */ dynamic y,
      /* double | NaN */ dynamic z);
  external Object uniform4f(
      WebGLUniformLocation? location,
      /* double | NaN */ dynamic x,
      /* double | NaN */ dynamic y,
      /* double | NaN */ dynamic z,
      /* double | NaN */ dynamic w);
  external Object uniform1i(WebGLUniformLocation? location, int x);
  external Object uniform2i(WebGLUniformLocation? location, int x, int y);
  external Object uniform3i(
      WebGLUniformLocation? location, int x, int y, int z);
  external Object uniform4i(
      WebGLUniformLocation? location, int x, int y, int z, int w);
  external Object useProgram(WebGLProgram? program);
  external Object validateProgram(WebGLProgram program);
  external Object vertexAttrib1f(int index, /* double | NaN */ dynamic x);
  external Object vertexAttrib2f(
      int index, /* double | NaN */ dynamic x, /* double | NaN */ dynamic y);
  external Object vertexAttrib3f(int index, /* double | NaN */ dynamic x,
      /* double | NaN */ dynamic y, /* double | NaN */ dynamic z);
  external Object vertexAttrib4f(
      int index,
      /* double | NaN */ dynamic x,
      /* double | NaN */ dynamic y,
      /* double | NaN */ dynamic z,
      /* double | NaN */ dynamic w);
  external Object vertexAttrib1fv(int index, dynamic values);
  external Object vertexAttrib2fv(int index, dynamic values);
  external Object vertexAttrib3fv(int index, dynamic values);
  external Object vertexAttrib4fv(int index, dynamic values);
  external Object vertexAttribPointer(
      int index, int size, int type, bool normalized, int stride, int offset);
  external Object viewport(int x, int y, int width, int height);
  external Promise<Object> makeXRCompatible();
}

@JS()
abstract class WebGLRenderingContextOverloads {
  external Object bufferData(int target, int size, int usage);
  external Object bufferSubData(int target, int offset, dynamic data);
  external Object compressedTexImage2D(int target, int level,
      int internalformat, int width, int height, int border, dynamic data);
  external Object compressedTexSubImage2D(int target, int level, int xoffset,
      int yoffset, int width, int height, int format, dynamic data);
  external Object readPixels(int x, int y, int width, int height, int format,
      int type, dynamic pixels);
  external Object texImage2D(int target, int level, int internalformat,
      int width, int height, int border, int format, int type, dynamic pixels);
  external Object texSubImage2D(int target, int level, int xoffset, int yoffset,
      int width, int height, int format, int type, dynamic pixels);
  external Object uniform1fv(WebGLUniformLocation? location, dynamic v);
  external Object uniform2fv(WebGLUniformLocation? location, dynamic v);
  external Object uniform3fv(WebGLUniformLocation? location, dynamic v);
  external Object uniform4fv(WebGLUniformLocation? location, dynamic v);
  external Object uniform1iv(WebGLUniformLocation? location, dynamic v);
  external Object uniform2iv(WebGLUniformLocation? location, dynamic v);
  external Object uniform3iv(WebGLUniformLocation? location, dynamic v);
  external Object uniform4iv(WebGLUniformLocation? location, dynamic v);
  external Object uniformMatrix2fv(
      WebGLUniformLocation? location, bool transpose, dynamic value);
  external Object uniformMatrix3fv(
      WebGLUniformLocation? location, bool transpose, dynamic value);
  external Object uniformMatrix4fv(
      WebGLUniformLocation? location, bool transpose, dynamic value);
}

///
///  The [WebGLRenderingContext] interface provides an interface to
/// the OpenGL ES 2.0 graphics rendering context for the drawing
/// surface of an HTML [<canvas>] element.
///
///  To get an access to a WebGL context for 2D and/or 3D graphics
/// rendering, call [getContext()] on a [<canvas>] element, supplying
/// "webgl" as the argument:
///
/// [var canvas = document.getElementById('myCanvas');
/// var gl = canvas.getContext('webgl');
/// ]
///
///  Once you have the WebGL rendering context for a canvas, you can
/// render within it. The WebGL tutorial has more information,
/// examples, and resources on how to get started with WebGL.
///
///  If you require a WebGL 2.0 context, see
/// [WebGL2RenderingContext]; this supplies access to an
/// implementation of OpenGL ES 3.0 graphics.
///
@JS()
class WebGLRenderingContext {
  external factory WebGLRenderingContext();
}

///
///
///  The WebContextEvent interface is part of the WebGL API and is an
/// interface for an event that is generated in response to a status
/// change to the WebGL rendering context.
@JS()
class WebGLContextEvent extends Event {
  external factory WebGLContextEvent(
      {String type, WebGLContextEventInit? eventInit});

  ///  A read-only property containing additional information about the
  /// event.
  external String get statusMessage;
}

@anonymous
@JS()
class WebGLContextEventInit extends EventInit {
  external String get statusMessage;
  external set statusMessage(String newValue);

  external factory WebGLContextEventInit({String statusMessage = ''});
}
