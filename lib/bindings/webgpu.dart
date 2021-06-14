/// WebGPU
///
/// https://gpuweb.github.io/gpuweb/
@JS('window')
library webgpu;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'webgpu.dart';
import 'dom.dart';
import 'html.dart';

@JS()
mixin GPUObjectBase {
  external String? get label;
  external set label(String? newValue);
}

@anonymous
@JS()
class GPUObjectDescriptorBase {
  external String get label;
  external set label(String newValue);

  external factory GPUObjectDescriptorBase({String label});
}

@JS()
class GPUSupportedLimits {
  external int get maxTextureDimension1D;
  external int get maxTextureDimension2D;
  external int get maxTextureDimension3D;
  external int get maxTextureArrayLayers;
  external int get maxBindGroups;
  external int get maxDynamicUniformBuffersPerPipelineLayout;
  external int get maxDynamicStorageBuffersPerPipelineLayout;
  external int get maxSampledTexturesPerShaderStage;
  external int get maxSamplersPerShaderStage;
  external int get maxStorageBuffersPerShaderStage;
  external int get maxStorageTexturesPerShaderStage;
  external int get maxUniformBuffersPerShaderStage;
  external int get maxUniformBufferBindingSize;
  external int get maxStorageBufferBindingSize;
  external int get maxVertexBuffers;
  external int get maxVertexAttributes;
  external int get maxVertexBufferArrayStride;

  external factory GPUSupportedLimits();
}

@JS()
class GPUSupportedFeatures {
  external String operator [](int index);

  external factory GPUSupportedFeatures();
}

@JS()
enum GPUPredefinedColorSpace { srgb }

@JS()
mixin NavigatorGPU {
  external GPU get gpu;
}

@JS()
class GPU {
  external Promise<GPUAdapter> requestAdapter(
      [GPURequestAdapterOptions? options]);

  external factory GPU();
}

@anonymous
@JS()
class GPURequestAdapterOptions {
  external GPUPowerPreference get powerPreference;
  external set powerPreference(GPUPowerPreference newValue);
  external bool get forceSoftware;
  external set forceSoftware(bool newValue);

  external factory GPURequestAdapterOptions(
      {GPUPowerPreference powerPreference, bool forceSoftware = false});
}

@JS()
enum GPUPowerPreference {
  @JS('low-power')
  lowPower,
  @JS('high-performance')
  highPerformance
}

@JS()
class GPUAdapter {
  external String get name;
  external GPUSupportedFeatures get features;
  external GPUSupportedLimits get limits;
  external bool get isSoftware;
  external Promise<GPUDevice> requestDevice([GPUDeviceDescriptor? descriptor]);

  external factory GPUAdapter();
}

@anonymous
@JS()
class GPUDeviceDescriptor extends GPUObjectDescriptorBase {
  external Iterable<GPUFeatureName> get nonGuaranteedFeatures;
  external set nonGuaranteedFeatures(Iterable<GPUFeatureName> newValue);
  external dynamic get nonGuaranteedLimits;
  external set nonGuaranteedLimits(dynamic newValue);

  external factory GPUDeviceDescriptor(
      {Iterable<GPUFeatureName> nonGuaranteedFeatures = const [],
      dynamic nonGuaranteedLimits});
}

@JS()
enum GPUFeatureName {
  @JS('depth-clamping')
  depthClamping,
  @JS('depth24unorm-stencil8')
  depth24unormStencil8,
  @JS('depth32float-stencil8')
  depth32floatStencil8,
  @JS('pipeline-statistics-query')
  pipelineStatisticsQuery,
  @JS('texture-compression-bc')
  textureCompressionBc,
  @JS('timestamp-query')
  timestampQuery
}

@JS()
class GPUDevice extends EventTarget with GPUObjectBase {
  external GPUSupportedFeatures get features;
  external GPUSupportedLimits get limits;
  external GPUQueue get queue;
  external Object destroy();
  external GPUBuffer createBuffer(GPUBufferDescriptor descriptor);
  external GPUTexture createTexture(GPUTextureDescriptor descriptor);
  external GPUSampler createSampler([GPUSamplerDescriptor? descriptor]);
  external GPUExternalTexture importExternalTexture(
      GPUExternalTextureDescriptor descriptor);
  external GPUBindGroupLayout createBindGroupLayout(
      GPUBindGroupLayoutDescriptor descriptor);
  external GPUPipelineLayout createPipelineLayout(
      GPUPipelineLayoutDescriptor descriptor);
  external GPUBindGroup createBindGroup(GPUBindGroupDescriptor descriptor);
  external GPUShaderModule createShaderModule(
      GPUShaderModuleDescriptor descriptor);
  external GPUComputePipeline createComputePipeline(
      GPUComputePipelineDescriptor descriptor);
  external GPURenderPipeline createRenderPipeline(
      GPURenderPipelineDescriptor descriptor);
  external Promise<GPUComputePipeline> createComputePipelineAsync(
      GPUComputePipelineDescriptor descriptor);
  external Promise<GPURenderPipeline> createRenderPipelineAsync(
      GPURenderPipelineDescriptor descriptor);
  external GPUCommandEncoder createCommandEncoder(
      [GPUCommandEncoderDescriptor? descriptor]);
  external GPURenderBundleEncoder createRenderBundleEncoder(
      GPURenderBundleEncoderDescriptor descriptor);
  external GPUQuerySet createQuerySet(GPUQuerySetDescriptor descriptor);
  external Promise<GPUDeviceLostInfo> get lost;
  external Object pushErrorScope(GPUErrorFilter filter);
  external Promise<dynamic> popErrorScope();
  external EventHandlerNonNull? get onuncapturederror;
  external set onuncapturederror(EventHandlerNonNull? newValue);

  external factory GPUDevice();
}

@JS()
class GPUBuffer with GPUObjectBase {
  external Promise<Object> mapAsync(int mode, [int? offset = 0, int? size]);
  external ByteBuffer getMappedRange([int? offset = 0, int? size]);
  external Object unmap();
  external Object destroy();

  external factory GPUBuffer();
}

