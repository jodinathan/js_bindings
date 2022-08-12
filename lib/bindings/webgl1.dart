/// WebGL Specification
///
/// https://www.khronos.org/registry/webgl/specs/latest/1.0/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgl1;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

enum WebGLPowerPreference { valueDefault, lowPower, highPerformance }

@anonymous
@JS()
@staticInterop
class WebGLContextAttributes {
  external factory WebGLContextAttributes._(
      {bool? alpha = true,
      bool? depth = true,
      bool? stencil = false,
      bool? antialias = true,
      bool? premultipliedAlpha = true,
      bool? preserveDrawingBuffer = false,
      String? powerPreference,
      bool? failIfMajorPerformanceCaveat = false,
      bool? desynchronized = false});

  factory WebGLContextAttributes(
          {bool? alpha = true,
          bool? depth = true,
          bool? stencil = false,
          bool? antialias = true,
          bool? premultipliedAlpha = true,
          bool? preserveDrawingBuffer = false,
          WebGLPowerPreference? powerPreference =
              WebGLPowerPreference.valueDefault,
          bool? failIfMajorPerformanceCaveat = false,
          bool? desynchronized = false}) =>
      WebGLContextAttributes._(
          alpha: alpha,
          depth: depth,
          stencil: stencil,
          antialias: antialias,
          premultipliedAlpha: premultipliedAlpha,
          preserveDrawingBuffer: preserveDrawingBuffer,
          powerPreference: powerPreference?.name,
          failIfMajorPerformanceCaveat: failIfMajorPerformanceCaveat,
          desynchronized: desynchronized);
}

extension PropsWebGLContextAttributes on WebGLContextAttributes {
  bool get alpha => js_util.getProperty(this, 'alpha');
  set alpha(bool newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }

  bool get depth => js_util.getProperty(this, 'depth');
  set depth(bool newValue) {
    js_util.setProperty(this, 'depth', newValue);
  }

  bool get stencil => js_util.getProperty(this, 'stencil');
  set stencil(bool newValue) {
    js_util.setProperty(this, 'stencil', newValue);
  }

  bool get antialias => js_util.getProperty(this, 'antialias');
  set antialias(bool newValue) {
    js_util.setProperty(this, 'antialias', newValue);
  }

  bool get premultipliedAlpha =>
      js_util.getProperty(this, 'premultipliedAlpha');
  set premultipliedAlpha(bool newValue) {
    js_util.setProperty(this, 'premultipliedAlpha', newValue);
  }

  bool get preserveDrawingBuffer =>
      js_util.getProperty(this, 'preserveDrawingBuffer');
  set preserveDrawingBuffer(bool newValue) {
    js_util.setProperty(this, 'preserveDrawingBuffer', newValue);
  }

  WebGLPowerPreference get powerPreference => WebGLPowerPreference.values
      .byName(js_util.getProperty(this, 'powerPreference'));
  set powerPreference(WebGLPowerPreference newValue) {
    js_util.setProperty(this, 'powerPreference', newValue.name);
  }

  bool get failIfMajorPerformanceCaveat =>
      js_util.getProperty(this, 'failIfMajorPerformanceCaveat');
  set failIfMajorPerformanceCaveat(bool newValue) {
    js_util.setProperty(this, 'failIfMajorPerformanceCaveat', newValue);
  }

  bool get desynchronized => js_util.getProperty(this, 'desynchronized');
  set desynchronized(bool newValue) {
    js_util.setProperty(this, 'desynchronized', newValue);
  }
}

@JS()
@staticInterop
class WebGLObject {
  external factory WebGLObject();
}

///  The WebGLBuffer interface is part of the WebGL API and
/// represents an opaque buffer object storing data such as vertices
/// or colors.
///
///
///
///    WebGLObject
///
///
///
///
///
///
///
///    WebGLBuffer
///
///
@JS()
@staticInterop
class WebGLBuffer implements WebGLObject {
  external factory WebGLBuffer();
}

///  The WebGLFramebuffer interface is part of the WebGL API and
/// represents a collection of buffers that serve as a rendering
/// destination.
///
///
///
///    WebGLObject
///
///
///
///
///
///
///
///    WebGLFramebuffer
///
///
@JS()
@staticInterop
class WebGLFramebuffer implements WebGLObject {
  external factory WebGLFramebuffer();
}

///  The is part of the WebGL API and is a combination of two
/// compiled [WebGLShader]s consisting of a vertex shader and a
/// fragment shader (both written in GLSL).
///
///
///
///    WebGLObject
///
///
///
///
///
///
///
///    WebGLProgram
///
///
///  To create a , call the GL context's [createProgram()] function.
/// After attaching the shader programs using [attachShader()], you
/// link them into a usable program. This is shown in the code below.
/// [const program = gl.createProgram();
///
/// // Attach pre-existing shaders
/// gl.attachShader(program, vertexShader);
/// gl.attachShader(program, fragmentShader);
///
/// gl.linkProgram(program);
///
/// if (!gl.getProgramParameter(program, gl.LINK_STATUS)) {
///  const info = gl.getProgramInfoLog(program);
///  throw `Could not compile WebGL program. \n\n${info}`;
/// }
/// ]
///  See [WebGLShader] for information on creating the [vertexShader]
/// and [fragmentShader] in the above example.
@JS()
@staticInterop
class WebGLProgram implements WebGLObject {
  external factory WebGLProgram();
}

///  The WebGLRenderbuffer interface is part of the WebGL API and
/// represents a buffer that can contain an image, or that can be a
/// source or target of a rendering operation.
///
///
///
///    WebGLObject
///
///
///
///
///
///
///
///    WebGLRenderbuffer
///
///
@JS()
@staticInterop
class WebGLRenderbuffer implements WebGLObject {
  external factory WebGLRenderbuffer();
}

///  The WebGLShader is part of the WebGL API and can either be a
/// vertex or a fragment shader. A [WebGLProgram] requires both types
/// of shaders.
///
///
///
///    WebGLObject
///
///
///
///
///
///
///
///    WebGLShader
///
///
@JS()
@staticInterop
class WebGLShader implements WebGLObject {
  external factory WebGLShader();
}

///  The WebGLTexture interface is part of the WebGL API and
/// represents an opaque texture object providing storage and state
/// for texturing operations.
///
///
///
///    WebGLObject
///
///
///
///
///
///
///
///    WebGLTexture
///
///
@JS()
@staticInterop
class WebGLTexture implements WebGLObject {
  external factory WebGLTexture();
}

///  The WebGLUniformLocation interface is part of the WebGL API and
/// represents the location of a uniform variable in a shader
/// program.
@JS()
@staticInterop
class WebGLUniformLocation {
  external factory WebGLUniformLocation();
}

///  The WebGLActiveInfo interface is part of the WebGL API and
/// represents the information returned by calling the
/// [WebGLRenderingContext.getActiveAttrib()] and
/// [WebGLRenderingContext.getActiveUniform()] methods.
@JS()
@staticInterop
class WebGLActiveInfo {
  external factory WebGLActiveInfo();
}

