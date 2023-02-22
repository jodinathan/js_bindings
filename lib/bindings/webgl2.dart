/// WebGL 2.0 Specification
///
/// https://www.khronos.org/registry/webgl/specs/latest/2.0/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webgl2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///  The interface is part of the WebGL 2 API and provides ways to
/// asynchronously query for information. By default, occlusion
/// queries and primitive queries are available.
///  Another kind of queries are disjoint timer queries, which allow
/// you to measure performance and profiling of your GPU. Disjoint
/// timer queries are available with the [EXT_disjoint_timer_query]
/// extension only.
///
///
///
///    WebGLObject
///
///
///
///
///
///    WebGLQuery
///
///
///  When working with objects, the following methods of the
/// [WebGL2RenderingContext] are useful:
///
///  [WebGL2RenderingContext.createQuery()]
///  [WebGL2RenderingContext.deleteQuery()]
///  [WebGL2RenderingContext.isQuery()]
///  [WebGL2RenderingContext.beginQuery()]
///  [WebGL2RenderingContext.endQuery()]
///  [WebGL2RenderingContext.getQuery()]
///  [WebGL2RenderingContext.getQueryParameter()]
///
@experimental
@JS()
@staticInterop
class WebGLQuery implements WebGLObject {
  external factory WebGLQuery();
}

///  The interface is part of the WebGL 2 API and stores sampling
/// parameters for [WebGLTexture] access inside of a shader.
///
///
///
///    WebGLObject
///
///
///
///
///
///    WebGLSampler
///
///
///  When working with objects, the following methods of the
/// [WebGL2RenderingContext] are useful:
///
///  [WebGL2RenderingContext.createSampler()]
///  [WebGL2RenderingContext.deleteSampler()]
///  [WebGL2RenderingContext.isSampler()]
///  [WebGL2RenderingContext.bindSampler()]
///  [WebGL2RenderingContext.getSamplerParameter()]
///
@experimental
@JS()
@staticInterop
class WebGLSampler implements WebGLObject {
  external factory WebGLSampler();
}

///  The interface is part of the WebGL 2 API and is used to
/// synchronize activities between the GPU and the application.
///
///
///
///    WebGLObject
///
///
///
///
///
///    WebGLSync
///
///
///  When working with objects, the following methods of the
/// [WebGL2RenderingContext] are useful:
///
///  [WebGL2RenderingContext.fenceSync()]
///  [WebGL2RenderingContext.deleteSync()]
///  [WebGL2RenderingContext.isSync()]
///  [WebGL2RenderingContext.clientWaitSync()]
///  [WebGL2RenderingContext.waitSync()]
///  [WebGL2RenderingContext.getSyncParameter()]
///
@experimental
@JS()
@staticInterop
class WebGLSync implements WebGLObject {
  external factory WebGLSync();
}

///  The interface is part of the WebGL 2 API and enables transform
/// feedback, which is the process of capturing primitives generated
/// by vertex processing. It allows to preserve the post-transform
/// rendering state of an object and resubmit this data multiple
/// times.
///
///
///
///    WebGLObject
///
///
///
///
///
///    WebGLTransformFeedback
///
///
///  When working with objects, the following methods of the
/// [WebGL2RenderingContext] are useful:
///
///  [WebGL2RenderingContext.createTransformFeedback()]
///  [WebGL2RenderingContext.deleteTransformFeedback()]
///  [WebGL2RenderingContext.isTransformFeedback()]
///  [WebGL2RenderingContext.bindTransformFeedback()]
///  [WebGL2RenderingContext.beginTransformFeedback()]
///  [WebGL2RenderingContext.endTransformFeedback()]
///  [WebGL2RenderingContext.pauseTransformFeedback()]
///  [WebGL2RenderingContext.resumeTransformFeedback()]
///  [WebGL2RenderingContext.transformFeedbackVaryings()]
///  [WebGL2RenderingContext.getTransformFeedbackVarying()]
///
@JS()
@staticInterop
class WebGLTransformFeedback implements WebGLObject {
  external factory WebGLTransformFeedback();
}

///  The interface is part of the WebGL 2 API, represents vertex
/// array objects (VAOs) pointing to vertex array data, and provides
/// names for different sets of vertex data.
///
///
///
///    WebGLObject
///
///
///
///
///
///    WebGLVertexArrayObject
///
///
/// When working with objects, the following methods are useful:
///
///  [WebGL2RenderingContext.createVertexArray()]
///  [WebGL2RenderingContext.deleteVertexArray()]
///  [WebGL2RenderingContext.isVertexArray()]
///  [WebGL2RenderingContext.bindVertexArray()]
///   Note: The [OES_vertex_array_object] extension allows you to use
/// vertex array objects in a WebGL 1 context.
///
@JS()
@staticInterop
class WebGLVertexArrayObject implements WebGLObject {
  external factory WebGLVertexArrayObject();
}

@JS()
@staticInterop
class WebGL2RenderingContextBase {
  @JS('READ_BUFFER')
  external static int get readBuffer;

  @JS('UNPACK_ROW_LENGTH')
  external static int get unpackRowLength;

  @JS('UNPACK_SKIP_ROWS')
  external static int get unpackSkipRows;

  @JS('UNPACK_SKIP_PIXELS')
  external static int get unpackSkipPixels;

  @JS('PACK_ROW_LENGTH')
  external static int get packRowLength;

  @JS('PACK_SKIP_ROWS')
  external static int get packSkipRows;

  @JS('PACK_SKIP_PIXELS')
  external static int get packSkipPixels;

  @JS('COLOR')
  external static int get color;

  @JS('DEPTH')
  external static int get depth;

  @JS('STENCIL')
  external static int get stencil;

  @JS('RED')
  external static int get red;

  @JS('RGB8')
  external static int get rgb8;

  @JS('RGBA8')
  external static int get rgba8;

  @JS('RGB10_A2')
  external static int get rgb10A2;

  @JS('TEXTURE_BINDING_3D')
  external static int get textureBinding3d;