@anonymous
@JS()
class GPUBufferDescriptor extends GPUObjectDescriptorBase {
  external int get size;
  external set size(int newValue);
  external int get usage;
  external set usage(int newValue);
  external bool get mappedAtCreation;
  external set mappedAtCreation(bool newValue);

  external factory GPUBufferDescriptor(
      {int size, int usage, bool mappedAtCreation = false});
}

@JS()
class GPUBufferUsage {
  external static int get MAP_READ;
  external static int get MAP_WRITE;
  external static int get COPY_SRC;
  external static int get COPY_DST;
  external static int get INDEX;
  external static int get VERTEX;
  external static int get UNIFORM;
  external static int get STORAGE;
  external static int get INDIRECT;
  external static int get QUERY_RESOLVE;

  external factory GPUBufferUsage();
}

@JS()
class GPUMapMode {
  external static int get READ;
  external static int get WRITE;

  external factory GPUMapMode();
}

@JS()
class GPUTexture with GPUObjectBase {
  external GPUTextureView createView([GPUTextureViewDescriptor? descriptor]);
  external Object destroy();

  external factory GPUTexture();
}

@anonymous
@JS()
class GPUTextureDescriptor extends GPUObjectDescriptorBase {
  external dynamic get size;
  external set size(dynamic newValue);
  external int get mipLevelCount;
  external set mipLevelCount(int newValue);
  external int get sampleCount;
  external set sampleCount(int newValue);
  external GPUTextureDimension get dimension;
  external set dimension(GPUTextureDimension newValue);
  external GPUTextureFormat get format;
  external set format(GPUTextureFormat newValue);
  external int get usage;
  external set usage(int newValue);

  external factory GPUTextureDescriptor(
      {dynamic size,
      int mipLevelCount = 1,
      int sampleCount = 1,
      GPUTextureDimension dimension = GPUTextureDimension.value2d,
      GPUTextureFormat format,
      int usage});
}

@JS()
enum GPUTextureDimension {
  @JS('1d')
  value1d,
  @JS('2d')
  value2d,
  @JS('3d')
  value3d
}

@JS()
class GPUTextureUsage {
  external static int get COPY_SRC;
  external static int get COPY_DST;
  external static int get SAMPLED;
  external static int get STORAGE;
  external static int get RENDER_ATTACHMENT;

  external factory GPUTextureUsage();
}

@JS()
class GPUTextureView with GPUObjectBase {
  external factory GPUTextureView();
}

@anonymous
@JS()
class GPUTextureViewDescriptor extends GPUObjectDescriptorBase {
  external GPUTextureFormat get format;
  external set format(GPUTextureFormat newValue);
  external GPUTextureViewDimension get dimension;
  external set dimension(GPUTextureViewDimension newValue);
  external GPUTextureAspect get aspect;
  external set aspect(GPUTextureAspect newValue);
  external int get baseMipLevel;
  external set baseMipLevel(int newValue);
  external int get mipLevelCount;
  external set mipLevelCount(int newValue);
  external int get baseArrayLayer;
  external set baseArrayLayer(int newValue);
  external int get arrayLayerCount;
  external set arrayLayerCount(int newValue);

  external factory GPUTextureViewDescriptor(
      {GPUTextureFormat format,
      GPUTextureViewDimension dimension,
      GPUTextureAspect aspect = GPUTextureAspect.all,
      int baseMipLevel = 0,
      int mipLevelCount,
      int baseArrayLayer = 0,
      int arrayLayerCount});
}

@JS()
enum GPUTextureViewDimension {
  @JS('1d')
  value1d,
  @JS('2d')
  value2d,
  @JS('2d-array')
  value2dArray,
  cube,
  @JS('cube-array')
  cubeArray,
  @JS('3d')
  value3d
}

@JS()
enum GPUTextureAspect {
  all,
  @JS('stencil-only')
  stencilOnly,
  @JS('depth-only')
  depthOnly
}

@JS()
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
  @JS('rgba8unorm-srgb')
  rgba8unormSrgb,
  rgba8snorm,
  rgba8uint,
  rgba8sint,
  bgra8unorm,
  @JS('bgra8unorm-srgb')
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
  @JS('depth24plus-stencil8')
  depth24plusStencil8,
  depth32float,
  @JS('bc1-rgba-unorm')
  bc1RgbaUnorm,
  @JS('bc1-rgba-unorm-srgb')
  bc1RgbaUnormSrgb,
  @JS('bc2-rgba-unorm')
  bc2RgbaUnorm,
  @JS('bc2-rgba-unorm-srgb')
  bc2RgbaUnormSrgb,
  @JS('bc3-rgba-unorm')
  bc3RgbaUnorm,
  @JS('bc3-rgba-unorm-srgb')
  bc3RgbaUnormSrgb,
  @JS('bc4-r-unorm')
  bc4RUnorm,
  @JS('bc4-r-snorm')
  bc4RSnorm,
  @JS('bc5-rg-unorm')
  bc5RgUnorm,
  @JS('bc5-rg-snorm')
  bc5RgSnorm,
  @JS('bc6h-rgb-ufloat')
  bc6hRgbUfloat,
  @JS('bc6h-rgb-float')
  bc6hRgbFloat,
  @JS('bc7-rgba-unorm')
  bc7RgbaUnorm,
  @JS('bc7-rgba-unorm-srgb')
  bc7RgbaUnormSrgb,
  @JS('depth24unorm-stencil8')
  depth24unormStencil8,
  @JS('depth32float-stencil8')
  depth32floatStencil8
}

@JS()
class GPUExternalTexture with GPUObjectBase {
  external factory GPUExternalTexture();
}

@anonymous
@JS()
class GPUExternalTextureDescriptor extends GPUObjectDescriptorBase {
  external HTMLVideoElement get source;
  external set source(HTMLVideoElement newValue);
  external GPUPredefinedColorSpace get colorSpace;
  external set colorSpace(GPUPredefinedColorSpace newValue);

  external factory GPUExternalTextureDescriptor(
      {HTMLVideoElement source,
      GPUPredefinedColorSpace colorSpace = GPUPredefinedColorSpace.srgb});
}