extension PropsWebGLActiveInfo on WebGLActiveInfo {
  int get size => js_util.getProperty(this, 'size');
  int get type => js_util.getProperty(this, 'type');
  String get name => js_util.getProperty(this, 'name');
}

///  The WebGLShaderPrecisionFormat interface is part of the WebGL
/// API and represents the information returned by calling the
/// [WebGLRenderingContext.getShaderPrecisionFormat()] method.
@JS()
@staticInterop
class WebGLShaderPrecisionFormat {
  external factory WebGLShaderPrecisionFormat();
}

extension PropsWebGLShaderPrecisionFormat on WebGLShaderPrecisionFormat {
  int get rangeMin => js_util.getProperty(this, 'rangeMin');
  int get rangeMax => js_util.getProperty(this, 'rangeMax');
  int get precision => js_util.getProperty(this, 'precision');
}

@JS()
@staticInterop
class WebGLRenderingContextBase {
  @JS('DEPTH_BUFFER_BIT')
  external static int get depthBufferBit;

  @JS('STENCIL_BUFFER_BIT')
  external static int get stencilBufferBit;

  @JS('COLOR_BUFFER_BIT')
  external static int get colorBufferBit;

  @JS('POINTS')
  external static int get points;

  @JS('LINES')
  external static int get lines;

  @JS('LINE_LOOP')
  external static int get lineLoop;

  @JS('LINE_STRIP')
  external static int get lineStrip;

  @JS('TRIANGLES')
  external static int get triangles;

  @JS('TRIANGLE_STRIP')
  external static int get triangleStrip;

  @JS('TRIANGLE_FAN')
  external static int get triangleFan;

  @JS('ZERO')
  external static int get zero;

  @JS('ONE')
  external static int get one;

  @JS('SRC_COLOR')
  external static int get srcColor;

  @JS('ONE_MINUS_SRC_COLOR')
  external static int get oneMinusSrcColor;

  @JS('SRC_ALPHA')
  external static int get srcAlpha;

  @JS('ONE_MINUS_SRC_ALPHA')
  external static int get oneMinusSrcAlpha;

  @JS('DST_ALPHA')
  external static int get dstAlpha;

  @JS('ONE_MINUS_DST_ALPHA')
  external static int get oneMinusDstAlpha;

  @JS('DST_COLOR')
  external static int get dstColor;

  @JS('ONE_MINUS_DST_COLOR')
  external static int get oneMinusDstColor;

  @JS('SRC_ALPHA_SATURATE')
  external static int get srcAlphaSaturate;

  @JS('FUNC_ADD')
  external static int get funcAdd;

  @JS('BLEND_EQUATION')
  external static int get blendEquation;

  @JS('BLEND_EQUATION_RGB')
  external static int get blendEquationRgb;

  @JS('BLEND_EQUATION_ALPHA')
  external static int get blendEquationAlpha;

  @JS('FUNC_SUBTRACT')
  external static int get funcSubtract;

  @JS('FUNC_REVERSE_SUBTRACT')
  external static int get funcReverseSubtract;

  @JS('BLEND_DST_RGB')
  external static int get blendDstRgb;

  @JS('BLEND_SRC_RGB')
  external static int get blendSrcRgb;

  @JS('BLEND_DST_ALPHA')
  external static int get blendDstAlpha;

  @JS('BLEND_SRC_ALPHA')
  external static int get blendSrcAlpha;

  @JS('CONSTANT_COLOR')
  external static int get constantColor;

  @JS('ONE_MINUS_CONSTANT_COLOR')
  external static int get oneMinusConstantColor;

  @JS('CONSTANT_ALPHA')
  external static int get constantAlpha;

  @JS('ONE_MINUS_CONSTANT_ALPHA')
  external static int get oneMinusConstantAlpha;

  @JS('BLEND_COLOR')
  external static int get blendColor;

  @JS('ARRAY_BUFFER')
  external static int get arrayBuffer;

  @JS('ELEMENT_ARRAY_BUFFER')
  external static int get elementArrayBuffer;

  @JS('ARRAY_BUFFER_BINDING')
  external static int get arrayBufferBinding;

  @JS('ELEMENT_ARRAY_BUFFER_BINDING')
  external static int get elementArrayBufferBinding;

  @JS('STREAM_DRAW')
  external static int get streamDraw;

  @JS('STATIC_DRAW')
  external static int get staticDraw;

  @JS('DYNAMIC_DRAW')
  external static int get dynamicDraw;

  @JS('BUFFER_SIZE')
  external static int get bufferSize;

  @JS('BUFFER_USAGE')
  external static int get bufferUsage;

  @JS('CURRENT_VERTEX_ATTRIB')
  external static int get currentVertexAttrib;

  @JS('FRONT')
  external static int get front;

  @JS('BACK')
  external static int get back;

  @JS('FRONT_AND_BACK')
  external static int get frontAndBack;

  @JS('CULL_FACE')
  external static int get cullFace;

  @JS('BLEND')
  external static int get blend;

  @JS('DITHER')
  external static int get dither;

  @JS('STENCIL_TEST')
  external static int get stencilTest;

  @JS('DEPTH_TEST')
  external static int get depthTest;

  @JS('SCISSOR_TEST')
  external static int get scissorTest;

  @JS('POLYGON_OFFSET_FILL')
  external static int get polygonOffsetFill;

  @JS('SAMPLE_ALPHA_TO_COVERAGE')
  external static int get sampleAlphaToCoverage;

  @JS('SAMPLE_COVERAGE')
  external static int get sampleCoverage;

  @JS('NO_ERROR')
  external static int get noError;

  @JS('INVALID_ENUM')
  external static int get invalidEnum;

  @JS('INVALID_VALUE')
  external static int get invalidValue;

  @JS('INVALID_OPERATION')
  external static int get invalidOperation;

  @JS('OUT_OF_MEMORY')
  external static int get outOfMemory;

  @JS('CW')
  external static int get cw;

  @JS('CCW')
  external static int get ccw;

  @JS('LINE_WIDTH')
  external static int get lineWidth;

  @JS('ALIASED_POINT_SIZE_RANGE')
  external static int get aliasedPointSizeRange;

  @JS('ALIASED_LINE_WIDTH_RANGE')
  external static int get aliasedLineWidthRange;

  @JS('CULL_FACE_MODE')
  external static int get cullFaceMode;

  @JS('FRONT_FACE')
  external static int get frontFace;

  @JS('DEPTH_RANGE')
  external static int get depthRange;

  @JS('DEPTH_WRITEMASK')
  external static int get depthWritemask;

  @JS('DEPTH_CLEAR_VALUE')
  external static int get depthClearValue;

  @JS('DEPTH_FUNC')
  external static int get depthFunc;

  @JS('STENCIL_CLEAR_VALUE')
  external static int get stencilClearValue;