  @JS('UNPACK_SKIP_IMAGES')
  external static int get unpackSkipImages;

  @JS('UNPACK_IMAGE_HEIGHT')
  external static int get unpackImageHeight;

  @JS('TEXTURE_3D')
  external static int get texture3d;

  @JS('TEXTURE_WRAP_R')
  external static int get textureWrapR;

  @JS('MAX_3D_TEXTURE_SIZE')
  external static int get max3dTextureSize;

  @JS('UNSIGNED_INT_2_10_10_10_REV')
  external static int get unsignedInt2101010Rev;

  @JS('MAX_ELEMENTS_VERTICES')
  external static int get maxElementsVertices;

  @JS('MAX_ELEMENTS_INDICES')
  external static int get maxElementsIndices;

  @JS('TEXTURE_MIN_LOD')
  external static int get textureMinLod;

  @JS('TEXTURE_MAX_LOD')
  external static int get textureMaxLod;

  @JS('TEXTURE_BASE_LEVEL')
  external static int get textureBaseLevel;

  @JS('TEXTURE_MAX_LEVEL')
  external static int get textureMaxLevel;

  @JS('MIN')
  external static int get min;

  @JS('MAX')
  external static int get max;

  @JS('DEPTH_COMPONENT24')
  external static int get depthComponent24;

  @JS('MAX_TEXTURE_LOD_BIAS')
  external static int get maxTextureLodBias;

  @JS('TEXTURE_COMPARE_MODE')
  external static int get textureCompareMode;

  @JS('TEXTURE_COMPARE_FUNC')
  external static int get textureCompareFunc;

  @JS('CURRENT_QUERY')
  external static int get currentQuery;

  @JS('QUERY_RESULT')
  external static int get queryResult;

  @JS('QUERY_RESULT_AVAILABLE')
  external static int get queryResultAvailable;

  @JS('STREAM_READ')
  external static int get streamRead;

  @JS('STREAM_COPY')
  external static int get streamCopy;

  @JS('STATIC_READ')
  external static int get staticRead;

  @JS('STATIC_COPY')
  external static int get staticCopy;

  @JS('DYNAMIC_READ')
  external static int get dynamicRead;

  @JS('DYNAMIC_COPY')
  external static int get dynamicCopy;

  @JS('MAX_DRAW_BUFFERS')
  external static int get maxDrawBuffers;

  @JS('DRAW_BUFFER0')
  external static int get drawBuffer0;

  @JS('DRAW_BUFFER1')
  external static int get drawBuffer1;

  @JS('DRAW_BUFFER2')
  external static int get drawBuffer2;

  @JS('DRAW_BUFFER3')
  external static int get drawBuffer3;

  @JS('DRAW_BUFFER4')
  external static int get drawBuffer4;

  @JS('DRAW_BUFFER5')
  external static int get drawBuffer5;

  @JS('DRAW_BUFFER6')
  external static int get drawBuffer6;

  @JS('DRAW_BUFFER7')
  external static int get drawBuffer7;

  @JS('DRAW_BUFFER8')
  external static int get drawBuffer8;

  @JS('DRAW_BUFFER9')
  external static int get drawBuffer9;

  @JS('DRAW_BUFFER10')
  external static int get drawBuffer10;

  @JS('DRAW_BUFFER11')
  external static int get drawBuffer11;

  @JS('DRAW_BUFFER12')
  external static int get drawBuffer12;

  @JS('DRAW_BUFFER13')
  external static int get drawBuffer13;

  @JS('DRAW_BUFFER14')
  external static int get drawBuffer14;

  @JS('DRAW_BUFFER15')
  external static int get drawBuffer15;

  @JS('MAX_FRAGMENT_UNIFORM_COMPONENTS')
  external static int get maxFragmentUniformComponents;

  @JS('MAX_VERTEX_UNIFORM_COMPONENTS')
  external static int get maxVertexUniformComponents;

  @JS('SAMPLER_3D')
  external static int get sampler3d;

  @JS('SAMPLER_2D_SHADOW')
  external static int get sampler2dShadow;

  @JS('FRAGMENT_SHADER_DERIVATIVE_HINT')
  external static int get fragmentShaderDerivativeHint;

  @JS('PIXEL_PACK_BUFFER')
  external static int get pixelPackBuffer;

  @JS('PIXEL_UNPACK_BUFFER')
  external static int get pixelUnpackBuffer;

  @JS('PIXEL_PACK_BUFFER_BINDING')
  external static int get pixelPackBufferBinding;

  @JS('PIXEL_UNPACK_BUFFER_BINDING')
  external static int get pixelUnpackBufferBinding;

  @JS('FLOAT_MAT2x3')
  external static int get floatMat2x3;

  @JS('FLOAT_MAT2x4')
  external static int get floatMat2x4;

  @JS('FLOAT_MAT3x2')
  external static int get floatMat3x2;

  @JS('FLOAT_MAT3x4')
  external static int get floatMat3x4;

  @JS('FLOAT_MAT4x2')
  external static int get floatMat4x2;

  @JS('FLOAT_MAT4x3')
  external static int get floatMat4x3;

  @JS('SRGB')
  external static int get srgb;

  @JS('SRGB8')
  external static int get srgb8;

  @JS('SRGB8_ALPHA8')
  external static int get srgb8Alpha8;

  @JS('COMPARE_REF_TO_TEXTURE')
  external static int get compareRefToTexture;

  @JS('RGBA32F')
  external static int get rgba32f;

  @JS('RGB32F')
  external static int get rgb32f;

  @JS('RGBA16F')
  external static int get rgba16f;

  @JS('RGB16F')
  external static int get rgb16f;

  @JS('VERTEX_ATTRIB_ARRAY_INTEGER')
  external static int get vertexAttribArrayInteger;

  @JS('MAX_ARRAY_TEXTURE_LAYERS')
  external static int get maxArrayTextureLayers;

  @JS('MIN_PROGRAM_TEXEL_OFFSET')
  external static int get minProgramTexelOffset;

