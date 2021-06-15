/// WebGL 2.0 Specification
///
/// https://www.khronos.org/registry/webgl/specs/latest/2.0/
@JS('window')
library webgl2;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'webgl1.dart';
import 'webgl2.dart';

///
///
///  The interface is part of the WebGL 2 API and provides ways to
/// asynchronously query for information. By default, occlusion
/// queries and primitive queries are available.
///
///  Another kind of queries are disjoint timer queries, which allow
/// you to measure performance and profiling of your GPU. Disjoint
/// timer queries are available with the [EXT_disjoint_timer_query]
/// extension only.
///
///  When working with objects, the following methods of the
/// [WebGL2RenderingContext] are useful:
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
class WebGLQuery // null -> {} -> WebGLObject
    with
        WebGLObject {
  external factory WebGLQuery();
}

///
///
///  The interface is part of the WebGL 2 API and stores sampling
/// parameters for [WebGLTexture] access inside of a shader.
///
///  When working with objects, the following methods of the
/// [WebGL2RenderingContext] are useful:
///  [WebGL2RenderingContext.createSampler()]
///  [WebGL2RenderingContext.deleteSampler()]
///  [WebGL2RenderingContext.isSampler()]
///  [WebGL2RenderingContext.bindSampler()]
///  [WebGL2RenderingContext.getSamplerParameter()]
///
@experimental
@JS()
class WebGLSampler // null -> {} -> WebGLObject
    with
        WebGLObject {
  external factory WebGLSampler();
}

///
///
///  The interface is part of the WebGL 2 API and is used to
/// synchronize activities between the GPU and the application.
///
///  When working with objects, the following methods of the
/// [WebGL2RenderingContext] are useful:
///  [WebGL2RenderingContext.fenceSync()]
///  [WebGL2RenderingContext.deleteSync()]
///  [WebGL2RenderingContext.isSync()]
///  [WebGL2RenderingContext.clientWaitSync()]
///  [WebGL2RenderingContext.waitSync()]
///  [WebGL2RenderingContext.getSyncParameter()]
///
@experimental
@JS()
class WebGLSync // null -> {} -> WebGLObject
    with
        WebGLObject {
  external factory WebGLSync();
}

///
///
///  The interface is part of the WebGL 2 API and enables transform
/// feedback, which is the process of capturing primitives generated
/// by vertex processing. It allows to preserve the post-transform
/// rendering state of an object and resubmit this data multiple
/// times.
///
///  When working with objects, the following methods of the
/// [WebGL2RenderingContext] are useful:
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
class WebGLTransformFeedback // null -> {} -> WebGLObject
    with
        WebGLObject {
  external factory WebGLTransformFeedback();
}

///
///
///  The interface is part of the WebGL 2 API, represents vertex
/// array objects (VAOs) pointing to vertex array data, and provides
/// names for different sets of vertex data.
///
/// When working with objects, the following methods are useful:
///  [WebGL2RenderingContext.createVertexArray()]
///  [WebGL2RenderingContext.deleteVertexArray()]
///  [WebGL2RenderingContext.isVertexArray()]
///  [WebGL2RenderingContext.bindVertexArray()]
///
///  WebGL 1: The [OES_vertex_array_object] extension allows you to
/// use vertex array objects in a WebGL 1 context.
///
@JS()
class WebGLVertexArrayObject // null -> {} -> WebGLObject
    with
        WebGLObject {
  external factory WebGLVertexArrayObject();
}