  @JS('STENCIL_FUNC')
  external static int get stencilFunc;

  @JS('STENCIL_FAIL')
  external static int get stencilFail;

  @JS('STENCIL_PASS_DEPTH_FAIL')
  external static int get stencilPassDepthFail;

  @JS('STENCIL_PASS_DEPTH_PASS')
  external static int get stencilPassDepthPass;

  @JS('STENCIL_REF')
  external static int get stencilRef;

  @JS('STENCIL_VALUE_MASK')
  external static int get stencilValueMask;

  @JS('STENCIL_WRITEMASK')
  external static int get stencilWritemask;

  @JS('STENCIL_BACK_FUNC')
  external static int get stencilBackFunc;

  @JS('STENCIL_BACK_FAIL')
  external static int get stencilBackFail;

  @JS('STENCIL_BACK_PASS_DEPTH_FAIL')
  external static int get stencilBackPassDepthFail;

  @JS('STENCIL_BACK_PASS_DEPTH_PASS')
  external static int get stencilBackPassDepthPass;

  @JS('STENCIL_BACK_REF')
  external static int get stencilBackRef;

  @JS('STENCIL_BACK_VALUE_MASK')
  external static int get stencilBackValueMask;

  @JS('STENCIL_BACK_WRITEMASK')
  external static int get stencilBackWritemask;

  @JS('VIEWPORT')
  external static int get viewport;

  @JS('SCISSOR_BOX')
  external static int get scissorBox;

  @JS('COLOR_CLEAR_VALUE')
  external static int get colorClearValue;

  @JS('COLOR_WRITEMASK')
  external static int get colorWritemask;

  @JS('UNPACK_ALIGNMENT')
  external static int get unpackAlignment;

  @JS('PACK_ALIGNMENT')
  external static int get packAlignment;

  @JS('MAX_TEXTURE_SIZE')
  external static int get maxTextureSize;

  @JS('MAX_VIEWPORT_DIMS')
  external static int get maxViewportDims;

  @JS('SUBPIXEL_BITS')
  external static int get subpixelBits;

  @JS('RED_BITS')
  external static int get redBits;

  @JS('GREEN_BITS')
  external static int get greenBits;

  @JS('BLUE_BITS')
  external static int get blueBits;

  @JS('ALPHA_BITS')
  external static int get alphaBits;

  @JS('DEPTH_BITS')
  external static int get depthBits;

  @JS('STENCIL_BITS')
  external static int get stencilBits;

  @JS('POLYGON_OFFSET_UNITS')
  external static int get polygonOffsetUnits;

  @JS('POLYGON_OFFSET_FACTOR')
  external static int get polygonOffsetFactor;

  @JS('TEXTURE_BINDING_2D')
  external static int get textureBinding2d;

  @JS('SAMPLE_BUFFERS')
  external static int get sampleBuffers;

  @JS('SAMPLES')
  external static int get samples;

  @JS('SAMPLE_COVERAGE_VALUE')
  external static int get sampleCoverageValue;

  @JS('SAMPLE_COVERAGE_INVERT')
  external static int get sampleCoverageInvert;

  @JS('COMPRESSED_TEXTURE_FORMATS')
  external static int get compressedTextureFormats;

  @JS('DONT_CARE')
  external static int get dontCare;

  @JS('FASTEST')
  external static int get fastest;

  @JS('NICEST')
  external static int get nicest;

  @JS('GENERATE_MIPMAP_HINT')
  external static int get generateMipmapHint;

  @JS('BYTE')
  external static int get byte;

  @JS('UNSIGNED_BYTE')
  external static int get unsignedByte;

  @JS('SHORT')
  external static int get short;

  @JS('UNSIGNED_SHORT')
  external static int get unsignedShort;

  @JS('INT')
  external static int get mInt;

  @JS('UNSIGNED_INT')
  external static int get unsignedInt;

  @JS('FLOAT')
  external static int get float;

  @JS('DEPTH_COMPONENT')
  external static int get depthComponent;

  @JS('ALPHA')
  external static int get alpha;

  @JS('RGB')
  external static int get rgb;

  @JS('RGBA')
  external static int get rgba;

  @JS('LUMINANCE')
  external static int get luminance;

  @JS('LUMINANCE_ALPHA')
  external static int get luminanceAlpha;

  @JS('UNSIGNED_SHORT_4_4_4_4')
  external static int get unsignedShort4444;

  @JS('UNSIGNED_SHORT_5_5_5_1')
  external static int get unsignedShort5551;

  @JS('UNSIGNED_SHORT_5_6_5')
  external static int get unsignedShort565;

  @JS('FRAGMENT_SHADER')
  external static int get fragmentShader;

  @JS('VERTEX_SHADER')
  external static int get vertexShader;

  @JS('MAX_VERTEX_ATTRIBS')
  external static int get maxVertexAttribs;

  @JS('MAX_VERTEX_UNIFORM_VECTORS')
  external static int get maxVertexUniformVectors;

  @JS('MAX_VARYING_VECTORS')
  external static int get maxVaryingVectors;

  @JS('MAX_COMBINED_TEXTURE_IMAGE_UNITS')
  external static int get maxCombinedTextureImageUnits;

  @JS('MAX_VERTEX_TEXTURE_IMAGE_UNITS')
  external static int get maxVertexTextureImageUnits;

  @JS('MAX_TEXTURE_IMAGE_UNITS')
  external static int get maxTextureImageUnits;

  @JS('MAX_FRAGMENT_UNIFORM_VECTORS')
  external static int get maxFragmentUniformVectors;

  @JS('SHADER_TYPE')
  external static int get shaderType;

  @JS('DELETE_STATUS')
  external static int get deleteStatus;

  @JS('LINK_STATUS')
  external static int get linkStatus;

  @JS('VALIDATE_STATUS')
  external static int get validateStatus;

  @JS('ATTACHED_SHADERS')
  external static int get attachedShaders;

  @JS('ACTIVE_UNIFORMS')
  external static int get activeUniforms;

  @JS('ACTIVE_ATTRIBUTES')
  external static int get activeAttributes;

  @JS('SHADING_LANGUAGE_VERSION')
  external static int get shadingLanguageVersion;

  @JS('CURRENT_PROGRAM')
  external static int get currentProgram;

  @JS('NEVER')
  external static int get never;

  @JS('LESS')
  external static int get less;

  @JS('EQUAL')
  external static int get equal;

  @JS('LEQUAL')
  external static int get lequal;

  @JS('GREATER')
  external static int get greater;

  @JS('NOTEQUAL')
  external static int get notequal;

  @JS('GEQUAL')
  external static int get gequal;

  @JS('ALWAYS')
  external static int get always;

  @JS('KEEP')
  external static int get keep;

  @JS('REPLACE')
  external static int get replace;

  @JS('INCR')
  external static int get incr;

  @JS('DECR')
  external static int get decr;

  @JS('INVERT')
  external static int get invert;