  @JS('MAX_PROGRAM_TEXEL_OFFSET')
  external static int get maxProgramTexelOffset;

  @JS('MAX_VARYING_COMPONENTS')
  external static int get maxVaryingComponents;

  @JS('TEXTURE_2D_ARRAY')
  external static int get texture2dArray;

  @JS('TEXTURE_BINDING_2D_ARRAY')
  external static int get textureBinding2dArray;

  @JS('R11F_G11F_B10F')
  external static int get r11fG11fB10f;

  @JS('UNSIGNED_INT_10F_11F_11F_REV')
  external static int get unsignedInt10f11f11fRev;

  @JS('RGB9_E5')
  external static int get rgb9E5;

  @JS('UNSIGNED_INT_5_9_9_9_REV')
  external static int get unsignedInt5999Rev;

  @JS('TRANSFORM_FEEDBACK_BUFFER_MODE')
  external static int get transformFeedbackBufferMode;

  @JS('MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS')
  external static int get maxTransformFeedbackSeparateComponents;

  @JS('TRANSFORM_FEEDBACK_VARYINGS')
  external static int get transformFeedbackVaryings;

  @JS('TRANSFORM_FEEDBACK_BUFFER_START')
  external static int get transformFeedbackBufferStart;

  @JS('TRANSFORM_FEEDBACK_BUFFER_SIZE')
  external static int get transformFeedbackBufferSize;

  @JS('TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN')
  external static int get transformFeedbackPrimitivesWritten;

  @JS('RASTERIZER_DISCARD')
  external static int get rasterizerDiscard;

  @JS('MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS')
  external static int get maxTransformFeedbackInterleavedComponents;

  @JS('MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS')
  external static int get maxTransformFeedbackSeparateAttribs;

  @JS('INTERLEAVED_ATTRIBS')
  external static int get interleavedAttribs;

  @JS('SEPARATE_ATTRIBS')
  external static int get separateAttribs;

  @JS('TRANSFORM_FEEDBACK_BUFFER')
  external static int get transformFeedbackBuffer;

  @JS('TRANSFORM_FEEDBACK_BUFFER_BINDING')
  external static int get transformFeedbackBufferBinding;

  @JS('RGBA32UI')
  external static int get rgba32ui;

  @JS('RGB32UI')
  external static int get rgb32ui;

  @JS('RGBA16UI')
  external static int get rgba16ui;

  @JS('RGB16UI')
  external static int get rgb16ui;

  @JS('RGBA8UI')
  external static int get rgba8ui;

  @JS('RGB8UI')
  external static int get rgb8ui;

  @JS('RGBA32I')
  external static int get rgba32i;

  @JS('RGB32I')
  external static int get rgb32i;

  @JS('RGBA16I')
  external static int get rgba16i;

  @JS('RGB16I')
  external static int get rgb16i;

  @JS('RGBA8I')
  external static int get rgba8i;

  @JS('RGB8I')
  external static int get rgb8i;

  @JS('RED_INTEGER')
  external static int get redInteger;

  @JS('RGB_INTEGER')
  external static int get rgbInteger;

  @JS('RGBA_INTEGER')
  external static int get rgbaInteger;

  @JS('SAMPLER_2D_ARRAY')
  external static int get sampler2dArray;

  @JS('SAMPLER_2D_ARRAY_SHADOW')
  external static int get sampler2dArrayShadow;

  @JS('SAMPLER_CUBE_SHADOW')
  external static int get samplerCubeShadow;

  @JS('UNSIGNED_INT_VEC2')
  external static int get unsignedIntVec2;

  @JS('UNSIGNED_INT_VEC3')
  external static int get unsignedIntVec3;

  @JS('UNSIGNED_INT_VEC4')
  external static int get unsignedIntVec4;

  @JS('INT_SAMPLER_2D')
  external static int get intSampler2d;

  @JS('INT_SAMPLER_3D')
  external static int get intSampler3d;

  @JS('INT_SAMPLER_CUBE')
  external static int get intSamplerCube;

  @JS('INT_SAMPLER_2D_ARRAY')
  external static int get intSampler2dArray;

  @JS('UNSIGNED_INT_SAMPLER_2D')
  external static int get unsignedIntSampler2d;

  @JS('UNSIGNED_INT_SAMPLER_3D')
  external static int get unsignedIntSampler3d;

  @JS('UNSIGNED_INT_SAMPLER_CUBE')
  external static int get unsignedIntSamplerCube;

  @JS('UNSIGNED_INT_SAMPLER_2D_ARRAY')
  external static int get unsignedIntSampler2dArray;

  @JS('DEPTH_COMPONENT32F')
  external static int get depthComponent32f;

  @JS('DEPTH32F_STENCIL8')
  external static int get depth32fStencil8;

  @JS('FLOAT_32_UNSIGNED_INT_24_8_REV')
  external static int get float32UnsignedInt248Rev;

  @JS('FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING')
  external static int get framebufferAttachmentColorEncoding;

  @JS('FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE')
  external static int get framebufferAttachmentComponentType;

  @JS('FRAMEBUFFER_ATTACHMENT_RED_SIZE')
  external static int get framebufferAttachmentRedSize;

  @JS('FRAMEBUFFER_ATTACHMENT_GREEN_SIZE')
  external static int get framebufferAttachmentGreenSize;

  @JS('FRAMEBUFFER_ATTACHMENT_BLUE_SIZE')
  external static int get framebufferAttachmentBlueSize;

  @JS('FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE')
  external static int get framebufferAttachmentAlphaSize;

  @JS('FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE')
  external static int get framebufferAttachmentDepthSize;

  @JS('FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE')
  external static int get framebufferAttachmentStencilSize;

  @JS('FRAMEBUFFER_DEFAULT')
  external static int get framebufferDefault;

  @JS('UNSIGNED_INT_24_8')
  external static int get unsignedInt248;

  @JS('DEPTH24_STENCIL8')
  external static int get depth24Stencil8;

