/// WebGPU
///
/// https://gpuweb.github.io/gpuweb/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webgpu;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'dart:typed_data';
import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class GPUObjectBase {
  external GPUObjectBase();
}

extension PropsGPUObjectBase on GPUObjectBase {
  String? get label => js_util.getProperty(this, 'label');
  set label(String? newValue) {
    js_util.setProperty(this, 'label', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUObjectDescriptorBase {
  external factory GPUObjectDescriptorBase({required String label});
}

extension PropsGPUObjectDescriptorBase on GPUObjectDescriptorBase {
  String get label => js_util.getProperty(this, 'label');
  set label(String newValue) {
    js_util.setProperty(this, 'label', newValue);
  }
}

@JS()
@staticInterop
class GPUSupportedLimits {
  external GPUSupportedLimits();
}

extension PropsGPUSupportedLimits on GPUSupportedLimits {
  int get maxTextureDimension1D =>
      js_util.getProperty(this, 'maxTextureDimension1D');
  int get maxTextureDimension2D =>
      js_util.getProperty(this, 'maxTextureDimension2D');
  int get maxTextureDimension3D =>
      js_util.getProperty(this, 'maxTextureDimension3D');
  int get maxTextureArrayLayers =>
      js_util.getProperty(this, 'maxTextureArrayLayers');
  int get maxBindGroups => js_util.getProperty(this, 'maxBindGroups');
  int get maxDynamicUniformBuffersPerPipelineLayout =>
      js_util.getProperty(this, 'maxDynamicUniformBuffersPerPipelineLayout');
  int get maxDynamicStorageBuffersPerPipelineLayout =>
      js_util.getProperty(this, 'maxDynamicStorageBuffersPerPipelineLayout');
  int get maxSampledTexturesPerShaderStage =>
      js_util.getProperty(this, 'maxSampledTexturesPerShaderStage');
  int get maxSamplersPerShaderStage =>
      js_util.getProperty(this, 'maxSamplersPerShaderStage');
  int get maxStorageBuffersPerShaderStage =>
      js_util.getProperty(this, 'maxStorageBuffersPerShaderStage');
  int get maxStorageTexturesPerShaderStage =>
      js_util.getProperty(this, 'maxStorageTexturesPerShaderStage');
  int get maxUniformBuffersPerShaderStage =>
      js_util.getProperty(this, 'maxUniformBuffersPerShaderStage');
  int get maxUniformBufferBindingSize =>
      js_util.getProperty(this, 'maxUniformBufferBindingSize');
  int get maxStorageBufferBindingSize =>
      js_util.getProperty(this, 'maxStorageBufferBindingSize');
  int get maxVertexBuffers => js_util.getProperty(this, 'maxVertexBuffers');
  int get maxVertexAttributes =>
      js_util.getProperty(this, 'maxVertexAttributes');
  int get maxVertexBufferArrayStride =>
      js_util.getProperty(this, 'maxVertexBufferArrayStride');
}

@JS()
@staticInterop
class GPUSupportedFeatures {
  external GPUSupportedFeatures();
}

extension PropsGPUSupportedFeatures on GPUSupportedFeatures {
  String operator [](int index) => js_util.getProperty(this, index);
}

enum GPUPredefinedColorSpace { srgb }

@JS()
@staticInterop
class NavigatorGPU {
  external NavigatorGPU();
}

extension PropsNavigatorGPU on NavigatorGPU {
  Gpu get gpu => js_util.getProperty(this, 'gpu');
}

@JS('GPU')
@staticInterop
class Gpu {
  external Gpu();
}

extension PropsGpu on Gpu {
  Future<GPUAdapter> requestAdapter([GPURequestAdapterOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestAdapter', [options]));
}

@anonymous
@JS()
@staticInterop
class GPURequestAdapterOptions {
  external factory GPURequestAdapterOptions._(
      {required String powerPreference, bool? forceSoftware = false});

  factory GPURequestAdapterOptions(
          {required GPUPowerPreference powerPreference,
          bool? forceSoftware = false}) =>
      GPURequestAdapterOptions._(
          powerPreference: powerPreference.name, forceSoftware: forceSoftware);
}

extension PropsGPURequestAdapterOptions on GPURequestAdapterOptions {
  GPUPowerPreference get powerPreference => GPUPowerPreference.values
      .byName(js_util.getProperty(this, 'powerPreference'));
  set powerPreference(GPUPowerPreference newValue) {
    js_util.setProperty(this, 'powerPreference', newValue.name);
  }

  bool get forceSoftware => js_util.getProperty(this, 'forceSoftware');
  set forceSoftware(bool newValue) {
    js_util.setProperty(this, 'forceSoftware', newValue);
  }
}

enum GPUPowerPreference { lowPower, highPerformance }

@JS()
@staticInterop
class GPUAdapter {
  external GPUAdapter();
}

extension PropsGPUAdapter on GPUAdapter {
  String get name => js_util.getProperty(this, 'name');
  GPUSupportedFeatures get features => js_util.getProperty(this, 'features');
  GPUSupportedLimits get limits => js_util.getProperty(this, 'limits');
  bool get isSoftware => js_util.getProperty(this, 'isSoftware');
  Future<GPUDevice> requestDevice([GPUDeviceDescriptor? descriptor]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'requestDevice', [descriptor]));
}

@anonymous
@JS()
@staticInterop
class GPUDeviceDescriptor implements GPUObjectDescriptorBase {
  external factory GPUDeviceDescriptor._(
      {Iterable<String>? nonGuaranteedFeatures, dynamic nonGuaranteedLimits});

  factory GPUDeviceDescriptor(
          {Iterable<GPUFeatureName>? nonGuaranteedFeatures = const [],
          dynamic nonGuaranteedLimits}) =>
      GPUDeviceDescriptor._(
          nonGuaranteedFeatures: nonGuaranteedFeatures?.names,
          nonGuaranteedLimits: nonGuaranteedLimits);
}

extension PropsGPUDeviceDescriptor on GPUDeviceDescriptor {
  Iterable<GPUFeatureName> get nonGuaranteedFeatures => GPUFeatureName.values
      .byNames(js_util.getProperty(this, 'nonGuaranteedFeatures'));
  set nonGuaranteedFeatures(Iterable<GPUFeatureName> newValue) {
    js_util.setProperty(this, 'nonGuaranteedFeatures', newValue.names);
  }

  dynamic get nonGuaranteedLimits =>
      js_util.getProperty(this, 'nonGuaranteedLimits');
  set nonGuaranteedLimits(dynamic newValue) {
    js_util.setProperty(this, 'nonGuaranteedLimits', newValue);
  }
}

enum GPUFeatureName {
  depthClamping,
  depth24unormStencil8,
  depth32floatStencil8,
  pipelineStatisticsQuery,
  textureCompressionBc,
  timestampQuery
}

@JS()
@staticInterop
class GPUDevice implements EventTarget, GPUObjectBase {
  external GPUDevice();
}

extension PropsGPUDevice on GPUDevice {
  GPUSupportedFeatures get features => js_util.getProperty(this, 'features');
  GPUSupportedLimits get limits => js_util.getProperty(this, 'limits');
  GPUQueue get queue => js_util.getProperty(this, 'queue');
  Object destroy() => js_util.callMethod(this, 'destroy', []);

  GPUBuffer createBuffer(GPUBufferDescriptor descriptor) =>
      js_util.callMethod(this, 'createBuffer', [descriptor]);

  GPUTexture createTexture(GPUTextureDescriptor descriptor) =>
      js_util.callMethod(this, 'createTexture', [descriptor]);

  GPUSampler createSampler([GPUSamplerDescriptor? descriptor]) =>
      js_util.callMethod(this, 'createSampler', [descriptor]);

  GPUExternalTexture importExternalTexture(
          GPUExternalTextureDescriptor descriptor) =>
      js_util.callMethod(this, 'importExternalTexture', [descriptor]);

  GPUBindGroupLayout createBindGroupLayout(
          GPUBindGroupLayoutDescriptor descriptor) =>
      js_util.callMethod(this, 'createBindGroupLayout', [descriptor]);

  GPUPipelineLayout createPipelineLayout(
          GPUPipelineLayoutDescriptor descriptor) =>
      js_util.callMethod(this, 'createPipelineLayout', [descriptor]);

  GPUBindGroup createBindGroup(GPUBindGroupDescriptor descriptor) =>
      js_util.callMethod(this, 'createBindGroup', [descriptor]);

  GPUShaderModule createShaderModule(GPUShaderModuleDescriptor descriptor) =>
      js_util.callMethod(this, 'createShaderModule', [descriptor]);

  GPUComputePipeline createComputePipeline(
          GPUComputePipelineDescriptor descriptor) =>
      js_util.callMethod(this, 'createComputePipeline', [descriptor]);

  GPURenderPipeline createRenderPipeline(
          GPURenderPipelineDescriptor descriptor) =>
      js_util.callMethod(this, 'createRenderPipeline', [descriptor]);

  Future<GPUComputePipeline> createComputePipelineAsync(
          GPUComputePipelineDescriptor descriptor) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'createComputePipelineAsync', [descriptor]));

  Future<GPURenderPipeline> createRenderPipelineAsync(
          GPURenderPipelineDescriptor descriptor) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'createRenderPipelineAsync', [descriptor]));

  GPUCommandEncoder createCommandEncoder(
          [GPUCommandEncoderDescriptor? descriptor]) =>
      js_util.callMethod(this, 'createCommandEncoder', [descriptor]);

  GPURenderBundleEncoder createRenderBundleEncoder(
          GPURenderBundleEncoderDescriptor descriptor) =>
      js_util.callMethod(this, 'createRenderBundleEncoder', [descriptor]);

  GPUQuerySet createQuerySet(GPUQuerySetDescriptor descriptor) =>
      js_util.callMethod(this, 'createQuerySet', [descriptor]);

  Future<GPUDeviceLostInfo> get lost =>
      js_util.promiseToFuture(js_util.getProperty(this, 'lost'));
  Object pushErrorScope(GPUErrorFilter filter) =>
      js_util.callMethod(this, 'pushErrorScope', [filter.name]);

  Future<dynamic> popErrorScope() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'popErrorScope', []));

  EventHandlerNonNull? get onuncapturederror =>
      js_util.getProperty(this, 'onuncapturederror');
  set onuncapturederror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onuncapturederror', newValue);
  }
}

@JS()
@staticInterop
class GPUBuffer implements GPUObjectBase {
  external GPUBuffer();
}

extension PropsGPUBuffer on GPUBuffer {
  Future<Object> mapAsync(int mode, [int? offset = 0, int? size]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'mapAsync', [mode, offset, size]));

  ByteBuffer getMappedRange([int? offset = 0, int? size]) =>
      js_util.callMethod(this, 'getMappedRange', [offset, size]);

  Object unmap() => js_util.callMethod(this, 'unmap', []);

  Object destroy() => js_util.callMethod(this, 'destroy', []);
}

@anonymous
@JS()
@staticInterop
class GPUBufferDescriptor implements GPUObjectDescriptorBase {
  external factory GPUBufferDescriptor(
      {required int size, required int usage, bool? mappedAtCreation = false});
}

extension PropsGPUBufferDescriptor on GPUBufferDescriptor {
  int get size => js_util.getProperty(this, 'size');
  set size(int newValue) {
    js_util.setProperty(this, 'size', newValue);
  }