  @JS('INCR_WRAP')
  external static int get incrWrap;

  @JS('DECR_WRAP')
  external static int get decrWrap;

  @JS('VENDOR')
  external static int get vendor;

  @JS('RENDERER')
  external static int get renderer;

  @JS('VERSION')
  external static int get version;

  @JS('NEAREST')
  external static int get nearest;

  @JS('LINEAR')
  external static int get linear;

  @JS('NEAREST_MIPMAP_NEAREST')
  external static int get nearestMipmapNearest;

  @JS('LINEAR_MIPMAP_NEAREST')
  external static int get linearMipmapNearest;

  @JS('NEAREST_MIPMAP_LINEAR')
  external static int get nearestMipmapLinear;

  @JS('LINEAR_MIPMAP_LINEAR')
  external static int get linearMipmapLinear;

  @JS('TEXTURE_MAG_FILTER')
  external static int get textureMagFilter;

  @JS('TEXTURE_MIN_FILTER')
  external static int get textureMinFilter;

  @JS('TEXTURE_WRAP_S')
  external static int get textureWrapS;

  @JS('TEXTURE_WRAP_T')
  external static int get textureWrapT;

  @JS('TEXTURE_2D')
  external static int get texture2d;

  @JS('TEXTURE')
  external static int get texture;

  @JS('TEXTURE_CUBE_MAP')
  external static int get textureCubeMap;

  @JS('TEXTURE_BINDING_CUBE_MAP')
  external static int get textureBindingCubeMap;

  @JS('TEXTURE_CUBE_MAP_POSITIVE_X')
  external static int get textureCubeMapPositiveX;

  @JS('TEXTURE_CUBE_MAP_NEGATIVE_X')
  external static int get textureCubeMapNegativeX;

  @JS('TEXTURE_CUBE_MAP_POSITIVE_Y')
  external static int get textureCubeMapPositiveY;

  @JS('TEXTURE_CUBE_MAP_NEGATIVE_Y')
  external static int get textureCubeMapNegativeY;

  @JS('TEXTURE_CUBE_MAP_POSITIVE_Z')
  external static int get textureCubeMapPositiveZ;

  @JS('TEXTURE_CUBE_MAP_NEGATIVE_Z')
  external static int get textureCubeMapNegativeZ;

  @JS('MAX_CUBE_MAP_TEXTURE_SIZE')
  external static int get maxCubeMapTextureSize;

  @JS('TEXTURE0')
  external static int get texture0;

  @JS('TEXTURE1')
  external static int get texture1;

  @JS('TEXTURE2')
  external static int get texture2;

  @JS('TEXTURE3')
  external static int get texture3;

  @JS('TEXTURE4')
  external static int get texture4;

  @JS('TEXTURE5')
  external static int get texture5;

  @JS('TEXTURE6')
  external static int get texture6;

  @JS('TEXTURE7')
  external static int get texture7;

  @JS('TEXTURE8')
  external static int get texture8;

  @JS('TEXTURE9')
  external static int get texture9;

  @JS('TEXTURE10')
  external static int get texture10;

  @JS('TEXTURE11')
  external static int get texture11;

  @JS('TEXTURE12')
  external static int get texture12;

  @JS('TEXTURE13')
  external static int get texture13;

  @JS('TEXTURE14')
  external static int get texture14;

  @JS('TEXTURE15')
  external static int get texture15;

  @JS('TEXTURE16')
  external static int get texture16;

  @JS('TEXTURE17')
  external static int get texture17;

  @JS('TEXTURE18')
  external static int get texture18;

  @JS('TEXTURE19')
  external static int get texture19;

  @JS('TEXTURE20')
  external static int get texture20;

  @JS('TEXTURE21')
  external static int get texture21;

  @JS('TEXTURE22')
  external static int get texture22;

  @JS('TEXTURE23')
  external static int get texture23;

  @JS('TEXTURE24')
  external static int get texture24;

  @JS('TEXTURE25')
  external static int get texture25;

  @JS('TEXTURE26')
  external static int get texture26;

  @JS('TEXTURE27')
  external static int get texture27;

  @JS('TEXTURE28')
  external static int get texture28;

  @JS('TEXTURE29')
  external static int get texture29;

  @JS('TEXTURE30')
  external static int get texture30;

  @JS('TEXTURE31')
  external static int get texture31;

  @JS('ACTIVE_TEXTURE')
  external static int get activeTexture;

  @JS('REPEAT')
  external static int get repeat;

  @JS('CLAMP_TO_EDGE')
  external static int get clampToEdge;

  @JS('MIRRORED_REPEAT')
  external static int get mirroredRepeat;

  @JS('FLOAT_VEC2')
  external static int get floatVec2;

  @JS('FLOAT_VEC3')
  external static int get floatVec3;

  @JS('FLOAT_VEC4')
  external static int get floatVec4;

  @JS('INT_VEC2')
  external static int get intVec2;

  @JS('INT_VEC3')
  external static int get intVec3;

  @JS('INT_VEC4')
  external static int get intVec4;

  @JS('BOOL')
  external static int get bool;

  @JS('BOOL_VEC2')
  external static int get boolVec2;

  @JS('BOOL_VEC3')
  external static int get boolVec3;

  @JS('BOOL_VEC4')
  external static int get boolVec4;

  @JS('FLOAT_MAT2')
  external static int get floatMat2;

  @JS('FLOAT_MAT3')
  external static int get floatMat3;

  @JS('FLOAT_MAT4')
  external static int get floatMat4;

  @JS('SAMPLER_2D')
  external static int get sampler2d;

  @JS('SAMPLER_CUBE')
  external static int get samplerCube;

  @JS('VERTEX_ATTRIB_ARRAY_ENABLED')
  external static int get vertexAttribArrayEnabled;

  @JS('VERTEX_ATTRIB_ARRAY_SIZE')
  external static int get vertexAttribArraySize;

  @JS('VERTEX_ATTRIB_ARRAY_STRIDE')
  external static int get vertexAttribArrayStride;

  @JS('VERTEX_ATTRIB_ARRAY_TYPE')
  external static int get vertexAttribArrayType;

  @JS('VERTEX_ATTRIB_ARRAY_NORMALIZED')
  external static int get vertexAttribArrayNormalized;

  @JS('VERTEX_ATTRIB_ARRAY_POINTER')
  external static int get vertexAttribArrayPointer;

  @JS('VERTEX_ATTRIB_ARRAY_BUFFER_BINDING')
  external static int get vertexAttribArrayBufferBinding;

  @JS('IMPLEMENTATION_COLOR_READ_TYPE')
  external static int get implementationColorReadType;

  @JS('IMPLEMENTATION_COLOR_READ_FORMAT')
  external static int get implementationColorReadFormat;

  @JS('COMPILE_STATUS')
  external static int get compileStatus;

  @JS('LOW_FLOAT')
  external static int get lowFloat;

  @JS('MEDIUM_FLOAT')
  external static int get mediumFloat;