  @JS('UNSIGNED_NORMALIZED')
  external static int get unsignedNormalized;

  @JS('DRAW_FRAMEBUFFER_BINDING')
  external static int get drawFramebufferBinding;

  @JS('READ_FRAMEBUFFER')
  external static int get readFramebuffer;

  @JS('DRAW_FRAMEBUFFER')
  external static int get drawFramebuffer;

  @JS('READ_FRAMEBUFFER_BINDING')
  external static int get readFramebufferBinding;

  @JS('RENDERBUFFER_SAMPLES')
  external static int get renderbufferSamples;

  @JS('FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER')
  external static int get framebufferAttachmentTextureLayer;

  @JS('MAX_COLOR_ATTACHMENTS')
  external static int get maxColorAttachments;

  @JS('COLOR_ATTACHMENT1')
  external static int get colorAttachment1;

  @JS('COLOR_ATTACHMENT2')
  external static int get colorAttachment2;

  @JS('COLOR_ATTACHMENT3')
  external static int get colorAttachment3;

  @JS('COLOR_ATTACHMENT4')
  external static int get colorAttachment4;

  @JS('COLOR_ATTACHMENT5')
  external static int get colorAttachment5;

  @JS('COLOR_ATTACHMENT6')
  external static int get colorAttachment6;

  @JS('COLOR_ATTACHMENT7')
  external static int get colorAttachment7;

  @JS('COLOR_ATTACHMENT8')
  external static int get colorAttachment8;

  @JS('COLOR_ATTACHMENT9')
  external static int get colorAttachment9;

  @JS('COLOR_ATTACHMENT10')
  external static int get colorAttachment10;

  @JS('COLOR_ATTACHMENT11')
  external static int get colorAttachment11;

  @JS('COLOR_ATTACHMENT12')
  external static int get colorAttachment12;

  @JS('COLOR_ATTACHMENT13')
  external static int get colorAttachment13;

  @JS('COLOR_ATTACHMENT14')
  external static int get colorAttachment14;

  @JS('COLOR_ATTACHMENT15')
  external static int get colorAttachment15;

  @JS('FRAMEBUFFER_INCOMPLETE_MULTISAMPLE')
  external static int get framebufferIncompleteMultisample;

  @JS('MAX_SAMPLES')
  external static int get maxSamples;

  @JS('HALF_FLOAT')
  external static int get halfFloat;

  @JS('RG')
  external static int get rg;

  @JS('RG_INTEGER')
  external static int get rgInteger;

  @JS('R8')
  external static int get r8;

  @JS('RG8')
  external static int get rg8;

  @JS('R16F')
  external static int get r16f;

  @JS('R32F')
  external static int get r32f;

  @JS('RG16F')
  external static int get rg16f;

  @JS('RG32F')
  external static int get rg32f;

  @JS('R8I')
  external static int get r8i;

  @JS('R8UI')
  external static int get r8ui;

  @JS('R16I')
  external static int get r16i;

  @JS('R16UI')
  external static int get r16ui;

  @JS('R32I')
  external static int get r32i;

  @JS('R32UI')
  external static int get r32ui;

  @JS('RG8I')
  external static int get rg8i;

  @JS('RG8UI')
  external static int get rg8ui;

  @JS('RG16I')
  external static int get rg16i;

  @JS('RG16UI')
  external static int get rg16ui;

  @JS('RG32I')
  external static int get rg32i;

  @JS('RG32UI')
  external static int get rg32ui;

  @JS('VERTEX_ARRAY_BINDING')
  external static int get vertexArrayBinding;

  @JS('R8_SNORM')
  external static int get r8Snorm;

  @JS('RG8_SNORM')
  external static int get rg8Snorm;

  @JS('RGB8_SNORM')
  external static int get rgb8Snorm;

  @JS('RGBA8_SNORM')
  external static int get rgba8Snorm;

  @JS('SIGNED_NORMALIZED')
  external static int get signedNormalized;

  @JS('COPY_READ_BUFFER')
  external static int get copyReadBuffer;

  @JS('COPY_WRITE_BUFFER')
  external static int get copyWriteBuffer;

  @JS('COPY_READ_BUFFER_BINDING')
  external static int get copyReadBufferBinding;

  @JS('COPY_WRITE_BUFFER_BINDING')
  external static int get copyWriteBufferBinding;

  @JS('UNIFORM_BUFFER')
  external static int get uniformBuffer;

  @JS('UNIFORM_BUFFER_BINDING')
  external static int get uniformBufferBinding;

  @JS('UNIFORM_BUFFER_START')
  external static int get uniformBufferStart;

  @JS('UNIFORM_BUFFER_SIZE')
  external static int get uniformBufferSize;

  @JS('MAX_VERTEX_UNIFORM_BLOCKS')
  external static int get maxVertexUniformBlocks;

  @JS('MAX_FRAGMENT_UNIFORM_BLOCKS')
  external static int get maxFragmentUniformBlocks;

  @JS('MAX_COMBINED_UNIFORM_BLOCKS')
  external static int get maxCombinedUniformBlocks;

  @JS('MAX_UNIFORM_BUFFER_BINDINGS')
  external static int get maxUniformBufferBindings;

  @JS('MAX_UNIFORM_BLOCK_SIZE')
  external static int get maxUniformBlockSize;

  @JS('MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS')
  external static int get maxCombinedVertexUniformComponents;

  @JS('MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS')
  external static int get maxCombinedFragmentUniformComponents;

  @JS('UNIFORM_BUFFER_OFFSET_ALIGNMENT')
  external static int get uniformBufferOffsetAlignment;

  @JS('ACTIVE_UNIFORM_BLOCKS')
  external static int get activeUniformBlocks;

  @JS('UNIFORM_TYPE')
  external static int get uniformType;

  @JS('UNIFORM_SIZE')
  external static int get uniformSize;

  @JS('UNIFORM_BLOCK_INDEX')
  external static int get uniformBlockIndex;

  @JS('UNIFORM_OFFSET')
  external static int get uniformOffset;