  int get usage => js_util.getProperty(this, 'usage');
  set usage(int newValue) {
    js_util.setProperty(this, 'usage', newValue);
  }

  bool get mappedAtCreation => js_util.getProperty(this, 'mappedAtCreation');
  set mappedAtCreation(bool newValue) {
    js_util.setProperty(this, 'mappedAtCreation', newValue);
  }
}

@JS()
@staticInterop
class GPUBufferUsage {
  @JS('MAP_READ')
  external static int get mapRead;

  @JS('MAP_WRITE')
  external static int get mapWrite;

  @JS('COPY_SRC')
  external static int get copySrc;

  @JS('COPY_DST')
  external static int get copyDst;

  @JS('INDEX')
  external static int get index;

  @JS('VERTEX')
  external static int get vertex;

  @JS('UNIFORM')
  external static int get uniform;

  @JS('STORAGE')
  external static int get storage;

  @JS('INDIRECT')
  external static int get indirect;

  @JS('QUERY_RESOLVE')
  external static int get queryResolve;

  external GPUBufferUsage();
}

@JS()
@staticInterop
class GPUMapMode {
  @JS('READ')
  external static int get read;

  @JS('WRITE')
  external static int get write;

  external GPUMapMode();
}

@JS()
@staticInterop
class GPUTexture implements GPUObjectBase {
  external GPUTexture();
}

extension PropsGPUTexture on GPUTexture {
  GPUTextureView createView([GPUTextureViewDescriptor? descriptor]) =>
      js_util.callMethod(this, 'createView', [descriptor]);

  Object destroy() => js_util.callMethod(this, 'destroy', []);
}

@anonymous
@JS()
@staticInterop
class GPUTextureDescriptor implements GPUObjectDescriptorBase {
  external factory GPUTextureDescriptor._(
      {dynamic size,
      int? mipLevelCount = 1,
      int? sampleCount = 1,
      String? dimension,
      String? format,
      int? usage});

  factory GPUTextureDescriptor(
          {dynamic size,
          int? mipLevelCount = 1,
          int? sampleCount = 1,
          GPUTextureDimension? dimension = GPUTextureDimension.value2d,
          GPUTextureFormat? format,
          int? usage}) =>
      GPUTextureDescriptor._(
          size: size,
          mipLevelCount: mipLevelCount,
          sampleCount: sampleCount,
          dimension: dimension?.name,
          format: format?.name,
          usage: usage);
}

extension PropsGPUTextureDescriptor on GPUTextureDescriptor {
  dynamic get size => js_util.getProperty(this, 'size');
  set size(dynamic newValue) {
    js_util.setProperty(this, 'size', newValue);
  }

  int get mipLevelCount => js_util.getProperty(this, 'mipLevelCount');
  set mipLevelCount(int newValue) {
    js_util.setProperty(this, 'mipLevelCount', newValue);
  }

  int get sampleCount => js_util.getProperty(this, 'sampleCount');
  set sampleCount(int newValue) {
    js_util.setProperty(this, 'sampleCount', newValue);
  }

  GPUTextureDimension get dimension =>
      GPUTextureDimension.values.byName(js_util.getProperty(this, 'dimension'));
  set dimension(GPUTextureDimension newValue) {
    js_util.setProperty(this, 'dimension', newValue.name);
  }

  GPUTextureFormat get format =>
      GPUTextureFormat.values.byName(js_util.getProperty(this, 'format'));
  set format(GPUTextureFormat newValue) {
    js_util.setProperty(this, 'format', newValue.name);
  }

  int get usage => js_util.getProperty(this, 'usage');
  set usage(int newValue) {
    js_util.setProperty(this, 'usage', newValue);
  }
}

enum GPUTextureDimension { value1d, value2d, value3d }

@JS()
@staticInterop
class GPUTextureUsage {
  @JS('COPY_SRC')
  external static int get copySrc;

  @JS('COPY_DST')
  external static int get copyDst;

  @JS('SAMPLED')
  external static int get sampled;

  @JS('STORAGE')
  external static int get storage;

  @JS('RENDER_ATTACHMENT')
  external static int get renderAttachment;

  external GPUTextureUsage();
}

@JS()
@staticInterop
class GPUTextureView implements GPUObjectBase {
  external GPUTextureView();
}

@anonymous
@JS()
@staticInterop
class GPUTextureViewDescriptor implements GPUObjectDescriptorBase {
  external factory GPUTextureViewDescriptor._(
      {required String format,
      required String dimension,
      String? aspect,
      int? baseMipLevel = 0,
      int? mipLevelCount,
      int? baseArrayLayer = 0,
      int? arrayLayerCount});

  factory GPUTextureViewDescriptor(
          {required GPUTextureFormat format,
          required GPUTextureViewDimension dimension,
          GPUTextureAspect? aspect = GPUTextureAspect.all,
          int? baseMipLevel = 0,
          int? mipLevelCount,
          int? baseArrayLayer = 0,
          int? arrayLayerCount}) =>
      GPUTextureViewDescriptor._(
          format: format.name,
          dimension: dimension.name,
          aspect: aspect?.name,
          baseMipLevel: baseMipLevel,
          mipLevelCount: mipLevelCount,
          baseArrayLayer: baseArrayLayer,
          arrayLayerCount: arrayLayerCount);
}

extension PropsGPUTextureViewDescriptor on GPUTextureViewDescriptor {
  GPUTextureFormat get format =>
      GPUTextureFormat.values.byName(js_util.getProperty(this, 'format'));
  set format(GPUTextureFormat newValue) {
    js_util.setProperty(this, 'format', newValue.name);
  }

  GPUTextureViewDimension get dimension => GPUTextureViewDimension.values
      .byName(js_util.getProperty(this, 'dimension'));
  set dimension(GPUTextureViewDimension newValue) {
    js_util.setProperty(this, 'dimension', newValue.name);
  }

  GPUTextureAspect get aspect =>
      GPUTextureAspect.values.byName(js_util.getProperty(this, 'aspect'));
  set aspect(GPUTextureAspect newValue) {
    js_util.setProperty(this, 'aspect', newValue.name);
  }

  int get baseMipLevel => js_util.getProperty(this, 'baseMipLevel');
  set baseMipLevel(int newValue) {
    js_util.setProperty(this, 'baseMipLevel', newValue);
  }

  int get mipLevelCount => js_util.getProperty(this, 'mipLevelCount');
  set mipLevelCount(int newValue) {
    js_util.setProperty(this, 'mipLevelCount', newValue);
  }

  int get baseArrayLayer => js_util.getProperty(this, 'baseArrayLayer');
  set baseArrayLayer(int newValue) {
    js_util.setProperty(this, 'baseArrayLayer', newValue);
  }

  int get arrayLayerCount => js_util.getProperty(this, 'arrayLayerCount');
  set arrayLayerCount(int newValue) {
    js_util.setProperty(this, 'arrayLayerCount', newValue);
  }
}

enum GPUTextureViewDimension {
  value1d,
  value2d,
  value2dArray,
  cube,
  cubeArray,
  value3d
}

enum GPUTextureAspect { all, stencilOnly, depthOnly }

enum GPUTextureFormat {
  r8unorm,
  r8snorm,
  r8uint,
  r8sint,
  r16uint,
  r16sint,
  r16float,
  rg8unorm,
  rg8snorm,
  rg8uint,
  rg8sint,
  r32uint,
  r32sint,
  r32float,
  rg16uint,
  rg16sint,
  rg16float,
  rgba8unorm,
  rgba8unormSrgb,
  rgba8snorm,
  rgba8uint,
  rgba8sint,
  bgra8unorm,
  bgra8unormSrgb,
  rgb9e5ufloat,
  rgb10a2unorm,
  rg11b10ufloat,
  rg32uint,
  rg32sint,
  rg32float,
  rgba16uint,
  rgba16sint,
  rgba16float,
  rgba32uint,
  rgba32sint,
  rgba32float,
  stencil8,
  depth16unorm,
  depth24plus,
  depth24plusStencil8,
  depth32float,
  bc1RgbaUnorm,
  bc1RgbaUnormSrgb,
  bc2RgbaUnorm,
  bc2RgbaUnormSrgb,
  bc3RgbaUnorm,
  bc3RgbaUnormSrgb,
  bc4RUnorm,
  bc4RSnorm,
  bc5RgUnorm,
  bc5RgSnorm,
  bc6hRgbUfloat,
  bc6hRgbFloat,
  bc7RgbaUnorm,
  bc7RgbaUnormSrgb,
  depth24unormStencil8,
  depth32floatStencil8
}

@JS()
@staticInterop
class GPUExternalTexture implements GPUObjectBase {
  external GPUExternalTexture();
}

@anonymous
@JS()
@staticInterop
class GPUExternalTextureDescriptor implements GPUObjectDescriptorBase {
  external factory GPUExternalTextureDescriptor._(
      {required HTMLVideoElement source, String? colorSpace});

  factory GPUExternalTextureDescriptor(
          {required HTMLVideoElement source,
          GPUPredefinedColorSpace? colorSpace =
              GPUPredefinedColorSpace.srgb}) =>
      GPUExternalTextureDescriptor._(
          source: source, colorSpace: colorSpace?.name);
}

extension PropsGPUExternalTextureDescriptor on GPUExternalTextureDescriptor {
  HTMLVideoElement get source => js_util.getProperty(this, 'source');
  set source(HTMLVideoElement newValue) {
    js_util.setProperty(this, 'source', newValue);
  }

  GPUPredefinedColorSpace get colorSpace => GPUPredefinedColorSpace.values
      .byName(js_util.getProperty(this, 'colorSpace'));
  set colorSpace(GPUPredefinedColorSpace newValue) {
    js_util.setProperty(this, 'colorSpace', newValue.name);
  }
}

@JS()
@staticInterop
class GPUSampler implements GPUObjectBase {
  external GPUSampler();
}

@anonymous
@JS()
@staticInterop
class GPUSamplerDescriptor implements GPUObjectDescriptorBase {
  external factory GPUSamplerDescriptor._(
      {String? addressModeU,
      String? addressModeV,
      String? addressModeW,
      String? magFilter,
      String? minFilter,
      String? mipmapFilter,
      double? lodMinClamp = 0,
      double? lodMaxClamp = 0xffffffff,
      String? compare,
      int? maxAnisotropy = 1});

  factory GPUSamplerDescriptor(
          {GPUAddressMode? addressModeU = GPUAddressMode.clampToEdge,
          GPUAddressMode? addressModeV = GPUAddressMode.clampToEdge,
          GPUAddressMode? addressModeW = GPUAddressMode.clampToEdge,
          GPUFilterMode? magFilter = GPUFilterMode.nearest,
          GPUFilterMode? minFilter = GPUFilterMode.nearest,
          GPUFilterMode? mipmapFilter = GPUFilterMode.nearest,
          double? lodMinClamp = 0,
          double? lodMaxClamp = 0xffffffff,
          GPUCompareFunction? compare,
          int? maxAnisotropy = 1}) =>
      GPUSamplerDescriptor._(
          addressModeU: addressModeU?.name,
          addressModeV: addressModeV?.name,
          addressModeW: addressModeW?.name,
          magFilter: magFilter?.name,
          minFilter: minFilter?.name,
          mipmapFilter: mipmapFilter?.name,
          lodMinClamp: lodMinClamp,
          lodMaxClamp: lodMaxClamp,
          compare: compare?.name,
          maxAnisotropy: maxAnisotropy);
}

