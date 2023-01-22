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
  external factory GPUObjectBase();
}

extension PropsGPUObjectBase on GPUObjectBase {
  String get label => js_util.getProperty(this, 'label');
  set label(String newValue) {
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
  external factory GPUSupportedLimits();
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
  int get maxBindingsPerBindGroup =>
      js_util.getProperty(this, 'maxBindingsPerBindGroup');
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
  int get minUniformBufferOffsetAlignment =>
      js_util.getProperty(this, 'minUniformBufferOffsetAlignment');
  int get minStorageBufferOffsetAlignment =>
      js_util.getProperty(this, 'minStorageBufferOffsetAlignment');
  int get maxVertexBuffers => js_util.getProperty(this, 'maxVertexBuffers');
  int get maxBufferSize => js_util.getProperty(this, 'maxBufferSize');
  int get maxVertexAttributes =>
      js_util.getProperty(this, 'maxVertexAttributes');
  int get maxVertexBufferArrayStride =>
      js_util.getProperty(this, 'maxVertexBufferArrayStride');
  int get maxInterStageShaderComponents =>
      js_util.getProperty(this, 'maxInterStageShaderComponents');
  int get maxInterStageShaderVariables =>
      js_util.getProperty(this, 'maxInterStageShaderVariables');
  int get maxColorAttachments =>
      js_util.getProperty(this, 'maxColorAttachments');
  int get maxColorAttachmentBytesPerSample =>
      js_util.getProperty(this, 'maxColorAttachmentBytesPerSample');
  int get maxComputeWorkgroupStorageSize =>
      js_util.getProperty(this, 'maxComputeWorkgroupStorageSize');
  int get maxComputeInvocationsPerWorkgroup =>
      js_util.getProperty(this, 'maxComputeInvocationsPerWorkgroup');
  int get maxComputeWorkgroupSizeX =>
      js_util.getProperty(this, 'maxComputeWorkgroupSizeX');
  int get maxComputeWorkgroupSizeY =>
      js_util.getProperty(this, 'maxComputeWorkgroupSizeY');
  int get maxComputeWorkgroupSizeZ =>
      js_util.getProperty(this, 'maxComputeWorkgroupSizeZ');
  int get maxComputeWorkgroupsPerDimension =>
      js_util.getProperty(this, 'maxComputeWorkgroupsPerDimension');
}

@JS()
@staticInterop
class GPUSupportedFeatures extends JsArray<String> {
  external factory GPUSupportedFeatures();
}

@JS()
@staticInterop
class GPUAdapterInfo {
  external factory GPUAdapterInfo();
}

extension PropsGPUAdapterInfo on GPUAdapterInfo {
  String get vendor => js_util.getProperty(this, 'vendor');
  String get architecture => js_util.getProperty(this, 'architecture');
  String get device => js_util.getProperty(this, 'device');
  String get description => js_util.getProperty(this, 'description');
}

@JS()
@staticInterop
class NavigatorGPU {
  external factory NavigatorGPU();
}

extension PropsNavigatorGPU on NavigatorGPU {
  Gpu get gpu => js_util.getProperty(this, 'gpu');
}

@JS('GPU')
@staticInterop
class Gpu {
  external factory Gpu();
}

extension PropsGpu on Gpu {
  Future<GPUAdapter> requestAdapter([GPURequestAdapterOptions? options]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestAdapter', [options]));

  GPUTextureFormat getPreferredCanvasFormat() =>
      js_util.callMethod(this, 'getPreferredCanvasFormat', []);
}

@anonymous
@JS()
@staticInterop
class GPURequestAdapterOptions {
  external factory GPURequestAdapterOptions._(
      {required String powerPreference, bool? forceFallbackAdapter = false});

  factory GPURequestAdapterOptions(
          {required GPUPowerPreference powerPreference,
          bool? forceFallbackAdapter = false}) =>
      GPURequestAdapterOptions._(
          powerPreference: powerPreference.value,
          forceFallbackAdapter: forceFallbackAdapter);
}

extension PropsGPURequestAdapterOptions on GPURequestAdapterOptions {
  GPUPowerPreference get powerPreference => GPUPowerPreference.fromValue(
      js_util.getProperty(this, 'powerPreference'));
  set powerPreference(GPUPowerPreference newValue) {
    js_util.setProperty(this, 'powerPreference', newValue.value);
  }

  bool get forceFallbackAdapter =>
      js_util.getProperty(this, 'forceFallbackAdapter');
  set forceFallbackAdapter(bool newValue) {
    js_util.setProperty(this, 'forceFallbackAdapter', newValue);
  }
}

enum GPUPowerPreference {
  lowPower('low-power'),
  highPerformance('high-performance');

  final String value;
  static GPUPowerPreference fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUPowerPreference(this.value);
}

@JS()
@staticInterop
class GPUAdapter {
  external factory GPUAdapter();
}

extension PropsGPUAdapter on GPUAdapter {
  GPUSupportedFeatures get features => js_util.getProperty(this, 'features');
  GPUSupportedLimits get limits => js_util.getProperty(this, 'limits');
  bool get isFallbackAdapter => js_util.getProperty(this, 'isFallbackAdapter');
  Future<GPUDevice> requestDevice([GPUDeviceDescriptor? descriptor]) => js_util
      .promiseToFuture(js_util.callMethod(this, 'requestDevice', [descriptor]));

  Future<GPUAdapterInfo> requestAdapterInfo(
          [Iterable<String>? unmaskHints = const []]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'requestAdapterInfo', [unmaskHints]));
}

@anonymous
@JS()
@staticInterop
class GPUDeviceDescriptor implements GPUObjectDescriptorBase {
  external factory GPUDeviceDescriptor._(
      {Iterable<String>? requiredFeatures,
      dynamic requiredLimits,
      GPUQueueDescriptor? defaultQueue});

  factory GPUDeviceDescriptor(
          {Iterable<GPUFeatureName>? requiredFeatures = const [],
          dynamic requiredLimits,
          GPUQueueDescriptor? defaultQueue}) =>
      GPUDeviceDescriptor._(
          requiredFeatures: requiredFeatures?.values,
          requiredLimits: requiredLimits,
          defaultQueue: defaultQueue);
}

extension PropsGPUDeviceDescriptor on GPUDeviceDescriptor {
  Iterable<GPUFeatureName> get requiredFeatures =>
      GPUFeatureName.fromValues(js_util.getProperty(this, 'requiredFeatures'));
  set requiredFeatures(Iterable<GPUFeatureName> newValue) {
    js_util.setProperty(this, 'requiredFeatures', newValue.values);
  }

  dynamic get requiredLimits => js_util.getProperty(this, 'requiredLimits');
  set requiredLimits(dynamic newValue) {
    js_util.setProperty(this, 'requiredLimits', newValue);
  }

  GPUQueueDescriptor get defaultQueue =>
      js_util.getProperty(this, 'defaultQueue');
  set defaultQueue(GPUQueueDescriptor newValue) {
    js_util.setProperty(this, 'defaultQueue', newValue);
  }
}

enum GPUFeatureName {
  depthClipControl('depth-clip-control'),
  depth32floatStencil8('depth32float-stencil8'),
  textureCompressionBc('texture-compression-bc'),
  textureCompressionEtc2('texture-compression-etc2'),
  textureCompressionAstc('texture-compression-astc'),
  timestampQuery('timestamp-query'),
  indirectFirstInstance('indirect-first-instance'),
  shaderF16('shader-f16'),
  rg11b10ufloatRenderable('rg11b10ufloat-renderable');

  final String value;
  static GPUFeatureName fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUFeatureName(this.value);
}

@JS()
@staticInterop
class GPUDevice implements EventTarget, GPUObjectBase {
  external factory GPUDevice();
}

extension PropsGPUDevice on GPUDevice {
  GPUSupportedFeatures get features => js_util.getProperty(this, 'features');
  GPUSupportedLimits get limits => js_util.getProperty(this, 'limits');
  GPUQueue get queue => js_util.getProperty(this, 'queue');
  void destroy() => js_util.callMethod(this, 'destroy', []);

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
  void pushErrorScope(GPUErrorFilter filter) =>
      js_util.callMethod(this, 'pushErrorScope', [filter.value]);

  Future<GPUError> popErrorScope() =>
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
  external factory GPUBuffer();
}

extension PropsGPUBuffer on GPUBuffer {
  int get size => js_util.getProperty(this, 'size');
  int get usage => js_util.getProperty(this, 'usage');
  GPUBufferMapState get mapState =>
      GPUBufferMapState.fromValue(js_util.getProperty(this, 'mapState'));
  Future<void> mapAsync(int mode, [int? offset = 0, int? size]) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'mapAsync', [mode, offset, size]));

  ByteBuffer getMappedRange([int? offset = 0, int? size]) =>
      js_util.callMethod(this, 'getMappedRange', [offset, size]);

  void unmap() => js_util.callMethod(this, 'unmap', []);

  void destroy() => js_util.callMethod(this, 'destroy', []);
}

enum GPUBufferMapState {
  unmapped('unmapped'),
  pending('pending'),
  mapped('mapped');

  final String value;
  static GPUBufferMapState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUBufferMapState(this.value);
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

  external factory GPUBufferUsage();
}

@JS()
@staticInterop
class GPUMapMode {
  @JS('READ')
  external static int get read;