  @JS('UNIFORM_ARRAY_STRIDE')
  external static int get uniformArrayStride;

  @JS('UNIFORM_MATRIX_STRIDE')
  external static int get uniformMatrixStride;

  @JS('UNIFORM_IS_ROW_MAJOR')
  external static int get uniformIsRowMajor;

  @JS('UNIFORM_BLOCK_BINDING')
  external static int get uniformBlockBinding;

  @JS('UNIFORM_BLOCK_DATA_SIZE')
  external static int get uniformBlockDataSize;

  @JS('UNIFORM_BLOCK_ACTIVE_UNIFORMS')
  external static int get uniformBlockActiveUniforms;

  @JS('UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES')
  external static int get uniformBlockActiveUniformIndices;

  @JS('UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER')
  external static int get uniformBlockReferencedByVertexShader;

  @JS('UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER')
  external static int get uniformBlockReferencedByFragmentShader;

  @JS('INVALID_INDEX')
  external static int get invalidIndex;

  @JS('MAX_VERTEX_OUTPUT_COMPONENTS')
  external static int get maxVertexOutputComponents;

  @JS('MAX_FRAGMENT_INPUT_COMPONENTS')
  external static int get maxFragmentInputComponents;

  @JS('MAX_SERVER_WAIT_TIMEOUT')
  external static int get maxServerWaitTimeout;

  @JS('OBJECT_TYPE')
  external static int get objectType;

  @JS('SYNC_CONDITION')
  external static int get syncCondition;

  @JS('SYNC_STATUS')
  external static int get syncStatus;

  @JS('SYNC_FLAGS')
  external static int get syncFlags;

  @JS('SYNC_FENCE')
  external static int get syncFence;

  @JS('SYNC_GPU_COMMANDS_COMPLETE')
  external static int get syncGpuCommandsComplete;

  @JS('UNSIGNALED')
  external static int get unsignaled;

  @JS('SIGNALED')
  external static int get signaled;

  @JS('ALREADY_SIGNALED')
  external static int get alreadySignaled;

  @JS('TIMEOUT_EXPIRED')
  external static int get timeoutExpired;

  @JS('CONDITION_SATISFIED')
  external static int get conditionSatisfied;

  @JS('WAIT_FAILED')
  external static int get waitFailed;

  @JS('SYNC_FLUSH_COMMANDS_BIT')
  external static int get syncFlushCommandsBit;

  @JS('VERTEX_ATTRIB_ARRAY_DIVISOR')
  external static int get vertexAttribArrayDivisor;

  @JS('ANY_SAMPLES_PASSED')
  external static int get anySamplesPassed;

  @JS('ANY_SAMPLES_PASSED_CONSERVATIVE')
  external static int get anySamplesPassedConservative;

  @JS('SAMPLER_BINDING')
  external static int get samplerBinding;

  @JS('RGB10_A2UI')
  external static int get rgb10A2ui;

  @JS('INT_2_10_10_10_REV')
  external static int get int2101010Rev;

  @JS('TRANSFORM_FEEDBACK')
  external static int get transformFeedback;

  @JS('TRANSFORM_FEEDBACK_PAUSED')
  external static int get transformFeedbackPaused;

  @JS('TRANSFORM_FEEDBACK_ACTIVE')
  external static int get transformFeedbackActive;

  @JS('TRANSFORM_FEEDBACK_BINDING')
  external static int get transformFeedbackBinding;

  @JS('TEXTURE_IMMUTABLE_FORMAT')
  external static int get textureImmutableFormat;

  @JS('MAX_ELEMENT_INDEX')
  external static int get maxElementIndex;

  @JS('TEXTURE_IMMUTABLE_LEVELS')
  external static int get textureImmutableLevels;

  @JS('TIMEOUT_IGNORED')
  external static int get timeoutIgnored;

  @JS('MAX_CLIENT_WAIT_TIMEOUT_WEBGL')
  external static int get maxClientWaitTimeoutWebgl;

  external factory WebGL2RenderingContextBase();
}

extension PropsWebGL2RenderingContextBase on WebGL2RenderingContextBase {
  void copyBufferSubData(int readTarget, int writeTarget, int readOffset,
          int writeOffset, int size) =>
      js_util.callMethod(this, 'copyBufferSubData',
          [readTarget, writeTarget, readOffset, writeOffset, size]);

  void getBufferSubData(int target, int srcByteOffset, dynamic dstBuffer,
          [int? dstOffset = 0, int? length = 0]) =>
      js_util.callMethod(this, 'getBufferSubData',
          [target, srcByteOffset, dstBuffer, dstOffset, length]);

  void blitFramebuffer(int srcX0, int srcY0, int srcX1, int srcY1, int dstX0,
          int dstY0, int dstX1, int dstY1, int mask, int filter) =>
      js_util.callMethod(this, 'blitFramebuffer', [
        srcX0,
        srcY0,
        srcX1,
        srcY1,
        dstX0,
        dstY0,
        dstX1,
        dstY1,
        mask,
        filter
      ]);

  void framebufferTextureLayer(int target, int attachment,
          WebGLTexture? texture, int level, int layer) =>
      js_util.callMethod(this, 'framebufferTextureLayer',
          [target, attachment, texture, level, layer]);

  void invalidateFramebuffer(int target, Iterable<int> attachments) =>
      js_util.callMethod(this, 'invalidateFramebuffer', [target, attachments]);

  void invalidateSubFramebuffer(int target, Iterable<int> attachments, int x,
          int y, int width, int height) =>
      js_util.callMethod(this, 'invalidateSubFramebuffer',
          [target, attachments, x, y, width, height]);

  void readBuffer(int src) => js_util.callMethod(this, 'readBuffer', [src]);

  dynamic getInternalformatParameter(
          int target, int internalformat, int pname) =>
      js_util.callMethod(
          this, 'getInternalformatParameter', [target, internalformat, pname]);