  @JS('HIGH_FLOAT')
  external static int get highFloat;

  @JS('LOW_INT')
  external static int get lowInt;

  @JS('MEDIUM_INT')
  external static int get mediumInt;

  @JS('HIGH_INT')
  external static int get highInt;

  @JS('FRAMEBUFFER')
  external static int get framebuffer;

  @JS('RENDERBUFFER')
  external static int get renderbuffer;

  @JS('RGBA4')
  external static int get rgba4;

  @JS('RGB5_A1')
  external static int get rgb5A1;

  @JS('RGB565')
  external static int get rgb565;

  @JS('DEPTH_COMPONENT16')
  external static int get depthComponent16;

  @JS('STENCIL_INDEX8')
  external static int get stencilIndex8;

  @JS('DEPTH_STENCIL')
  external static int get depthStencil;

  @JS('RENDERBUFFER_WIDTH')
  external static int get renderbufferWidth;

  @JS('RENDERBUFFER_HEIGHT')
  external static int get renderbufferHeight;

  @JS('RENDERBUFFER_INTERNAL_FORMAT')
  external static int get renderbufferInternalFormat;

  @JS('RENDERBUFFER_RED_SIZE')
  external static int get renderbufferRedSize;

  @JS('RENDERBUFFER_GREEN_SIZE')
  external static int get renderbufferGreenSize;

  @JS('RENDERBUFFER_BLUE_SIZE')
  external static int get renderbufferBlueSize;

  @JS('RENDERBUFFER_ALPHA_SIZE')
  external static int get renderbufferAlphaSize;

  @JS('RENDERBUFFER_DEPTH_SIZE')
  external static int get renderbufferDepthSize;

  @JS('RENDERBUFFER_STENCIL_SIZE')
  external static int get renderbufferStencilSize;

  @JS('FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE')
  external static int get framebufferAttachmentObjectType;

  @JS('FRAMEBUFFER_ATTACHMENT_OBJECT_NAME')
  external static int get framebufferAttachmentObjectName;

  @JS('FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL')
  external static int get framebufferAttachmentTextureLevel;

  @JS('FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE')
  external static int get framebufferAttachmentTextureCubeMapFace;

  @JS('COLOR_ATTACHMENT0')
  external static int get colorAttachment0;

  @JS('DEPTH_ATTACHMENT')
  external static int get depthAttachment;

  @JS('STENCIL_ATTACHMENT')
  external static int get stencilAttachment;

  @JS('DEPTH_STENCIL_ATTACHMENT')
  external static int get depthStencilAttachment;

  @JS('NONE')
  external static int get none;

  @JS('FRAMEBUFFER_COMPLETE')
  external static int get framebufferComplete;

  @JS('FRAMEBUFFER_INCOMPLETE_ATTACHMENT')
  external static int get framebufferIncompleteAttachment;

  @JS('FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT')
  external static int get framebufferIncompleteMissingAttachment;

  @JS('FRAMEBUFFER_INCOMPLETE_DIMENSIONS')
  external static int get framebufferIncompleteDimensions;

  @JS('FRAMEBUFFER_UNSUPPORTED')
  external static int get framebufferUnsupported;

  @JS('FRAMEBUFFER_BINDING')
  external static int get framebufferBinding;

  @JS('RENDERBUFFER_BINDING')
  external static int get renderbufferBinding;

  @JS('MAX_RENDERBUFFER_SIZE')
  external static int get maxRenderbufferSize;

  @JS('INVALID_FRAMEBUFFER_OPERATION')
  external static int get invalidFramebufferOperation;

  @JS('UNPACK_FLIP_Y_WEBGL')
  external static int get unpackFlipYWebgl;

  @JS('UNPACK_PREMULTIPLY_ALPHA_WEBGL')
  external static int get unpackPremultiplyAlphaWebgl;

  @JS('CONTEXT_LOST_WEBGL')
  external static int get contextLostWebgl;

  @JS('UNPACK_COLORSPACE_CONVERSION_WEBGL')
  external static int get unpackColorspaceConversionWebgl;

  @JS('BROWSER_DEFAULT_WEBGL')
  external static int get browserDefaultWebgl;

  external factory WebGLRenderingContextBase();
}

extension PropsWebGLRenderingContextBase on WebGLRenderingContextBase {
  dynamic get canvas => js_util.getProperty(this, 'canvas');
  int get drawingBufferWidth => js_util.getProperty(this, 'drawingBufferWidth');
  int get drawingBufferHeight =>
      js_util.getProperty(this, 'drawingBufferHeight');
  PredefinedColorSpace get drawingBufferColorSpace =>
      PredefinedColorSpace.values
          .byName(js_util.getProperty(this, 'drawingBufferColorSpace'));
  set drawingBufferColorSpace(PredefinedColorSpace newValue) {
    js_util.setProperty(this, 'drawingBufferColorSpace', newValue.name);
  }

  PredefinedColorSpace get unpackColorSpace => PredefinedColorSpace.values
      .byName(js_util.getProperty(this, 'unpackColorSpace'));
  set unpackColorSpace(PredefinedColorSpace newValue) {
    js_util.setProperty(this, 'unpackColorSpace', newValue.name);
  }

  WebGLContextAttributes? getContextAttributes() =>
      js_util.callMethod(this, 'getContextAttributes', []);

  bool isContextLost() => js_util.callMethod(this, 'isContextLost', []);

  Iterable<String> getSupportedExtensions() =>
      js_util.callMethod(this, 'getSupportedExtensions', []);

  dynamic getExtension(String name) =>
      js_util.callMethod(this, 'getExtension', [name]);

  Object activeTexture(int texture) =>
      js_util.callMethod(this, 'activeTexture', [texture]);

  Object attachShader(WebGLProgram program, WebGLShader shader) =>
      js_util.callMethod(this, 'attachShader', [program, shader]);

  Object bindAttribLocation(WebGLProgram program, int index, String name) =>
      js_util.callMethod(this, 'bindAttribLocation', [program, index, name]);

  Object bindBuffer(int target, WebGLBuffer? buffer) =>
      js_util.callMethod(this, 'bindBuffer', [target, buffer]);

  Object bindFramebuffer(int target, WebGLFramebuffer? framebuffer) =>
      js_util.callMethod(this, 'bindFramebuffer', [target, framebuffer]);

  Object bindRenderbuffer(int target, WebGLRenderbuffer? renderbuffer) =>
      js_util.callMethod(this, 'bindRenderbuffer', [target, renderbuffer]);

  Object bindTexture(int target, WebGLTexture? texture) =>
      js_util.callMethod(this, 'bindTexture', [target, texture]);

  Object blendColor(
          /* double | NaN */ dynamic red,
          /* double | NaN */ dynamic green,
          /* double | NaN */ dynamic blue,
          /* double | NaN */ dynamic alpha) =>
      js_util.callMethod(this, 'blendColor', [red, green, blue, alpha]);