  @JS('WRITE')
  external static int get write;

  external factory GPUMapMode();
}

@JS()
@staticInterop
class GPUTexture implements GPUObjectBase {
  external factory GPUTexture();
}

extension PropsGPUTexture on GPUTexture {
  GPUTextureView createView([GPUTextureViewDescriptor? descriptor]) =>
      js_util.callMethod(this, 'createView', [descriptor]);

  void destroy() => js_util.callMethod(this, 'destroy', []);

  int get width => js_util.getProperty(this, 'width');
  int get height => js_util.getProperty(this, 'height');
  int get depthOrArrayLayers => js_util.getProperty(this, 'depthOrArrayLayers');
  int get mipLevelCount => js_util.getProperty(this, 'mipLevelCount');
  int get sampleCount => js_util.getProperty(this, 'sampleCount');
  GPUTextureDimension get dimension =>
      GPUTextureDimension.fromValue(js_util.getProperty(this, 'dimension'));
  GPUTextureFormat get format =>
      GPUTextureFormat.fromValue(js_util.getProperty(this, 'format'));
  int get usage => js_util.getProperty(this, 'usage');
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
      int? usage,
      Iterable<String>? viewFormats});

  factory GPUTextureDescriptor(
          {dynamic size,
          int? mipLevelCount = 1,
          int? sampleCount = 1,
          GPUTextureDimension? dimension = GPUTextureDimension.value2d,
          GPUTextureFormat? format,
          int? usage,
          Iterable<GPUTextureFormat>? viewFormats = const []}) =>
      GPUTextureDescriptor._(
          size: size,
          mipLevelCount: mipLevelCount,
          sampleCount: sampleCount,
          dimension: dimension?.value,
          format: format?.value,
          usage: usage,
          viewFormats: viewFormats?.values);
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
      GPUTextureDimension.fromValue(js_util.getProperty(this, 'dimension'));
  set dimension(GPUTextureDimension newValue) {
    js_util.setProperty(this, 'dimension', newValue.value);
  }

  GPUTextureFormat get format =>
      GPUTextureFormat.fromValue(js_util.getProperty(this, 'format'));
  set format(GPUTextureFormat newValue) {
    js_util.setProperty(this, 'format', newValue.value);
  }

  int get usage => js_util.getProperty(this, 'usage');
  set usage(int newValue) {
    js_util.setProperty(this, 'usage', newValue);
  }

  Iterable<GPUTextureFormat> get viewFormats =>
      GPUTextureFormat.fromValues(js_util.getProperty(this, 'viewFormats'));
  set viewFormats(Iterable<GPUTextureFormat> newValue) {
    js_util.setProperty(this, 'viewFormats', newValue.values);
  }
}

enum GPUTextureDimension {
  value1d('1d'),
  value2d('2d'),
  value3d('3d');

  final String value;
  static GPUTextureDimension fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUTextureDimension(this.value);
}

@JS()
@staticInterop
class GPUTextureUsage {
  @JS('COPY_SRC')
  external static int get copySrc;

  @JS('COPY_DST')
  external static int get copyDst;

  @JS('TEXTURE_BINDING')
  external static int get textureBinding;

  @JS('STORAGE_BINDING')
  external static int get storageBinding;

  @JS('RENDER_ATTACHMENT')
  external static int get renderAttachment;

  external factory GPUTextureUsage();
}

@JS()
@staticInterop
class GPUTextureView implements GPUObjectBase {
  external factory GPUTextureView();
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
          format: format.value,
          dimension: dimension.value,
          aspect: aspect?.value,
          baseMipLevel: baseMipLevel,
          mipLevelCount: mipLevelCount,
          baseArrayLayer: baseArrayLayer,
          arrayLayerCount: arrayLayerCount);
}

extension PropsGPUTextureViewDescriptor on GPUTextureViewDescriptor {
  GPUTextureFormat get format =>
      GPUTextureFormat.fromValue(js_util.getProperty(this, 'format'));
  set format(GPUTextureFormat newValue) {
    js_util.setProperty(this, 'format', newValue.value);
  }

  GPUTextureViewDimension get dimension =>
      GPUTextureViewDimension.fromValue(js_util.getProperty(this, 'dimension'));
  set dimension(GPUTextureViewDimension newValue) {
    js_util.setProperty(this, 'dimension', newValue.value);
  }

  GPUTextureAspect get aspect =>
      GPUTextureAspect.fromValue(js_util.getProperty(this, 'aspect'));
  set aspect(GPUTextureAspect newValue) {
    js_util.setProperty(this, 'aspect', newValue.value);
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
  value1d('1d'),
  value2d('2d'),
  value2dArray('2d-array'),
  cube('cube'),
  cubeArray('cube-array'),
  value3d('3d');

  final String value;
  static GPUTextureViewDimension fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUTextureViewDimension(this.value);
}

enum GPUTextureAspect {
  all('all'),
  stencilOnly('stencil-only'),
  depthOnly('depth-only');

  final String value;
  static GPUTextureAspect fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUTextureAspect(this.value);
}

enum GPUTextureFormat {
  r8unorm('r8unorm'),
  r8snorm('r8snorm'),
  r8uint('r8uint'),
  r8sint('r8sint'),
  r16uint('r16uint'),
  r16sint('r16sint'),
  r16float('r16float'),
  rg8unorm('rg8unorm'),
  rg8snorm('rg8snorm'),
  rg8uint('rg8uint'),
  rg8sint('rg8sint'),
  r32uint('r32uint'),
  r32sint('r32sint'),
  r32float('r32float'),
  rg16uint('rg16uint'),
  rg16sint('rg16sint'),
  rg16float('rg16float'),
  rgba8unorm('rgba8unorm'),
  rgba8unormSrgb('rgba8unorm-srgb'),
  rgba8snorm('rgba8snorm'),
  rgba8uint('rgba8uint'),
  rgba8sint('rgba8sint'),
  bgra8unorm('bgra8unorm'),
  bgra8unormSrgb('bgra8unorm-srgb'),
  rgb9e5ufloat('rgb9e5ufloat'),
  rgb10a2unorm('rgb10a2unorm'),
  rg11b10ufloat('rg11b10ufloat'),
  rg32uint('rg32uint'),
  rg32sint('rg32sint'),
  rg32float('rg32float'),
  rgba16uint('rgba16uint'),
  rgba16sint('rgba16sint'),
  rgba16float('rgba16float'),
  rgba32uint('rgba32uint'),
  rgba32sint('rgba32sint'),
  rgba32float('rgba32float'),
  stencil8('stencil8'),
  depth16unorm('depth16unorm'),
  depth24plus('depth24plus'),
  depth24plusStencil8('depth24plus-stencil8'),
  depth32float('depth32float'),
  depth32floatStencil8('depth32float-stencil8'),
  bc1RgbaUnorm('bc1-rgba-unorm'),
  bc1RgbaUnormSrgb('bc1-rgba-unorm-srgb'),
  bc2RgbaUnorm('bc2-rgba-unorm'),
  bc2RgbaUnormSrgb('bc2-rgba-unorm-srgb'),
  bc3RgbaUnorm('bc3-rgba-unorm'),
  bc3RgbaUnormSrgb('bc3-rgba-unorm-srgb'),
  bc4RUnorm('bc4-r-unorm'),
  bc4RSnorm('bc4-r-snorm'),
  bc5RgUnorm('bc5-rg-unorm'),
  bc5RgSnorm('bc5-rg-snorm'),
  bc6hRgbUfloat('bc6h-rgb-ufloat'),
  bc6hRgbFloat('bc6h-rgb-float'),
  bc7RgbaUnorm('bc7-rgba-unorm'),
  bc7RgbaUnormSrgb('bc7-rgba-unorm-srgb'),
  etc2Rgb8unorm('etc2-rgb8unorm'),
  etc2Rgb8unormSrgb('etc2-rgb8unorm-srgb'),
  etc2Rgb8a1unorm('etc2-rgb8a1unorm'),
  etc2Rgb8a1unormSrgb('etc2-rgb8a1unorm-srgb'),
  etc2Rgba8unorm('etc2-rgba8unorm'),
  etc2Rgba8unormSrgb('etc2-rgba8unorm-srgb'),
  eacR11unorm('eac-r11unorm'),
  eacR11snorm('eac-r11snorm'),
  eacRg11unorm('eac-rg11unorm'),
  eacRg11snorm('eac-rg11snorm'),
  astc4x4Unorm('astc-4x4-unorm'),
  astc4x4UnormSrgb('astc-4x4-unorm-srgb'),
  astc5x4Unorm('astc-5x4-unorm'),
  astc5x4UnormSrgb('astc-5x4-unorm-srgb'),
  astc5x5Unorm('astc-5x5-unorm'),
  astc5x5UnormSrgb('astc-5x5-unorm-srgb'),
  astc6x5Unorm('astc-6x5-unorm'),
  astc6x5UnormSrgb('astc-6x5-unorm-srgb'),
  astc6x6Unorm('astc-6x6-unorm'),
  astc6x6UnormSrgb('astc-6x6-unorm-srgb'),
  astc8x5Unorm('astc-8x5-unorm'),
  astc8x5UnormSrgb('astc-8x5-unorm-srgb'),
  astc8x6Unorm('astc-8x6-unorm'),
  astc8x6UnormSrgb('astc-8x6-unorm-srgb'),
  astc8x8Unorm('astc-8x8-unorm'),
  astc8x8UnormSrgb('astc-8x8-unorm-srgb'),
  astc10x5Unorm('astc-10x5-unorm'),
  astc10x5UnormSrgb('astc-10x5-unorm-srgb'),
  astc10x6Unorm('astc-10x6-unorm'),
  astc10x6UnormSrgb('astc-10x6-unorm-srgb'),
  astc10x8Unorm('astc-10x8-unorm'),
  astc10x8UnormSrgb('astc-10x8-unorm-srgb'),
  astc10x10Unorm('astc-10x10-unorm'),
  astc10x10UnormSrgb('astc-10x10-unorm-srgb'),
  astc12x10Unorm('astc-12x10-unorm'),
  astc12x10UnormSrgb('astc-12x10-unorm-srgb'),
  astc12x12Unorm('astc-12x12-unorm'),
  astc12x12UnormSrgb('astc-12x12-unorm-srgb');