extension PropsGPUSamplerDescriptor on GPUSamplerDescriptor {
  GPUAddressMode get addressModeU =>
      GPUAddressMode.values.byName(js_util.getProperty(this, 'addressModeU'));
  set addressModeU(GPUAddressMode newValue) {
    js_util.setProperty(this, 'addressModeU', newValue.name);
  }

  GPUAddressMode get addressModeV =>
      GPUAddressMode.values.byName(js_util.getProperty(this, 'addressModeV'));
  set addressModeV(GPUAddressMode newValue) {
    js_util.setProperty(this, 'addressModeV', newValue.name);
  }

  GPUAddressMode get addressModeW =>
      GPUAddressMode.values.byName(js_util.getProperty(this, 'addressModeW'));
  set addressModeW(GPUAddressMode newValue) {
    js_util.setProperty(this, 'addressModeW', newValue.name);
  }

  GPUFilterMode get magFilter =>
      GPUFilterMode.values.byName(js_util.getProperty(this, 'magFilter'));
  set magFilter(GPUFilterMode newValue) {
    js_util.setProperty(this, 'magFilter', newValue.name);
  }

  GPUFilterMode get minFilter =>
      GPUFilterMode.values.byName(js_util.getProperty(this, 'minFilter'));
  set minFilter(GPUFilterMode newValue) {
    js_util.setProperty(this, 'minFilter', newValue.name);
  }

  GPUFilterMode get mipmapFilter =>
      GPUFilterMode.values.byName(js_util.getProperty(this, 'mipmapFilter'));
  set mipmapFilter(GPUFilterMode newValue) {
    js_util.setProperty(this, 'mipmapFilter', newValue.name);
  }

  double get lodMinClamp => js_util.getProperty(this, 'lodMinClamp');
  set lodMinClamp(double newValue) {
    js_util.setProperty(this, 'lodMinClamp', newValue);
  }

  double get lodMaxClamp => js_util.getProperty(this, 'lodMaxClamp');
  set lodMaxClamp(double newValue) {
    js_util.setProperty(this, 'lodMaxClamp', newValue);
  }

  GPUCompareFunction get compare =>
      GPUCompareFunction.values.byName(js_util.getProperty(this, 'compare'));
  set compare(GPUCompareFunction newValue) {
    js_util.setProperty(this, 'compare', newValue.name);
  }

  int get maxAnisotropy => js_util.getProperty(this, 'maxAnisotropy');
  set maxAnisotropy(int newValue) {
    js_util.setProperty(this, 'maxAnisotropy', newValue);
  }
}

enum GPUAddressMode { clampToEdge, repeat, mirrorRepeat }

enum GPUFilterMode { nearest, linear }

enum GPUCompareFunction {
  never,
  less,
  equal,
  lessEqual,
  greater,
  notEqual,
  greaterEqual,
  always
}

@JS()
@staticInterop
class GPUBindGroupLayout implements GPUObjectBase {
  external GPUBindGroupLayout();
}

@anonymous
@JS()
@staticInterop
class GPUBindGroupLayoutDescriptor implements GPUObjectDescriptorBase {
  external factory GPUBindGroupLayoutDescriptor(
      {required Iterable<GPUBindGroupLayoutEntry> entries});
}

extension PropsGPUBindGroupLayoutDescriptor on GPUBindGroupLayoutDescriptor {
  Iterable<GPUBindGroupLayoutEntry> get entries =>
      js_util.getProperty(this, 'entries');
  set entries(Iterable<GPUBindGroupLayoutEntry> newValue) {
    js_util.setProperty(this, 'entries', newValue);
  }
}

@JS()
@staticInterop
class GPUShaderStage {
  @JS('VERTEX')
  external static int get vertex;

  @JS('FRAGMENT')
  external static int get fragment;

  @JS('COMPUTE')
  external static int get compute;

  external GPUShaderStage();
}

@anonymous
@JS()
@staticInterop
class GPUBindGroupLayoutEntry {
  external factory GPUBindGroupLayoutEntry(
      {required int binding,
      required int visibility,
      required GPUBufferBindingLayout buffer,
      required GPUSamplerBindingLayout sampler,
      required GPUTextureBindingLayout texture,
      required GPUStorageTextureBindingLayout storageTexture,
      required GPUExternalTextureBindingLayout externalTexture});
}

extension PropsGPUBindGroupLayoutEntry on GPUBindGroupLayoutEntry {
  int get binding => js_util.getProperty(this, 'binding');
  set binding(int newValue) {
    js_util.setProperty(this, 'binding', newValue);
  }

  int get visibility => js_util.getProperty(this, 'visibility');
  set visibility(int newValue) {
    js_util.setProperty(this, 'visibility', newValue);
  }

  GPUBufferBindingLayout get buffer => js_util.getProperty(this, 'buffer');
  set buffer(GPUBufferBindingLayout newValue) {
    js_util.setProperty(this, 'buffer', newValue);
  }

  GPUSamplerBindingLayout get sampler => js_util.getProperty(this, 'sampler');
  set sampler(GPUSamplerBindingLayout newValue) {
    js_util.setProperty(this, 'sampler', newValue);
  }

  GPUTextureBindingLayout get texture => js_util.getProperty(this, 'texture');
  set texture(GPUTextureBindingLayout newValue) {
    js_util.setProperty(this, 'texture', newValue);
  }

  GPUStorageTextureBindingLayout get storageTexture =>
      js_util.getProperty(this, 'storageTexture');
  set storageTexture(GPUStorageTextureBindingLayout newValue) {
    js_util.setProperty(this, 'storageTexture', newValue);
  }

  GPUExternalTextureBindingLayout get externalTexture =>
      js_util.getProperty(this, 'externalTexture');
  set externalTexture(GPUExternalTextureBindingLayout newValue) {
    js_util.setProperty(this, 'externalTexture', newValue);
  }
}

enum GPUBufferBindingType { uniform, storage, readOnlyStorage }

@anonymous
@JS()
@staticInterop
class GPUBufferBindingLayout {
  external factory GPUBufferBindingLayout._(
      {String? type, bool? hasDynamicOffset = false, int? minBindingSize = 0});

  factory GPUBufferBindingLayout(
          {GPUBufferBindingType? type = GPUBufferBindingType.uniform,
          bool? hasDynamicOffset = false,
          int? minBindingSize = 0}) =>
      GPUBufferBindingLayout._(
          type: type?.name,
          hasDynamicOffset: hasDynamicOffset,
          minBindingSize: minBindingSize);
}

extension PropsGPUBufferBindingLayout on GPUBufferBindingLayout {
  GPUBufferBindingType get type =>
      GPUBufferBindingType.values.byName(js_util.getProperty(this, 'type'));
  set type(GPUBufferBindingType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }

  bool get hasDynamicOffset => js_util.getProperty(this, 'hasDynamicOffset');
  set hasDynamicOffset(bool newValue) {
    js_util.setProperty(this, 'hasDynamicOffset', newValue);
  }

  int get minBindingSize => js_util.getProperty(this, 'minBindingSize');
  set minBindingSize(int newValue) {
    js_util.setProperty(this, 'minBindingSize', newValue);
  }
}

enum GPUSamplerBindingType { filtering, nonFiltering, comparison }

@anonymous
@JS()
@staticInterop
class GPUSamplerBindingLayout {
  external factory GPUSamplerBindingLayout._({String? type});

  factory GPUSamplerBindingLayout(
          {GPUSamplerBindingType? type = GPUSamplerBindingType.filtering}) =>
      GPUSamplerBindingLayout._(type: type?.name);
}

extension PropsGPUSamplerBindingLayout on GPUSamplerBindingLayout {
  GPUSamplerBindingType get type =>
      GPUSamplerBindingType.values.byName(js_util.getProperty(this, 'type'));
  set type(GPUSamplerBindingType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }
}

enum GPUTextureSampleType { float, unfilterableFloat, depth, sint, uint }

@anonymous
@JS()
@staticInterop
class GPUTextureBindingLayout {
  external factory GPUTextureBindingLayout._(
      {String? sampleType, String? viewDimension, bool? multisampled = false});

  factory GPUTextureBindingLayout(
          {GPUTextureSampleType? sampleType = GPUTextureSampleType.float,
          GPUTextureViewDimension? viewDimension =
              GPUTextureViewDimension.value2d,
          bool? multisampled = false}) =>
      GPUTextureBindingLayout._(
          sampleType: sampleType?.name,
          viewDimension: viewDimension?.name,
          multisampled: multisampled);
}

extension PropsGPUTextureBindingLayout on GPUTextureBindingLayout {
  GPUTextureSampleType get sampleType => GPUTextureSampleType.values
      .byName(js_util.getProperty(this, 'sampleType'));
  set sampleType(GPUTextureSampleType newValue) {
    js_util.setProperty(this, 'sampleType', newValue.name);
  }

  GPUTextureViewDimension get viewDimension => GPUTextureViewDimension.values
      .byName(js_util.getProperty(this, 'viewDimension'));
  set viewDimension(GPUTextureViewDimension newValue) {
    js_util.setProperty(this, 'viewDimension', newValue.name);
  }

  bool get multisampled => js_util.getProperty(this, 'multisampled');
  set multisampled(bool newValue) {
    js_util.setProperty(this, 'multisampled', newValue);
  }
}

enum GPUStorageTextureAccess { readOnly, writeOnly }

@anonymous
@JS()
@staticInterop
class GPUStorageTextureBindingLayout {
  external factory GPUStorageTextureBindingLayout._(
      {required String access, required String format, String? viewDimension});

  factory GPUStorageTextureBindingLayout(
          {required GPUStorageTextureAccess access,
          required GPUTextureFormat format,
          GPUTextureViewDimension? viewDimension =
              GPUTextureViewDimension.value2d}) =>
      GPUStorageTextureBindingLayout._(
          access: access.name,
          format: format.name,
          viewDimension: viewDimension?.name);
}

extension PropsGPUStorageTextureBindingLayout
    on GPUStorageTextureBindingLayout {
  GPUStorageTextureAccess get access => GPUStorageTextureAccess.values
      .byName(js_util.getProperty(this, 'access'));
  set access(GPUStorageTextureAccess newValue) {
    js_util.setProperty(this, 'access', newValue.name);
  }

  GPUTextureFormat get format =>
      GPUTextureFormat.values.byName(js_util.getProperty(this, 'format'));
  set format(GPUTextureFormat newValue) {
    js_util.setProperty(this, 'format', newValue.name);
  }

  GPUTextureViewDimension get viewDimension => GPUTextureViewDimension.values
      .byName(js_util.getProperty(this, 'viewDimension'));
  set viewDimension(GPUTextureViewDimension newValue) {
    js_util.setProperty(this, 'viewDimension', newValue.name);
  }
}

@anonymous
@JS()
@staticInterop
class GPUExternalTextureBindingLayout {
  external factory GPUExternalTextureBindingLayout();
}

@JS()
@staticInterop
class GPUBindGroup implements GPUObjectBase {
  external GPUBindGroup();
}

@anonymous
@JS()
@staticInterop
class GPUBindGroupDescriptor implements GPUObjectDescriptorBase {
  external factory GPUBindGroupDescriptor(
      {required GPUBindGroupLayout layout,
      required Iterable<GPUBindGroupEntry> entries});
}

extension PropsGPUBindGroupDescriptor on GPUBindGroupDescriptor {
  GPUBindGroupLayout get layout => js_util.getProperty(this, 'layout');
  set layout(GPUBindGroupLayout newValue) {
    js_util.setProperty(this, 'layout', newValue);
  }