  Object blendEquation(int mode) =>
      js_util.callMethod(this, 'blendEquation', [mode]);

  Object blendEquationSeparate(int modeRGB, int modeAlpha) =>
      js_util.callMethod(this, 'blendEquationSeparate', [modeRGB, modeAlpha]);

  Object blendFunc(int sfactor, int dfactor) =>
      js_util.callMethod(this, 'blendFunc', [sfactor, dfactor]);

  Object blendFuncSeparate(
          int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) =>
      js_util.callMethod(
          this, 'blendFuncSeparate', [srcRGB, dstRGB, srcAlpha, dstAlpha]);

  int checkFramebufferStatus(int target) =>
      js_util.callMethod(this, 'checkFramebufferStatus', [target]);

  Object clear(int mask) => js_util.callMethod(this, 'clear', [mask]);

  Object clearColor(
          /* double | NaN */ dynamic red,
          /* double | NaN */ dynamic green,
          /* double | NaN */ dynamic blue,
          /* double | NaN */ dynamic alpha) =>
      js_util.callMethod(this, 'clearColor', [red, green, blue, alpha]);

  Object clearDepth(/* double | NaN */ dynamic depth) =>
      js_util.callMethod(this, 'clearDepth', [depth]);

  Object clearStencil(int s) => js_util.callMethod(this, 'clearStencil', [s]);

  Object colorMask(bool red, bool green, bool blue, bool alpha) =>
      js_util.callMethod(this, 'colorMask', [red, green, blue, alpha]);

  Object compileShader(WebGLShader shader) =>
      js_util.callMethod(this, 'compileShader', [shader]);

  Object copyTexImage2D(int target, int level, int internalformat, int x, int y,
          int width, int height, int border) =>
      js_util.callMethod(this, 'copyTexImage2D',
          [target, level, internalformat, x, y, width, height, border]);

  Object copyTexSubImage2D(int target, int level, int xoffset, int yoffset,
          int x, int y, int width, int height) =>
      js_util.callMethod(this, 'copyTexSubImage2D',
          [target, level, xoffset, yoffset, x, y, width, height]);

  WebGLBuffer? createBuffer() => js_util.callMethod(this, 'createBuffer', []);

  WebGLFramebuffer? createFramebuffer() =>
      js_util.callMethod(this, 'createFramebuffer', []);

  WebGLProgram? createProgram() =>
      js_util.callMethod(this, 'createProgram', []);

  WebGLRenderbuffer? createRenderbuffer() =>
      js_util.callMethod(this, 'createRenderbuffer', []);

  WebGLShader? createShader(int type) =>
      js_util.callMethod(this, 'createShader', [type]);

  WebGLTexture? createTexture() =>
      js_util.callMethod(this, 'createTexture', []);

  Object cullFace(int mode) => js_util.callMethod(this, 'cullFace', [mode]);

  Object deleteBuffer(WebGLBuffer? buffer) =>
      js_util.callMethod(this, 'deleteBuffer', [buffer]);

  Object deleteFramebuffer(WebGLFramebuffer? framebuffer) =>
      js_util.callMethod(this, 'deleteFramebuffer', [framebuffer]);

  Object deleteProgram(WebGLProgram? program) =>
      js_util.callMethod(this, 'deleteProgram', [program]);

  Object deleteRenderbuffer(WebGLRenderbuffer? renderbuffer) =>
      js_util.callMethod(this, 'deleteRenderbuffer', [renderbuffer]);

  Object deleteShader(WebGLShader? shader) =>
      js_util.callMethod(this, 'deleteShader', [shader]);

  Object deleteTexture(WebGLTexture? texture) =>
      js_util.callMethod(this, 'deleteTexture', [texture]);

  Object depthFunc(int func) => js_util.callMethod(this, 'depthFunc', [func]);

  Object depthMask(bool flag) => js_util.callMethod(this, 'depthMask', [flag]);

  Object depthRange(
          /* double | NaN */ dynamic zNear, /* double | NaN */ dynamic zFar) =>
      js_util.callMethod(this, 'depthRange', [zNear, zFar]);

  Object detachShader(WebGLProgram program, WebGLShader shader) =>
      js_util.callMethod(this, 'detachShader', [program, shader]);

  Object disable(int cap) => js_util.callMethod(this, 'disable', [cap]);

  Object disableVertexAttribArray(int index) =>
      js_util.callMethod(this, 'disableVertexAttribArray', [index]);

  Object drawArrays(int mode, int first, int count) =>
      js_util.callMethod(this, 'drawArrays', [mode, first, count]);

  Object drawElements(int mode, int count, int type, int offset) =>
      js_util.callMethod(this, 'drawElements', [mode, count, type, offset]);

  Object enable(int cap) => js_util.callMethod(this, 'enable', [cap]);

  Object enableVertexAttribArray(int index) =>
      js_util.callMethod(this, 'enableVertexAttribArray', [index]);

  Object finish() => js_util.callMethod(this, 'finish', []);

  Object flush() => js_util.callMethod(this, 'flush', []);

  Object framebufferRenderbuffer(int target, int attachment,
          int renderbuffertarget, WebGLRenderbuffer? renderbuffer) =>
      js_util.callMethod(this, 'framebufferRenderbuffer',
          [target, attachment, renderbuffertarget, renderbuffer]);

  Object framebufferTexture2D(int target, int attachment, int textarget,
          WebGLTexture? texture, int level) =>
      js_util.callMethod(this, 'framebufferTexture2D',
          [target, attachment, textarget, texture, level]);

  Object frontFace(int mode) => js_util.callMethod(this, 'frontFace', [mode]);

  Object generateMipmap(int target) =>
      js_util.callMethod(this, 'generateMipmap', [target]);

  WebGLActiveInfo? getActiveAttrib(WebGLProgram program, int index) =>
      js_util.callMethod(this, 'getActiveAttrib', [program, index]);

  WebGLActiveInfo? getActiveUniform(WebGLProgram program, int index) =>
      js_util.callMethod(this, 'getActiveUniform', [program, index]);

  Iterable<WebGLShader> getAttachedShaders(WebGLProgram program) =>
      js_util.callMethod(this, 'getAttachedShaders', [program]);

  int getAttribLocation(WebGLProgram program, String name) =>
      js_util.callMethod(this, 'getAttribLocation', [program, name]);

  dynamic getBufferParameter(int target, int pname) =>
      js_util.callMethod(this, 'getBufferParameter', [target, pname]);

  dynamic getParameter(int pname) =>
      js_util.callMethod(this, 'getParameter', [pname]);

  int getError() => js_util.callMethod(this, 'getError', []);

  dynamic getFramebufferAttachmentParameter(
          int target, int attachment, int pname) =>
      js_util.callMethod(this, 'getFramebufferAttachmentParameter',
          [target, attachment, pname]);

  dynamic getProgramParameter(WebGLProgram program, int pname) =>
      js_util.callMethod(this, 'getProgramParameter', [program, pname]);