@JS()
class GPUSampler with GPUObjectBase {
  external factory GPUSampler();
}

@anonymous
@JS()
class GPUSamplerDescriptor extends GPUObjectDescriptorBase {
  external GPUAddressMode get addressModeU;
  external set addressModeU(GPUAddressMode newValue);
  external GPUAddressMode get addressModeV;
  external set addressModeV(GPUAddressMode newValue);
  external GPUAddressMode get addressModeW;
  external set addressModeW(GPUAddressMode newValue);
  external GPUFilterMode get magFilter;
  external set magFilter(GPUFilterMode newValue);
  external GPUFilterMode get minFilter;
  external set minFilter(GPUFilterMode newValue);
  external GPUFilterMode get mipmapFilter;
  external set mipmapFilter(GPUFilterMode newValue);
  external double get lodMinClamp;
  external set lodMinClamp(double newValue);
  external double get lodMaxClamp;
  external set lodMaxClamp(double newValue);
  external GPUCompareFunction get compare;
  external set compare(GPUCompareFunction newValue);
  external int get maxAnisotropy;
  external set maxAnisotropy(int newValue);

  external factory GPUSamplerDescriptor(
      {GPUAddressMode addressModeU = GPUAddressMode.clampToEdge,
      GPUAddressMode addressModeV = GPUAddressMode.clampToEdge,
      GPUAddressMode addressModeW = GPUAddressMode.clampToEdge,
      GPUFilterMode magFilter = GPUFilterMode.nearest,
      GPUFilterMode minFilter = GPUFilterMode.nearest,
      GPUFilterMode mipmapFilter = GPUFilterMode.nearest,
      double lodMinClamp = 0,
      double lodMaxClamp = 0xffffffff,
      GPUCompareFunction compare,
      int maxAnisotropy = 1});
}

@JS()
enum GPUAddressMode {
  @JS('clamp-to-edge')
  clampToEdge,
  repeat,
  @JS('mirror-repeat')
  mirrorRepeat
}

@JS()
enum GPUFilterMode { nearest, linear }

@JS()
enum GPUCompareFunction {
  never,
  less,
  equal,
  @JS('less-equal')
  lessEqual,
  greater,
  @JS('not-equal')
  notEqual,
  @JS('greater-equal')
  greaterEqual,
  always
}

@JS()
class GPUBindGroupLayout with GPUObjectBase {
  external factory GPUBindGroupLayout();
}

@anonymous
@JS()
class GPUBindGroupLayoutDescriptor extends GPUObjectDescriptorBase {
  external Iterable<GPUBindGroupLayoutEntry> get entries;
  external set entries(Iterable<GPUBindGroupLayoutEntry> newValue);

  external factory GPUBindGroupLayoutDescriptor(
      {Iterable<GPUBindGroupLayoutEntry> entries});
}

@JS()
class GPUShaderStage {
  external static int get VERTEX;
  external static int get FRAGMENT;
  external static int get COMPUTE;

  external factory GPUShaderStage();
}

@anonymous
@JS()
class GPUBindGroupLayoutEntry {
  external int get binding;
  external set binding(int newValue);
  external int get visibility;
  external set visibility(int newValue);
  external GPUBufferBindingLayout get buffer;
  external set buffer(GPUBufferBindingLayout newValue);
  external GPUSamplerBindingLayout get sampler;
  external set sampler(GPUSamplerBindingLayout newValue);
  external GPUTextureBindingLayout get texture;
  external set texture(GPUTextureBindingLayout newValue);
  external GPUStorageTextureBindingLayout get storageTexture;
  external set storageTexture(GPUStorageTextureBindingLayout newValue);
  external GPUExternalTextureBindingLayout get externalTexture;
  external set externalTexture(GPUExternalTextureBindingLayout newValue);

  external factory GPUBindGroupLayoutEntry(
      {int binding,
      int visibility,
      GPUBufferBindingLayout buffer,
      GPUSamplerBindingLayout sampler,
      GPUTextureBindingLayout texture,
      GPUStorageTextureBindingLayout storageTexture,
      GPUExternalTextureBindingLayout externalTexture});
}

@JS()
enum GPUBufferBindingType {
  uniform,
  storage,
  @JS('read-only-storage')
  readOnlyStorage
}

@anonymous
@JS()
class GPUBufferBindingLayout {
  external GPUBufferBindingType get type;
  external set type(GPUBufferBindingType newValue);
  external bool get hasDynamicOffset;
  external set hasDynamicOffset(bool newValue);
  external int get minBindingSize;
  external set minBindingSize(int newValue);

  external factory GPUBufferBindingLayout(
      {GPUBufferBindingType type = GPUBufferBindingType.uniform,
      bool hasDynamicOffset = false,
      int minBindingSize = 0});
}

@JS()
enum GPUSamplerBindingType {
  filtering,
  @JS('non-filtering')
  nonFiltering,
  comparison
}

@anonymous
@JS()
class GPUSamplerBindingLayout {
  external GPUSamplerBindingType get type;
  external set type(GPUSamplerBindingType newValue);

  external factory GPUSamplerBindingLayout(
      {GPUSamplerBindingType type = GPUSamplerBindingType.filtering});
}

@JS()
enum GPUTextureSampleType {
  float,
  @JS('unfilterable-float')
  unfilterableFloat,
  depth,
  sint,
  uint
}

@anonymous
@JS()
class GPUTextureBindingLayout {
  external GPUTextureSampleType get sampleType;
  external set sampleType(GPUTextureSampleType newValue);
  external GPUTextureViewDimension get viewDimension;
  external set viewDimension(GPUTextureViewDimension newValue);
  external bool get multisampled;
  external set multisampled(bool newValue);

  external factory GPUTextureBindingLayout(
      {GPUTextureSampleType sampleType = GPUTextureSampleType.float,
      GPUTextureViewDimension viewDimension = GPUTextureViewDimension.value2d,
      bool multisampled = false});
}

@JS()
enum GPUStorageTextureAccess {
  @JS('read-only')
  readOnly,
  @JS('write-only')
  writeOnly
}