  final String value;
  static GPUTextureFormat fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUTextureFormat(this.value);
}

@JS()
@staticInterop
class GPUExternalTexture implements GPUObjectBase {
  external factory GPUExternalTexture();
}

extension PropsGPUExternalTexture on GPUExternalTexture {
  bool get expired => js_util.getProperty(this, 'expired');
}

@anonymous
@JS()
@staticInterop
class GPUExternalTextureDescriptor implements GPUObjectDescriptorBase {
  external factory GPUExternalTextureDescriptor._(
      {required HTMLVideoElement source, String? colorSpace});

  factory GPUExternalTextureDescriptor(
          {required HTMLVideoElement source,
          PredefinedColorSpace? colorSpace = PredefinedColorSpace.srgb}) =>
      GPUExternalTextureDescriptor._(
          source: source, colorSpace: colorSpace?.value);
}

extension PropsGPUExternalTextureDescriptor on GPUExternalTextureDescriptor {
  HTMLVideoElement get source => js_util.getProperty(this, 'source');
  set source(HTMLVideoElement newValue) {
    js_util.setProperty(this, 'source', newValue);
  }

  PredefinedColorSpace get colorSpace =>
      PredefinedColorSpace.fromValue(js_util.getProperty(this, 'colorSpace'));
  set colorSpace(PredefinedColorSpace newValue) {
    js_util.setProperty(this, 'colorSpace', newValue.value);
  }
}

@JS()
@staticInterop
class GPUSampler implements GPUObjectBase {
  external factory GPUSampler();
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
      double? lodMaxClamp = 32,
      String? compare,
      int? maxAnisotropy = 1});

  factory GPUSamplerDescriptor(
          {GPUAddressMode? addressModeU = GPUAddressMode.clampToEdge,
          GPUAddressMode? addressModeV = GPUAddressMode.clampToEdge,
          GPUAddressMode? addressModeW = GPUAddressMode.clampToEdge,
          GPUFilterMode? magFilter = GPUFilterMode.nearest,
          GPUFilterMode? minFilter = GPUFilterMode.nearest,
          GPUMipmapFilterMode? mipmapFilter = GPUMipmapFilterMode.nearest,
          double? lodMinClamp = 0,
          double? lodMaxClamp = 32,
          GPUCompareFunction? compare,
          int? maxAnisotropy = 1}) =>
      GPUSamplerDescriptor._(
          addressModeU: addressModeU?.value,
          addressModeV: addressModeV?.value,
          addressModeW: addressModeW?.value,
          magFilter: magFilter?.value,
          minFilter: minFilter?.value,
          mipmapFilter: mipmapFilter?.value,
          lodMinClamp: lodMinClamp,
          lodMaxClamp: lodMaxClamp,
          compare: compare?.value,
          maxAnisotropy: maxAnisotropy);
}

extension PropsGPUSamplerDescriptor on GPUSamplerDescriptor {
  GPUAddressMode get addressModeU =>
      GPUAddressMode.fromValue(js_util.getProperty(this, 'addressModeU'));
  set addressModeU(GPUAddressMode newValue) {
    js_util.setProperty(this, 'addressModeU', newValue.value);
  }

  GPUAddressMode get addressModeV =>
      GPUAddressMode.fromValue(js_util.getProperty(this, 'addressModeV'));
  set addressModeV(GPUAddressMode newValue) {
    js_util.setProperty(this, 'addressModeV', newValue.value);
  }

  GPUAddressMode get addressModeW =>
      GPUAddressMode.fromValue(js_util.getProperty(this, 'addressModeW'));
  set addressModeW(GPUAddressMode newValue) {
    js_util.setProperty(this, 'addressModeW', newValue.value);
  }

  GPUFilterMode get magFilter =>
      GPUFilterMode.fromValue(js_util.getProperty(this, 'magFilter'));
  set magFilter(GPUFilterMode newValue) {
    js_util.setProperty(this, 'magFilter', newValue.value);
  }

  GPUFilterMode get minFilter =>
      GPUFilterMode.fromValue(js_util.getProperty(this, 'minFilter'));
  set minFilter(GPUFilterMode newValue) {
    js_util.setProperty(this, 'minFilter', newValue.value);
  }

  GPUMipmapFilterMode get mipmapFilter =>
      GPUMipmapFilterMode.fromValue(js_util.getProperty(this, 'mipmapFilter'));
  set mipmapFilter(GPUMipmapFilterMode newValue) {
    js_util.setProperty(this, 'mipmapFilter', newValue.value);
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
      GPUCompareFunction.fromValue(js_util.getProperty(this, 'compare'));
  set compare(GPUCompareFunction newValue) {
    js_util.setProperty(this, 'compare', newValue.value);
  }

  int get maxAnisotropy => js_util.getProperty(this, 'maxAnisotropy');
  set maxAnisotropy(int newValue) {
    js_util.setProperty(this, 'maxAnisotropy', newValue);
  }
}

enum GPUAddressMode {
  clampToEdge('clamp-to-edge'),
  repeat('repeat'),
  mirrorRepeat('mirror-repeat');

  final String value;
  static GPUAddressMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUAddressMode(this.value);
}

enum GPUFilterMode {
  nearest('nearest'),
  linear('linear');

  final String value;
  static GPUFilterMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUFilterMode(this.value);
}

enum GPUMipmapFilterMode {
  nearest('nearest'),
  linear('linear');

  final String value;
  static GPUMipmapFilterMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUMipmapFilterMode(this.value);
}

enum GPUCompareFunction {
  never('never'),
  less('less'),
  equal('equal'),
  lessEqual('less-equal'),
  greater('greater'),
  notEqual('not-equal'),
  greaterEqual('greater-equal'),
  always('always');

  final String value;
  static GPUCompareFunction fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUCompareFunction(this.value);
}

@JS()
@staticInterop
class GPUBindGroupLayout implements GPUObjectBase {
  external factory GPUBindGroupLayout();
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

@JS()
@staticInterop
class GPUShaderStage {
  @JS('VERTEX')
  external static int get vertex;

  @JS('FRAGMENT')
  external static int get fragment;

  @JS('COMPUTE')
  external static int get compute;

  external factory GPUShaderStage();
}

enum GPUBufferBindingType {
  uniform('uniform'),
  storage('storage'),
  readOnlyStorage('read-only-storage');

  final String value;
  static GPUBufferBindingType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUBufferBindingType(this.value);
}

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
          type: type?.value,
          hasDynamicOffset: hasDynamicOffset,
          minBindingSize: minBindingSize);
}

extension PropsGPUBufferBindingLayout on GPUBufferBindingLayout {
  GPUBufferBindingType get type =>
      GPUBufferBindingType.fromValue(js_util.getProperty(this, 'type'));
  set type(GPUBufferBindingType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
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

enum GPUSamplerBindingType {
  filtering('filtering'),
  nonFiltering('non-filtering'),
  comparison('comparison');

  final String value;
  static GPUSamplerBindingType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUSamplerBindingType(this.value);
}

@anonymous
@JS()
@staticInterop
class GPUSamplerBindingLayout {
  external factory GPUSamplerBindingLayout._({String? type});

  factory GPUSamplerBindingLayout(
          {GPUSamplerBindingType? type = GPUSamplerBindingType.filtering}) =>
      GPUSamplerBindingLayout._(type: type?.value);
}

extension PropsGPUSamplerBindingLayout on GPUSamplerBindingLayout {
  GPUSamplerBindingType get type =>
      GPUSamplerBindingType.fromValue(js_util.getProperty(this, 'type'));
  set type(GPUSamplerBindingType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
  }
}

enum GPUTextureSampleType {
  float('float'),
  unfilterableFloat('unfilterable-float'),
  depth('depth'),
  sint('sint'),
  uint('uint');

  final String value;
  static GPUTextureSampleType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUTextureSampleType(this.value);
}

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
          sampleType: sampleType?.value,
          viewDimension: viewDimension?.value,
          multisampled: multisampled);
}

extension PropsGPUTextureBindingLayout on GPUTextureBindingLayout {
  GPUTextureSampleType get sampleType =>
      GPUTextureSampleType.fromValue(js_util.getProperty(this, 'sampleType'));
  set sampleType(GPUTextureSampleType newValue) {
    js_util.setProperty(this, 'sampleType', newValue.value);
  }