  String? getProgramInfoLog(WebGLProgram program) =>
      js_util.callMethod(this, 'getProgramInfoLog', [program]);

  dynamic getRenderbufferParameter(int target, int pname) =>
      js_util.callMethod(this, 'getRenderbufferParameter', [target, pname]);

  dynamic getShaderParameter(WebGLShader shader, int pname) =>
      js_util.callMethod(this, 'getShaderParameter', [shader, pname]);

  WebGLShaderPrecisionFormat? getShaderPrecisionFormat(
          int shadertype, int precisiontype) =>
      js_util.callMethod(
          this, 'getShaderPrecisionFormat', [shadertype, precisiontype]);

  String? getShaderInfoLog(WebGLShader shader) =>
      js_util.callMethod(this, 'getShaderInfoLog', [shader]);

  String? getShaderSource(WebGLShader shader) =>
      js_util.callMethod(this, 'getShaderSource', [shader]);

  dynamic getTexParameter(int target, int pname) =>
      js_util.callMethod(this, 'getTexParameter', [target, pname]);

  dynamic getUniform(WebGLProgram program, WebGLUniformLocation location) =>
      js_util.callMethod(this, 'getUniform', [program, location]);

  WebGLUniformLocation? getUniformLocation(WebGLProgram program, String name) =>
      js_util.callMethod(this, 'getUniformLocation', [program, name]);

  dynamic getVertexAttrib(int index, int pname) =>
      js_util.callMethod(this, 'getVertexAttrib', [index, pname]);

  int getVertexAttribOffset(int index, int pname) =>
      js_util.callMethod(this, 'getVertexAttribOffset', [index, pname]);

  Object hint(int target, int mode) =>
      js_util.callMethod(this, 'hint', [target, mode]);

  bool isBuffer(WebGLBuffer? buffer) =>
      js_util.callMethod(this, 'isBuffer', [buffer]);

  bool isEnabled(int cap) => js_util.callMethod(this, 'isEnabled', [cap]);

  bool isFramebuffer(WebGLFramebuffer? framebuffer) =>
      js_util.callMethod(this, 'isFramebuffer', [framebuffer]);

  bool isProgram(WebGLProgram? program) =>
      js_util.callMethod(this, 'isProgram', [program]);

  bool isRenderbuffer(WebGLRenderbuffer? renderbuffer) =>
      js_util.callMethod(this, 'isRenderbuffer', [renderbuffer]);

  bool isShader(WebGLShader? shader) =>
      js_util.callMethod(this, 'isShader', [shader]);

  bool isTexture(WebGLTexture? texture) =>
      js_util.callMethod(this, 'isTexture', [texture]);

  Object lineWidth(/* double | NaN */ dynamic width) =>
      js_util.callMethod(this, 'lineWidth', [width]);

  Object linkProgram(WebGLProgram program) =>
      js_util.callMethod(this, 'linkProgram', [program]);

  Object pixelStorei(int pname, int param) =>
      js_util.callMethod(this, 'pixelStorei', [pname, param]);

  Object polygonOffset(/* double | NaN */ dynamic factor,
          /* double | NaN */ dynamic units) =>
      js_util.callMethod(this, 'polygonOffset', [factor, units]);

  Object renderbufferStorage(
          int target, int internalformat, int width, int height) =>
      js_util.callMethod(
          this, 'renderbufferStorage', [target, internalformat, width, height]);

  Object sampleCoverage(/* double | NaN */ dynamic value, bool invert) =>
      js_util.callMethod(this, 'sampleCoverage', [value, invert]);

  Object scissor(int x, int y, int width, int height) =>
      js_util.callMethod(this, 'scissor', [x, y, width, height]);

  Object shaderSource(WebGLShader shader, String source) =>
      js_util.callMethod(this, 'shaderSource', [shader, source]);

  Object stencilFunc(int func, int ref, int mask) =>
      js_util.callMethod(this, 'stencilFunc', [func, ref, mask]);

  Object stencilFuncSeparate(int face, int func, int ref, int mask) =>
      js_util.callMethod(this, 'stencilFuncSeparate', [face, func, ref, mask]);

  Object stencilMask(int mask) =>
      js_util.callMethod(this, 'stencilMask', [mask]);

  Object stencilMaskSeparate(int face, int mask) =>
      js_util.callMethod(this, 'stencilMaskSeparate', [face, mask]);

  Object stencilOp(int fail, int zfail, int zpass) =>
      js_util.callMethod(this, 'stencilOp', [fail, zfail, zpass]);

  Object stencilOpSeparate(int face, int fail, int zfail, int zpass) =>
      js_util.callMethod(this, 'stencilOpSeparate', [face, fail, zfail, zpass]);

  Object texParameterf(
          int target, int pname, /* double | NaN */ dynamic param) =>
      js_util.callMethod(this, 'texParameterf', [target, pname, param]);

  Object texParameteri(int target, int pname, int param) =>
      js_util.callMethod(this, 'texParameteri', [target, pname, param]);

  Object uniform1f(
          WebGLUniformLocation? location, /* double | NaN */ dynamic x) =>
      js_util.callMethod(this, 'uniform1f', [location, x]);

  Object uniform2f(WebGLUniformLocation? location, /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y) =>
      js_util.callMethod(this, 'uniform2f', [location, x, y]);

  Object uniform3f(WebGLUniformLocation? location, /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y, /* double | NaN */ dynamic z) =>
      js_util.callMethod(this, 'uniform3f', [location, x, y, z]);

  Object uniform4f(
          WebGLUniformLocation? location,
          /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y,
          /* double | NaN */ dynamic z,
          /* double | NaN */ dynamic w) =>
      js_util.callMethod(this, 'uniform4f', [location, x, y, z, w]);

  Object uniform1i(WebGLUniformLocation? location, int x) =>
      js_util.callMethod(this, 'uniform1i', [location, x]);

  Object uniform2i(WebGLUniformLocation? location, int x, int y) =>
      js_util.callMethod(this, 'uniform2i', [location, x, y]);

  Object uniform3i(WebGLUniformLocation? location, int x, int y, int z) =>
      js_util.callMethod(this, 'uniform3i', [location, x, y, z]);

  Object uniform4i(
          WebGLUniformLocation? location, int x, int y, int z, int w) =>
      js_util.callMethod(this, 'uniform4i', [location, x, y, z, w]);

  Object useProgram(WebGLProgram? program) =>
      js_util.callMethod(this, 'useProgram', [program]);

  Object validateProgram(WebGLProgram program) =>
      js_util.callMethod(this, 'validateProgram', [program]);

  Object vertexAttrib1f(int index, /* double | NaN */ dynamic x) =>
      js_util.callMethod(this, 'vertexAttrib1f', [index, x]);

  Object vertexAttrib2f(int index, /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y) =>
      js_util.callMethod(this, 'vertexAttrib2f', [index, x, y]);

  Object vertexAttrib3f(int index, /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y, /* double | NaN */ dynamic z) =>
      js_util.callMethod(this, 'vertexAttrib3f', [index, x, y, z]);