@anonymous
@JS()
class GPUStorageTextureBindingLayout {
  external GPUStorageTextureAccess get access;
  external set access(GPUStorageTextureAccess newValue);
  external GPUTextureFormat get format;
  external set format(GPUTextureFormat newValue);
  external GPUTextureViewDimension get viewDimension;
  external set viewDimension(GPUTextureViewDimension newValue);

  external factory GPUStorageTextureBindingLayout(
      {GPUStorageTextureAccess access,
      GPUTextureFormat format,
      GPUTextureViewDimension viewDimension = GPUTextureViewDimension.value2d});
}

@anonymous
@JS()
class GPUExternalTextureBindingLayout {
  external factory GPUExternalTextureBindingLayout();
}

@JS()
class GPUBindGroup with GPUObjectBase {
  external factory GPUBindGroup();
}

@anonymous
@JS()
class GPUBindGroupDescriptor extends GPUObjectDescriptorBase {
  external GPUBindGroupLayout get layout;
  external set layout(GPUBindGroupLayout newValue);
  external Iterable<GPUBindGroupEntry> get entries;
  external set entries(Iterable<GPUBindGroupEntry> newValue);

  external factory GPUBindGroupDescriptor(
      {GPUBindGroupLayout layout, Iterable<GPUBindGroupEntry> entries});
}

@anonymous
@JS()
class GPUBindGroupEntry {
  external int get binding;
  external set binding(int newValue);
  external dynamic get resource;
  external set resource(dynamic newValue);

  external factory GPUBindGroupEntry({int binding, dynamic resource});
}

@anonymous
@JS()
class GPUBufferBinding {
  external GPUBuffer get buffer;
  external set buffer(GPUBuffer newValue);
  external int get offset;
  external set offset(int newValue);
  external int get size;
  external set size(int newValue);

  external factory GPUBufferBinding(
      {GPUBuffer buffer, int offset = 0, int size});
}

@JS()
class GPUPipelineLayout with GPUObjectBase {
  external factory GPUPipelineLayout();
}

@anonymous
@JS()
class GPUPipelineLayoutDescriptor extends GPUObjectDescriptorBase {
  external Iterable<GPUBindGroupLayout> get bindGroupLayouts;
  external set bindGroupLayouts(Iterable<GPUBindGroupLayout> newValue);

  external factory GPUPipelineLayoutDescriptor(
      {Iterable<GPUBindGroupLayout> bindGroupLayouts});
}

@JS()
class GPUShaderModule with GPUObjectBase {
  external Promise<GPUCompilationInfo> compilationInfo();

  external factory GPUShaderModule();
}

@anonymous
@JS()
class GPUShaderModuleDescriptor extends GPUObjectDescriptorBase {
  external String get code;
  external set code(String newValue);
  external dynamic get sourceMap;
  external set sourceMap(dynamic newValue);

  external factory GPUShaderModuleDescriptor({String code, dynamic sourceMap});
}

@JS()
enum GPUCompilationMessageType { error, warning, info }

@JS()
class GPUCompilationMessage {
  external String get message;
  external GPUCompilationMessageType get type;
  external int get lineNum;
  external int get linePos;
  external int get offset;
  external int get length;

  external factory GPUCompilationMessage();
}

@JS()
class GPUCompilationInfo {
  external Iterable<GPUCompilationMessage> get messages;

  external factory GPUCompilationInfo();
}

@anonymous
@JS()
class GPUPipelineDescriptorBase extends GPUObjectDescriptorBase {
  external GPUPipelineLayout get layout;
  external set layout(GPUPipelineLayout newValue);

  external factory GPUPipelineDescriptorBase({GPUPipelineLayout layout});
}

@JS()
mixin GPUPipelineBase {
  external GPUBindGroupLayout getBindGroupLayout(int index);
}

@anonymous
@JS()
class GPUProgrammableStage {
  external GPUShaderModule get module;
  external set module(GPUShaderModule newValue);
  external String get entryPoint;
  external set entryPoint(String newValue);
  external dynamic get constants;
  external set constants(dynamic newValue);

  external factory GPUProgrammableStage(
      {GPUShaderModule module, String entryPoint, dynamic constants});
}

@JS()
class GPUComputePipeline with GPUObjectBase, GPUPipelineBase {
  external factory GPUComputePipeline();
}

@anonymous
@JS()
class GPUComputePipelineDescriptor extends GPUPipelineDescriptorBase {
  external GPUProgrammableStage get compute;
  external set compute(GPUProgrammableStage newValue);

  external factory GPUComputePipelineDescriptor({GPUProgrammableStage compute});
}

@JS()
class GPURenderPipeline with GPUObjectBase, GPUPipelineBase {
  external factory GPURenderPipeline();
}

@anonymous
@JS()
class GPURenderPipelineDescriptor extends GPUPipelineDescriptorBase {
  external GPUVertexState get vertex;
  external set vertex(GPUVertexState newValue);
  external GPUPrimitiveState get primitive;
  external set primitive(GPUPrimitiveState newValue);
  external GPUDepthStencilState get depthStencil;
  external set depthStencil(GPUDepthStencilState newValue);
  external GPUMultisampleState get multisample;
  external set multisample(GPUMultisampleState newValue);
  external GPUFragmentState get fragment;
  external set fragment(GPUFragmentState newValue);

  external factory GPURenderPipelineDescriptor(
      {GPUVertexState vertex,
      GPUPrimitiveState primitive,
      GPUDepthStencilState depthStencil,
      GPUMultisampleState multisample,
      GPUFragmentState fragment});
}

@JS()
enum GPUPrimitiveTopology {
  @JS('point-list')
  pointList,
  @JS('line-list')
  lineList,
  @JS('line-strip')
  lineStrip,
  @JS('triangle-list')
  triangleList,
  @JS('triangle-strip')
  triangleStrip
}