@JS()
mixin WebGL2RenderingContextBase {
  external static int get READ_BUFFER;
  external static int get UNPACK_ROW_LENGTH;
  external static int get UNPACK_SKIP_ROWS;
  external static int get UNPACK_SKIP_PIXELS;
  external static int get PACK_ROW_LENGTH;
  external static int get PACK_SKIP_ROWS;
  external static int get PACK_SKIP_PIXELS;
  external static int get COLOR;
  external static int get DEPTH;
  external static int get STENCIL;
  external static int get RED;
  external static int get RGB8;
  external static int get RGBA8;
  external static int get RGB10_A2;
  external static int get TEXTURE_BINDING_3D;
  external static int get UNPACK_SKIP_IMAGES;
  external static int get UNPACK_IMAGE_HEIGHT;
  external static int get TEXTURE_3D;
  external static int get TEXTURE_WRAP_R;
  external static int get MAX_3D_TEXTURE_SIZE;
  external static int get UNSIGNED_INT_2_10_10_10_REV;
  external static int get MAX_ELEMENTS_VERTICES;
  external static int get MAX_ELEMENTS_INDICES;
  external static int get TEXTURE_MIN_LOD;
  external static int get TEXTURE_MAX_LOD;
  external static int get TEXTURE_BASE_LEVEL;
  external static int get TEXTURE_MAX_LEVEL;
  external static int get MIN;
  external static int get MAX;
  external static int get DEPTH_COMPONENT24;
  external static int get MAX_TEXTURE_LOD_BIAS;
  external static int get TEXTURE_COMPARE_MODE;
  external static int get TEXTURE_COMPARE_FUNC;
  external static int get CURRENT_QUERY;
  external static int get QUERY_RESULT;
  external static int get QUERY_RESULT_AVAILABLE;
  external static int get STREAM_READ;
  external static int get STREAM_COPY;
  external static int get STATIC_READ;
  external static int get STATIC_COPY;
  external static int get DYNAMIC_READ;
  external static int get DYNAMIC_COPY;
  external static int get MAX_DRAW_BUFFERS;
  external static int get DRAW_BUFFER0;
  external static int get DRAW_BUFFER1;
  external static int get DRAW_BUFFER2;
  external static int get DRAW_BUFFER3;
  external static int get DRAW_BUFFER4;
  external static int get DRAW_BUFFER5;
  external static int get DRAW_BUFFER6;
  external static int get DRAW_BUFFER7;
  external static int get DRAW_BUFFER8;
  external static int get DRAW_BUFFER9;
  external static int get DRAW_BUFFER10;
  external static int get DRAW_BUFFER11;
  external static int get DRAW_BUFFER12;
  external static int get DRAW_BUFFER13;
  external static int get DRAW_BUFFER14;
  external static int get DRAW_BUFFER15;
  external static int get MAX_FRAGMENT_UNIFORM_COMPONENTS;
  external static int get MAX_VERTEX_UNIFORM_COMPONENTS;
  external static int get SAMPLER_3D;
  external static int get SAMPLER_2D_SHADOW;
  external static int get FRAGMENT_SHADER_DERIVATIVE_HINT;
  external static int get PIXEL_PACK_BUFFER;
  external static int get PIXEL_UNPACK_BUFFER;
  external static int get PIXEL_PACK_BUFFER_BINDING;
  external static int get PIXEL_UNPACK_BUFFER_BINDING;
  external static int get FLOAT_MAT2x3;
  external static int get FLOAT_MAT2x4;
  external static int get FLOAT_MAT3x2;
  external static int get FLOAT_MAT3x4;
  external static int get FLOAT_MAT4x2;
  external static int get FLOAT_MAT4x3;
  external static int get SRGB;
  external static int get SRGB8;
  external static int get SRGB8_ALPHA8;
  external static int get COMPARE_REF_TO_TEXTURE;
  external static int get RGBA32F;
  external static int get RGB32F;
  external static int get RGBA16F;
  external static int get RGB16F;
  external static int get VERTEX_ATTRIB_ARRAY_INTEGER;
  external static int get MAX_ARRAY_TEXTURE_LAYERS;
  external static int get MIN_PROGRAM_TEXEL_OFFSET;
  external static int get MAX_PROGRAM_TEXEL_OFFSET;
  external static int get MAX_VARYING_COMPONENTS;
  external static int get TEXTURE_2D_ARRAY;
  external static int get TEXTURE_BINDING_2D_ARRAY;
  external static int get R11F_G11F_B10F;
  external static int get UNSIGNED_INT_10F_11F_11F_REV;
  external static int get RGB9_E5;
  external static int get UNSIGNED_INT_5_9_9_9_REV;
  external static int get TRANSFORM_FEEDBACK_BUFFER_MODE;
  external static int get MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS;
  external static int get TRANSFORM_FEEDBACK_VARYINGS;
  external static int get TRANSFORM_FEEDBACK_BUFFER_START;
  external static int get TRANSFORM_FEEDBACK_BUFFER_SIZE;
  external static int get TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN;
  external static int get RASTERIZER_DISCARD;
  external static int get MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS;
  external static int get MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS;
  external static int get INTERLEAVED_ATTRIBS;
  external static int get SEPARATE_ATTRIBS;
  external static int get TRANSFORM_FEEDBACK_BUFFER;
  external static int get TRANSFORM_FEEDBACK_BUFFER_BINDING;
  external static int get RGBA32UI;
  external static int get RGB32UI;
  external static int get RGBA16UI;
  external static int get RGB16UI;
  external static int get RGBA8UI;
  external static int get RGB8UI;
  external static int get RGBA32I;
  external static int get RGB32I;
  external static int get RGBA16I;
  external static int get RGB16I;
  external static int get RGBA8I;
  external static int get RGB8I;
  external static int get RED_INTEGER;
  external static int get RGB_INTEGER;
  external static int get RGBA_INTEGER;
  external static int get SAMPLER_2D_ARRAY;
  external static int get SAMPLER_2D_ARRAY_SHADOW;
  external static int get SAMPLER_CUBE_SHADOW;
  external static int get UNSIGNED_INT_VEC2;
  external static int get UNSIGNED_INT_VEC3;
  external static int get UNSIGNED_INT_VEC4;
  external static int get INT_SAMPLER_2D;
  external static int get INT_SAMPLER_3D;
  external static int get INT_SAMPLER_CUBE;
  external static int get INT_SAMPLER_2D_ARRAY;
  external static int get UNSIGNED_INT_SAMPLER_2D;
  external static int get UNSIGNED_INT_SAMPLER_3D;
  external static int get UNSIGNED_INT_SAMPLER_CUBE;
  external static int get UNSIGNED_INT_SAMPLER_2D_ARRAY;
  external static int get DEPTH_COMPONENT32F;
  external static int get DEPTH32F_STENCIL8;
  external static int get FLOAT_32_UNSIGNED_INT_24_8_REV;
  external static int get FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING;
  external static int get FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE;
  external static int get FRAMEBUFFER_ATTACHMENT_RED_SIZE;
  external static int get FRAMEBUFFER_ATTACHMENT_GREEN_SIZE;
  external static int get FRAMEBUFFER_ATTACHMENT_BLUE_SIZE;
  external static int get FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE;
  external static int get FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE;
  external static int get FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE;
  external static int get FRAMEBUFFER_DEFAULT;
  external static int get UNSIGNED_INT_24_8;
  external static int get DEPTH24_STENCIL8;
  external static int get UNSIGNED_NORMALIZED;
  external static int get DRAW_FRAMEBUFFER_BINDING;
  external static int get READ_FRAMEBUFFER;
  external static int get DRAW_FRAMEBUFFER;
  external static int get READ_FRAMEBUFFER_BINDING;
  external static int get RENDERBUFFER_SAMPLES;
  external static int get FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER;
  external static int get MAX_COLOR_ATTACHMENTS;
  external static int get COLOR_ATTACHMENT1;
  external static int get COLOR_ATTACHMENT2;
  external static int get COLOR_ATTACHMENT3;
  external static int get COLOR_ATTACHMENT4;
  external static int get COLOR_ATTACHMENT5;
  external static int get COLOR_ATTACHMENT6;
  external static int get COLOR_ATTACHMENT7;
  external static int get COLOR_ATTACHMENT8;
  external static int get COLOR_ATTACHMENT9;
  external static int get COLOR_ATTACHMENT10;
  external static int get COLOR_ATTACHMENT11;
  external static int get COLOR_ATTACHMENT12;
  external static int get COLOR_ATTACHMENT13;
  external static int get COLOR_ATTACHMENT14;
  external static int get COLOR_ATTACHMENT15;
  external static int get FRAMEBUFFER_INCOMPLETE_MULTISAMPLE;
  external static int get MAX_SAMPLES;
  external static int get HALF_FLOAT;
  external static int get RG;
  external static int get RG_INTEGER;
  external static int get R8;
  external static int get RG8;
  external static int get R16F;
  external static int get R32F;
  external static int get RG16F;
  external static int get RG32F;
  external static int get R8I;
  external static int get R8UI;
  external static int get R16I;
  external static int get R16UI;
  external static int get R32I;
  external static int get R32UI;
  external static int get RG8I;
  external static int get RG8UI;
  external static int get RG16I;
  external static int get RG16UI;
  external static int get RG32I;
  external static int get RG32UI;
  external static int get VERTEX_ARRAY_BINDING;
  external static int get R8_SNORM;
  external static int get RG8_SNORM;
  external static int get RGB8_SNORM;
  external static int get RGBA8_SNORM;
  external static int get SIGNED_NORMALIZED;
  external static int get COPY_READ_BUFFER;
  external static int get COPY_WRITE_BUFFER;
  external static int get COPY_READ_BUFFER_BINDING;
  external static int get COPY_WRITE_BUFFER_BINDING;
  external static int get UNIFORM_BUFFER;
  external static int get UNIFORM_BUFFER_BINDING;
  external static int get UNIFORM_BUFFER_START;
  external static int get UNIFORM_BUFFER_SIZE;
  external static int get MAX_VERTEX_UNIFORM_BLOCKS;
  external static int get MAX_FRAGMENT_UNIFORM_BLOCKS;
  external static int get MAX_COMBINED_UNIFORM_BLOCKS;
  external static int get MAX_UNIFORM_BUFFER_BINDINGS;
  external static int get MAX_UNIFORM_BLOCK_SIZE;
  external static int get MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
  external static int get MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
  external static int get UNIFORM_BUFFER_OFFSET_ALIGNMENT;
  external static int get ACTIVE_UNIFORM_BLOCKS;
  external static int get UNIFORM_TYPE;
  external static int get UNIFORM_SIZE;
  external static int get UNIFORM_BLOCK_INDEX;
  external static int get UNIFORM_OFFSET;
  external static int get UNIFORM_ARRAY_STRIDE;
  external static int get UNIFORM_MATRIX_STRIDE;
  external static int get UNIFORM_IS_ROW_MAJOR;
  external static int get UNIFORM_BLOCK_BINDING;
  external static int get UNIFORM_BLOCK_DATA_SIZE;
  external static int get UNIFORM_BLOCK_ACTIVE_UNIFORMS;
  external static int get UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES;
  external static int get UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER;
  external static int get UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER;
  external static int get INVALID_INDEX;
  external static int get MAX_VERTEX_OUTPUT_COMPONENTS;
  external static int get MAX_FRAGMENT_INPUT_COMPONENTS;
  external static int get MAX_SERVER_WAIT_TIMEOUT;
  external static int get OBJECT_TYPE;
  external static int get SYNC_CONDITION;
  external static int get SYNC_STATUS;
  external static int get SYNC_FLAGS;
  external static int get SYNC_FENCE;
  external static int get SYNC_GPU_COMMANDS_COMPLETE;
  external static int get UNSIGNALED;
  external static int get SIGNALED;
  external static int get ALREADY_SIGNALED;
  external static int get TIMEOUT_EXPIRED;
  external static int get CONDITION_SATISFIED;
  external static int get WAIT_FAILED;
  external static int get SYNC_FLUSH_COMMANDS_BIT;
  external static int get VERTEX_ATTRIB_ARRAY_DIVISOR;
  external static int get ANY_SAMPLES_PASSED;
  external static int get ANY_SAMPLES_PASSED_CONSERVATIVE;
  external static int get SAMPLER_BINDING;
  external static int get RGB10_A2UI;
  external static int get INT_2_10_10_10_REV;
  external static int get TRANSFORM_FEEDBACK;
  external static int get TRANSFORM_FEEDBACK_PAUSED;
  external static int get TRANSFORM_FEEDBACK_ACTIVE;
  external static int get TRANSFORM_FEEDBACK_BINDING;
  external static int get TEXTURE_IMMUTABLE_FORMAT;
  external static int get MAX_ELEMENT_INDEX;
  external static int get TEXTURE_IMMUTABLE_LEVELS;
  external static int get TIMEOUT_IGNORED;
  external static int get MAX_CLIENT_WAIT_TIMEOUT_WEBGL;
  external Object copyBufferSubData(int readTarget, int writeTarget,
      int readOffset, int writeOffset, int size);
  external Object getBufferSubData(
      int target, int srcByteOffset, dynamic dstBuffer,
      [int? dstOffset = 0, int? length = 0]);
  external Object blitFramebuffer(int srcX0, int srcY0, int srcX1, int srcY1,
      int dstX0, int dstY0, int dstX1, int dstY1, int mask, int filter);
  external Object framebufferTextureLayer(
      int target, int attachment, WebGLTexture? texture, int level, int layer);
  external Object invalidateFramebuffer(int target, Iterable<int> attachments);
  external Object invalidateSubFramebuffer(int target,
      Iterable<int> attachments, int x, int y, int width, int height);
  external Object readBuffer(int src);
  external dynamic getInternalformatParameter(
      int target, int internalformat, int pname);
  external Object renderbufferStorageMultisample(
      int target, int samples, int internalformat, int width, int height);
  external Object texStorage2D(
      int target, int levels, int internalformat, int width, int height);
  external Object texStorage3D(int target, int levels, int internalformat,
      int width, int height, int depth);
  external Object texImage3D(int target, int level, int internalformat,
      int width, int height, int depth, int border, int format, int type,
      [dynamic srcData, int srcOffset]);
  external Object texSubImage3D(int target, int level, int xoffset, int yoffset,
      int zoffset, int width, int height, int depth, int format, int type,
      [dynamic srcData, int? srcOffset = 0]);
  external Object copyTexSubImage3D(int target, int level, int xoffset,
      int yoffset, int zoffset, int x, int y, int width, int height);
  external Object compressedTexImage3D(
      int target,
      int level,
      int internalformat,
      int width,
      int height,
      int depth,
      int border,
      dynamic srcData,
      [int? srcOffset = 0,
      int? srcLengthOverride = 0]);
  external Object compressedTexSubImage3D(
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
      int? srcLengthOverride = 0]);
  external int getFragDataLocation(WebGLProgram program, String name);
  external Object uniform1ui(WebGLUniformLocation? location, int v0);
  external Object uniform2ui(WebGLUniformLocation? location, int v0, int v1);
  external Object uniform3ui(
      WebGLUniformLocation? location, int v0, int v1, int v2);
  external Object uniform4ui(
      WebGLUniformLocation? location, int v0, int v1, int v2, int v3);
  external Object uniform1uiv(WebGLUniformLocation? location, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniform2uiv(WebGLUniformLocation? location, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniform3uiv(WebGLUniformLocation? location, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniform4uiv(WebGLUniformLocation? location, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniformMatrix3x2fv(
      WebGLUniformLocation? location, bool transpose, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniformMatrix4x2fv(
      WebGLUniformLocation? location, bool transpose, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniformMatrix2x3fv(
      WebGLUniformLocation? location, bool transpose, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniformMatrix4x3fv(
      WebGLUniformLocation? location, bool transpose, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniformMatrix2x4fv(
      WebGLUniformLocation? location, bool transpose, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniformMatrix3x4fv(
      WebGLUniformLocation? location, bool transpose, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object vertexAttribI4i(int index, int x, int y, int z, int w);
  external Object vertexAttribI4iv(int index, dynamic values);
  external Object vertexAttribI4ui(int index, int x, int y, int z, int w);
  external Object vertexAttribI4uiv(int index, dynamic values);
  external Object vertexAttribIPointer(
      int index, int size, int type, int stride, int offset);
  external Object vertexAttribDivisor(int index, int divisor);
  external Object drawArraysInstanced(
      int mode, int first, int count, int instanceCount);
  external Object drawElementsInstanced(
      int mode, int count, int type, int offset, int instanceCount);
  external Object drawRangeElements(
      int mode, int start, int end, int count, int type, int offset);
  external Object drawBuffers(Iterable<int> buffers);
  external Object clearBufferfv(int buffer, int drawbuffer, dynamic values,
      [int? srcOffset = 0]);
  external Object clearBufferiv(int buffer, int drawbuffer, dynamic values,
      [int? srcOffset = 0]);
  external Object clearBufferuiv(int buffer, int drawbuffer, dynamic values,
      [int? srcOffset = 0]);
  external Object clearBufferfi(int buffer, int drawbuffer,
      /* double | NaN */ dynamic depth, int stencil);
  external WebGLQuery? createQuery();
  external Object deleteQuery(WebGLQuery? query);
  external bool isQuery(WebGLQuery? query);
  external Object beginQuery(int target, WebGLQuery query);
  external Object endQuery(int target);
  external WebGLQuery? getQuery(int target, int pname);
  external dynamic getQueryParameter(WebGLQuery query, int pname);
  external WebGLSampler? createSampler();
  external Object deleteSampler(WebGLSampler? sampler);
  external bool isSampler(WebGLSampler? sampler);
  external Object bindSampler(int unit, WebGLSampler? sampler);
  external Object samplerParameteri(WebGLSampler sampler, int pname, int param);
  external Object samplerParameterf(
      WebGLSampler sampler, int pname, /* double | NaN */ dynamic param);
  external dynamic getSamplerParameter(WebGLSampler sampler, int pname);
  external WebGLSync? fenceSync(int condition, int flags);
  external bool isSync(WebGLSync? mSync);
  external Object deleteSync(WebGLSync? mSync);
  external int clientWaitSync(WebGLSync mSync, int flags, int timeout);
  external Object waitSync(WebGLSync mSync, int flags, int timeout);
  external dynamic getSyncParameter(WebGLSync mSync, int pname);
  external WebGLTransformFeedback? createTransformFeedback();
  external Object deleteTransformFeedback(WebGLTransformFeedback? tf);
  external bool isTransformFeedback(WebGLTransformFeedback? tf);
  external Object bindTransformFeedback(int target, WebGLTransformFeedback? tf);
  external Object beginTransformFeedback(int primitiveMode);
  external Object endTransformFeedback();
  external Object transformFeedbackVaryings(
      WebGLProgram program, Iterable<String> varyings, int bufferMode);
  external WebGLActiveInfo? getTransformFeedbackVarying(
      WebGLProgram program, int index);
  external Object pauseTransformFeedback();
  external Object resumeTransformFeedback();
  external Object bindBufferBase(int target, int index, WebGLBuffer? buffer);
  external Object bindBufferRange(
      int target, int index, WebGLBuffer? buffer, int offset, int size);
  external dynamic getIndexedParameter(int target, int index);
  external Iterable<int> getUniformIndices(
      WebGLProgram program, Iterable<String> uniformNames);
  external dynamic getActiveUniforms(
      WebGLProgram program, Iterable<int> uniformIndices, int pname);
  external int getUniformBlockIndex(
      WebGLProgram program, String uniformBlockName);
  external dynamic getActiveUniformBlockParameter(
      WebGLProgram program, int uniformBlockIndex, int pname);
  external String? getActiveUniformBlockName(
      WebGLProgram program, int uniformBlockIndex);
  external Object uniformBlockBinding(
      WebGLProgram program, int uniformBlockIndex, int uniformBlockBinding);
  external WebGLVertexArrayObject? createVertexArray();
  external Object deleteVertexArray(WebGLVertexArrayObject? vertexArray);
  external bool isVertexArray(WebGLVertexArrayObject? vertexArray);
  external Object bindVertexArray(WebGLVertexArrayObject? array);
}

@JS()
mixin WebGL2RenderingContextOverloads {
  external Object bufferData(int target, dynamic srcData,
      [int? usage, int srcOffset, int? length = 0]);
  external Object bufferSubData(int target, int dstByteOffset,
      [dynamic srcData, int srcOffset, int? length = 0]);
  external Object texImage2D(
      int target, int level, int internalformat, int width, int height,
      [int? border, int format, int type, dynamic srcData, int srcOffset]);
  external Object texSubImage2D(
      int target, int level, int xoffset, int yoffset, int width, int height,
      [int? format, int type, dynamic srcData, int srcOffset]);
  external Object compressedTexImage2D(int target, int level,
      int internalformat, int width, int height, int border, dynamic srcData,
      [int? srcOffset = 0, int? srcLengthOverride = 0]);
  external Object compressedTexSubImage2D(int target, int level, int xoffset,
      int yoffset, int width, int height, int format, dynamic srcData,
      [int? srcOffset = 0, int? srcLengthOverride = 0]);
  external Object uniform1fv(WebGLUniformLocation? location, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniform2fv(WebGLUniformLocation? location, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniform3fv(WebGLUniformLocation? location, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniform4fv(WebGLUniformLocation? location, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniform1iv(WebGLUniformLocation? location, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniform2iv(WebGLUniformLocation? location, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniform3iv(WebGLUniformLocation? location, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniform4iv(WebGLUniformLocation? location, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniformMatrix2fv(
      WebGLUniformLocation? location, bool transpose, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniformMatrix3fv(
      WebGLUniformLocation? location, bool transpose, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object uniformMatrix4fv(
      WebGLUniformLocation? location, bool transpose, dynamic data,
      [int? srcOffset = 0, int? srcLength = 0]);
  external Object readPixels(
      int x, int y, int width, int height, int format, int type,
      [dynamic dstData, int dstOffset]);
}

///
///
///  The WebGL2RenderingContext interface provides the OpenGL ES 3.0
/// rendering context for the drawing surface of an HTML [<canvas>]
/// element.
///
///  To get an object of this interface, call [getContext()] on a
/// [<canvas>] element, supplying "webgl2" as the argument:
///
/// [var canvas = document.getElementById('myCanvas');
/// var gl = canvas.getContext('webgl2');
/// ]
///  WebGL 2 is an extension to WebGL 1. The interface implements all
/// members of the [WebGLRenderingContext] interface. Some methods of
/// the WebGL 1 context can accept additional values when used in a
/// WebGL 2 context. You will find this info noted on the WebGL 1
/// reference pages.
///  The WebGL tutorial has more information, examples, and resources
/// on how to get started with WebGL.
@JS()
class WebGL2RenderingContext
    with
        WebGLRenderingContextBase,
        WebGL2RenderingContextBase,
        WebGL2RenderingContextOverloads {
  external factory WebGL2RenderingContext();
}
