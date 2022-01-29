/// WebGL 2.0 Specification
///
/// https://www.khronos.org/registry/webgl/specs/latest/2.0/
@JS('window')
@staticInterop
library webgl2;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webgl1
webgl2 */

///  The interface is part of the WebGL 2 API and provides ways to
/// asynchronously query for information. By default, occlusion
/// queries and primitive queries are available.
///  Another kind of queries are disjoint timer queries, which allow
/// you to measure performance and profiling of your GPU. Disjoint
/// timer queries are available with the [EXT_disjoint_timer_query]
/// extension only.
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
  external WebGLQuery();
}

///  The interface is part of the WebGL 2 API and stores sampling
/// parameters for [WebGLTexture] access inside of a shader.
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
  external WebGLSampler();
}

///  The interface is part of the WebGL 2 API and is used to
/// synchronize activities between the GPU and the application.
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
  external WebGLSync();
}

///  The interface is part of the WebGL 2 API and enables transform
/// feedback, which is the process of capturing primitives generated
/// by vertex processing. It allows to preserve the post-transform
/// rendering state of an object and resubmit this data multiple
/// times.
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
  external WebGLTransformFeedback();
}

///  The interface is part of the WebGL 2 API, represents vertex
/// array objects (VAOs) pointing to vertex array data, and provides
/// names for different sets of vertex data.
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
  external WebGLVertexArrayObject();
}

@JS()
@staticInterop
class WebGL2RenderingContextBase {
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
  external WebGL2RenderingContextBase();
}

extension PropsWebGL2RenderingContextBase on WebGL2RenderingContextBase {
  Object copyBufferSubData(int readTarget, int writeTarget, int readOffset,
          int writeOffset, int size) =>
      js_util.callMethod(this, 'copyBufferSubData',
          [readTarget, writeTarget, readOffset, writeOffset, size]);

  Object getBufferSubData(int target, int srcByteOffset, dynamic dstBuffer,
          [int? dstOffset = 0, int? length = 0]) =>
      js_util.callMethod(this, 'getBufferSubData',
          [target, srcByteOffset, dstBuffer, dstOffset, length]);

  Object blitFramebuffer(int srcX0, int srcY0, int srcX1, int srcY1, int dstX0,
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

  Object framebufferTextureLayer(int target, int attachment,
          WebGLTexture? texture, int level, int layer) =>
      js_util.callMethod(this, 'framebufferTextureLayer',
          [target, attachment, texture, level, layer]);

  Object invalidateFramebuffer(int target, Iterable<int> attachments) =>
      js_util.callMethod(this, 'invalidateFramebuffer', [target, attachments]);

  Object invalidateSubFramebuffer(int target, Iterable<int> attachments, int x,
          int y, int width, int height) =>
      js_util.callMethod(this, 'invalidateSubFramebuffer',
          [target, attachments, x, y, width, height]);

  Object readBuffer(int src) => js_util.callMethod(this, 'readBuffer', [src]);

  dynamic getInternalformatParameter(
          int target, int internalformat, int pname) =>
      js_util.callMethod(
          this, 'getInternalformatParameter', [target, internalformat, pname]);

  Object renderbufferStorageMultisample(
          int target, int samples, int internalformat, int width, int height) =>
      js_util.callMethod(this, 'renderbufferStorageMultisample',
          [target, samples, internalformat, width, height]);

  Object texStorage2D(
          int target, int levels, int internalformat, int width, int height) =>
      js_util.callMethod(this, 'texStorage2D',
          [target, levels, internalformat, width, height]);

  Object texStorage3D(int target, int levels, int internalformat, int width,
          int height, int depth) =>
      js_util.callMethod(this, 'texStorage3D',
          [target, levels, internalformat, width, height, depth]);

  Object texImage3D(int target, int level, int internalformat, int width,
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

  Object texSubImage3D(int target, int level, int xoffset, int yoffset,
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

  Object copyTexSubImage3D(int target, int level, int xoffset, int yoffset,
          int zoffset, int x, int y, int width, int height) =>
      js_util.callMethod(this, 'copyTexSubImage3D',
          [target, level, xoffset, yoffset, zoffset, x, y, width, height]);

  Object compressedTexImage3D(int target, int level, int internalformat,
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

  Object compressedTexSubImage3D(
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

  Object uniform1ui(WebGLUniformLocation? location, int v0) =>
      js_util.callMethod(this, 'uniform1ui', [location, v0]);

  Object uniform2ui(WebGLUniformLocation? location, int v0, int v1) =>
      js_util.callMethod(this, 'uniform2ui', [location, v0, v1]);

  Object uniform3ui(WebGLUniformLocation? location, int v0, int v1, int v2) =>
      js_util.callMethod(this, 'uniform3ui', [location, v0, v1, v2]);

  Object uniform4ui(
          WebGLUniformLocation? location, int v0, int v1, int v2, int v3) =>
      js_util.callMethod(this, 'uniform4ui', [location, v0, v1, v2, v3]);

  Object uniform1uiv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform1uiv', [location, data, srcOffset, srcLength]);

  Object uniform2uiv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform2uiv', [location, data, srcOffset, srcLength]);

  Object uniform3uiv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform3uiv', [location, data, srcOffset, srcLength]);

  Object uniform4uiv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform4uiv', [location, data, srcOffset, srcLength]);

  Object uniformMatrix3x2fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix3x2fv',
          [location, transpose, data, srcOffset, srcLength]);

  Object uniformMatrix4x2fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix4x2fv',
          [location, transpose, data, srcOffset, srcLength]);

  Object uniformMatrix2x3fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix2x3fv',
          [location, transpose, data, srcOffset, srcLength]);

  Object uniformMatrix4x3fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix4x3fv',
          [location, transpose, data, srcOffset, srcLength]);

  Object uniformMatrix2x4fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix2x4fv',
          [location, transpose, data, srcOffset, srcLength]);