  void renderbufferStorageMultisample(
          int target, int samples, int internalformat, int width, int height) =>
      js_util.callMethod(this, 'renderbufferStorageMultisample',
          [target, samples, internalformat, width, height]);

  void texStorage2D(
          int target, int levels, int internalformat, int width, int height) =>
      js_util.callMethod(this, 'texStorage2D',
          [target, levels, internalformat, width, height]);

  void texStorage3D(int target, int levels, int internalformat, int width,
          int height, int depth) =>
      js_util.callMethod(this, 'texStorage3D',
          [target, levels, internalformat, width, height, depth]);

  void texImage3D(int target, int level, int internalformat, int width,
          int height, int depth, int border, int format, int type,
          [dynamic srcData, int? srcOffset]) =>
      js_util.callMethod(this, 'texImage3D', [
        target,
        level,
        internalformat,
        width,
        height,
        depth,
        border,
        format,
        type,
        srcData,
        srcOffset
      ]);

  void texSubImage3D(int target, int level, int xoffset, int yoffset,
          int zoffset, int width, int height, int depth, int format, int type,
          [dynamic srcData, int? srcOffset = 0]) =>
      js_util.callMethod(this, 'texSubImage3D', [
        target,
        level,
        xoffset,
        yoffset,
        zoffset,
        width,
        height,
        depth,
        format,
        type,
        srcData,
        srcOffset
      ]);

  void copyTexSubImage3D(int target, int level, int xoffset, int yoffset,
          int zoffset, int x, int y, int width, int height) =>
      js_util.callMethod(this, 'copyTexSubImage3D',
          [target, level, xoffset, yoffset, zoffset, x, y, width, height]);

  void compressedTexImage3D(int target, int level, int internalformat,
          int width, int height, int depth, int border, dynamic srcData,
          [int? srcOffset = 0, int? srcLengthOverride = 0]) =>
      js_util.callMethod(this, 'compressedTexImage3D', [
        target,
        level,
        internalformat,
        width,
        height,
        depth,
        border,
        srcData,
        srcOffset,
        srcLengthOverride
      ]);

  void compressedTexSubImage3D(
          int target,
          int level,
          int xoffset,
          int yoffset,
          int zoffset,
          int width,
          int height,
          int depth,
          int format,
          dynamic srcData,
          [int? srcOffset = 0,
          int? srcLengthOverride = 0]) =>
      js_util.callMethod(this, 'compressedTexSubImage3D', [
        target,
        level,
        xoffset,
        yoffset,
        zoffset,
        width,
        height,
        depth,
        format,
        srcData,
        srcOffset,
        srcLengthOverride
      ]);

  int getFragDataLocation(WebGLProgram program, String name) =>
      js_util.callMethod(this, 'getFragDataLocation', [program, name]);

  void uniform1ui(WebGLUniformLocation? location, int v0) =>
      js_util.callMethod(this, 'uniform1ui', [location, v0]);

  void uniform2ui(WebGLUniformLocation? location, int v0, int v1) =>
      js_util.callMethod(this, 'uniform2ui', [location, v0, v1]);

  void uniform3ui(WebGLUniformLocation? location, int v0, int v1, int v2) =>
      js_util.callMethod(this, 'uniform3ui', [location, v0, v1, v2]);

  void uniform4ui(
          WebGLUniformLocation? location, int v0, int v1, int v2, int v3) =>
      js_util.callMethod(this, 'uniform4ui', [location, v0, v1, v2, v3]);

  void uniform1uiv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform1uiv', [location, data, srcOffset, srcLength]);

  void uniform2uiv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform2uiv', [location, data, srcOffset, srcLength]);

  void uniform3uiv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform3uiv', [location, data, srcOffset, srcLength]);

  void uniform4uiv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform4uiv', [location, data, srcOffset, srcLength]);