@anonymous
@JS()
class GPUPrimitiveState {
  external GPUPrimitiveTopology get topology;
  external set topology(GPUPrimitiveTopology newValue);
  external GPUIndexFormat get stripIndexFormat;
  external set stripIndexFormat(GPUIndexFormat newValue);
  external GPUFrontFace get frontFace;
  external set frontFace(GPUFrontFace newValue);
  external GPUCullMode get cullMode;
  external set cullMode(GPUCullMode newValue);
  external bool get clampDepth;
  external set clampDepth(bool newValue);

  external factory GPUPrimitiveState(
      {GPUPrimitiveTopology topology = GPUPrimitiveTopology.triangleList,
      GPUIndexFormat stripIndexFormat,
      GPUFrontFace frontFace = GPUFrontFace.ccw,
      GPUCullMode cullMode = GPUCullMode.none,
      bool clampDepth = false});
}

@JS()
enum GPUFrontFace { ccw, cw }

@JS()
enum GPUCullMode { none, front, back }

@anonymous
@JS()
class GPUMultisampleState {
  external int get count;
  external set count(int newValue);
  external int get mask;
  external set mask(int newValue);
  external bool get alphaToCoverageEnabled;
  external set alphaToCoverageEnabled(bool newValue);

  external factory GPUMultisampleState(
      {int count = 1,
      int mask = 0xFFFFFFFF,
      bool alphaToCoverageEnabled = false});
}

@anonymous
@JS()
class GPUFragmentState extends GPUProgrammableStage {
  external Iterable<GPUColorTargetState> get targets;
  external set targets(Iterable<GPUColorTargetState> newValue);

  external factory GPUFragmentState({Iterable<GPUColorTargetState> targets});
}

@anonymous
@JS()
class GPUColorTargetState {
  external GPUTextureFormat get format;
  external set format(GPUTextureFormat newValue);
  external GPUBlendState get blend;
  external set blend(GPUBlendState newValue);
  external int get writeMask;
  external set writeMask(int newValue);

  external factory GPUColorTargetState(
      {GPUTextureFormat format, GPUBlendState blend, int writeMask = 0xF});
}

@anonymous
@JS()
class GPUBlendState {
  external GPUBlendComponent get color;
  external set color(GPUBlendComponent newValue);
  external GPUBlendComponent get alpha;
  external set alpha(GPUBlendComponent newValue);

  external factory GPUBlendState(
      {GPUBlendComponent color, GPUBlendComponent alpha});
}

@JS()
class GPUColorWrite {
  external static int get RED;
  external static int get GREEN;
  external static int get BLUE;
  external static int get ALPHA;
  external static int get ALL;

  external factory GPUColorWrite();
}

@anonymous
@JS()
class GPUBlendComponent {
  external GPUBlendFactor get srcFactor;
  external set srcFactor(GPUBlendFactor newValue);
  external GPUBlendFactor get dstFactor;
  external set dstFactor(GPUBlendFactor newValue);
  external GPUBlendOperation get operation;
  external set operation(GPUBlendOperation newValue);

  external factory GPUBlendComponent(
      {GPUBlendFactor srcFactor = GPUBlendFactor.one,
      GPUBlendFactor dstFactor = GPUBlendFactor.zero,
      GPUBlendOperation operation = GPUBlendOperation.add});
}

@JS()
enum GPUBlendFactor {
  zero,
  one,
  src,
  @JS('one-minus-src')
  oneMinusSrc,
  @JS('src-alpha')
  srcAlpha,
  @JS('one-minus-src-alpha')
  oneMinusSrcAlpha,
  dst,
  @JS('one-minus-dst')
  oneMinusDst,
  @JS('dst-alpha')
  dstAlpha,
  @JS('one-minus-dst-alpha')
  oneMinusDstAlpha,
  @JS('src-alpha-saturated')
  srcAlphaSaturated,
  constant,
  @JS('one-minus-constant')
  oneMinusConstant
}

@JS()
enum GPUBlendOperation {
  add,
  subtract,
  @JS('reverse-subtract')
  reverseSubtract,
  min,
  max
}

@anonymous
@JS()
class GPUDepthStencilState {
  external GPUTextureFormat get format;
  external set format(GPUTextureFormat newValue);
  external bool get depthWriteEnabled;
  external set depthWriteEnabled(bool newValue);
  external GPUCompareFunction get depthCompare;
  external set depthCompare(GPUCompareFunction newValue);
  external GPUStencilFaceState get stencilFront;
  external set stencilFront(GPUStencilFaceState newValue);
  external GPUStencilFaceState get stencilBack;
  external set stencilBack(GPUStencilFaceState newValue);
  external int get stencilReadMask;
  external set stencilReadMask(int newValue);
  external int get stencilWriteMask;
  external set stencilWriteMask(int newValue);
  external int get depthBias;
  external set depthBias(int newValue);
  external double get depthBiasSlopeScale;
  external set depthBiasSlopeScale(double newValue);
  external double get depthBiasClamp;
  external set depthBiasClamp(double newValue);

  external factory GPUDepthStencilState(
      {GPUTextureFormat format,
      bool depthWriteEnabled = false,
      GPUCompareFunction depthCompare = GPUCompareFunction.always,
      GPUStencilFaceState stencilFront,
      GPUStencilFaceState stencilBack,
      int stencilReadMask = 0xFFFFFFFF,
      int stencilWriteMask = 0xFFFFFFFF,
      int depthBias = 0,
      double depthBiasSlopeScale = 0,
      double depthBiasClamp = 0});
}

@anonymous
@JS()
class GPUStencilFaceState {
  external GPUCompareFunction get compare;
  external set compare(GPUCompareFunction newValue);
  external GPUStencilOperation get failOp;
  external set failOp(GPUStencilOperation newValue);
  external GPUStencilOperation get depthFailOp;
  external set depthFailOp(GPUStencilOperation newValue);
  external GPUStencilOperation get passOp;
  external set passOp(GPUStencilOperation newValue);

  external factory GPUStencilFaceState(
      {GPUCompareFunction compare = GPUCompareFunction.always,
      GPUStencilOperation failOp = GPUStencilOperation.keep,
      GPUStencilOperation depthFailOp = GPUStencilOperation.keep,
      GPUStencilOperation passOp = GPUStencilOperation.keep});
}