  Iterable<GPUBindGroupEntry> get entries =>
      js_util.getProperty(this, 'entries');
  set entries(Iterable<GPUBindGroupEntry> newValue) {
    js_util.setProperty(this, 'entries', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUBindGroupEntry {
  external factory GPUBindGroupEntry({required int binding, dynamic resource});
}

extension PropsGPUBindGroupEntry on GPUBindGroupEntry {
  int get binding => js_util.getProperty(this, 'binding');
  set binding(int newValue) {
    js_util.setProperty(this, 'binding', newValue);
  }

  dynamic get resource => js_util.getProperty(this, 'resource');
  set resource(dynamic newValue) {
    js_util.setProperty(this, 'resource', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUBufferBinding {
  external factory GPUBufferBinding(
      {required GPUBuffer buffer, int? offset = 0, int? size});
}

extension PropsGPUBufferBinding on GPUBufferBinding {
  GPUBuffer get buffer => js_util.getProperty(this, 'buffer');
  set buffer(GPUBuffer newValue) {
    js_util.setProperty(this, 'buffer', newValue);
  }

  int get offset => js_util.getProperty(this, 'offset');
  set offset(int newValue) {
    js_util.setProperty(this, 'offset', newValue);
  }

  int get size => js_util.getProperty(this, 'size');
  set size(int newValue) {
    js_util.setProperty(this, 'size', newValue);
  }
}

@JS()
@staticInterop
class GPUPipelineLayout implements GPUObjectBase {
  external GPUPipelineLayout();
}

@anonymous
@JS()
@staticInterop
class GPUPipelineLayoutDescriptor implements GPUObjectDescriptorBase {
  external factory GPUPipelineLayoutDescriptor(
      {required Iterable<GPUBindGroupLayout> bindGroupLayouts});
}

extension PropsGPUPipelineLayoutDescriptor on GPUPipelineLayoutDescriptor {
  Iterable<GPUBindGroupLayout> get bindGroupLayouts =>
      js_util.getProperty(this, 'bindGroupLayouts');
  set bindGroupLayouts(Iterable<GPUBindGroupLayout> newValue) {
    js_util.setProperty(this, 'bindGroupLayouts', newValue);
  }
}

@JS()
@staticInterop
class GPUShaderModule implements GPUObjectBase {
  external GPUShaderModule();
}

extension PropsGPUShaderModule on GPUShaderModule {
  Future<GPUCompilationInfo> compilationInfo() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'compilationInfo', []));
}

@anonymous
@JS()
@staticInterop
class GPUShaderModuleDescriptor implements GPUObjectDescriptorBase {
  external factory GPUShaderModuleDescriptor(
      {required String code, dynamic sourceMap});
}

extension PropsGPUShaderModuleDescriptor on GPUShaderModuleDescriptor {
  String get code => js_util.getProperty(this, 'code');
  set code(String newValue) {
    js_util.setProperty(this, 'code', newValue);
  }

  dynamic get sourceMap => js_util.getProperty(this, 'sourceMap');
  set sourceMap(dynamic newValue) {
    js_util.setProperty(this, 'sourceMap', newValue);
  }
}

enum GPUCompilationMessageType { error, warning, info }

@JS()
@staticInterop
class GPUCompilationMessage {
  external GPUCompilationMessage();
}

extension PropsGPUCompilationMessage on GPUCompilationMessage {
  String get message => js_util.getProperty(this, 'message');
  GPUCompilationMessageType get type => GPUCompilationMessageType.values
      .byName(js_util.getProperty(this, 'type'));
  int get lineNum => js_util.getProperty(this, 'lineNum');
  int get linePos => js_util.getProperty(this, 'linePos');
  int get offset => js_util.getProperty(this, 'offset');
  int get length => js_util.getProperty(this, 'length');
}

@JS()
@staticInterop
class GPUCompilationInfo {
  external GPUCompilationInfo();
}

extension PropsGPUCompilationInfo on GPUCompilationInfo {
  Iterable<GPUCompilationMessage> get messages =>
      js_util.getProperty(this, 'messages');
}

@anonymous
@JS()
@staticInterop
class GPUPipelineDescriptorBase implements GPUObjectDescriptorBase {
  external factory GPUPipelineDescriptorBase(
      {required GPUPipelineLayout layout});
}

extension PropsGPUPipelineDescriptorBase on GPUPipelineDescriptorBase {
  GPUPipelineLayout get layout => js_util.getProperty(this, 'layout');
  set layout(GPUPipelineLayout newValue) {
    js_util.setProperty(this, 'layout', newValue);
  }
}

@JS()
@staticInterop
class GPUPipelineBase {
  external GPUPipelineBase();
}

extension PropsGPUPipelineBase on GPUPipelineBase {
  GPUBindGroupLayout getBindGroupLayout(int index) =>
      js_util.callMethod(this, 'getBindGroupLayout', [index]);
}

@anonymous
@JS()
@staticInterop
class GPUProgrammableStage {
  external factory GPUProgrammableStage(
      {required GPUShaderModule module,
      required String entryPoint,
      dynamic constants});
}

extension PropsGPUProgrammableStage on GPUProgrammableStage {
  GPUShaderModule get module => js_util.getProperty(this, 'module');
  set module(GPUShaderModule newValue) {
    js_util.setProperty(this, 'module', newValue);
  }

  String get entryPoint => js_util.getProperty(this, 'entryPoint');
  set entryPoint(String newValue) {
    js_util.setProperty(this, 'entryPoint', newValue);
  }

  dynamic get constants => js_util.getProperty(this, 'constants');
  set constants(dynamic newValue) {
    js_util.setProperty(this, 'constants', newValue);
  }
}

@JS()
@staticInterop
class GPUComputePipeline implements GPUObjectBase, GPUPipelineBase {
  external GPUComputePipeline();
}

@anonymous
@JS()
@staticInterop
class GPUComputePipelineDescriptor implements GPUPipelineDescriptorBase {
  external factory GPUComputePipelineDescriptor(
      {required GPUProgrammableStage compute});
}

extension PropsGPUComputePipelineDescriptor on GPUComputePipelineDescriptor {
  GPUProgrammableStage get compute => js_util.getProperty(this, 'compute');
  set compute(GPUProgrammableStage newValue) {
    js_util.setProperty(this, 'compute', newValue);
  }
}

@JS()
@staticInterop
class GPURenderPipeline implements GPUObjectBase, GPUPipelineBase {
  external GPURenderPipeline();
}

@anonymous
@JS()
@staticInterop
class GPURenderPipelineDescriptor implements GPUPipelineDescriptorBase {
  external factory GPURenderPipelineDescriptor(
      {required GPUVertexState vertex,
      required GPUPrimitiveState primitive,
      required GPUDepthStencilState depthStencil,
      required GPUMultisampleState multisample,
      required GPUFragmentState fragment});
}

extension PropsGPURenderPipelineDescriptor on GPURenderPipelineDescriptor {
  GPUVertexState get vertex => js_util.getProperty(this, 'vertex');
  set vertex(GPUVertexState newValue) {
    js_util.setProperty(this, 'vertex', newValue);
  }

  GPUPrimitiveState get primitive => js_util.getProperty(this, 'primitive');
  set primitive(GPUPrimitiveState newValue) {
    js_util.setProperty(this, 'primitive', newValue);
  }

  GPUDepthStencilState get depthStencil =>
      js_util.getProperty(this, 'depthStencil');
  set depthStencil(GPUDepthStencilState newValue) {
    js_util.setProperty(this, 'depthStencil', newValue);
  }

  GPUMultisampleState get multisample =>
      js_util.getProperty(this, 'multisample');
  set multisample(GPUMultisampleState newValue) {
    js_util.setProperty(this, 'multisample', newValue);
  }

  GPUFragmentState get fragment => js_util.getProperty(this, 'fragment');
  set fragment(GPUFragmentState newValue) {
    js_util.setProperty(this, 'fragment', newValue);
  }
}

enum GPUPrimitiveTopology {
  pointList,
  lineList,
  lineStrip,
  triangleList,
  triangleStrip
}

@anonymous
@JS()
@staticInterop
class GPUPrimitiveState {
  external factory GPUPrimitiveState._(
      {String? topology,
      String? stripIndexFormat,
      String? frontFace,
      String? cullMode,
      bool? clampDepth = false});

  factory GPUPrimitiveState(
          {GPUPrimitiveTopology? topology = GPUPrimitiveTopology.triangleList,
          GPUIndexFormat? stripIndexFormat,
          GPUFrontFace? frontFace = GPUFrontFace.ccw,
          GPUCullMode? cullMode = GPUCullMode.none,
          bool? clampDepth = false}) =>
      GPUPrimitiveState._(
          topology: topology?.name,
          stripIndexFormat: stripIndexFormat?.name,
          frontFace: frontFace?.name,
          cullMode: cullMode?.name,
          clampDepth: clampDepth);
}

extension PropsGPUPrimitiveState on GPUPrimitiveState {
  GPUPrimitiveTopology get topology =>
      GPUPrimitiveTopology.values.byName(js_util.getProperty(this, 'topology'));
  set topology(GPUPrimitiveTopology newValue) {
    js_util.setProperty(this, 'topology', newValue.name);
  }

  GPUIndexFormat get stripIndexFormat => GPUIndexFormat.values
      .byName(js_util.getProperty(this, 'stripIndexFormat'));
  set stripIndexFormat(GPUIndexFormat newValue) {
    js_util.setProperty(this, 'stripIndexFormat', newValue.name);
  }

  GPUFrontFace get frontFace =>
      GPUFrontFace.values.byName(js_util.getProperty(this, 'frontFace'));
  set frontFace(GPUFrontFace newValue) {
    js_util.setProperty(this, 'frontFace', newValue.name);
  }

  GPUCullMode get cullMode =>
      GPUCullMode.values.byName(js_util.getProperty(this, 'cullMode'));
  set cullMode(GPUCullMode newValue) {
    js_util.setProperty(this, 'cullMode', newValue.name);
  }

  bool get clampDepth => js_util.getProperty(this, 'clampDepth');
  set clampDepth(bool newValue) {
    js_util.setProperty(this, 'clampDepth', newValue);
  }
}

enum GPUFrontFace { ccw, cw }

enum GPUCullMode { none, front, back }

@anonymous
@JS()
@staticInterop
class GPUMultisampleState {
  external factory GPUMultisampleState(
      {int? count = 1,
      int? mask = 0xFFFFFFFF,
      bool? alphaToCoverageEnabled = false});
}

extension PropsGPUMultisampleState on GPUMultisampleState {
  int get count => js_util.getProperty(this, 'count');
  set count(int newValue) {
    js_util.setProperty(this, 'count', newValue);
  }

  int get mask => js_util.getProperty(this, 'mask');
  set mask(int newValue) {
    js_util.setProperty(this, 'mask', newValue);
  }

  bool get alphaToCoverageEnabled =>
      js_util.getProperty(this, 'alphaToCoverageEnabled');
  set alphaToCoverageEnabled(bool newValue) {
    js_util.setProperty(this, 'alphaToCoverageEnabled', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUFragmentState implements GPUProgrammableStage {
  external factory GPUFragmentState(
      {required Iterable<GPUColorTargetState> targets});
}

extension PropsGPUFragmentState on GPUFragmentState {
  Iterable<GPUColorTargetState> get targets =>
      js_util.getProperty(this, 'targets');
  set targets(Iterable<GPUColorTargetState> newValue) {
    js_util.setProperty(this, 'targets', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUColorTargetState {
  external factory GPUColorTargetState._(
      {required String format,
      required GPUBlendState blend,
      int? writeMask = 0xF});

  factory GPUColorTargetState(
          {required GPUTextureFormat format,
          required GPUBlendState blend,
          int? writeMask = 0xF}) =>
      GPUColorTargetState._(
          format: format.name, blend: blend, writeMask: writeMask);
}

extension PropsGPUColorTargetState on GPUColorTargetState {
  GPUTextureFormat get format =>
      GPUTextureFormat.values.byName(js_util.getProperty(this, 'format'));
  set format(GPUTextureFormat newValue) {
    js_util.setProperty(this, 'format', newValue.name);
  }

  GPUBlendState get blend => js_util.getProperty(this, 'blend');
  set blend(GPUBlendState newValue) {
    js_util.setProperty(this, 'blend', newValue);
  }

  int get writeMask => js_util.getProperty(this, 'writeMask');
  set writeMask(int newValue) {
    js_util.setProperty(this, 'writeMask', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUBlendState {
  external factory GPUBlendState(
      {required GPUBlendComponent color, required GPUBlendComponent alpha});
}

extension PropsGPUBlendState on GPUBlendState {
  GPUBlendComponent get color => js_util.getProperty(this, 'color');
  set color(GPUBlendComponent newValue) {
    js_util.setProperty(this, 'color', newValue);
  }

  GPUBlendComponent get alpha => js_util.getProperty(this, 'alpha');
  set alpha(GPUBlendComponent newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }
}

@JS()
@staticInterop
class GPUColorWrite {
  @JS('RED')
  external static int get red;

  @JS('GREEN')
  external static int get green;

  @JS('BLUE')
  external static int get blue;

  @JS('ALPHA')
  external static int get alpha;

  @JS('ALL')
  external static int get all;

  external GPUColorWrite();
}

@anonymous
@JS()
@staticInterop
class GPUBlendComponent {
  external factory GPUBlendComponent._(
      {String? srcFactor, String? dstFactor, String? operation});

  factory GPUBlendComponent(
          {GPUBlendFactor? srcFactor = GPUBlendFactor.one,
          GPUBlendFactor? dstFactor = GPUBlendFactor.zero,
          GPUBlendOperation? operation = GPUBlendOperation.add}) =>
      GPUBlendComponent._(
          srcFactor: srcFactor?.name,
          dstFactor: dstFactor?.name,
          operation: operation?.name);
}

extension PropsGPUBlendComponent on GPUBlendComponent {
  GPUBlendFactor get srcFactor =>
      GPUBlendFactor.values.byName(js_util.getProperty(this, 'srcFactor'));
  set srcFactor(GPUBlendFactor newValue) {
    js_util.setProperty(this, 'srcFactor', newValue.name);
  }

  GPUBlendFactor get dstFactor =>
      GPUBlendFactor.values.byName(js_util.getProperty(this, 'dstFactor'));
  set dstFactor(GPUBlendFactor newValue) {
    js_util.setProperty(this, 'dstFactor', newValue.name);
  }

  GPUBlendOperation get operation =>
      GPUBlendOperation.values.byName(js_util.getProperty(this, 'operation'));
  set operation(GPUBlendOperation newValue) {
    js_util.setProperty(this, 'operation', newValue.name);
  }
}

enum GPUBlendFactor {
  zero,
  one,
  src,
  oneMinusSrc,
  srcAlpha,
  oneMinusSrcAlpha,
  dst,
  oneMinusDst,
  dstAlpha,
  oneMinusDstAlpha,
  srcAlphaSaturated,
  constant,
  oneMinusConstant
}

enum GPUBlendOperation { add, subtract, reverseSubtract, min, max }

@anonymous
@JS()
@staticInterop
class GPUDepthStencilState {
  external factory GPUDepthStencilState._(
      {required String format,
      bool? depthWriteEnabled = false,
      String? depthCompare,
      GPUStencilFaceState? stencilFront,
      GPUStencilFaceState? stencilBack,
      int? stencilReadMask = 0xFFFFFFFF,
      int? stencilWriteMask = 0xFFFFFFFF,
      int? depthBias = 0,
      double? depthBiasSlopeScale = 0,
      double? depthBiasClamp = 0});

  factory GPUDepthStencilState(
          {required GPUTextureFormat format,
          bool? depthWriteEnabled = false,
          GPUCompareFunction? depthCompare = GPUCompareFunction.always,
          GPUStencilFaceState? stencilFront,
          GPUStencilFaceState? stencilBack,
          int? stencilReadMask = 0xFFFFFFFF,
          int? stencilWriteMask = 0xFFFFFFFF,
          int? depthBias = 0,
          double? depthBiasSlopeScale = 0,
          double? depthBiasClamp = 0}) =>
      GPUDepthStencilState._(
          format: format.name,
          depthWriteEnabled: depthWriteEnabled,
          depthCompare: depthCompare?.name,
          stencilFront: stencilFront,
          stencilBack: stencilBack,
          stencilReadMask: stencilReadMask,
          stencilWriteMask: stencilWriteMask,
          depthBias: depthBias,
          depthBiasSlopeScale: depthBiasSlopeScale,
          depthBiasClamp: depthBiasClamp);
}

extension PropsGPUDepthStencilState on GPUDepthStencilState {
  GPUTextureFormat get format =>
      GPUTextureFormat.values.byName(js_util.getProperty(this, 'format'));
  set format(GPUTextureFormat newValue) {
    js_util.setProperty(this, 'format', newValue.name);
  }

  bool get depthWriteEnabled => js_util.getProperty(this, 'depthWriteEnabled');
  set depthWriteEnabled(bool newValue) {
    js_util.setProperty(this, 'depthWriteEnabled', newValue);
  }

  GPUCompareFunction get depthCompare => GPUCompareFunction.values
      .byName(js_util.getProperty(this, 'depthCompare'));
  set depthCompare(GPUCompareFunction newValue) {
    js_util.setProperty(this, 'depthCompare', newValue.name);
  }

  GPUStencilFaceState get stencilFront =>
      js_util.getProperty(this, 'stencilFront');
  set stencilFront(GPUStencilFaceState newValue) {
    js_util.setProperty(this, 'stencilFront', newValue);
  }

  GPUStencilFaceState get stencilBack =>
      js_util.getProperty(this, 'stencilBack');
  set stencilBack(GPUStencilFaceState newValue) {
    js_util.setProperty(this, 'stencilBack', newValue);
  }

  int get stencilReadMask => js_util.getProperty(this, 'stencilReadMask');
  set stencilReadMask(int newValue) {
    js_util.setProperty(this, 'stencilReadMask', newValue);
  }

  int get stencilWriteMask => js_util.getProperty(this, 'stencilWriteMask');
  set stencilWriteMask(int newValue) {
    js_util.setProperty(this, 'stencilWriteMask', newValue);
  }

  int get depthBias => js_util.getProperty(this, 'depthBias');
  set depthBias(int newValue) {
    js_util.setProperty(this, 'depthBias', newValue);
  }

  double get depthBiasSlopeScale =>
      js_util.getProperty(this, 'depthBiasSlopeScale');
  set depthBiasSlopeScale(double newValue) {
    js_util.setProperty(this, 'depthBiasSlopeScale', newValue);
  }

  double get depthBiasClamp => js_util.getProperty(this, 'depthBiasClamp');
  set depthBiasClamp(double newValue) {
    js_util.setProperty(this, 'depthBiasClamp', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUStencilFaceState {
  external factory GPUStencilFaceState._(
      {String? compare, String? failOp, String? depthFailOp, String? passOp});

  factory GPUStencilFaceState(
          {GPUCompareFunction? compare = GPUCompareFunction.always,
          GPUStencilOperation? failOp = GPUStencilOperation.keep,
          GPUStencilOperation? depthFailOp = GPUStencilOperation.keep,
          GPUStencilOperation? passOp = GPUStencilOperation.keep}) =>
      GPUStencilFaceState._(
          compare: compare?.name,
          failOp: failOp?.name,
          depthFailOp: depthFailOp?.name,
          passOp: passOp?.name);
}

extension PropsGPUStencilFaceState on GPUStencilFaceState {
  GPUCompareFunction get compare =>
      GPUCompareFunction.values.byName(js_util.getProperty(this, 'compare'));
  set compare(GPUCompareFunction newValue) {
    js_util.setProperty(this, 'compare', newValue.name);
  }

  GPUStencilOperation get failOp =>
      GPUStencilOperation.values.byName(js_util.getProperty(this, 'failOp'));
  set failOp(GPUStencilOperation newValue) {
    js_util.setProperty(this, 'failOp', newValue.name);
  }

  GPUStencilOperation get depthFailOp => GPUStencilOperation.values
      .byName(js_util.getProperty(this, 'depthFailOp'));
  set depthFailOp(GPUStencilOperation newValue) {
    js_util.setProperty(this, 'depthFailOp', newValue.name);
  }

  GPUStencilOperation get passOp =>
      GPUStencilOperation.values.byName(js_util.getProperty(this, 'passOp'));
  set passOp(GPUStencilOperation newValue) {
    js_util.setProperty(this, 'passOp', newValue.name);
  }
}

enum GPUStencilOperation {
  keep,
  zero,
  replace,
  invert,
  incrementClamp,
  decrementClamp,
  incrementWrap,
  decrementWrap
}

enum GPUIndexFormat { uint16, uint32 }

enum GPUVertexFormat {
  uint8x2,
  uint8x4,
  sint8x2,
  sint8x4,
  unorm8x2,
  unorm8x4,
  snorm8x2,
  snorm8x4,
  uint16x2,
  uint16x4,
  sint16x2,
  sint16x4,
  unorm16x2,
  unorm16x4,
  snorm16x2,
  snorm16x4,
  float16x2,
  float16x4,
  float32,
  float32x2,
  float32x3,
  float32x4,
  uint32,
  uint32x2,
  uint32x3,
  uint32x4,
  sint32,
  sint32x2,
  sint32x3,
  sint32x4
}

enum GPUInputStepMode { vertex, instance }

@anonymous
@JS()
@staticInterop
class GPUVertexState implements GPUProgrammableStage {
  external factory GPUVertexState(
      {Iterable<GPUVertexBufferLayout>? buffers = const []});
}

extension PropsGPUVertexState on GPUVertexState {
  Iterable<GPUVertexBufferLayout>? get buffers =>
      js_util.getProperty(this, 'buffers');
  set buffers(Iterable<GPUVertexBufferLayout>? newValue) {
    js_util.setProperty(this, 'buffers', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUVertexBufferLayout {
  external factory GPUVertexBufferLayout._(
      {required int arrayStride,
      String? stepMode,
      Iterable<GPUVertexAttribute>? attributes});

  factory GPUVertexBufferLayout(
          {required int arrayStride,
          GPUInputStepMode? stepMode = GPUInputStepMode.vertex,
          Iterable<GPUVertexAttribute>? attributes}) =>
      GPUVertexBufferLayout._(
          arrayStride: arrayStride,
          stepMode: stepMode?.name,
          attributes: attributes);
}

extension PropsGPUVertexBufferLayout on GPUVertexBufferLayout {
  int get arrayStride => js_util.getProperty(this, 'arrayStride');
  set arrayStride(int newValue) {
    js_util.setProperty(this, 'arrayStride', newValue);
  }

  GPUInputStepMode get stepMode =>
      GPUInputStepMode.values.byName(js_util.getProperty(this, 'stepMode'));
  set stepMode(GPUInputStepMode newValue) {
    js_util.setProperty(this, 'stepMode', newValue.name);
  }

  Iterable<GPUVertexAttribute> get attributes =>
      js_util.getProperty(this, 'attributes');
  set attributes(Iterable<GPUVertexAttribute> newValue) {
    js_util.setProperty(this, 'attributes', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUVertexAttribute {
  external factory GPUVertexAttribute._(
      {required String format,
      required int offset,
      required int shaderLocation});

  factory GPUVertexAttribute(
          {required GPUVertexFormat format,
          required int offset,
          required int shaderLocation}) =>
      GPUVertexAttribute._(
          format: format.name, offset: offset, shaderLocation: shaderLocation);
}

extension PropsGPUVertexAttribute on GPUVertexAttribute {
  GPUVertexFormat get format =>
      GPUVertexFormat.values.byName(js_util.getProperty(this, 'format'));
  set format(GPUVertexFormat newValue) {
    js_util.setProperty(this, 'format', newValue.name);
  }

  int get offset => js_util.getProperty(this, 'offset');
  set offset(int newValue) {
    js_util.setProperty(this, 'offset', newValue);
  }

  int get shaderLocation => js_util.getProperty(this, 'shaderLocation');
  set shaderLocation(int newValue) {
    js_util.setProperty(this, 'shaderLocation', newValue);
  }
}

@JS()
@staticInterop
class GPUCommandBuffer implements GPUObjectBase {
  external GPUCommandBuffer();
}

extension PropsGPUCommandBuffer on GPUCommandBuffer {
  Future<double> get executionTime =>
      js_util.promiseToFuture(js_util.getProperty(this, 'executionTime'));
}

@anonymous
@JS()
@staticInterop
class GPUCommandBufferDescriptor implements GPUObjectDescriptorBase {
  external factory GPUCommandBufferDescriptor();
}

@JS()
@staticInterop
class GPUCommandEncoder implements GPUObjectBase {
  external GPUCommandEncoder();
}

extension PropsGPUCommandEncoder on GPUCommandEncoder {
  GPURenderPassEncoder beginRenderPass(GPURenderPassDescriptor descriptor) =>
      js_util.callMethod(this, 'beginRenderPass', [descriptor]);

  GPUComputePassEncoder beginComputePass(
          [GPUComputePassDescriptor? descriptor]) =>
      js_util.callMethod(this, 'beginComputePass', [descriptor]);

  Object copyBufferToBuffer(GPUBuffer source, int sourceOffset,
          GPUBuffer destination, int destinationOffset, int size) =>
      js_util.callMethod(this, 'copyBufferToBuffer',
          [source, sourceOffset, destination, destinationOffset, size]);

  Object copyBufferToTexture(GPUImageCopyBuffer source,
          GPUImageCopyTexture destination, dynamic copySize) =>
      js_util.callMethod(
          this, 'copyBufferToTexture', [source, destination, copySize]);

  Object copyTextureToBuffer(GPUImageCopyTexture source,
          GPUImageCopyBuffer destination, dynamic copySize) =>
      js_util.callMethod(
          this, 'copyTextureToBuffer', [source, destination, copySize]);

  Object copyTextureToTexture(GPUImageCopyTexture source,
          GPUImageCopyTexture destination, dynamic copySize) =>
      js_util.callMethod(
          this, 'copyTextureToTexture', [source, destination, copySize]);

  Object pushDebugGroup(String groupLabel) =>
      js_util.callMethod(this, 'pushDebugGroup', [groupLabel]);

  Object popDebugGroup() => js_util.callMethod(this, 'popDebugGroup', []);

  Object insertDebugMarker(String markerLabel) =>
      js_util.callMethod(this, 'insertDebugMarker', [markerLabel]);

  Object writeTimestamp(GPUQuerySet querySet, int queryIndex) =>
      js_util.callMethod(this, 'writeTimestamp', [querySet, queryIndex]);

  Object resolveQuerySet(GPUQuerySet querySet, int firstQuery, int queryCount,
          GPUBuffer destination, int destinationOffset) =>
      js_util.callMethod(this, 'resolveQuerySet',
          [querySet, firstQuery, queryCount, destination, destinationOffset]);

  GPUCommandBuffer finish([GPUCommandBufferDescriptor? descriptor]) =>
      js_util.callMethod(this, 'finish', [descriptor]);
}

@anonymous
@JS()
@staticInterop
class GPUCommandEncoderDescriptor implements GPUObjectDescriptorBase {
  external factory GPUCommandEncoderDescriptor(
      {bool? measureExecutionTime = false});
}

extension PropsGPUCommandEncoderDescriptor on GPUCommandEncoderDescriptor {
  bool get measureExecutionTime =>
      js_util.getProperty(this, 'measureExecutionTime');
  set measureExecutionTime(bool newValue) {
    js_util.setProperty(this, 'measureExecutionTime', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUImageDataLayout {
  external factory GPUImageDataLayout(
      {int? offset = 0, int? bytesPerRow, int? rowsPerImage});
}

extension PropsGPUImageDataLayout on GPUImageDataLayout {
  int get offset => js_util.getProperty(this, 'offset');
  set offset(int newValue) {
    js_util.setProperty(this, 'offset', newValue);
  }

  int get bytesPerRow => js_util.getProperty(this, 'bytesPerRow');
  set bytesPerRow(int newValue) {
    js_util.setProperty(this, 'bytesPerRow', newValue);
  }

  int get rowsPerImage => js_util.getProperty(this, 'rowsPerImage');
  set rowsPerImage(int newValue) {
    js_util.setProperty(this, 'rowsPerImage', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUImageCopyBuffer implements GPUImageDataLayout {
  external factory GPUImageCopyBuffer({required GPUBuffer buffer});
}

extension PropsGPUImageCopyBuffer on GPUImageCopyBuffer {
  GPUBuffer get buffer => js_util.getProperty(this, 'buffer');
  set buffer(GPUBuffer newValue) {
    js_util.setProperty(this, 'buffer', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUImageCopyTexture {
  external factory GPUImageCopyTexture._(
      {required GPUTexture texture,
      int? mipLevel = 0,
      dynamic origin,
      String? aspect});

  factory GPUImageCopyTexture(
          {required GPUTexture texture,
          int? mipLevel = 0,
          dynamic origin,
          GPUTextureAspect? aspect = GPUTextureAspect.all}) =>
      GPUImageCopyTexture._(
          texture: texture,
          mipLevel: mipLevel,
          origin: origin,
          aspect: aspect?.name);
}

extension PropsGPUImageCopyTexture on GPUImageCopyTexture {
  GPUTexture get texture => js_util.getProperty(this, 'texture');
  set texture(GPUTexture newValue) {
    js_util.setProperty(this, 'texture', newValue);
  }

  int get mipLevel => js_util.getProperty(this, 'mipLevel');
  set mipLevel(int newValue) {
    js_util.setProperty(this, 'mipLevel', newValue);
  }

  dynamic get origin => js_util.getProperty(this, 'origin');
  set origin(dynamic newValue) {
    js_util.setProperty(this, 'origin', newValue);
  }

  GPUTextureAspect get aspect =>
      GPUTextureAspect.values.byName(js_util.getProperty(this, 'aspect'));
  set aspect(GPUTextureAspect newValue) {
    js_util.setProperty(this, 'aspect', newValue.name);
  }
}

@anonymous
@JS()
@staticInterop
class GPUImageCopyExternalImage {
  external factory GPUImageCopyExternalImage({dynamic source, dynamic origin});
}

extension PropsGPUImageCopyExternalImage on GPUImageCopyExternalImage {
  dynamic get source => js_util.getProperty(this, 'source');
  set source(dynamic newValue) {
    js_util.setProperty(this, 'source', newValue);
  }

  dynamic get origin => js_util.getProperty(this, 'origin');
  set origin(dynamic newValue) {
    js_util.setProperty(this, 'origin', newValue);
  }
}

@JS()
@staticInterop
class GPUProgrammablePassEncoder {
  external GPUProgrammablePassEncoder();
}

extension PropsGPUProgrammablePassEncoder on GPUProgrammablePassEncoder {
  Object setBindGroup(int index, GPUBindGroup bindGroup,
          [Uint32List? dynamicOffsetsData,
          int? dynamicOffsetsDataStart,
          int? dynamicOffsetsDataLength]) =>
      js_util.callMethod(this, 'setBindGroup', [
        index,
        bindGroup,
        dynamicOffsetsData,
        dynamicOffsetsDataStart,
        dynamicOffsetsDataLength
      ]);

  Object pushDebugGroup(String groupLabel) =>
      js_util.callMethod(this, 'pushDebugGroup', [groupLabel]);

  Object popDebugGroup() => js_util.callMethod(this, 'popDebugGroup', []);

  Object insertDebugMarker(String markerLabel) =>
      js_util.callMethod(this, 'insertDebugMarker', [markerLabel]);
}

@JS()
@staticInterop
class GPUComputePassEncoder
    implements GPUObjectBase, GPUProgrammablePassEncoder {
  external GPUComputePassEncoder();
}

extension PropsGPUComputePassEncoder on GPUComputePassEncoder {
  Object setPipeline(GPUComputePipeline pipeline) =>
      js_util.callMethod(this, 'setPipeline', [pipeline]);

  Object dispatch(int x, [int? y = 1, int? z = 1]) =>
      js_util.callMethod(this, 'dispatch', [x, y, z]);

  Object dispatchIndirect(GPUBuffer indirectBuffer, int indirectOffset) =>
      js_util.callMethod(
          this, 'dispatchIndirect', [indirectBuffer, indirectOffset]);

  Object beginPipelineStatisticsQuery(GPUQuerySet querySet, int queryIndex) =>
      js_util.callMethod(
          this, 'beginPipelineStatisticsQuery', [querySet, queryIndex]);

  Object endPipelineStatisticsQuery() =>
      js_util.callMethod(this, 'endPipelineStatisticsQuery', []);

  Object writeTimestamp(GPUQuerySet querySet, int queryIndex) =>
      js_util.callMethod(this, 'writeTimestamp', [querySet, queryIndex]);

  Object endPass() => js_util.callMethod(this, 'endPass', []);
}

@anonymous
@JS()
@staticInterop
class GPUComputePassDescriptor implements GPUObjectDescriptorBase {
  external factory GPUComputePassDescriptor();
}

@JS()
@staticInterop
class GPURenderEncoderBase {
  external GPURenderEncoderBase();
}

extension PropsGPURenderEncoderBase on GPURenderEncoderBase {
  Object setPipeline(GPURenderPipeline pipeline) =>
      js_util.callMethod(this, 'setPipeline', [pipeline]);

  Object setIndexBuffer(GPUBuffer buffer, GPUIndexFormat indexFormat,
          [int? offset = 0, int? size = 0]) =>
      js_util.callMethod(
          this, 'setIndexBuffer', [buffer, indexFormat.name, offset, size]);

  Object setVertexBuffer(int slot, GPUBuffer buffer,
          [int? offset = 0, int? size = 0]) =>
      js_util.callMethod(this, 'setVertexBuffer', [slot, buffer, offset, size]);

  Object draw(int vertexCount,
          [int? instanceCount = 1,
          int? firstVertex = 0,
          int? firstInstance = 0]) =>
      js_util.callMethod(this, 'draw',
          [vertexCount, instanceCount, firstVertex, firstInstance]);

  Object drawIndexed(int indexCount,
          [int? instanceCount = 1,
          int? firstIndex = 0,
          int? baseVertex = 0,
          int? firstInstance = 0]) =>
      js_util.callMethod(this, 'drawIndexed',
          [indexCount, instanceCount, firstIndex, baseVertex, firstInstance]);

  Object drawIndirect(GPUBuffer indirectBuffer, int indirectOffset) => js_util
      .callMethod(this, 'drawIndirect', [indirectBuffer, indirectOffset]);

  Object drawIndexedIndirect(GPUBuffer indirectBuffer, int indirectOffset) =>
      js_util.callMethod(
          this, 'drawIndexedIndirect', [indirectBuffer, indirectOffset]);
}

@JS()
@staticInterop
class GPURenderPassEncoder
    implements GPUObjectBase, GPUProgrammablePassEncoder, GPURenderEncoderBase {
  external GPURenderPassEncoder();
}

extension PropsGPURenderPassEncoder on GPURenderPassEncoder {
  Object setViewport(double x, double y, double width, double height,
          double minDepth, double maxDepth) =>
      js_util.callMethod(
          this, 'setViewport', [x, y, width, height, minDepth, maxDepth]);

  Object setScissorRect(int x, int y, int width, int height) =>
      js_util.callMethod(this, 'setScissorRect', [x, y, width, height]);

  Object setBlendConstant(dynamic color) =>
      js_util.callMethod(this, 'setBlendConstant', [color]);

  Object setStencilReference(int reference) =>
      js_util.callMethod(this, 'setStencilReference', [reference]);

  Object beginOcclusionQuery(int queryIndex) =>
      js_util.callMethod(this, 'beginOcclusionQuery', [queryIndex]);

  Object endOcclusionQuery() =>
      js_util.callMethod(this, 'endOcclusionQuery', []);

  Object beginPipelineStatisticsQuery(GPUQuerySet querySet, int queryIndex) =>
      js_util.callMethod(
          this, 'beginPipelineStatisticsQuery', [querySet, queryIndex]);

  Object endPipelineStatisticsQuery() =>
      js_util.callMethod(this, 'endPipelineStatisticsQuery', []);

  Object writeTimestamp(GPUQuerySet querySet, int queryIndex) =>
      js_util.callMethod(this, 'writeTimestamp', [querySet, queryIndex]);

  Object executeBundles(Iterable<GPURenderBundle> bundles) =>
      js_util.callMethod(this, 'executeBundles', [bundles]);

  Object endPass() => js_util.callMethod(this, 'endPass', []);
}

@anonymous
@JS()
@staticInterop
class GPURenderPassDescriptor implements GPUObjectDescriptorBase {
  external factory GPURenderPassDescriptor(
      {required Iterable<GPURenderPassColorAttachment> colorAttachments,
      required GPURenderPassDepthStencilAttachment depthStencilAttachment,
      required GPUQuerySet occlusionQuerySet});
}

extension PropsGPURenderPassDescriptor on GPURenderPassDescriptor {
  Iterable<GPURenderPassColorAttachment> get colorAttachments =>
      js_util.getProperty(this, 'colorAttachments');
  set colorAttachments(Iterable<GPURenderPassColorAttachment> newValue) {
    js_util.setProperty(this, 'colorAttachments', newValue);
  }

  GPURenderPassDepthStencilAttachment get depthStencilAttachment =>
      js_util.getProperty(this, 'depthStencilAttachment');
  set depthStencilAttachment(GPURenderPassDepthStencilAttachment newValue) {
    js_util.setProperty(this, 'depthStencilAttachment', newValue);
  }

  GPUQuerySet get occlusionQuerySet =>
      js_util.getProperty(this, 'occlusionQuerySet');
  set occlusionQuerySet(GPUQuerySet newValue) {
    js_util.setProperty(this, 'occlusionQuerySet', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPURenderPassColorAttachment {
  external factory GPURenderPassColorAttachment._(
      {required GPUTextureView view,
      required GPUTextureView resolveTarget,
      dynamic loadValue,
      required String storeOp});

  factory GPURenderPassColorAttachment(
          {required GPUTextureView view,
          required GPUTextureView resolveTarget,
          dynamic loadValue,
          required GPUStoreOp storeOp}) =>
      GPURenderPassColorAttachment._(
          view: view,
          resolveTarget: resolveTarget,
          loadValue: loadValue,
          storeOp: storeOp.name);
}

extension PropsGPURenderPassColorAttachment on GPURenderPassColorAttachment {
  GPUTextureView get view => js_util.getProperty(this, 'view');
  set view(GPUTextureView newValue) {
    js_util.setProperty(this, 'view', newValue);
  }

  GPUTextureView get resolveTarget =>
      js_util.getProperty(this, 'resolveTarget');
  set resolveTarget(GPUTextureView newValue) {
    js_util.setProperty(this, 'resolveTarget', newValue);
  }

  dynamic get loadValue => js_util.getProperty(this, 'loadValue');
  set loadValue(dynamic newValue) {
    js_util.setProperty(this, 'loadValue', newValue);
  }

  GPUStoreOp get storeOp =>
      GPUStoreOp.values.byName(js_util.getProperty(this, 'storeOp'));
  set storeOp(GPUStoreOp newValue) {
    js_util.setProperty(this, 'storeOp', newValue.name);
  }
}

@anonymous
@JS()
@staticInterop
class GPURenderPassDepthStencilAttachment {
  external factory GPURenderPassDepthStencilAttachment._(
      {required GPUTextureView view,
      dynamic depthLoadValue,
      required String depthStoreOp,
      bool? depthReadOnly = false,
      dynamic stencilLoadValue,
      String? stencilStoreOp,
      bool? stencilReadOnly = false});

  factory GPURenderPassDepthStencilAttachment(
          {required GPUTextureView view,
          dynamic depthLoadValue,
          required GPUStoreOp depthStoreOp,
          bool? depthReadOnly = false,
          dynamic stencilLoadValue,
          GPUStoreOp? stencilStoreOp,
          bool? stencilReadOnly = false}) =>
      GPURenderPassDepthStencilAttachment._(
          view: view,
          depthLoadValue: depthLoadValue,
          depthStoreOp: depthStoreOp.name,
          depthReadOnly: depthReadOnly,
          stencilLoadValue: stencilLoadValue,
          stencilStoreOp: stencilStoreOp?.name,
          stencilReadOnly: stencilReadOnly);
}

extension PropsGPURenderPassDepthStencilAttachment
    on GPURenderPassDepthStencilAttachment {
  GPUTextureView get view => js_util.getProperty(this, 'view');
  set view(GPUTextureView newValue) {
    js_util.setProperty(this, 'view', newValue);
  }

  dynamic get depthLoadValue => js_util.getProperty(this, 'depthLoadValue');
  set depthLoadValue(dynamic newValue) {
    js_util.setProperty(this, 'depthLoadValue', newValue);
  }

  GPUStoreOp get depthStoreOp =>
      GPUStoreOp.values.byName(js_util.getProperty(this, 'depthStoreOp'));
  set depthStoreOp(GPUStoreOp newValue) {
    js_util.setProperty(this, 'depthStoreOp', newValue.name);
  }

  bool get depthReadOnly => js_util.getProperty(this, 'depthReadOnly');
  set depthReadOnly(bool newValue) {
    js_util.setProperty(this, 'depthReadOnly', newValue);
  }

  dynamic get stencilLoadValue => js_util.getProperty(this, 'stencilLoadValue');
  set stencilLoadValue(dynamic newValue) {
    js_util.setProperty(this, 'stencilLoadValue', newValue);
  }

  GPUStoreOp get stencilStoreOp =>
      GPUStoreOp.values.byName(js_util.getProperty(this, 'stencilStoreOp'));
  set stencilStoreOp(GPUStoreOp newValue) {
    js_util.setProperty(this, 'stencilStoreOp', newValue.name);
  }

  bool get stencilReadOnly => js_util.getProperty(this, 'stencilReadOnly');
  set stencilReadOnly(bool newValue) {
    js_util.setProperty(this, 'stencilReadOnly', newValue);
  }
}

enum GPULoadOp { load }

enum GPUStoreOp { store, discard }

@JS()
@staticInterop
class GPURenderBundle implements GPUObjectBase {
  external GPURenderBundle();
}

@anonymous
@JS()
@staticInterop
class GPURenderBundleDescriptor implements GPUObjectDescriptorBase {
  external factory GPURenderBundleDescriptor();
}

@JS()
@staticInterop
class GPURenderBundleEncoder
    implements GPUObjectBase, GPUProgrammablePassEncoder, GPURenderEncoderBase {
  external GPURenderBundleEncoder();
}

extension PropsGPURenderBundleEncoder on GPURenderBundleEncoder {
  GPURenderBundle finish([GPURenderBundleDescriptor? descriptor]) =>
      js_util.callMethod(this, 'finish', [descriptor]);
}

@anonymous
@JS()
@staticInterop
class GPURenderBundleEncoderDescriptor implements GPUObjectDescriptorBase {
  external factory GPURenderBundleEncoderDescriptor._(
      {required Iterable<String> colorFormats,
      required String depthStencilFormat,
      int? sampleCount = 1});

  factory GPURenderBundleEncoderDescriptor(
          {required Iterable<GPUTextureFormat> colorFormats,
          required GPUTextureFormat depthStencilFormat,
          int? sampleCount = 1}) =>
      GPURenderBundleEncoderDescriptor._(
          colorFormats: colorFormats.names,
          depthStencilFormat: depthStencilFormat.name,
          sampleCount: sampleCount);
}

extension PropsGPURenderBundleEncoderDescriptor
    on GPURenderBundleEncoderDescriptor {
  Iterable<GPUTextureFormat> get colorFormats => GPUTextureFormat.values
      .byNames(js_util.getProperty(this, 'colorFormats'));
  set colorFormats(Iterable<GPUTextureFormat> newValue) {
    js_util.setProperty(this, 'colorFormats', newValue.names);
  }

  GPUTextureFormat get depthStencilFormat => GPUTextureFormat.values
      .byName(js_util.getProperty(this, 'depthStencilFormat'));
  set depthStencilFormat(GPUTextureFormat newValue) {
    js_util.setProperty(this, 'depthStencilFormat', newValue.name);
  }

  int get sampleCount => js_util.getProperty(this, 'sampleCount');
  set sampleCount(int newValue) {
    js_util.setProperty(this, 'sampleCount', newValue);
  }
}

@JS()
@staticInterop
class GPUQueue implements GPUObjectBase {
  external GPUQueue();
}

extension PropsGPUQueue on GPUQueue {
  Object submit(Iterable<GPUCommandBuffer> commandBuffers) =>
      js_util.callMethod(this, 'submit', [commandBuffers]);

  Future<Object> onSubmittedWorkDone() => js_util
      .promiseToFuture(js_util.callMethod(this, 'onSubmittedWorkDone', []));

  Object writeBuffer(GPUBuffer buffer, int bufferOffset, dynamic data,
          [int? dataOffset = 0, int? size]) =>
      js_util.callMethod(
          this, 'writeBuffer', [buffer, bufferOffset, data, dataOffset, size]);

  Object writeTexture(GPUImageCopyTexture destination, dynamic data,
          GPUImageDataLayout dataLayout, dynamic size) =>
      js_util.callMethod(
          this, 'writeTexture', [destination, data, dataLayout, size]);

  Object copyExternalImageToTexture(GPUImageCopyExternalImage source,
          GPUImageCopyTexture destination, dynamic copySize) =>
      js_util.callMethod(
          this, 'copyExternalImageToTexture', [source, destination, copySize]);
}

@JS()
@staticInterop
class GPUQuerySet implements GPUObjectBase {
  external GPUQuerySet();
}

extension PropsGPUQuerySet on GPUQuerySet {
  Object destroy() => js_util.callMethod(this, 'destroy', []);
}

@anonymous
@JS()
@staticInterop
class GPUQuerySetDescriptor implements GPUObjectDescriptorBase {
  external factory GPUQuerySetDescriptor._(
      {required String type,
      required int count,
      Iterable<String>? pipelineStatistics});

  factory GPUQuerySetDescriptor(
          {required GPUQueryType type,
          required int count,
          Iterable<GPUPipelineStatisticName>? pipelineStatistics = const []}) =>
      GPUQuerySetDescriptor._(
          type: type.name,
          count: count,
          pipelineStatistics: pipelineStatistics?.names);
}

extension PropsGPUQuerySetDescriptor on GPUQuerySetDescriptor {
  GPUQueryType get type =>
      GPUQueryType.values.byName(js_util.getProperty(this, 'type'));
  set type(GPUQueryType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }

  int get count => js_util.getProperty(this, 'count');
  set count(int newValue) {
    js_util.setProperty(this, 'count', newValue);
  }

  Iterable<GPUPipelineStatisticName> get pipelineStatistics =>
      GPUPipelineStatisticName.values
          .byNames(js_util.getProperty(this, 'pipelineStatistics'));
  set pipelineStatistics(Iterable<GPUPipelineStatisticName> newValue) {
    js_util.setProperty(this, 'pipelineStatistics', newValue.names);
  }
}

enum GPUQueryType { occlusion, pipelineStatistics, timestamp }

enum GPUPipelineStatisticName {
  vertexShaderInvocations,
  clipperInvocations,
  clipperPrimitivesOut,
  fragmentShaderInvocations,
  computeShaderInvocations
}

@JS()
@staticInterop
class GPUCanvasContext {
  external GPUCanvasContext();
}

extension PropsGPUCanvasContext on GPUCanvasContext {
  GPUSwapChain configureSwapChain(GPUSwapChainDescriptor descriptor) =>
      js_util.callMethod(this, 'configureSwapChain', [descriptor]);

  GPUTextureFormat getSwapChainPreferredFormat(GPUAdapter adapter) =>
      js_util.callMethod(this, 'getSwapChainPreferredFormat', [adapter]);
}

enum GPUCanvasCompositingAlphaMode { opaque, premultiplied }

@anonymous
@JS()
@staticInterop
class GPUSwapChainDescriptor implements GPUObjectDescriptorBase {
  external factory GPUSwapChainDescriptor._(
      {required GPUDevice device,
      required String format,
      int? usage = 0x10,
      String? compositingAlphaMode,
      dynamic size});

  factory GPUSwapChainDescriptor(
          {required GPUDevice device,
          required GPUTextureFormat format,
          int? usage = 0x10,
          GPUCanvasCompositingAlphaMode? compositingAlphaMode =
              GPUCanvasCompositingAlphaMode.opaque,
          dynamic size}) =>
      GPUSwapChainDescriptor._(
          device: device,
          format: format.name,
          usage: usage,
          compositingAlphaMode: compositingAlphaMode?.name,
          size: size);
}

extension PropsGPUSwapChainDescriptor on GPUSwapChainDescriptor {
  GPUDevice get device => js_util.getProperty(this, 'device');
  set device(GPUDevice newValue) {
    js_util.setProperty(this, 'device', newValue);
  }

  GPUTextureFormat get format =>
      GPUTextureFormat.values.byName(js_util.getProperty(this, 'format'));
  set format(GPUTextureFormat newValue) {
    js_util.setProperty(this, 'format', newValue.name);
  }

  int get usage => js_util.getProperty(this, 'usage');
  set usage(int newValue) {
    js_util.setProperty(this, 'usage', newValue);
  }

  GPUCanvasCompositingAlphaMode get compositingAlphaMode =>
      GPUCanvasCompositingAlphaMode.values
          .byName(js_util.getProperty(this, 'compositingAlphaMode'));
  set compositingAlphaMode(GPUCanvasCompositingAlphaMode newValue) {
    js_util.setProperty(this, 'compositingAlphaMode', newValue.name);
  }

  dynamic get size => js_util.getProperty(this, 'size');
  set size(dynamic newValue) {
    js_util.setProperty(this, 'size', newValue);
  }
}

@JS()
@staticInterop
class GPUSwapChain {
  external GPUSwapChain();
}

extension PropsGPUSwapChain on GPUSwapChain {
  GPUTexture getCurrentTexture() =>
      js_util.callMethod(this, 'getCurrentTexture', []);
}

enum GPUDeviceLostReason { destroyed }

@JS()
@staticInterop
class GPUDeviceLostInfo {
  external GPUDeviceLostInfo();
}

extension PropsGPUDeviceLostInfo on GPUDeviceLostInfo {
  dynamic get reason => js_util.getProperty(this, 'reason');
  String get message => js_util.getProperty(this, 'message');
}

enum GPUErrorFilter { outOfMemory, validation }

@JS()
@staticInterop
class GPUOutOfMemoryError {
  external GPUOutOfMemoryError();
}

@JS()
@staticInterop
class GPUValidationError {
  external GPUValidationError(String message);
}

extension PropsGPUValidationError on GPUValidationError {
  String get message => js_util.getProperty(this, 'message');
}

@JS()
@staticInterop
class GPUUncapturedErrorEvent implements Event {
  external GPUUncapturedErrorEvent(
      String type, GPUUncapturedErrorEventInit gpuUncapturedErrorEventInitDict);
}

extension PropsGPUUncapturedErrorEvent on GPUUncapturedErrorEvent {
  dynamic get error => js_util.getProperty(this, 'error');
}

@anonymous
@JS()
@staticInterop
class GPUUncapturedErrorEventInit implements EventInit {
  external factory GPUUncapturedErrorEventInit({dynamic error});
}

extension PropsGPUUncapturedErrorEventInit on GPUUncapturedErrorEventInit {
  dynamic get error => js_util.getProperty(this, 'error');
  set error(dynamic newValue) {
    js_util.setProperty(this, 'error', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUColorDict {
  external factory GPUColorDict(
      {required double r,
      required double g,
      required double b,
      required double a});
}

extension PropsGPUColorDict on GPUColorDict {
  double get r => js_util.getProperty(this, 'r');
  set r(double newValue) {
    js_util.setProperty(this, 'r', newValue);
  }

  double get g => js_util.getProperty(this, 'g');
  set g(double newValue) {
    js_util.setProperty(this, 'g', newValue);
  }

  double get b => js_util.getProperty(this, 'b');
  set b(double newValue) {
    js_util.setProperty(this, 'b', newValue);
  }

  double get a => js_util.getProperty(this, 'a');
  set a(double newValue) {
    js_util.setProperty(this, 'a', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUOrigin2DDict {
  external factory GPUOrigin2DDict({int? x = 0, int? y = 0});
}

extension PropsGPUOrigin2DDict on GPUOrigin2DDict {
  int get x => js_util.getProperty(this, 'x');
  set x(int newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  int get y => js_util.getProperty(this, 'y');
  set y(int newValue) {
    js_util.setProperty(this, 'y', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUOrigin3DDict {
  external factory GPUOrigin3DDict({int? x = 0, int? y = 0, int? z = 0});
}

extension PropsGPUOrigin3DDict on GPUOrigin3DDict {
  int get x => js_util.getProperty(this, 'x');
  set x(int newValue) {
    js_util.setProperty(this, 'x', newValue);
  }

  int get y => js_util.getProperty(this, 'y');
  set y(int newValue) {
    js_util.setProperty(this, 'y', newValue);
  }

  int get z => js_util.getProperty(this, 'z');
  set z(int newValue) {
    js_util.setProperty(this, 'z', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUExtent3DDict {
  external factory GPUExtent3DDict(
      {required int width, int? height = 1, int? depthOrArrayLayers = 1});
}

extension PropsGPUExtent3DDict on GPUExtent3DDict {
  int get width => js_util.getProperty(this, 'width');
  set width(int newValue) {
    js_util.setProperty(this, 'width', newValue);
  }

  int get height => js_util.getProperty(this, 'height');
  set height(int newValue) {
    js_util.setProperty(this, 'height', newValue);
  }

  int get depthOrArrayLayers => js_util.getProperty(this, 'depthOrArrayLayers');
  set depthOrArrayLayers(int newValue) {
    js_util.setProperty(this, 'depthOrArrayLayers', newValue);
  }
}

@JS()
@staticInterop
class GPUPresentationContext {
  external GPUPresentationContext();
}

extension PropsGPUPresentationContext on GPUPresentationContext {
  Object configure(GPUPresentationConfiguration? configuration) =>
      js_util.callMethod(this, 'configure', [configuration]);

  GPUTextureFormat getPreferredFormat(GPUAdapter adapter) =>
      js_util.callMethod(this, 'getPreferredFormat', [adapter]);

  GPUTexture getCurrentTexture() =>
      js_util.callMethod(this, 'getCurrentTexture', []);
}

@anonymous
@JS()
@staticInterop
class GPUPresentationConfiguration implements GPUObjectDescriptorBase {
  external factory GPUPresentationConfiguration._(
      {required GPUDevice device,
      required String format,
      int? usage = 0x10,
      String? compositingAlphaMode,
      dynamic size});

  factory GPUPresentationConfiguration(
          {required GPUDevice device,
          required GPUTextureFormat format,
          int? usage = 0x10,
          GPUCanvasCompositingAlphaMode? compositingAlphaMode =
              GPUCanvasCompositingAlphaMode.opaque,
          dynamic size}) =>
      GPUPresentationConfiguration._(
          device: device,
          format: format.name,
          usage: usage,
          compositingAlphaMode: compositingAlphaMode?.name,
          size: size);
}

extension PropsGPUPresentationConfiguration on GPUPresentationConfiguration {
  GPUDevice get device => js_util.getProperty(this, 'device');
  set device(GPUDevice newValue) {
    js_util.setProperty(this, 'device', newValue);
  }

  GPUTextureFormat get format =>
      GPUTextureFormat.values.byName(js_util.getProperty(this, 'format'));
  set format(GPUTextureFormat newValue) {
    js_util.setProperty(this, 'format', newValue.name);
  }

  int get usage => js_util.getProperty(this, 'usage');
  set usage(int newValue) {
    js_util.setProperty(this, 'usage', newValue);
  }

  GPUCanvasCompositingAlphaMode get compositingAlphaMode =>
      GPUCanvasCompositingAlphaMode.values
          .byName(js_util.getProperty(this, 'compositingAlphaMode'));
  set compositingAlphaMode(GPUCanvasCompositingAlphaMode newValue) {
    js_util.setProperty(this, 'compositingAlphaMode', newValue.name);
  }

  dynamic get size => js_util.getProperty(this, 'size');
  set size(dynamic newValue) {
    js_util.setProperty(this, 'size', newValue);
  }
}