  void uniformMatrix3x2fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix3x2fv',
          [location, transpose, data, srcOffset, srcLength]);

  void uniformMatrix4x2fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix4x2fv',
          [location, transpose, data, srcOffset, srcLength]);

  void uniformMatrix2x3fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix2x3fv',
          [location, transpose, data, srcOffset, srcLength]);

  void uniformMatrix4x3fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix4x3fv',
          [location, transpose, data, srcOffset, srcLength]);

  void uniformMatrix2x4fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix2x4fv',
          [location, transpose, data, srcOffset, srcLength]);

  void uniformMatrix3x4fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix3x4fv',
          [location, transpose, data, srcOffset, srcLength]);

  void vertexAttribI4i(int index, int x, int y, int z, int w) =>
      js_util.callMethod(this, 'vertexAttribI4i', [index, x, y, z, w]);

  void vertexAttribI4iv(int index, dynamic values) =>
      js_util.callMethod(this, 'vertexAttribI4iv', [index, values]);

  void vertexAttribI4ui(int index, int x, int y, int z, int w) =>
      js_util.callMethod(this, 'vertexAttribI4ui', [index, x, y, z, w]);

  void vertexAttribI4uiv(int index, dynamic values) =>
      js_util.callMethod(this, 'vertexAttribI4uiv', [index, values]);

  void vertexAttribIPointer(
          int index, int size, int type, int stride, int offset) =>
      js_util.callMethod(
          this, 'vertexAttribIPointer', [index, size, type, stride, offset]);

  void vertexAttribDivisor(int index, int divisor) =>
      js_util.callMethod(this, 'vertexAttribDivisor', [index, divisor]);

  void drawArraysInstanced(int mode, int first, int count, int instanceCount) =>
      js_util.callMethod(
          this, 'drawArraysInstanced', [mode, first, count, instanceCount]);

  void drawElementsInstanced(
          int mode, int count, int type, int offset, int instanceCount) =>
      js_util.callMethod(this, 'drawElementsInstanced',
          [mode, count, type, offset, instanceCount]);

  void drawRangeElements(
          int mode, int start, int end, int count, int type, int offset) =>
      js_util.callMethod(
          this, 'drawRangeElements', [mode, start, end, count, type, offset]);

  void drawBuffers(Iterable<int> buffers) =>
      js_util.callMethod(this, 'drawBuffers', [buffers]);

  void clearBufferfv(int buffer, int drawbuffer, dynamic values,
          [int? srcOffset = 0]) =>
      js_util.callMethod(
          this, 'clearBufferfv', [buffer, drawbuffer, values, srcOffset]);

  void clearBufferiv(int buffer, int drawbuffer, dynamic values,
          [int? srcOffset = 0]) =>
      js_util.callMethod(
          this, 'clearBufferiv', [buffer, drawbuffer, values, srcOffset]);

  void clearBufferuiv(int buffer, int drawbuffer, dynamic values,
          [int? srcOffset = 0]) =>
      js_util.callMethod(
          this, 'clearBufferuiv', [buffer, drawbuffer, values, srcOffset]);

  void clearBufferfi(int buffer, int drawbuffer,
          /* double | NaN */ dynamic depth, int stencil) =>
      js_util.callMethod(
          this, 'clearBufferfi', [buffer, drawbuffer, depth, stencil]);

  WebGLQuery? createQuery() => js_util.callMethod(this, 'createQuery', []);

  void deleteQuery(WebGLQuery? query) =>
      js_util.callMethod(this, 'deleteQuery', [query]);

  bool isQuery(WebGLQuery? query) =>
      js_util.callMethod(this, 'isQuery', [query]);

  void beginQuery(int target, WebGLQuery query) =>
      js_util.callMethod(this, 'beginQuery', [target, query]);

  void endQuery(int target) => js_util.callMethod(this, 'endQuery', [target]);

  WebGLQuery? getQuery(int target, int pname) =>
      js_util.callMethod(this, 'getQuery', [target, pname]);

  dynamic getQueryParameter(WebGLQuery query, int pname) =>
      js_util.callMethod(this, 'getQueryParameter', [query, pname]);

  WebGLSampler? createSampler() =>
      js_util.callMethod(this, 'createSampler', []);

  void deleteSampler(WebGLSampler? sampler) =>
      js_util.callMethod(this, 'deleteSampler', [sampler]);

  bool isSampler(WebGLSampler? sampler) =>
      js_util.callMethod(this, 'isSampler', [sampler]);

  void bindSampler(int unit, WebGLSampler? sampler) =>
      js_util.callMethod(this, 'bindSampler', [unit, sampler]);

  void samplerParameteri(WebGLSampler sampler, int pname, int param) =>
      js_util.callMethod(this, 'samplerParameteri', [sampler, pname, param]);

  void samplerParameterf(
          WebGLSampler sampler, int pname, /* double | NaN */ dynamic param) =>
      js_util.callMethod(this, 'samplerParameterf', [sampler, pname, param]);

  dynamic getSamplerParameter(WebGLSampler sampler, int pname) =>
      js_util.callMethod(this, 'getSamplerParameter', [sampler, pname]);

  WebGLSync? fenceSync(int condition, int flags) =>
      js_util.callMethod(this, 'fenceSync', [condition, flags]);

  bool isSync(WebGLSync? sync) => js_util.callMethod(this, 'isSync', [sync]);

  void deleteSync(WebGLSync? sync) =>
      js_util.callMethod(this, 'deleteSync', [sync]);

  int clientWaitSync(WebGLSync sync, int flags, int timeout) =>
      js_util.callMethod(this, 'clientWaitSync', [sync, flags, timeout]);

  void waitSync(WebGLSync sync, int flags, int timeout) =>
      js_util.callMethod(this, 'waitSync', [sync, flags, timeout]);

  dynamic getSyncParameter(WebGLSync sync, int pname) =>
      js_util.callMethod(this, 'getSyncParameter', [sync, pname]);

  WebGLTransformFeedback? createTransformFeedback() =>
      js_util.callMethod(this, 'createTransformFeedback', []);

  void deleteTransformFeedback(WebGLTransformFeedback? tf) =>
      js_util.callMethod(this, 'deleteTransformFeedback', [tf]);

  bool isTransformFeedback(WebGLTransformFeedback? tf) =>
      js_util.callMethod(this, 'isTransformFeedback', [tf]);

  void bindTransformFeedback(int target, WebGLTransformFeedback? tf) =>
      js_util.callMethod(this, 'bindTransformFeedback', [target, tf]);

  void beginTransformFeedback(int primitiveMode) =>
      js_util.callMethod(this, 'beginTransformFeedback', [primitiveMode]);

  void endTransformFeedback() =>
      js_util.callMethod(this, 'endTransformFeedback', []);

  void transformFeedbackVaryings(
          WebGLProgram program, Iterable<String> varyings, int bufferMode) =>
      js_util.callMethod(
          this, 'transformFeedbackVaryings', [program, varyings, bufferMode]);

  WebGLActiveInfo? getTransformFeedbackVarying(
          WebGLProgram program, int index) =>
      js_util.callMethod(this, 'getTransformFeedbackVarying', [program, index]);

  void pauseTransformFeedback() =>
      js_util.callMethod(this, 'pauseTransformFeedback', []);

  void resumeTransformFeedback() =>
      js_util.callMethod(this, 'resumeTransformFeedback', []);

  void bindBufferBase(int target, int index, WebGLBuffer? buffer) =>
      js_util.callMethod(this, 'bindBufferBase', [target, index, buffer]);

  void bindBufferRange(
          int target, int index, WebGLBuffer? buffer, int offset, int size) =>
      js_util.callMethod(
          this, 'bindBufferRange', [target, index, buffer, offset, size]);

  dynamic getIndexedParameter(int target, int index) =>
      js_util.callMethod(this, 'getIndexedParameter', [target, index]);

  Iterable<int> getUniformIndices(
          WebGLProgram program, Iterable<String> uniformNames) =>
      js_util.callMethod(this, 'getUniformIndices', [program, uniformNames]);

  dynamic getActiveUniforms(
          WebGLProgram program, Iterable<int> uniformIndices, int pname) =>
      js_util.callMethod(
          this, 'getActiveUniforms', [program, uniformIndices, pname]);

  int getUniformBlockIndex(WebGLProgram program, String uniformBlockName) =>
      js_util.callMethod(
          this, 'getUniformBlockIndex', [program, uniformBlockName]);

  dynamic getActiveUniformBlockParameter(
          WebGLProgram program, int uniformBlockIndex, int pname) =>
      js_util.callMethod(this, 'getActiveUniformBlockParameter',
          [program, uniformBlockIndex, pname]);

  String? getActiveUniformBlockName(
          WebGLProgram program, int uniformBlockIndex) =>
      js_util.callMethod(
          this, 'getActiveUniformBlockName', [program, uniformBlockIndex]);

  void uniformBlockBinding(WebGLProgram program, int uniformBlockIndex,
          int uniformBlockBinding) =>
      js_util.callMethod(this, 'uniformBlockBinding',
          [program, uniformBlockIndex, uniformBlockBinding]);

  WebGLVertexArrayObject? createVertexArray() =>
      js_util.callMethod(this, 'createVertexArray', []);

  void deleteVertexArray(WebGLVertexArrayObject? vertexArray) =>
      js_util.callMethod(this, 'deleteVertexArray', [vertexArray]);

  bool isVertexArray(WebGLVertexArrayObject? vertexArray) =>
      js_util.callMethod(this, 'isVertexArray', [vertexArray]);

  void bindVertexArray(WebGLVertexArrayObject? array) =>
      js_util.callMethod(this, 'bindVertexArray', [array]);
}