@JS()
enum GPUStencilOperation {
  keep,
  zero,
  replace,
  invert,
  @JS('increment-clamp')
  incrementClamp,
  @JS('decrement-clamp')
  decrementClamp,
  @JS('increment-wrap')
  incrementWrap,
  @JS('decrement-wrap')
  decrementWrap
}

@JS()
enum GPUIndexFormat { uint16, uint32 }

@JS()
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

@JS()
enum GPUInputStepMode { vertex, instance }

@anonymous
@JS()
class GPUVertexState extends GPUProgrammableStage {
  external Iterable<GPUVertexBufferLayout> get buffers;
  external set buffers(Iterable<GPUVertexBufferLayout> newValue);

  external factory GPUVertexState(
      {Iterable<GPUVertexBufferLayout> buffers = const []});
}

@anonymous
@JS()
class GPUVertexBufferLayout {
  external int get arrayStride;
  external set arrayStride(int newValue);
  external GPUInputStepMode get stepMode;
  external set stepMode(GPUInputStepMode newValue);
  external Iterable<GPUVertexAttribute> get attributes;
  external set attributes(Iterable<GPUVertexAttribute> newValue);

  external factory GPUVertexBufferLayout(
      {int arrayStride,
      GPUInputStepMode stepMode = GPUInputStepMode.vertex,
      Iterable<GPUVertexAttribute> attributes});
}

@anonymous
@JS()
class GPUVertexAttribute {
  external GPUVertexFormat get format;
  external set format(GPUVertexFormat newValue);
  external int get offset;
  external set offset(int newValue);
  external int get shaderLocation;
  external set shaderLocation(int newValue);

  external factory GPUVertexAttribute(
      {GPUVertexFormat format, int offset, int shaderLocation});
}

@JS()
class GPUCommandBuffer with GPUObjectBase {
  external Promise<double> get executionTime;

  external factory GPUCommandBuffer();
}

@anonymous
@JS()
class GPUCommandBufferDescriptor extends GPUObjectDescriptorBase {
  external factory GPUCommandBufferDescriptor();
}

@JS()
class GPUCommandEncoder with GPUObjectBase {
  external GPURenderPassEncoder beginRenderPass(
      GPURenderPassDescriptor descriptor);
  external GPUComputePassEncoder beginComputePass(
      [GPUComputePassDescriptor? descriptor]);
  external Object copyBufferToBuffer(GPUBuffer source, int sourceOffset,
      GPUBuffer destination, int destinationOffset, int size);
  external Object copyBufferToTexture(GPUImageCopyBuffer source,
      GPUImageCopyTexture destination, dynamic copySize);
  external Object copyTextureToBuffer(GPUImageCopyTexture source,
      GPUImageCopyBuffer destination, dynamic copySize);
  external Object copyTextureToTexture(GPUImageCopyTexture source,
      GPUImageCopyTexture destination, dynamic copySize);
  external Object pushDebugGroup(String groupLabel);
  external Object popDebugGroup();
  external Object insertDebugMarker(String markerLabel);
  external Object writeTimestamp(GPUQuerySet querySet, int queryIndex);
  external Object resolveQuerySet(GPUQuerySet querySet, int firstQuery,
      int queryCount, GPUBuffer destination, int destinationOffset);
  external GPUCommandBuffer finish([GPUCommandBufferDescriptor? descriptor]);

  external factory GPUCommandEncoder();
}

@anonymous
@JS()
class GPUCommandEncoderDescriptor extends GPUObjectDescriptorBase {
  external bool get measureExecutionTime;
  external set measureExecutionTime(bool newValue);

  external factory GPUCommandEncoderDescriptor(
      {bool measureExecutionTime = false});
}

@anonymous
@JS()
class GPUImageDataLayout {
  external int get offset;
  external set offset(int newValue);
  external int get bytesPerRow;
  external set bytesPerRow(int newValue);
  external int get rowsPerImage;
  external set rowsPerImage(int newValue);

  external factory GPUImageDataLayout(
      {int offset = 0, int bytesPerRow, int rowsPerImage});
}

@anonymous
@JS()
class GPUImageCopyBuffer extends GPUImageDataLayout {
  external GPUBuffer get buffer;
  external set buffer(GPUBuffer newValue);

  external factory GPUImageCopyBuffer({GPUBuffer buffer});
}

@anonymous
@JS()
class GPUImageCopyTexture {
  external GPUTexture get texture;
  external set texture(GPUTexture newValue);
  external int get mipLevel;
  external set mipLevel(int newValue);
  external dynamic get origin;
  external set origin(dynamic newValue);
  external GPUTextureAspect get aspect;
  external set aspect(GPUTextureAspect newValue);

  external factory GPUImageCopyTexture(
      {GPUTexture texture,
      int mipLevel = 0,
      dynamic origin,
      GPUTextureAspect aspect = GPUTextureAspect.all});
}

@anonymous
@JS()
class GPUImageCopyExternalImage {
  external dynamic get source;
  external set source(dynamic newValue);
  external dynamic get origin;
  external set origin(dynamic newValue);

  external factory GPUImageCopyExternalImage({dynamic source, dynamic origin});
}

@JS()
mixin GPUProgrammablePassEncoder {
  external Object setBindGroup(int index, GPUBindGroup bindGroup,
      [Uint32List? dynamicOffsetsData,
      int dynamicOffsetsDataStart,
      int dynamicOffsetsDataLength]);
  external Object pushDebugGroup(String groupLabel);
  external Object popDebugGroup();
  external Object insertDebugMarker(String markerLabel);
}

@JS()
class GPUComputePassEncoder with GPUObjectBase, GPUProgrammablePassEncoder {
  external Object setPipeline(GPUComputePipeline pipeline);
  external Object dispatch(int x, [int? y = 1, int? z = 1]);
  external Object dispatchIndirect(
      GPUBuffer indirectBuffer, int indirectOffset);
  external Object beginPipelineStatisticsQuery(
      GPUQuerySet querySet, int queryIndex);
  external Object endPipelineStatisticsQuery();
  external Object writeTimestamp(GPUQuerySet querySet, int queryIndex);
  external Object endPass();