  Object uniformMatrix3x4fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix3x4fv',
          [location, transpose, data, srcOffset, srcLength]);

  Object vertexAttribI4i(int index, int x, int y, int z, int w) =>
      js_util.callMethod(this, 'vertexAttribI4i', [index, x, y, z, w]);

  Object vertexAttribI4iv(int index, dynamic values) =>
      js_util.callMethod(this, 'vertexAttribI4iv', [index, values]);

  Object vertexAttribI4ui(int index, int x, int y, int z, int w) =>
      js_util.callMethod(this, 'vertexAttribI4ui', [index, x, y, z, w]);

  Object vertexAttribI4uiv(int index, dynamic values) =>
      js_util.callMethod(this, 'vertexAttribI4uiv', [index, values]);

  Object vertexAttribIPointer(
          int index, int size, int type, int stride, int offset) =>
      js_util.callMethod(
          this, 'vertexAttribIPointer', [index, size, type, stride, offset]);

  Object vertexAttribDivisor(int index, int divisor) =>
      js_util.callMethod(this, 'vertexAttribDivisor', [index, divisor]);

  Object drawArraysInstanced(
          int mode, int first, int count, int instanceCount) =>
      js_util.callMethod(
          this, 'drawArraysInstanced', [mode, first, count, instanceCount]);

  Object drawElementsInstanced(
          int mode, int count, int type, int offset, int instanceCount) =>
      js_util.callMethod(this, 'drawElementsInstanced',
          [mode, count, type, offset, instanceCount]);

  Object drawRangeElements(
          int mode, int start, int end, int count, int type, int offset) =>
      js_util.callMethod(
          this, 'drawRangeElements', [mode, start, end, count, type, offset]);

  Object drawBuffers(Iterable<int> buffers) =>
      js_util.callMethod(this, 'drawBuffers', [buffers]);

  Object clearBufferfv(int buffer, int drawbuffer, dynamic values,
          [int? srcOffset = 0]) =>
      js_util.callMethod(
          this, 'clearBufferfv', [buffer, drawbuffer, values, srcOffset]);

  Object clearBufferiv(int buffer, int drawbuffer, dynamic values,
          [int? srcOffset = 0]) =>
      js_util.callMethod(
          this, 'clearBufferiv', [buffer, drawbuffer, values, srcOffset]);

  Object clearBufferuiv(int buffer, int drawbuffer, dynamic values,
          [int? srcOffset = 0]) =>
      js_util.callMethod(
          this, 'clearBufferuiv', [buffer, drawbuffer, values, srcOffset]);

  Object clearBufferfi(int buffer, int drawbuffer,
          /* double | NaN */ dynamic depth, int stencil) =>
      js_util.callMethod(
          this, 'clearBufferfi', [buffer, drawbuffer, depth, stencil]);

  WebGLQuery? createQuery() => js_util.callMethod(this, 'createQuery', []);

  Object deleteQuery(WebGLQuery? query) =>
      js_util.callMethod(this, 'deleteQuery', [query]);

  bool isQuery(WebGLQuery? query) =>
      js_util.callMethod(this, 'isQuery', [query]);

  Object beginQuery(int target, WebGLQuery query) =>
      js_util.callMethod(this, 'beginQuery', [target, query]);

  Object endQuery(int target) => js_util.callMethod(this, 'endQuery', [target]);

  WebGLQuery? getQuery(int target, int pname) =>
      js_util.callMethod(this, 'getQuery', [target, pname]);

  dynamic getQueryParameter(WebGLQuery query, int pname) =>
      js_util.callMethod(this, 'getQueryParameter', [query, pname]);

  WebGLSampler? createSampler() =>
      js_util.callMethod(this, 'createSampler', []);

  Object deleteSampler(WebGLSampler? sampler) =>
      js_util.callMethod(this, 'deleteSampler', [sampler]);

  bool isSampler(WebGLSampler? sampler) =>
      js_util.callMethod(this, 'isSampler', [sampler]);

  Object bindSampler(int unit, WebGLSampler? sampler) =>
      js_util.callMethod(this, 'bindSampler', [unit, sampler]);

  Object samplerParameteri(WebGLSampler sampler, int pname, int param) =>
      js_util.callMethod(this, 'samplerParameteri', [sampler, pname, param]);

  Object samplerParameterf(
          WebGLSampler sampler, int pname, /* double | NaN */ dynamic param) =>
      js_util.callMethod(this, 'samplerParameterf', [sampler, pname, param]);

  dynamic getSamplerParameter(WebGLSampler sampler, int pname) =>
      js_util.callMethod(this, 'getSamplerParameter', [sampler, pname]);

  WebGLSync? fenceSync(int condition, int flags) =>
      js_util.callMethod(this, 'fenceSync', [condition, flags]);

  bool isSync(WebGLSync? mSync) => js_util.callMethod(this, 'isSync', [mSync]);

  Object deleteSync(WebGLSync? mSync) =>
      js_util.callMethod(this, 'deleteSync', [mSync]);

  int clientWaitSync(WebGLSync mSync, int flags, int timeout) =>
      js_util.callMethod(this, 'clientWaitSync', [mSync, flags, timeout]);

  Object waitSync(WebGLSync mSync, int flags, int timeout) =>
      js_util.callMethod(this, 'waitSync', [mSync, flags, timeout]);

  dynamic getSyncParameter(WebGLSync mSync, int pname) =>
      js_util.callMethod(this, 'getSyncParameter', [mSync, pname]);

  WebGLTransformFeedback? createTransformFeedback() =>
      js_util.callMethod(this, 'createTransformFeedback', []);

  Object deleteTransformFeedback(WebGLTransformFeedback? tf) =>
      js_util.callMethod(this, 'deleteTransformFeedback', [tf]);

  bool isTransformFeedback(WebGLTransformFeedback? tf) =>
      js_util.callMethod(this, 'isTransformFeedback', [tf]);

  Object bindTransformFeedback(int target, WebGLTransformFeedback? tf) =>
      js_util.callMethod(this, 'bindTransformFeedback', [target, tf]);

  Object beginTransformFeedback(int primitiveMode) =>
      js_util.callMethod(this, 'beginTransformFeedback', [primitiveMode]);

  Object endTransformFeedback() =>
      js_util.callMethod(this, 'endTransformFeedback', []);

  Object transformFeedbackVaryings(
          WebGLProgram program, Iterable<String> varyings, int bufferMode) =>
      js_util.callMethod(
          this, 'transformFeedbackVaryings', [program, varyings, bufferMode]);

  WebGLActiveInfo? getTransformFeedbackVarying(
          WebGLProgram program, int index) =>
      js_util.callMethod(this, 'getTransformFeedbackVarying', [program, index]);

  Object pauseTransformFeedback() =>
      js_util.callMethod(this, 'pauseTransformFeedback', []);

  Object resumeTransformFeedback() =>
      js_util.callMethod(this, 'resumeTransformFeedback', []);

  Object bindBufferBase(int target, int index, WebGLBuffer? buffer) =>
      js_util.callMethod(this, 'bindBufferBase', [target, index, buffer]);

  Object bindBufferRange(
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

  Object uniformBlockBinding(WebGLProgram program, int uniformBlockIndex,
          int uniformBlockBinding) =>
      js_util.callMethod(this, 'uniformBlockBinding',
          [program, uniformBlockIndex, uniformBlockBinding]);

  WebGLVertexArrayObject? createVertexArray() =>
      js_util.callMethod(this, 'createVertexArray', []);

  Object deleteVertexArray(WebGLVertexArrayObject? vertexArray) =>
      js_util.callMethod(this, 'deleteVertexArray', [vertexArray]);

  bool isVertexArray(WebGLVertexArrayObject? vertexArray) =>
      js_util.callMethod(this, 'isVertexArray', [vertexArray]);

  Object bindVertexArray(WebGLVertexArrayObject? array) =>
      js_util.callMethod(this, 'bindVertexArray', [array]);
}