  Object vertexAttrib4f(
          int index,
          /* double | NaN */ dynamic x,
          /* double | NaN */ dynamic y,
          /* double | NaN */ dynamic z,
          /* double | NaN */ dynamic w) =>
      js_util.callMethod(this, 'vertexAttrib4f', [index, x, y, z, w]);

  Object vertexAttrib1fv(int index, dynamic values) =>
      js_util.callMethod(this, 'vertexAttrib1fv', [index, values]);

  Object vertexAttrib2fv(int index, dynamic values) =>
      js_util.callMethod(this, 'vertexAttrib2fv', [index, values]);

  Object vertexAttrib3fv(int index, dynamic values) =>
      js_util.callMethod(this, 'vertexAttrib3fv', [index, values]);

  Object vertexAttrib4fv(int index, dynamic values) =>
      js_util.callMethod(this, 'vertexAttrib4fv', [index, values]);

  Object vertexAttribPointer(int index, int size, int type, bool normalized,
          int stride, int offset) =>
      js_util.callMethod(this, 'vertexAttribPointer',
          [index, size, type, normalized, stride, offset]);

  Object viewport(int x, int y, int width, int height) =>
      js_util.callMethod(this, 'viewport', [x, y, width, height]);

  Future<Object> makeXRCompatible() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'makeXRCompatible', []));
}

@JS()
@staticInterop
class WebGLRenderingContextOverloads {
  external factory WebGLRenderingContextOverloads();
}

extension PropsWebGLRenderingContextOverloads
    on WebGLRenderingContextOverloads {
  Object bufferData(int target, int size, int usage) =>
      js_util.callMethod(this, 'bufferData', [target, size, usage]);

  Object bufferSubData(int target, int offset, dynamic data) =>
      js_util.callMethod(this, 'bufferSubData', [target, offset, data]);

  Object compressedTexImage2D(int target, int level, int internalformat,
          int width, int height, int border, dynamic data) =>
      js_util.callMethod(this, 'compressedTexImage2D',
          [target, level, internalformat, width, height, border, data]);

  Object compressedTexSubImage2D(int target, int level, int xoffset,
          int yoffset, int width, int height, int format, dynamic data) =>
      js_util.callMethod(this, 'compressedTexSubImage2D',
          [target, level, xoffset, yoffset, width, height, format, data]);

  Object readPixels(int x, int y, int width, int height, int format, int type,
          dynamic pixels) =>
      js_util.callMethod(
          this, 'readPixels', [x, y, width, height, format, type, pixels]);

  Object texImage2D(
          int target, int level, int internalformat, int width, int height,
          [int? border, int? format, int? type, dynamic pixels]) =>
      js_util.callMethod(this, 'texImage2D', [
        target,
        level,
        internalformat,
        width,
        height,
        border,
        format,
        type,
        pixels
      ]);

  Object texSubImage2D(int target, int level, int xoffset, int yoffset,
          int width, int height, [int? format, int? type, dynamic pixels]) =>
      js_util.callMethod(this, 'texSubImage2D', [
        target,
        level,
        xoffset,
        yoffset,
        width,
        height,
        format,
        type,
        pixels
      ]);

  Object uniform1fv(WebGLUniformLocation? location, dynamic v) =>
      js_util.callMethod(this, 'uniform1fv', [location, v]);

  Object uniform2fv(WebGLUniformLocation? location, dynamic v) =>
      js_util.callMethod(this, 'uniform2fv', [location, v]);

  Object uniform3fv(WebGLUniformLocation? location, dynamic v) =>
      js_util.callMethod(this, 'uniform3fv', [location, v]);

  Object uniform4fv(WebGLUniformLocation? location, dynamic v) =>
      js_util.callMethod(this, 'uniform4fv', [location, v]);

  Object uniform1iv(WebGLUniformLocation? location, dynamic v) =>
      js_util.callMethod(this, 'uniform1iv', [location, v]);

  Object uniform2iv(WebGLUniformLocation? location, dynamic v) =>
      js_util.callMethod(this, 'uniform2iv', [location, v]);

  Object uniform3iv(WebGLUniformLocation? location, dynamic v) =>
      js_util.callMethod(this, 'uniform3iv', [location, v]);

  Object uniform4iv(WebGLUniformLocation? location, dynamic v) =>
      js_util.callMethod(this, 'uniform4iv', [location, v]);

  Object uniformMatrix2fv(
          WebGLUniformLocation? location, bool transpose, dynamic value) =>
      js_util
          .callMethod(this, 'uniformMatrix2fv', [location, transpose, value]);

  Object uniformMatrix3fv(
          WebGLUniformLocation? location, bool transpose, dynamic value) =>
      js_util
          .callMethod(this, 'uniformMatrix3fv', [location, transpose, value]);

  Object uniformMatrix4fv(
          WebGLUniformLocation? location, bool transpose, dynamic value) =>
      js_util
          .callMethod(this, 'uniformMatrix4fv', [location, transpose, value]);
}

///  The interface provides an interface to the OpenGL ES 2.0
/// graphics rendering context for the drawing surface of an HTML
/// [<canvas>] element.
///  To get an access to a WebGL context for 2D and/or 3D graphics
/// rendering, call [getContext()] on a [<canvas>] element, supplying
/// "webgl" as the argument:
/// [const canvas = document.getElementById('myCanvas');
/// const gl = canvas.getContext('webgl');
/// ]
///  Once you have the WebGL rendering context for a canvas, you can
/// render within it. The WebGL tutorial has more information,
/// examples, and resources on how to get started with WebGL.
///  If you require a WebGL 2.0 context, see
/// [WebGL2RenderingContext]; this supplies access to an
/// implementation of OpenGL ES 3.0 graphics.
@JS()
@staticInterop
class WebGLRenderingContext
    implements WebGLRenderingContextBase, WebGLRenderingContextOverloads {
  external factory WebGLRenderingContext();
}

///  The WebContextEvent interface is part of the WebGL API and is an
/// interface for an event that is generated in response to a status
/// change to the WebGL rendering context.
///
///
///
///    Event
///
///
///
///
///
///
///
///    WebGLContextEvent
///
///
@JS()
@staticInterop
class WebGLContextEvent implements Event {
  external factory WebGLContextEvent(String type,
      [WebGLContextEventInit? eventInit]);
}

extension PropsWebGLContextEvent on WebGLContextEvent {
  String get statusMessage => js_util.getProperty(this, 'statusMessage');
}

@anonymous
@JS()
@staticInterop
class WebGLContextEventInit implements EventInit {
  external factory WebGLContextEventInit({String? statusMessage = ''});
}

extension PropsWebGLContextEventInit on WebGLContextEventInit {
  String get statusMessage => js_util.getProperty(this, 'statusMessage');
  set statusMessage(String newValue) {
    js_util.setProperty(this, 'statusMessage', newValue);
  }
}