@JS()
@staticInterop
class WebGL2RenderingContextOverloads {
  external factory WebGL2RenderingContextOverloads();
}

extension PropsWebGL2RenderingContextOverloads
    on WebGL2RenderingContextOverloads {
  void bufferData(int target, dynamic srcData,
          [int? usage, int? srcOffset, int? length = 0]) =>
      js_util.callMethod(
          this, 'bufferData', [target, srcData, usage, srcOffset, length]);

  void bufferSubData(int target, int dstByteOffset,
          [dynamic srcData, int? srcOffset, int? length = 0]) =>
      js_util.callMethod(this, 'bufferSubData',
          [target, dstByteOffset, srcData, srcOffset, length]);

  void texImage2D(
          int target, int level, int internalformat, int width, int height,
          [int? border,
          int? format,
          int? type,
          dynamic srcData,
          int? srcOffset]) =>
      js_util.callMethod(this, 'texImage2D', [
        target,
        level,
        internalformat,
        width,
        height,
        border,
        format,
        type,
        srcData,
        srcOffset
      ]);

  void texSubImage2D(int target, int level, int xoffset, int yoffset, int width,
          int height,
          [int? format, int? type, dynamic srcData, int? srcOffset]) =>
      js_util.callMethod(this, 'texSubImage2D', [
        target,
        level,
        xoffset,
        yoffset,
        width,
        height,
        format,
        type,
        srcData,
        srcOffset
      ]);

  void compressedTexImage2D(int target, int level, int internalformat,
          int width, int height, int border, dynamic srcData,
          [int? srcOffset = 0, int? srcLengthOverride = 0]) =>
      js_util.callMethod(this, 'compressedTexImage2D', [
        target,
        level,
        internalformat,
        width,
        height,
        border,
        srcData,
        srcOffset,
        srcLengthOverride
      ]);

  void compressedTexSubImage2D(int target, int level, int xoffset, int yoffset,
          int width, int height, int format, dynamic srcData,
          [int? srcOffset = 0, int? srcLengthOverride = 0]) =>
      js_util.callMethod(this, 'compressedTexSubImage2D', [
        target,
        level,
        xoffset,
        yoffset,
        width,
        height,
        format,
        srcData,
        srcOffset,
        srcLengthOverride
      ]);

  void uniform1fv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform1fv', [location, data, srcOffset, srcLength]);

  void uniform2fv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform2fv', [location, data, srcOffset, srcLength]);

  void uniform3fv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform3fv', [location, data, srcOffset, srcLength]);

  void uniform4fv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform4fv', [location, data, srcOffset, srcLength]);

  void uniform1iv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform1iv', [location, data, srcOffset, srcLength]);

  void uniform2iv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform2iv', [location, data, srcOffset, srcLength]);

  void uniform3iv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform3iv', [location, data, srcOffset, srcLength]);

  void uniform4iv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform4iv', [location, data, srcOffset, srcLength]);

  void uniformMatrix2fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix2fv',
          [location, transpose, data, srcOffset, srcLength]);

  void uniformMatrix3fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix3fv',
          [location, transpose, data, srcOffset, srcLength]);

  void uniformMatrix4fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix4fv',
          [location, transpose, data, srcOffset, srcLength]);

  void readPixels(int x, int y, int width, int height, int format, int type,
          [dynamic dstData, int? dstOffset]) =>
      js_util.callMethod(this, 'readPixels',
          [x, y, width, height, format, type, dstData, dstOffset]);
}

///  The WebGL2RenderingContext interface provides the OpenGL ES 3.0
/// rendering context for the drawing surface of an HTML [<canvas>]
/// element.
///  To get an object of this interface, call [getContext()] on a
/// [<canvas>] element, supplying "webgl2" as the argument:
/// [var canvas = document.getElementById('myCanvas');
/// var gl = canvas.getContext('webgl2');
/// ]
///
///   Note: WebGL 2 is an extension to WebGL 1. The interface
/// implements all members of the [WebGLRenderingContext] interface.
/// Some methods of the WebGL 1 context can accept additional values
/// when used in a WebGL 2 context. You will find this info noted on
/// the WebGL 1 reference pages.
///
///  The WebGL tutorial has more information, examples, and resources
/// on how to get started with WebGL.
@JS()
@staticInterop
class WebGL2RenderingContext
    implements
        WebGLRenderingContextBase,
        WebGL2RenderingContextBase,
        WebGL2RenderingContextOverloads {
  external factory WebGL2RenderingContext();
}