@JS()
@staticInterop
class WebGL2RenderingContextOverloads {
  external WebGL2RenderingContextOverloads();
}

extension PropsWebGL2RenderingContextOverloads
    on WebGL2RenderingContextOverloads {
  Object bufferData(int target, dynamic srcData,
          [int? usage, int? srcOffset, int? length = 0]) =>
      js_util.callMethod(
          this, 'bufferData', [target, srcData, usage, srcOffset, length]);

  Object bufferSubData(int target, int dstByteOffset,
          [dynamic srcData, int? srcOffset, int? length = 0]) =>
      js_util.callMethod(this, 'bufferSubData',
          [target, dstByteOffset, srcData, srcOffset, length]);

  Object texImage2D(
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

  Object texSubImage2D(int target, int level, int xoffset, int yoffset,
          int width, int height,
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

  Object compressedTexImage2D(int target, int level, int internalformat,
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

  Object compressedTexSubImage2D(int target, int level, int xoffset,
          int yoffset, int width, int height, int format, dynamic srcData,
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

  Object uniform1fv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform1fv', [location, data, srcOffset, srcLength]);

  Object uniform2fv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform2fv', [location, data, srcOffset, srcLength]);

  Object uniform3fv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform3fv', [location, data, srcOffset, srcLength]);

  Object uniform4fv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform4fv', [location, data, srcOffset, srcLength]);

  Object uniform1iv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform1iv', [location, data, srcOffset, srcLength]);

  Object uniform2iv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform2iv', [location, data, srcOffset, srcLength]);

  Object uniform3iv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform3iv', [location, data, srcOffset, srcLength]);

  Object uniform4iv(WebGLUniformLocation? location, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(
          this, 'uniform4iv', [location, data, srcOffset, srcLength]);

  Object uniformMatrix2fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix2fv',
          [location, transpose, data, srcOffset, srcLength]);

  Object uniformMatrix3fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix3fv',
          [location, transpose, data, srcOffset, srcLength]);

  Object uniformMatrix4fv(
          WebGLUniformLocation? location, bool transpose, dynamic data,
          [int? srcOffset = 0, int? srcLength = 0]) =>
      js_util.callMethod(this, 'uniformMatrix4fv',
          [location, transpose, data, srcOffset, srcLength]);

  Object readPixels(int x, int y, int width, int height, int format, int type,
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
  external WebGL2RenderingContext();
}