  external factory GPUComputePassEncoder();
}

@anonymous
@JS()
class GPUComputePassDescriptor extends GPUObjectDescriptorBase {
  external factory GPUComputePassDescriptor();
}

@JS()
mixin GPURenderEncoderBase {
  external Object setPipeline(GPURenderPipeline pipeline);
  external Object setIndexBuffer(GPUBuffer buffer, GPUIndexFormat indexFormat,
      [int? offset = 0, int? size = 0]);
  external Object setVertexBuffer(int slot, GPUBuffer buffer,
      [int? offset = 0, int? size = 0]);
  external Object draw(int vertexCount,
      [int? instanceCount = 1, int? firstVertex = 0, int? firstInstance = 0]);
  external Object drawIndexed(int indexCount,
      [int? instanceCount = 1,
      int? firstIndex = 0,
      int? baseVertex = 0,
      int? firstInstance = 0]);
  external Object drawIndirect(GPUBuffer indirectBuffer, int indirectOffset);
  external Object drawIndexedIndirect(
      GPUBuffer indirectBuffer, int indirectOffset);
}

@JS()
class GPURenderPassEncoder
    with GPUObjectBase, GPUProgrammablePassEncoder, GPURenderEncoderBase {
  external Object setViewport(double x, double y, double width, double height,
      double minDepth, double maxDepth);
  external Object setScissorRect(int x, int y, int width, int height);
  external Object setBlendConstant(dynamic color);
  external Object setStencilReference(int reference);
  external Object beginOcclusionQuery(int queryIndex);
  external Object endOcclusionQuery();
  external Object beginPipelineStatisticsQuery(
      GPUQuerySet querySet, int queryIndex);
  external Object endPipelineStatisticsQuery();
  external Object writeTimestamp(GPUQuerySet querySet, int queryIndex);
  external Object executeBundles(Iterable<GPURenderBundle> bundles);
  external Object endPass();

  external factory GPURenderPassEncoder();
}

@anonymous
@JS()
class GPURenderPassDescriptor extends GPUObjectDescriptorBase {
  external Iterable<GPURenderPassColorAttachment> get colorAttachments;
  external set colorAttachments(
      Iterable<GPURenderPassColorAttachment> newValue);
  external GPURenderPassDepthStencilAttachment get depthStencilAttachment;
  external set depthStencilAttachment(
      GPURenderPassDepthStencilAttachment newValue);
  external GPUQuerySet get occlusionQuerySet;
  external set occlusionQuerySet(GPUQuerySet newValue);

  external factory GPURenderPassDescriptor(
      {Iterable<GPURenderPassColorAttachment> colorAttachments,
      GPURenderPassDepthStencilAttachment depthStencilAttachment,
      GPUQuerySet occlusionQuerySet});
}

@anonymous
@JS()
class GPURenderPassColorAttachment {
  external GPUTextureView get view;
  external set view(GPUTextureView newValue);
  external GPUTextureView get resolveTarget;
  external set resolveTarget(GPUTextureView newValue);
  external dynamic get loadValue;
  external set loadValue(dynamic newValue);
  external GPUStoreOp get storeOp;
  external set storeOp(GPUStoreOp newValue);

  external factory GPURenderPassColorAttachment(
      {GPUTextureView view,
      GPUTextureView resolveTarget,
      dynamic loadValue,
      GPUStoreOp storeOp});
}

@anonymous
@JS()
class GPURenderPassDepthStencilAttachment {
  external GPUTextureView get view;
  external set view(GPUTextureView newValue);
  external dynamic get depthLoadValue;
  external set depthLoadValue(dynamic newValue);
  external GPUStoreOp get depthStoreOp;
  external set depthStoreOp(GPUStoreOp newValue);
  external bool get depthReadOnly;
  external set depthReadOnly(bool newValue);
  external dynamic get stencilLoadValue;
  external set stencilLoadValue(dynamic newValue);
  external GPUStoreOp get stencilStoreOp;
  external set stencilStoreOp(GPUStoreOp newValue);
  external bool get stencilReadOnly;
  external set stencilReadOnly(bool newValue);

  external factory GPURenderPassDepthStencilAttachment(
      {GPUTextureView view,
      dynamic depthLoadValue,
      GPUStoreOp depthStoreOp,
      bool depthReadOnly = false,
      dynamic stencilLoadValue,
      GPUStoreOp stencilStoreOp,
      bool stencilReadOnly = false});
}

@JS()
enum GPULoadOp { load }

@JS()
enum GPUStoreOp { store, discard }

@JS()
class GPURenderBundle with GPUObjectBase {
  external factory GPURenderBundle();
}

@anonymous
@JS()
class GPURenderBundleDescriptor extends GPUObjectDescriptorBase {
  external factory GPURenderBundleDescriptor();
}

@JS()
class GPURenderBundleEncoder
    with GPUObjectBase, GPUProgrammablePassEncoder, GPURenderEncoderBase {
  external GPURenderBundle finish([GPURenderBundleDescriptor? descriptor]);

  external factory GPURenderBundleEncoder();
}

@anonymous
@JS()
class GPURenderBundleEncoderDescriptor extends GPUObjectDescriptorBase {
  external Iterable<GPUTextureFormat> get colorFormats;
  external set colorFormats(Iterable<GPUTextureFormat> newValue);
  external GPUTextureFormat get depthStencilFormat;
  external set depthStencilFormat(GPUTextureFormat newValue);
  external int get sampleCount;
  external set sampleCount(int newValue);

  external factory GPURenderBundleEncoderDescriptor(
      {Iterable<GPUTextureFormat> colorFormats,
      GPUTextureFormat depthStencilFormat,
      int sampleCount = 1});
}

@JS()
class GPUQueue with GPUObjectBase {
  external Object submit(Iterable<GPUCommandBuffer> commandBuffers);
  external Promise<Object> onSubmittedWorkDone();
  external Object writeBuffer(GPUBuffer buffer, int bufferOffset, dynamic data,
      [int? dataOffset = 0, int? size]);
  external Object writeTexture(GPUImageCopyTexture destination, dynamic data,
      GPUImageDataLayout dataLayout, dynamic size);
  external Object copyExternalImageToTexture(GPUImageCopyExternalImage source,
      GPUImageCopyTexture destination, dynamic copySize);