  GPUTextureViewDimension get viewDimension =>
      GPUTextureViewDimension.fromValue(
          js_util.getProperty(this, 'viewDimension'));
  set viewDimension(GPUTextureViewDimension newValue) {
    js_util.setProperty(this, 'viewDimension', newValue.value);
  }

  bool get multisampled => js_util.getProperty(this, 'multisampled');
  set multisampled(bool newValue) {
    js_util.setProperty(this, 'multisampled', newValue);
  }
}

enum GPUStorageTextureAccess {
  writeOnly('write-only');

  final String value;
  static GPUStorageTextureAccess fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUStorageTextureAccess(this.value);
}

@anonymous
@JS()
@staticInterop
class GPUStorageTextureBindingLayout {
  external factory GPUStorageTextureBindingLayout._(
      {String? access, String? format, String? viewDimension});

  factory GPUStorageTextureBindingLayout(
          {GPUStorageTextureAccess? access = GPUStorageTextureAccess.writeOnly,
          GPUTextureFormat? format,
          GPUTextureViewDimension? viewDimension =
              GPUTextureViewDimension.value2d}) =>
      GPUStorageTextureBindingLayout._(
          access: access?.value,
          format: format?.value,
          viewDimension: viewDimension?.value);
}

extension PropsGPUStorageTextureBindingLayout
    on GPUStorageTextureBindingLayout {
  GPUStorageTextureAccess get access =>
      GPUStorageTextureAccess.fromValue(js_util.getProperty(this, 'access'));
  set access(GPUStorageTextureAccess newValue) {
    js_util.setProperty(this, 'access', newValue.value);
  }

  GPUTextureFormat get format =>
      GPUTextureFormat.fromValue(js_util.getProperty(this, 'format'));
  set format(GPUTextureFormat newValue) {
    js_util.setProperty(this, 'format', newValue.value);
  }

  GPUTextureViewDimension get viewDimension =>
      GPUTextureViewDimension.fromValue(
          js_util.getProperty(this, 'viewDimension'));
  set viewDimension(GPUTextureViewDimension newValue) {
    js_util.setProperty(this, 'viewDimension', newValue.value);
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
  external factory GPUBindGroup();
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
  external factory GPUPipelineLayout();
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
  external factory GPUShaderModule();
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
      {required String code, dynamic sourceMap, dynamic hints});
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

  dynamic get hints => js_util.getProperty(this, 'hints');
  set hints(dynamic newValue) {
    js_util.setProperty(this, 'hints', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUShaderModuleCompilationHint {
  external factory GPUShaderModuleCompilationHint({dynamic layout});
}

extension PropsGPUShaderModuleCompilationHint
    on GPUShaderModuleCompilationHint {
  dynamic get layout => js_util.getProperty(this, 'layout');
  set layout(dynamic newValue) {
    js_util.setProperty(this, 'layout', newValue);
  }
}

enum GPUCompilationMessageType {
  error('error'),
  warning('warning'),
  info('info');

  final String value;
  static GPUCompilationMessageType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUCompilationMessageType(this.value);
}

@JS()
@staticInterop
class GPUCompilationMessage {
  external factory GPUCompilationMessage();
}

extension PropsGPUCompilationMessage on GPUCompilationMessage {
  String get message => js_util.getProperty(this, 'message');
  GPUCompilationMessageType get type =>
      GPUCompilationMessageType.fromValue(js_util.getProperty(this, 'type'));
  int get lineNum => js_util.getProperty(this, 'lineNum');
  int get linePos => js_util.getProperty(this, 'linePos');
  int get offset => js_util.getProperty(this, 'offset');
  int get length => js_util.getProperty(this, 'length');
}

@JS()
@staticInterop
class GPUCompilationInfo {
  external factory GPUCompilationInfo();
}

extension PropsGPUCompilationInfo on GPUCompilationInfo {
  Iterable<GPUCompilationMessage> get messages =>
      js_util.getProperty(this, 'messages');
}

@JS()
@staticInterop
class GPUPipelineError implements DOMException {
  external factory GPUPipelineError(
      String message, GPUPipelineErrorInit options);
}

extension PropsGPUPipelineError on GPUPipelineError {
  GPUPipelineErrorReason get reason =>
      GPUPipelineErrorReason.fromValue(js_util.getProperty(this, 'reason'));
}

@anonymous
@JS()
@staticInterop
class GPUPipelineErrorInit {
  external factory GPUPipelineErrorInit._({required String reason});

  factory GPUPipelineErrorInit({required GPUPipelineErrorReason reason}) =>
      GPUPipelineErrorInit._(reason: reason.value);
}

extension PropsGPUPipelineErrorInit on GPUPipelineErrorInit {
  GPUPipelineErrorReason get reason =>
      GPUPipelineErrorReason.fromValue(js_util.getProperty(this, 'reason'));
  set reason(GPUPipelineErrorReason newValue) {
    js_util.setProperty(this, 'reason', newValue.value);
  }
}

enum GPUPipelineErrorReason {
  validation('validation'),
  internal('internal');

  final String value;
  static GPUPipelineErrorReason fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUPipelineErrorReason(this.value);
}

enum GPUAutoLayoutMode {
  auto('auto');

  final String value;
  static GPUAutoLayoutMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUAutoLayoutMode(this.value);
}

@anonymous
@JS()
@staticInterop
class GPUPipelineDescriptorBase implements GPUObjectDescriptorBase {
  external factory GPUPipelineDescriptorBase({dynamic layout});
}

extension PropsGPUPipelineDescriptorBase on GPUPipelineDescriptorBase {
  dynamic get layout => js_util.getProperty(this, 'layout');
  set layout(dynamic newValue) {
    js_util.setProperty(this, 'layout', newValue);
  }
}

@JS()
@staticInterop
class GPUPipelineBase {
  external factory GPUPipelineBase();
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
  external factory GPUComputePipeline();
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
  external factory GPURenderPipeline();
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

@anonymous
@JS()
@staticInterop
class GPUPrimitiveState {
  external factory GPUPrimitiveState._(
      {String? topology,
      String? stripIndexFormat,
      String? frontFace,
      String? cullMode,
      bool? unclippedDepth = false});

  factory GPUPrimitiveState(
          {GPUPrimitiveTopology? topology = GPUPrimitiveTopology.triangleList,
          GPUIndexFormat? stripIndexFormat,
          GPUFrontFace? frontFace = GPUFrontFace.ccw,
          GPUCullMode? cullMode = GPUCullMode.none,
          bool? unclippedDepth = false}) =>
      GPUPrimitiveState._(
          topology: topology?.value,
          stripIndexFormat: stripIndexFormat?.value,
          frontFace: frontFace?.value,
          cullMode: cullMode?.value,
          unclippedDepth: unclippedDepth);
}

extension PropsGPUPrimitiveState on GPUPrimitiveState {
  GPUPrimitiveTopology get topology =>
      GPUPrimitiveTopology.fromValue(js_util.getProperty(this, 'topology'));
  set topology(GPUPrimitiveTopology newValue) {
    js_util.setProperty(this, 'topology', newValue.value);
  }

  GPUIndexFormat get stripIndexFormat =>
      GPUIndexFormat.fromValue(js_util.getProperty(this, 'stripIndexFormat'));
  set stripIndexFormat(GPUIndexFormat newValue) {
    js_util.setProperty(this, 'stripIndexFormat', newValue.value);
  }

  GPUFrontFace get frontFace =>
      GPUFrontFace.fromValue(js_util.getProperty(this, 'frontFace'));
  set frontFace(GPUFrontFace newValue) {
    js_util.setProperty(this, 'frontFace', newValue.value);
  }

  GPUCullMode get cullMode =>
      GPUCullMode.fromValue(js_util.getProperty(this, 'cullMode'));
  set cullMode(GPUCullMode newValue) {
    js_util.setProperty(this, 'cullMode', newValue.value);
  }

  bool get unclippedDepth => js_util.getProperty(this, 'unclippedDepth');
  set unclippedDepth(bool newValue) {
    js_util.setProperty(this, 'unclippedDepth', newValue);
  }
}

enum GPUPrimitiveTopology {
  pointList('point-list'),
  lineList('line-list'),
  lineStrip('line-strip'),
  triangleList('triangle-list'),
  triangleStrip('triangle-strip');

  final String value;
  static GPUPrimitiveTopology fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUPrimitiveTopology(this.value);
}

enum GPUFrontFace {
  ccw('ccw'),
  cw('cw');

  final String value;
  static GPUFrontFace fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUFrontFace(this.value);
}

enum GPUCullMode {
  none('none'),
  front('front'),
  back('back');

  final String value;
  static GPUCullMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUCullMode(this.value);
}

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
  external factory GPUFragmentState({Iterable<GPUColorTargetState>? targets});
}

extension PropsGPUFragmentState on GPUFragmentState {
  Iterable<GPUColorTargetState>? get targets =>
      js_util.getProperty(this, 'targets');
  set targets(Iterable<GPUColorTargetState>? newValue) {
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
          format: format.value, blend: blend, writeMask: writeMask);
}

extension PropsGPUColorTargetState on GPUColorTargetState {
  GPUTextureFormat get format =>
      GPUTextureFormat.fromValue(js_util.getProperty(this, 'format'));
  set format(GPUTextureFormat newValue) {
    js_util.setProperty(this, 'format', newValue.value);
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

  external factory GPUColorWrite();
}

@anonymous
@JS()
@staticInterop
class GPUBlendComponent {
  external factory GPUBlendComponent._(
      {String? operation, String? srcFactor, String? dstFactor});

  factory GPUBlendComponent(
          {GPUBlendOperation? operation = GPUBlendOperation.add,
          GPUBlendFactor? srcFactor = GPUBlendFactor.one,
          GPUBlendFactor? dstFactor = GPUBlendFactor.zero}) =>
      GPUBlendComponent._(
          operation: operation?.value,
          srcFactor: srcFactor?.value,
          dstFactor: dstFactor?.value);
}

extension PropsGPUBlendComponent on GPUBlendComponent {
  GPUBlendOperation get operation =>
      GPUBlendOperation.fromValue(js_util.getProperty(this, 'operation'));
  set operation(GPUBlendOperation newValue) {
    js_util.setProperty(this, 'operation', newValue.value);
  }

  GPUBlendFactor get srcFactor =>
      GPUBlendFactor.fromValue(js_util.getProperty(this, 'srcFactor'));
  set srcFactor(GPUBlendFactor newValue) {
    js_util.setProperty(this, 'srcFactor', newValue.value);
  }

  GPUBlendFactor get dstFactor =>
      GPUBlendFactor.fromValue(js_util.getProperty(this, 'dstFactor'));
  set dstFactor(GPUBlendFactor newValue) {
    js_util.setProperty(this, 'dstFactor', newValue.value);
  }
}

enum GPUBlendFactor {
  zero('zero'),
  one('one'),
  src('src'),
  oneMinusSrc('one-minus-src'),
  srcAlpha('src-alpha'),
  oneMinusSrcAlpha('one-minus-src-alpha'),
  dst('dst'),
  oneMinusDst('one-minus-dst'),
  dstAlpha('dst-alpha'),
  oneMinusDstAlpha('one-minus-dst-alpha'),
  srcAlphaSaturated('src-alpha-saturated'),
  constant('constant'),
  oneMinusConstant('one-minus-constant');

  final String value;
  static GPUBlendFactor fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUBlendFactor(this.value);
}

enum GPUBlendOperation {
  add('add'),
  subtract('subtract'),
  reverseSubtract('reverse-subtract'),
  min('min'),
  max('max');

  final String value;
  static GPUBlendOperation fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUBlendOperation(this.value);
}

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
          format: format.value,
          depthWriteEnabled: depthWriteEnabled,
          depthCompare: depthCompare?.value,
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
      GPUTextureFormat.fromValue(js_util.getProperty(this, 'format'));
  set format(GPUTextureFormat newValue) {
    js_util.setProperty(this, 'format', newValue.value);
  }

  bool get depthWriteEnabled => js_util.getProperty(this, 'depthWriteEnabled');
  set depthWriteEnabled(bool newValue) {
    js_util.setProperty(this, 'depthWriteEnabled', newValue);
  }

  GPUCompareFunction get depthCompare =>
      GPUCompareFunction.fromValue(js_util.getProperty(this, 'depthCompare'));
  set depthCompare(GPUCompareFunction newValue) {
    js_util.setProperty(this, 'depthCompare', newValue.value);
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
          compare: compare?.value,
          failOp: failOp?.value,
          depthFailOp: depthFailOp?.value,
          passOp: passOp?.value);
}

extension PropsGPUStencilFaceState on GPUStencilFaceState {
  GPUCompareFunction get compare =>
      GPUCompareFunction.fromValue(js_util.getProperty(this, 'compare'));
  set compare(GPUCompareFunction newValue) {
    js_util.setProperty(this, 'compare', newValue.value);
  }

  GPUStencilOperation get failOp =>
      GPUStencilOperation.fromValue(js_util.getProperty(this, 'failOp'));
  set failOp(GPUStencilOperation newValue) {
    js_util.setProperty(this, 'failOp', newValue.value);
  }

  GPUStencilOperation get depthFailOp =>
      GPUStencilOperation.fromValue(js_util.getProperty(this, 'depthFailOp'));
  set depthFailOp(GPUStencilOperation newValue) {
    js_util.setProperty(this, 'depthFailOp', newValue.value);
  }

  GPUStencilOperation get passOp =>
      GPUStencilOperation.fromValue(js_util.getProperty(this, 'passOp'));
  set passOp(GPUStencilOperation newValue) {
    js_util.setProperty(this, 'passOp', newValue.value);
  }
}

enum GPUStencilOperation {
  keep('keep'),
  zero('zero'),
  replace('replace'),
  invert('invert'),
  incrementClamp('increment-clamp'),
  decrementClamp('decrement-clamp'),
  incrementWrap('increment-wrap'),
  decrementWrap('decrement-wrap');

  final String value;
  static GPUStencilOperation fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUStencilOperation(this.value);
}

enum GPUIndexFormat {
  uint16('uint16'),
  uint32('uint32');

  final String value;
  static GPUIndexFormat fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUIndexFormat(this.value);
}

enum GPUVertexFormat {
  uint8x2('uint8x2'),
  uint8x4('uint8x4'),
  sint8x2('sint8x2'),
  sint8x4('sint8x4'),
  unorm8x2('unorm8x2'),
  unorm8x4('unorm8x4'),
  snorm8x2('snorm8x2'),
  snorm8x4('snorm8x4'),
  uint16x2('uint16x2'),
  uint16x4('uint16x4'),
  sint16x2('sint16x2'),
  sint16x4('sint16x4'),
  unorm16x2('unorm16x2'),
  unorm16x4('unorm16x4'),
  snorm16x2('snorm16x2'),
  snorm16x4('snorm16x4'),
  float16x2('float16x2'),
  float16x4('float16x4'),
  float32('float32'),
  float32x2('float32x2'),
  float32x3('float32x3'),
  float32x4('float32x4'),
  uint32('uint32'),
  uint32x2('uint32x2'),
  uint32x3('uint32x3'),
  uint32x4('uint32x4'),
  sint32('sint32'),
  sint32x2('sint32x2'),
  sint32x3('sint32x3'),
  sint32x4('sint32x4');

  final String value;
  static GPUVertexFormat fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUVertexFormat(this.value);
}

enum GPUVertexStepMode {
  vertex('vertex'),
  instance('instance');

  final String value;
  static GPUVertexStepMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUVertexStepMode(this.value);
}

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
          GPUVertexStepMode? stepMode = GPUVertexStepMode.vertex,
          Iterable<GPUVertexAttribute>? attributes}) =>
      GPUVertexBufferLayout._(
          arrayStride: arrayStride,
          stepMode: stepMode?.value,
          attributes: attributes);
}

extension PropsGPUVertexBufferLayout on GPUVertexBufferLayout {
  int get arrayStride => js_util.getProperty(this, 'arrayStride');
  set arrayStride(int newValue) {
    js_util.setProperty(this, 'arrayStride', newValue);
  }

  GPUVertexStepMode get stepMode =>
      GPUVertexStepMode.fromValue(js_util.getProperty(this, 'stepMode'));
  set stepMode(GPUVertexStepMode newValue) {
    js_util.setProperty(this, 'stepMode', newValue.value);
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
          format: format.value, offset: offset, shaderLocation: shaderLocation);
}

extension PropsGPUVertexAttribute on GPUVertexAttribute {
  GPUVertexFormat get format =>
      GPUVertexFormat.fromValue(js_util.getProperty(this, 'format'));
  set format(GPUVertexFormat newValue) {
    js_util.setProperty(this, 'format', newValue.value);
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
          aspect: aspect?.value);
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
      GPUTextureAspect.fromValue(js_util.getProperty(this, 'aspect'));
  set aspect(GPUTextureAspect newValue) {
    js_util.setProperty(this, 'aspect', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class GPUImageCopyTextureTagged implements GPUImageCopyTexture {
  external factory GPUImageCopyTextureTagged._(
      {String? colorSpace, bool? premultipliedAlpha = false});

  factory GPUImageCopyTextureTagged(
          {PredefinedColorSpace? colorSpace = PredefinedColorSpace.srgb,
          bool? premultipliedAlpha = false}) =>
      GPUImageCopyTextureTagged._(
          colorSpace: colorSpace?.value,
          premultipliedAlpha: premultipliedAlpha);
}

extension PropsGPUImageCopyTextureTagged on GPUImageCopyTextureTagged {
  PredefinedColorSpace get colorSpace =>
      PredefinedColorSpace.fromValue(js_util.getProperty(this, 'colorSpace'));
  set colorSpace(PredefinedColorSpace newValue) {
    js_util.setProperty(this, 'colorSpace', newValue.value);
  }

  bool get premultipliedAlpha =>
      js_util.getProperty(this, 'premultipliedAlpha');
  set premultipliedAlpha(bool newValue) {
    js_util.setProperty(this, 'premultipliedAlpha', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUImageCopyExternalImage {
  external factory GPUImageCopyExternalImage(
      {dynamic source, dynamic origin, bool? flipY = false});
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

  bool get flipY => js_util.getProperty(this, 'flipY');
  set flipY(bool newValue) {
    js_util.setProperty(this, 'flipY', newValue);
  }
}

@JS()
@staticInterop
class GPUCommandBuffer implements GPUObjectBase {
  external factory GPUCommandBuffer();
}

@anonymous
@JS()
@staticInterop
class GPUCommandBufferDescriptor implements GPUObjectDescriptorBase {
  external factory GPUCommandBufferDescriptor();
}

@JS()
@staticInterop
class GPUCommandsMixin {
  external factory GPUCommandsMixin();
}

@JS()
@staticInterop
class GPUCommandEncoder
    implements GPUObjectBase, GPUCommandsMixin, GPUDebugCommandsMixin {
  external factory GPUCommandEncoder();
}

extension PropsGPUCommandEncoder on GPUCommandEncoder {
  GPURenderPassEncoder beginRenderPass(GPURenderPassDescriptor descriptor) =>
      js_util.callMethod(this, 'beginRenderPass', [descriptor]);

  GPUComputePassEncoder beginComputePass(
          [GPUComputePassDescriptor? descriptor]) =>
      js_util.callMethod(this, 'beginComputePass', [descriptor]);

  void copyBufferToBuffer(GPUBuffer source, int sourceOffset,
          GPUBuffer destination, int destinationOffset, int size) =>
      js_util.callMethod(this, 'copyBufferToBuffer',
          [source, sourceOffset, destination, destinationOffset, size]);

  void copyBufferToTexture(GPUImageCopyBuffer source,
          GPUImageCopyTexture destination, dynamic copySize) =>
      js_util.callMethod(
          this, 'copyBufferToTexture', [source, destination, copySize]);

  void copyTextureToBuffer(GPUImageCopyTexture source,
          GPUImageCopyBuffer destination, dynamic copySize) =>
      js_util.callMethod(
          this, 'copyTextureToBuffer', [source, destination, copySize]);

  void copyTextureToTexture(GPUImageCopyTexture source,
          GPUImageCopyTexture destination, dynamic copySize) =>
      js_util.callMethod(
          this, 'copyTextureToTexture', [source, destination, copySize]);

  void clearBuffer(GPUBuffer buffer, [int? offset = 0, int? size]) =>
      js_util.callMethod(this, 'clearBuffer', [buffer, offset, size]);

  void writeTimestamp(GPUQuerySet querySet, int queryIndex) =>
      js_util.callMethod(this, 'writeTimestamp', [querySet, queryIndex]);

  void resolveQuerySet(GPUQuerySet querySet, int firstQuery, int queryCount,
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
  external factory GPUCommandEncoderDescriptor();
}

@JS()
@staticInterop
class GPUBindingCommandsMixin {
  external factory GPUBindingCommandsMixin();
}

extension PropsGPUBindingCommandsMixin on GPUBindingCommandsMixin {
  void setBindGroup(int index, GPUBindGroup bindGroup,
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
}

@JS()
@staticInterop
class GPUDebugCommandsMixin {
  external factory GPUDebugCommandsMixin();
}

extension PropsGPUDebugCommandsMixin on GPUDebugCommandsMixin {
  void pushDebugGroup(String groupLabel) =>
      js_util.callMethod(this, 'pushDebugGroup', [groupLabel]);

  void popDebugGroup() => js_util.callMethod(this, 'popDebugGroup', []);

  void insertDebugMarker(String markerLabel) =>
      js_util.callMethod(this, 'insertDebugMarker', [markerLabel]);
}

@JS()
@staticInterop
class GPUComputePassEncoder
    implements
        GPUObjectBase,
        GPUCommandsMixin,
        GPUDebugCommandsMixin,
        GPUBindingCommandsMixin {
  external factory GPUComputePassEncoder();
}

extension PropsGPUComputePassEncoder on GPUComputePassEncoder {
  void setPipeline(GPUComputePipeline pipeline) =>
      js_util.callMethod(this, 'setPipeline', [pipeline]);

  void dispatchWorkgroups(int workgroupCountX,
          [int? workgroupCountY = 1, int? workgroupCountZ = 1]) =>
      js_util.callMethod(this, 'dispatchWorkgroups',
          [workgroupCountX, workgroupCountY, workgroupCountZ]);

  void dispatchWorkgroupsIndirect(
          GPUBuffer indirectBuffer, int indirectOffset) =>
      js_util.callMethod(
          this, 'dispatchWorkgroupsIndirect', [indirectBuffer, indirectOffset]);

  void end() => js_util.callMethod(this, 'end', []);
}

enum GPUComputePassTimestampLocation {
  beginning('beginning'),
  end('end');

  final String value;
  static GPUComputePassTimestampLocation fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUComputePassTimestampLocation(this.value);
}

@anonymous
@JS()
@staticInterop
class GPUComputePassTimestampWrite {
  external factory GPUComputePassTimestampWrite._(
      {required GPUQuerySet querySet,
      required int queryIndex,
      required String location});

  factory GPUComputePassTimestampWrite(
          {required GPUQuerySet querySet,
          required int queryIndex,
          required GPUComputePassTimestampLocation location}) =>
      GPUComputePassTimestampWrite._(
          querySet: querySet, queryIndex: queryIndex, location: location.value);
}

extension PropsGPUComputePassTimestampWrite on GPUComputePassTimestampWrite {
  GPUQuerySet get querySet => js_util.getProperty(this, 'querySet');
  set querySet(GPUQuerySet newValue) {
    js_util.setProperty(this, 'querySet', newValue);
  }

  int get queryIndex => js_util.getProperty(this, 'queryIndex');
  set queryIndex(int newValue) {
    js_util.setProperty(this, 'queryIndex', newValue);
  }

  GPUComputePassTimestampLocation get location =>
      GPUComputePassTimestampLocation.fromValue(
          js_util.getProperty(this, 'location'));
  set location(GPUComputePassTimestampLocation newValue) {
    js_util.setProperty(this, 'location', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class GPUComputePassDescriptor implements GPUObjectDescriptorBase {
  external factory GPUComputePassDescriptor(
      {Iterable<GPUComputePassTimestampWrite>? timestampWrites = const []});
}

extension PropsGPUComputePassDescriptor on GPUComputePassDescriptor {
  Iterable<GPUComputePassTimestampWrite> get timestampWrites =>
      js_util.getProperty(this, 'timestampWrites');
  set timestampWrites(Iterable<GPUComputePassTimestampWrite> newValue) {
    js_util.setProperty(this, 'timestampWrites', newValue);
  }
}

@JS()
@staticInterop
class GPURenderPassEncoder
    implements
        GPUObjectBase,
        GPUCommandsMixin,
        GPUDebugCommandsMixin,
        GPUBindingCommandsMixin,
        GPURenderCommandsMixin {
  external factory GPURenderPassEncoder();
}

extension PropsGPURenderPassEncoder on GPURenderPassEncoder {
  void setViewport(double x, double y, double width, double height,
          double minDepth, double maxDepth) =>
      js_util.callMethod(
          this, 'setViewport', [x, y, width, height, minDepth, maxDepth]);

  void setScissorRect(int x, int y, int width, int height) =>
      js_util.callMethod(this, 'setScissorRect', [x, y, width, height]);

  void setBlendConstant(dynamic color) =>
      js_util.callMethod(this, 'setBlendConstant', [color]);

  void setStencilReference(int reference) =>
      js_util.callMethod(this, 'setStencilReference', [reference]);

  void beginOcclusionQuery(int queryIndex) =>
      js_util.callMethod(this, 'beginOcclusionQuery', [queryIndex]);

  void endOcclusionQuery() => js_util.callMethod(this, 'endOcclusionQuery', []);

  void executeBundles(Iterable<GPURenderBundle> bundles) =>
      js_util.callMethod(this, 'executeBundles', [bundles]);

  void end() => js_util.callMethod(this, 'end', []);
}

enum GPURenderPassTimestampLocation {
  beginning('beginning'),
  end('end');

  final String value;
  static GPURenderPassTimestampLocation fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPURenderPassTimestampLocation(this.value);
}

@anonymous
@JS()
@staticInterop
class GPURenderPassTimestampWrite {
  external factory GPURenderPassTimestampWrite._(
      {required GPUQuerySet querySet,
      required int queryIndex,
      required String location});

  factory GPURenderPassTimestampWrite(
          {required GPUQuerySet querySet,
          required int queryIndex,
          required GPURenderPassTimestampLocation location}) =>
      GPURenderPassTimestampWrite._(
          querySet: querySet, queryIndex: queryIndex, location: location.value);
}

extension PropsGPURenderPassTimestampWrite on GPURenderPassTimestampWrite {
  GPUQuerySet get querySet => js_util.getProperty(this, 'querySet');
  set querySet(GPUQuerySet newValue) {
    js_util.setProperty(this, 'querySet', newValue);
  }

  int get queryIndex => js_util.getProperty(this, 'queryIndex');
  set queryIndex(int newValue) {
    js_util.setProperty(this, 'queryIndex', newValue);
  }

  GPURenderPassTimestampLocation get location =>
      GPURenderPassTimestampLocation.fromValue(
          js_util.getProperty(this, 'location'));
  set location(GPURenderPassTimestampLocation newValue) {
    js_util.setProperty(this, 'location', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class GPURenderPassDescriptor implements GPUObjectDescriptorBase {
  external factory GPURenderPassDescriptor(
      {Iterable<GPURenderPassColorAttachment>? colorAttachments,
      required GPURenderPassDepthStencilAttachment depthStencilAttachment,
      required GPUQuerySet occlusionQuerySet,
      Iterable<GPURenderPassTimestampWrite>? timestampWrites = const [],
      int? maxDrawCount = 50000000});
}

extension PropsGPURenderPassDescriptor on GPURenderPassDescriptor {
  Iterable<GPURenderPassColorAttachment>? get colorAttachments =>
      js_util.getProperty(this, 'colorAttachments');
  set colorAttachments(Iterable<GPURenderPassColorAttachment>? newValue) {
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

  Iterable<GPURenderPassTimestampWrite> get timestampWrites =>
      js_util.getProperty(this, 'timestampWrites');
  set timestampWrites(Iterable<GPURenderPassTimestampWrite> newValue) {
    js_util.setProperty(this, 'timestampWrites', newValue);
  }

  int get maxDrawCount => js_util.getProperty(this, 'maxDrawCount');
  set maxDrawCount(int newValue) {
    js_util.setProperty(this, 'maxDrawCount', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPURenderPassColorAttachment {
  external factory GPURenderPassColorAttachment._(
      {required GPUTextureView view,
      required GPUTextureView resolveTarget,
      dynamic clearValue,
      required String loadOp,
      required String storeOp});

  factory GPURenderPassColorAttachment(
          {required GPUTextureView view,
          required GPUTextureView resolveTarget,
          dynamic clearValue,
          required GPULoadOp loadOp,
          required GPUStoreOp storeOp}) =>
      GPURenderPassColorAttachment._(
          view: view,
          resolveTarget: resolveTarget,
          clearValue: clearValue,
          loadOp: loadOp.value,
          storeOp: storeOp.value);
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

  dynamic get clearValue => js_util.getProperty(this, 'clearValue');
  set clearValue(dynamic newValue) {
    js_util.setProperty(this, 'clearValue', newValue);
  }

  GPULoadOp get loadOp =>
      GPULoadOp.fromValue(js_util.getProperty(this, 'loadOp'));
  set loadOp(GPULoadOp newValue) {
    js_util.setProperty(this, 'loadOp', newValue.value);
  }

  GPUStoreOp get storeOp =>
      GPUStoreOp.fromValue(js_util.getProperty(this, 'storeOp'));
  set storeOp(GPUStoreOp newValue) {
    js_util.setProperty(this, 'storeOp', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class GPURenderPassDepthStencilAttachment {
  external factory GPURenderPassDepthStencilAttachment._(
      {required GPUTextureView view,
      double? depthClearValue = 0,
      String? depthLoadOp,
      String? depthStoreOp,
      bool? depthReadOnly = false,
      int? stencilClearValue = 0,
      String? stencilLoadOp,
      String? stencilStoreOp,
      bool? stencilReadOnly = false});

  factory GPURenderPassDepthStencilAttachment(
          {required GPUTextureView view,
          double? depthClearValue = 0,
          GPULoadOp? depthLoadOp,
          GPUStoreOp? depthStoreOp,
          bool? depthReadOnly = false,
          int? stencilClearValue = 0,
          GPULoadOp? stencilLoadOp,
          GPUStoreOp? stencilStoreOp,
          bool? stencilReadOnly = false}) =>
      GPURenderPassDepthStencilAttachment._(
          view: view,
          depthClearValue: depthClearValue,
          depthLoadOp: depthLoadOp?.value,
          depthStoreOp: depthStoreOp?.value,
          depthReadOnly: depthReadOnly,
          stencilClearValue: stencilClearValue,
          stencilLoadOp: stencilLoadOp?.value,
          stencilStoreOp: stencilStoreOp?.value,
          stencilReadOnly: stencilReadOnly);
}

extension PropsGPURenderPassDepthStencilAttachment
    on GPURenderPassDepthStencilAttachment {
  GPUTextureView get view => js_util.getProperty(this, 'view');
  set view(GPUTextureView newValue) {
    js_util.setProperty(this, 'view', newValue);
  }

  double get depthClearValue => js_util.getProperty(this, 'depthClearValue');
  set depthClearValue(double newValue) {
    js_util.setProperty(this, 'depthClearValue', newValue);
  }

  GPULoadOp get depthLoadOp =>
      GPULoadOp.fromValue(js_util.getProperty(this, 'depthLoadOp'));
  set depthLoadOp(GPULoadOp newValue) {
    js_util.setProperty(this, 'depthLoadOp', newValue.value);
  }

  GPUStoreOp get depthStoreOp =>
      GPUStoreOp.fromValue(js_util.getProperty(this, 'depthStoreOp'));
  set depthStoreOp(GPUStoreOp newValue) {
    js_util.setProperty(this, 'depthStoreOp', newValue.value);
  }

  bool get depthReadOnly => js_util.getProperty(this, 'depthReadOnly');
  set depthReadOnly(bool newValue) {
    js_util.setProperty(this, 'depthReadOnly', newValue);
  }

  int get stencilClearValue => js_util.getProperty(this, 'stencilClearValue');
  set stencilClearValue(int newValue) {
    js_util.setProperty(this, 'stencilClearValue', newValue);
  }

  GPULoadOp get stencilLoadOp =>
      GPULoadOp.fromValue(js_util.getProperty(this, 'stencilLoadOp'));
  set stencilLoadOp(GPULoadOp newValue) {
    js_util.setProperty(this, 'stencilLoadOp', newValue.value);
  }

  GPUStoreOp get stencilStoreOp =>
      GPUStoreOp.fromValue(js_util.getProperty(this, 'stencilStoreOp'));
  set stencilStoreOp(GPUStoreOp newValue) {
    js_util.setProperty(this, 'stencilStoreOp', newValue.value);
  }

  bool get stencilReadOnly => js_util.getProperty(this, 'stencilReadOnly');
  set stencilReadOnly(bool newValue) {
    js_util.setProperty(this, 'stencilReadOnly', newValue);
  }
}

enum GPULoadOp {
  load('load'),
  clear('clear');

  final String value;
  static GPULoadOp fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPULoadOp(this.value);
}

enum GPUStoreOp {
  store('store'),
  discard('discard');

  final String value;
  static GPUStoreOp fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUStoreOp(this.value);
}

@anonymous
@JS()
@staticInterop
class GPURenderPassLayout implements GPUObjectDescriptorBase {
  external factory GPURenderPassLayout._(
      {Iterable<String>? colorFormats,
      required String depthStencilFormat,
      int? sampleCount = 1});

  factory GPURenderPassLayout(
          {Iterable<GPUTextureFormat>? colorFormats,
          required GPUTextureFormat depthStencilFormat,
          int? sampleCount = 1}) =>
      GPURenderPassLayout._(
          colorFormats: colorFormats?.values,
          depthStencilFormat: depthStencilFormat.value,
          sampleCount: sampleCount);
}

extension PropsGPURenderPassLayout on GPURenderPassLayout {
  Iterable<GPUTextureFormat>? get colorFormats {
    final ret = js_util.getProperty(this, 'colorFormats');

    return ret == null ? null : GPUTextureFormat.fromValues(ret);
  }

  set colorFormats(Iterable<GPUTextureFormat>? newValue) {
    js_util.setProperty(this, 'colorFormats', newValue?.values);
  }

  GPUTextureFormat get depthStencilFormat => GPUTextureFormat.fromValue(
      js_util.getProperty(this, 'depthStencilFormat'));
  set depthStencilFormat(GPUTextureFormat newValue) {
    js_util.setProperty(this, 'depthStencilFormat', newValue.value);
  }

  int get sampleCount => js_util.getProperty(this, 'sampleCount');
  set sampleCount(int newValue) {
    js_util.setProperty(this, 'sampleCount', newValue);
  }
}

@JS()
@staticInterop
class GPURenderCommandsMixin {
  external factory GPURenderCommandsMixin();
}

extension PropsGPURenderCommandsMixin on GPURenderCommandsMixin {
  void setPipeline(GPURenderPipeline pipeline) =>
      js_util.callMethod(this, 'setPipeline', [pipeline]);

  void setIndexBuffer(GPUBuffer buffer, GPUIndexFormat indexFormat,
          [int? offset = 0, int? size]) =>
      js_util.callMethod(
          this, 'setIndexBuffer', [buffer, indexFormat.value, offset, size]);

  void setVertexBuffer(int slot, GPUBuffer buffer,
          [int? offset = 0, int? size]) =>
      js_util.callMethod(this, 'setVertexBuffer', [slot, buffer, offset, size]);

  void draw(int vertexCount,
          [int? instanceCount = 1,
          int? firstVertex = 0,
          int? firstInstance = 0]) =>
      js_util.callMethod(this, 'draw',
          [vertexCount, instanceCount, firstVertex, firstInstance]);

  void drawIndexed(int indexCount,
          [int? instanceCount = 1,
          int? firstIndex = 0,
          int? baseVertex = 0,
          int? firstInstance = 0]) =>
      js_util.callMethod(this, 'drawIndexed',
          [indexCount, instanceCount, firstIndex, baseVertex, firstInstance]);

  void drawIndirect(GPUBuffer indirectBuffer, int indirectOffset) => js_util
      .callMethod(this, 'drawIndirect', [indirectBuffer, indirectOffset]);

  void drawIndexedIndirect(GPUBuffer indirectBuffer, int indirectOffset) =>
      js_util.callMethod(
          this, 'drawIndexedIndirect', [indirectBuffer, indirectOffset]);
}

@JS()
@staticInterop
class GPURenderBundle implements GPUObjectBase {
  external factory GPURenderBundle();
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
    implements
        GPUObjectBase,
        GPUCommandsMixin,
        GPUDebugCommandsMixin,
        GPUBindingCommandsMixin,
        GPURenderCommandsMixin {
  external factory GPURenderBundleEncoder();
}

extension PropsGPURenderBundleEncoder on GPURenderBundleEncoder {
  GPURenderBundle finish([GPURenderBundleDescriptor? descriptor]) =>
      js_util.callMethod(this, 'finish', [descriptor]);
}

@anonymous
@JS()
@staticInterop
class GPURenderBundleEncoderDescriptor implements GPURenderPassLayout {
  external factory GPURenderBundleEncoderDescriptor(
      {bool? depthReadOnly = false, bool? stencilReadOnly = false});
}

extension PropsGPURenderBundleEncoderDescriptor
    on GPURenderBundleEncoderDescriptor {
  bool get depthReadOnly => js_util.getProperty(this, 'depthReadOnly');
  set depthReadOnly(bool newValue) {
    js_util.setProperty(this, 'depthReadOnly', newValue);
  }

  bool get stencilReadOnly => js_util.getProperty(this, 'stencilReadOnly');
  set stencilReadOnly(bool newValue) {
    js_util.setProperty(this, 'stencilReadOnly', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GPUQueueDescriptor implements GPUObjectDescriptorBase {
  external factory GPUQueueDescriptor();
}

@JS()
@staticInterop
class GPUQueue implements GPUObjectBase {
  external factory GPUQueue();
}

extension PropsGPUQueue on GPUQueue {
  void submit(Iterable<GPUCommandBuffer> commandBuffers) =>
      js_util.callMethod(this, 'submit', [commandBuffers]);

  Future<void> onSubmittedWorkDone() => js_util
      .promiseToFuture(js_util.callMethod(this, 'onSubmittedWorkDone', []));

  void writeBuffer(GPUBuffer buffer, int bufferOffset, dynamic data,
          [int? dataOffset = 0, int? size]) =>
      js_util.callMethod(
          this, 'writeBuffer', [buffer, bufferOffset, data, dataOffset, size]);

  void writeTexture(GPUImageCopyTexture destination, dynamic data,
          GPUImageDataLayout dataLayout, dynamic size) =>
      js_util.callMethod(
          this, 'writeTexture', [destination, data, dataLayout, size]);

  void copyExternalImageToTexture(GPUImageCopyExternalImage source,
          GPUImageCopyTextureTagged destination, dynamic copySize) =>
      js_util.callMethod(
          this, 'copyExternalImageToTexture', [source, destination, copySize]);
}

@JS()
@staticInterop
class GPUQuerySet implements GPUObjectBase {
  external factory GPUQuerySet();
}

extension PropsGPUQuerySet on GPUQuerySet {
  void destroy() => js_util.callMethod(this, 'destroy', []);

  GPUQueryType get type =>
      GPUQueryType.fromValue(js_util.getProperty(this, 'type'));
  int get count => js_util.getProperty(this, 'count');
}

@anonymous
@JS()
@staticInterop
class GPUQuerySetDescriptor implements GPUObjectDescriptorBase {
  external factory GPUQuerySetDescriptor._(
      {required String type, required int count});

  factory GPUQuerySetDescriptor(
          {required GPUQueryType type, required int count}) =>
      GPUQuerySetDescriptor._(type: type.value, count: count);
}

extension PropsGPUQuerySetDescriptor on GPUQuerySetDescriptor {
  GPUQueryType get type =>
      GPUQueryType.fromValue(js_util.getProperty(this, 'type'));
  set type(GPUQueryType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
  }

  int get count => js_util.getProperty(this, 'count');
  set count(int newValue) {
    js_util.setProperty(this, 'count', newValue);
  }
}

enum GPUQueryType {
  occlusion('occlusion'),
  timestamp('timestamp');

  final String value;
  static GPUQueryType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUQueryType(this.value);
}

@JS()
@staticInterop
class GPUCanvasContext {
  external factory GPUCanvasContext();
}

extension PropsGPUCanvasContext on GPUCanvasContext {
  dynamic get canvas => js_util.getProperty(this, 'canvas');
  void configure(GPUCanvasConfiguration configuration) =>
      js_util.callMethod(this, 'configure', [configuration]);

  void unconfigure() => js_util.callMethod(this, 'unconfigure', []);

  GPUTexture getCurrentTexture() =>
      js_util.callMethod(this, 'getCurrentTexture', []);
}

enum GPUCanvasAlphaMode {
  opaque('opaque'),
  premultiplied('premultiplied');

  final String value;
  static GPUCanvasAlphaMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUCanvasAlphaMode(this.value);
}

@anonymous
@JS()
@staticInterop
class GPUCanvasConfiguration {
  external factory GPUCanvasConfiguration._(
      {required GPUDevice device,
      required String format,
      int? usage = 0x10,
      Iterable<String>? viewFormats,
      String? colorSpace,
      String? alphaMode});

  factory GPUCanvasConfiguration(
          {required GPUDevice device,
          required GPUTextureFormat format,
          int? usage = 0x10,
          Iterable<GPUTextureFormat>? viewFormats = const [],
          PredefinedColorSpace? colorSpace = PredefinedColorSpace.srgb,
          GPUCanvasAlphaMode? alphaMode = GPUCanvasAlphaMode.opaque}) =>
      GPUCanvasConfiguration._(
          device: device,
          format: format.value,
          usage: usage,
          viewFormats: viewFormats?.values,
          colorSpace: colorSpace?.value,
          alphaMode: alphaMode?.value);
}

extension PropsGPUCanvasConfiguration on GPUCanvasConfiguration {
  GPUDevice get device => js_util.getProperty(this, 'device');
  set device(GPUDevice newValue) {
    js_util.setProperty(this, 'device', newValue);
  }

  GPUTextureFormat get format =>
      GPUTextureFormat.fromValue(js_util.getProperty(this, 'format'));
  set format(GPUTextureFormat newValue) {
    js_util.setProperty(this, 'format', newValue.value);
  }

  int get usage => js_util.getProperty(this, 'usage');
  set usage(int newValue) {
    js_util.setProperty(this, 'usage', newValue);
  }

  Iterable<GPUTextureFormat> get viewFormats =>
      GPUTextureFormat.fromValues(js_util.getProperty(this, 'viewFormats'));
  set viewFormats(Iterable<GPUTextureFormat> newValue) {
    js_util.setProperty(this, 'viewFormats', newValue.values);
  }

  PredefinedColorSpace get colorSpace =>
      PredefinedColorSpace.fromValue(js_util.getProperty(this, 'colorSpace'));
  set colorSpace(PredefinedColorSpace newValue) {
    js_util.setProperty(this, 'colorSpace', newValue.value);
  }

  GPUCanvasAlphaMode get alphaMode =>
      GPUCanvasAlphaMode.fromValue(js_util.getProperty(this, 'alphaMode'));
  set alphaMode(GPUCanvasAlphaMode newValue) {
    js_util.setProperty(this, 'alphaMode', newValue.value);
  }
}

enum GPUDeviceLostReason {
  destroyed('destroyed');

  final String value;
  static GPUDeviceLostReason fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUDeviceLostReason(this.value);
}

@JS()
@staticInterop
class GPUDeviceLostInfo {
  external factory GPUDeviceLostInfo();
}

extension PropsGPUDeviceLostInfo on GPUDeviceLostInfo {
  dynamic get reason => js_util.getProperty(this, 'reason');
  String get message => js_util.getProperty(this, 'message');
}

@JS()
@staticInterop
class GPUError {
  external factory GPUError();
}

extension PropsGPUError on GPUError {
  String get message => js_util.getProperty(this, 'message');
}

@JS()
@staticInterop
class GPUValidationError implements GPUError {
  external factory GPUValidationError(String message);
}

@JS()
@staticInterop
class GPUOutOfMemoryError implements GPUError {
  external factory GPUOutOfMemoryError(String message);
}

@JS()
@staticInterop
class GPUInternalError implements GPUError {
  external factory GPUInternalError(String message);
}

enum GPUErrorFilter {
  validation('validation'),
  outOfMemory('out-of-memory'),
  internal('internal');

  final String value;
  static GPUErrorFilter fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  const GPUErrorFilter(this.value);
}

@JS()
@staticInterop
class GPUUncapturedErrorEvent implements Event {
  external factory GPUUncapturedErrorEvent(
      String type, GPUUncapturedErrorEventInit gpuUncapturedErrorEventInitDict);
}

extension PropsGPUUncapturedErrorEvent on GPUUncapturedErrorEvent {
  GPUError get error => js_util.getProperty(this, 'error');
}

@anonymous
@JS()
@staticInterop
class GPUUncapturedErrorEventInit implements EventInit {
  external factory GPUUncapturedErrorEventInit({required GPUError error});
}

extension PropsGPUUncapturedErrorEventInit on GPUUncapturedErrorEventInit {
  GPUError get error => js_util.getProperty(this, 'error');
  set error(GPUError newValue) {
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