  external factory GPUQueue();
}

@JS()
class GPUQuerySet with GPUObjectBase {
  external Object destroy();

  external factory GPUQuerySet();
}

@anonymous
@JS()
class GPUQuerySetDescriptor extends GPUObjectDescriptorBase {
  external GPUQueryType get type;
  external set type(GPUQueryType newValue);
  external int get count;
  external set count(int newValue);
  external Iterable<GPUPipelineStatisticName> get pipelineStatistics;
  external set pipelineStatistics(Iterable<GPUPipelineStatisticName> newValue);

  external factory GPUQuerySetDescriptor(
      {GPUQueryType type,
      int count,
      Iterable<GPUPipelineStatisticName> pipelineStatistics = const []});
}

@JS()
enum GPUQueryType {
  occlusion,
  @JS('pipeline-statistics')
  pipelineStatistics,
  timestamp
}

@JS()
enum GPUPipelineStatisticName {
  @JS('vertex-shader-invocations')
  vertexShaderInvocations,
  @JS('clipper-invocations')
  clipperInvocations,
  @JS('clipper-primitives-out')
  clipperPrimitivesOut,
  @JS('fragment-shader-invocations')
  fragmentShaderInvocations,
  @JS('compute-shader-invocations')
  computeShaderInvocations
}

@JS()
class GPUCanvasContext {
  external GPUSwapChain configureSwapChain(GPUSwapChainDescriptor descriptor);
  external GPUTextureFormat getSwapChainPreferredFormat(GPUAdapter adapter);

  external factory GPUCanvasContext();
}

@JS()
enum GPUCanvasCompositingAlphaMode { opaque, premultiplied }

@anonymous
@JS()
class GPUSwapChainDescriptor extends GPUObjectDescriptorBase {
  external GPUDevice get device;
  external set device(GPUDevice newValue);
  external GPUTextureFormat get format;
  external set format(GPUTextureFormat newValue);
  external int get usage;
  external set usage(int newValue);
  external GPUCanvasCompositingAlphaMode get compositingAlphaMode;
  external set compositingAlphaMode(GPUCanvasCompositingAlphaMode newValue);
  external dynamic get size;
  external set size(dynamic newValue);

  external factory GPUSwapChainDescriptor(
      {GPUDevice device,
      GPUTextureFormat format,
      int usage = 0x10,
      GPUCanvasCompositingAlphaMode compositingAlphaMode =
          GPUCanvasCompositingAlphaMode.opaque,
      dynamic size});
}

@JS()
class GPUSwapChain {
  external GPUTexture getCurrentTexture();

  external factory GPUSwapChain();
}

@JS()
enum GPUDeviceLostReason { destroyed }

@JS()
class GPUDeviceLostInfo {
  external dynamic get reason;
  external String get message;

  external factory GPUDeviceLostInfo();
}

@JS()
enum GPUErrorFilter {
  @JS('out-of-memory')
  outOfMemory,
  validation
}

@JS()
class GPUOutOfMemoryError {
  external factory GPUOutOfMemoryError();
}

@JS()
class GPUValidationError {
  external factory GPUValidationError({String message});
  external String get message;
}

@JS()
class GPUUncapturedErrorEvent extends Event {
  external factory GPUUncapturedErrorEvent(
      {String type,
      GPUUncapturedErrorEventInit gpuUncapturedErrorEventInitDict});
  external dynamic get error;
}

@anonymous
@JS()
class GPUUncapturedErrorEventInit extends EventInit {
  external dynamic get error;
  external set error(dynamic newValue);

  external factory GPUUncapturedErrorEventInit({dynamic error});
}

@anonymous
@JS()
class GPUColorDict {
  external double get r;
  external set r(double newValue);
  external double get g;
  external set g(double newValue);
  external double get b;
  external set b(double newValue);
  external double get a;
  external set a(double newValue);

  external factory GPUColorDict({double r, double g, double b, double a});
}

@anonymous
@JS()
class GPUOrigin2DDict {
  external int get x;
  external set x(int newValue);
  external int get y;
  external set y(int newValue);

  external factory GPUOrigin2DDict({int x = 0, int y = 0});
}

@anonymous
@JS()
class GPUOrigin3DDict {
  external int get x;
  external set x(int newValue);
  external int get y;
  external set y(int newValue);
  external int get z;
  external set z(int newValue);

  external factory GPUOrigin3DDict({int x = 0, int y = 0, int z = 0});
}

@anonymous
@JS()
class GPUExtent3DDict {
  external int get width;
  external set width(int newValue);
  external int get height;
  external set height(int newValue);
  external int get depthOrArrayLayers;
  external set depthOrArrayLayers(int newValue);

  external factory GPUExtent3DDict(
      {int width, int height = 1, int depthOrArrayLayers = 1});
}

@JS()
class GPUPresentationContext {
  external Object configure(GPUPresentationConfiguration? configuration);
  external GPUTextureFormat getPreferredFormat(GPUAdapter adapter);
  external GPUTexture getCurrentTexture();

  external factory GPUPresentationContext();
}

@anonymous
@JS()
class GPUPresentationConfiguration extends GPUObjectDescriptorBase {
  external GPUDevice get device;
  external set device(GPUDevice newValue);
  external GPUTextureFormat get format;
  external set format(GPUTextureFormat newValue);
  external int get usage;
  external set usage(int newValue);
  external GPUCanvasCompositingAlphaMode get compositingAlphaMode;
  external set compositingAlphaMode(GPUCanvasCompositingAlphaMode newValue);
  external dynamic get size;
  external set size(dynamic newValue);

  external factory GPUPresentationConfiguration(
      {GPUDevice device,
      GPUTextureFormat format,
      int usage = 0x10,
      GPUCanvasCompositingAlphaMode compositingAlphaMode =
          GPUCanvasCompositingAlphaMode.opaque,
      dynamic size});
}
