/// WebGPU
///
/// https://gpuweb.github.io/gpuweb/
@JS('window')
@staticInterop
library webgpu;

import 'package:js/js.dart';

import 'dart:typed_data';
import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: webgpu
dom
html */

@JS()
@staticInterop
class GPUObjectBase {
  external factory GPUObjectBase();
}

extension PropsGPUObjectBase on GPUObjectBase {
  external String? get label;
  external set label(String? newValue);
}

@anonymous
@JS()
@staticInterop
class GPUObjectDescriptorBase {
  external factory GPUObjectDescriptorBase({String label});
}

extension PropsGPUObjectDescriptorBase on GPUObjectDescriptorBase {
  external String get label;
  external set label(String newValue);
}

@JS()
@staticInterop
class GPUSupportedLimits {
  external factory GPUSupportedLimits();
}

extension PropsGPUSupportedLimits on GPUSupportedLimits {
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
}

@JS()
@staticInterop
class GPUSupportedFeatures {
  external factory GPUSupportedFeatures();
}

enum GPUPredefinedColorSpace { srgb }

@JS()
@staticInterop
class NavigatorGPU {
  external factory NavigatorGPU();
}

extension PropsNavigatorGPU on NavigatorGPU {
  external GPU get gpu;
}

@JS()
@staticInterop
class GPU {
  external factory GPU();
}

extension PropsGPU on GPU {
  external Promise<GPUAdapter> requestAdapter(
      [GPURequestAdapterOptions? options]);
}

@anonymous
@JS()
@staticInterop
class GPURequestAdapterOptions {
  external factory GPURequestAdapterOptions(
      {GPUPowerPreference powerPreference, bool forceSoftware = false});
}

extension PropsGPURequestAdapterOptions on GPURequestAdapterOptions {
  external GPUPowerPreference get powerPreference;
  external set powerPreference(GPUPowerPreference newValue);
  external bool get forceSoftware;
  external set forceSoftware(bool newValue);
}

enum GPUPowerPreference { lowPower, highPerformance }

@JS()
@staticInterop
class GPUAdapter {
  external factory GPUAdapter();
}

extension PropsGPUAdapter on GPUAdapter {
  external String get name;
  external GPUSupportedFeatures get features;
  external GPUSupportedLimits get limits;
  external bool get isSoftware;
  external Promise<GPUDevice> requestDevice([GPUDeviceDescriptor? descriptor]);
}

@anonymous
@JS()
@staticInterop
class GPUDeviceDescriptor implements GPUObjectDescriptorBase {
  external factory GPUDeviceDescriptor(
      {Iterable<GPUFeatureName> nonGuaranteedFeatures = const [],
      dynamic nonGuaranteedLimits});
}

extension PropsGPUDeviceDescriptor on GPUDeviceDescriptor {
  external Iterable<GPUFeatureName> get nonGuaranteedFeatures;
  external set nonGuaranteedFeatures(Iterable<GPUFeatureName> newValue);
  external dynamic get nonGuaranteedLimits;
  external set nonGuaranteedLimits(dynamic newValue);
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
  external factory GPUDevice();
}

extension PropsGPUDevice on GPUDevice {
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
}

@JS()
@staticInterop
class GPUBuffer implements GPUObjectBase {
  external factory GPUBuffer();
}

extension PropsGPUBuffer on GPUBuffer {
  external Promise<Object> mapAsync(int mode, [int? offset = 0, int? size]);
  external ByteBuffer getMappedRange([int? offset = 0, int? size]);
  external Object unmap();
  external Object destroy();
}

@anonymous
@JS()
@staticInterop
class GPUBufferDescriptor implements GPUObjectDescriptorBase {
  external factory GPUBufferDescriptor(
      {int size, int usage, bool mappedAtCreation = false});
}

extension PropsGPUBufferDescriptor on GPUBufferDescriptor {
  external int get size;
  external set size(int newValue);
  external int get usage;
  external set usage(int newValue);
  external bool get mappedAtCreation;
  external set mappedAtCreation(bool newValue);
}

@JS()
@staticInterop
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
@staticInterop
class GPUMapMode {
  external static int get READ;
  external static int get WRITE;
  external factory GPUMapMode();
}

@JS()
@staticInterop
class GPUTexture implements GPUObjectBase {
  external factory GPUTexture();
}

extension PropsGPUTexture on GPUTexture {
  external GPUTextureView createView([GPUTextureViewDescriptor? descriptor]);
  external Object destroy();
}

@anonymous
@JS()
@staticInterop
class GPUTextureDescriptor implements GPUObjectDescriptorBase {
  external factory GPUTextureDescriptor(
      {dynamic size,
      int mipLevelCount = 1,
      int sampleCount = 1,
      GPUTextureDimension dimension = GPUTextureDimension.value2d,
      GPUTextureFormat format,
      int usage});
}

extension PropsGPUTextureDescriptor on GPUTextureDescriptor {
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
}

enum GPUTextureDimension { value1d, value2d, value3d }

@JS()
@staticInterop
class GPUTextureUsage {
  external static int get COPY_SRC;
  external static int get COPY_DST;
  external static int get SAMPLED;
  external static int get STORAGE;
  external static int get RENDER_ATTACHMENT;
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
  external factory GPUTextureViewDescriptor(
      {GPUTextureFormat format,
      GPUTextureViewDimension dimension,
      GPUTextureAspect aspect = GPUTextureAspect.all,
      int baseMipLevel = 0,
      int mipLevelCount,
      int baseArrayLayer = 0,
      int arrayLayerCount});
}

extension PropsGPUTextureViewDescriptor on GPUTextureViewDescriptor {
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
  external factory GPUExternalTexture();
}

@anonymous
@JS()
@staticInterop
class GPUExternalTextureDescriptor implements GPUObjectDescriptorBase {
  external factory GPUExternalTextureDescriptor(
      {HTMLVideoElement source,
      GPUPredefinedColorSpace colorSpace = GPUPredefinedColorSpace.srgb});
}

extension PropsGPUExternalTextureDescriptor on GPUExternalTextureDescriptor {
  external HTMLVideoElement get source;
  external set source(HTMLVideoElement newValue);
  external GPUPredefinedColorSpace get colorSpace;
  external set colorSpace(GPUPredefinedColorSpace newValue);
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

extension PropsGPUSamplerDescriptor on GPUSamplerDescriptor {
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
  external factory GPUBindGroupLayout();
}

@anonymous
@JS()
@staticInterop
class GPUBindGroupLayoutDescriptor implements GPUObjectDescriptorBase {
  external factory GPUBindGroupLayoutDescriptor(
      {Iterable<GPUBindGroupLayoutEntry> entries});
}

extension PropsGPUBindGroupLayoutDescriptor on GPUBindGroupLayoutDescriptor {
  external Iterable<GPUBindGroupLayoutEntry> get entries;
  external set entries(Iterable<GPUBindGroupLayoutEntry> newValue);
}

@JS()
@staticInterop
class GPUShaderStage {
  external static int get VERTEX;
  external static int get FRAGMENT;
  external static int get COMPUTE;
  external factory GPUShaderStage();
}

@anonymous
@JS()
@staticInterop
class GPUBindGroupLayoutEntry {
  external factory GPUBindGroupLayoutEntry(
      {int binding,
      int visibility,
      GPUBufferBindingLayout buffer,
      GPUSamplerBindingLayout sampler,
      GPUTextureBindingLayout texture,
      GPUStorageTextureBindingLayout storageTexture,
      GPUExternalTextureBindingLayout externalTexture});
}

extension PropsGPUBindGroupLayoutEntry on GPUBindGroupLayoutEntry {
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
}

enum GPUBufferBindingType { uniform, storage, readOnlyStorage }

@anonymous
@JS()
@staticInterop
class GPUBufferBindingLayout {
  external factory GPUBufferBindingLayout(
      {GPUBufferBindingType type = GPUBufferBindingType.uniform,
      bool hasDynamicOffset = false,
      int minBindingSize = 0});
}

extension PropsGPUBufferBindingLayout on GPUBufferBindingLayout {
  external GPUBufferBindingType get type;
  external set type(GPUBufferBindingType newValue);
  external bool get hasDynamicOffset;
  external set hasDynamicOffset(bool newValue);
  external int get minBindingSize;
  external set minBindingSize(int newValue);
}

enum GPUSamplerBindingType { filtering, nonFiltering, comparison }

@anonymous
@JS()
@staticInterop
class GPUSamplerBindingLayout {
  external factory GPUSamplerBindingLayout(
      {GPUSamplerBindingType type = GPUSamplerBindingType.filtering});
}

extension PropsGPUSamplerBindingLayout on GPUSamplerBindingLayout {
  external GPUSamplerBindingType get type;
  external set type(GPUSamplerBindingType newValue);
}

enum GPUTextureSampleType { float, unfilterableFloat, depth, sint, uint }

@anonymous
@JS()
@staticInterop
class GPUTextureBindingLayout {
  external factory GPUTextureBindingLayout(
      {GPUTextureSampleType sampleType = GPUTextureSampleType.float,
      GPUTextureViewDimension viewDimension = GPUTextureViewDimension.value2d,
      bool multisampled = false});
}

extension PropsGPUTextureBindingLayout on GPUTextureBindingLayout {
  external GPUTextureSampleType get sampleType;
  external set sampleType(GPUTextureSampleType newValue);
  external GPUTextureViewDimension get viewDimension;
  external set viewDimension(GPUTextureViewDimension newValue);
  external bool get multisampled;
  external set multisampled(bool newValue);
}

enum GPUStorageTextureAccess { readOnly, writeOnly }

@anonymous
@JS()
@staticInterop
class GPUStorageTextureBindingLayout {
  external factory GPUStorageTextureBindingLayout(
      {GPUStorageTextureAccess access,
      GPUTextureFormat format,
      GPUTextureViewDimension viewDimension = GPUTextureViewDimension.value2d});
}

extension PropsGPUStorageTextureBindingLayout
    on GPUStorageTextureBindingLayout {
  external GPUStorageTextureAccess get access;
  external set access(GPUStorageTextureAccess newValue);
  external GPUTextureFormat get format;
  external set format(GPUTextureFormat newValue);
  external GPUTextureViewDimension get viewDimension;
  external set viewDimension(GPUTextureViewDimension newValue);
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
      {GPUBindGroupLayout layout, Iterable<GPUBindGroupEntry> entries});
}

extension PropsGPUBindGroupDescriptor on GPUBindGroupDescriptor {
  external GPUBindGroupLayout get layout;
  external set layout(GPUBindGroupLayout newValue);
  external Iterable<GPUBindGroupEntry> get entries;
  external set entries(Iterable<GPUBindGroupEntry> newValue);
}

@anonymous
@JS()
@staticInterop
class GPUBindGroupEntry {
  external factory GPUBindGroupEntry({int binding, dynamic resource});
}

extension PropsGPUBindGroupEntry on GPUBindGroupEntry {
  external int get binding;
  external set binding(int newValue);
  external dynamic get resource;
  external set resource(dynamic newValue);
}

@anonymous
@JS()
@staticInterop
class GPUBufferBinding {
  external factory GPUBufferBinding(
      {GPUBuffer buffer, int offset = 0, int size});
}

extension PropsGPUBufferBinding on GPUBufferBinding {
  external GPUBuffer get buffer;
  external set buffer(GPUBuffer newValue);
  external int get offset;
  external set offset(int newValue);
  external int get size;
  external set size(int newValue);
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
      {Iterable<GPUBindGroupLayout> bindGroupLayouts});
}

extension PropsGPUPipelineLayoutDescriptor on GPUPipelineLayoutDescriptor {
  external Iterable<GPUBindGroupLayout> get bindGroupLayouts;
  external set bindGroupLayouts(Iterable<GPUBindGroupLayout> newValue);
}

@JS()
@staticInterop
class GPUShaderModule implements GPUObjectBase {
  external factory GPUShaderModule();
}

extension PropsGPUShaderModule on GPUShaderModule {
  external Promise<GPUCompilationInfo> compilationInfo();
}

@anonymous
@JS()
@staticInterop
class GPUShaderModuleDescriptor implements GPUObjectDescriptorBase {
  external factory GPUShaderModuleDescriptor({String code, dynamic sourceMap});
}

extension PropsGPUShaderModuleDescriptor on GPUShaderModuleDescriptor {
  external String get code;
  external set code(String newValue);
  external dynamic get sourceMap;
  external set sourceMap(dynamic newValue);
}

enum GPUCompilationMessageType { error, warning, info }

@JS()
@staticInterop
class GPUCompilationMessage {
  external factory GPUCompilationMessage();
}

extension PropsGPUCompilationMessage on GPUCompilationMessage {
  external String get message;
  external GPUCompilationMessageType get type;
  external int get lineNum;
  external int get linePos;
  external int get offset;
  external int get length;
}

@JS()
@staticInterop
class GPUCompilationInfo {
  external factory GPUCompilationInfo();
}

extension PropsGPUCompilationInfo on GPUCompilationInfo {
  external Iterable<GPUCompilationMessage> get messages;
}

@anonymous
@JS()
@staticInterop
class GPUPipelineDescriptorBase implements GPUObjectDescriptorBase {
  external factory GPUPipelineDescriptorBase({GPUPipelineLayout layout});
}

extension PropsGPUPipelineDescriptorBase on GPUPipelineDescriptorBase {
  external GPUPipelineLayout get layout;
  external set layout(GPUPipelineLayout newValue);
}

@JS()
@staticInterop
class GPUPipelineBase {
  external factory GPUPipelineBase();
}

extension PropsGPUPipelineBase on GPUPipelineBase {
  external GPUBindGroupLayout getBindGroupLayout(int index);
}

@anonymous
@JS()
@staticInterop
class GPUProgrammableStage {
  external factory GPUProgrammableStage(
      {GPUShaderModule module, String entryPoint, dynamic constants});
}

extension PropsGPUProgrammableStage on GPUProgrammableStage {
  external GPUShaderModule get module;
  external set module(GPUShaderModule newValue);
  external String get entryPoint;
  external set entryPoint(String newValue);
  external dynamic get constants;
  external set constants(dynamic newValue);
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
  external factory GPUComputePipelineDescriptor({GPUProgrammableStage compute});
}

extension PropsGPUComputePipelineDescriptor on GPUComputePipelineDescriptor {
  external GPUProgrammableStage get compute;
  external set compute(GPUProgrammableStage newValue);
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
      {GPUVertexState vertex,
      GPUPrimitiveState primitive,
      GPUDepthStencilState depthStencil,
      GPUMultisampleState multisample,
      GPUFragmentState fragment});
}

extension PropsGPURenderPipelineDescriptor on GPURenderPipelineDescriptor {
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
  external factory GPUPrimitiveState(
      {GPUPrimitiveTopology topology = GPUPrimitiveTopology.triangleList,
      GPUIndexFormat stripIndexFormat,
      GPUFrontFace frontFace = GPUFrontFace.ccw,
      GPUCullMode cullMode = GPUCullMode.none,
      bool clampDepth = false});
}

extension PropsGPUPrimitiveState on GPUPrimitiveState {
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
}

enum GPUFrontFace { ccw, cw }

enum GPUCullMode { none, front, back }

@anonymous
@JS()
@staticInterop
class GPUMultisampleState {
  external factory GPUMultisampleState(
      {int count = 1,
      int mask = 0xFFFFFFFF,
      bool alphaToCoverageEnabled = false});
}

extension PropsGPUMultisampleState on GPUMultisampleState {
  external int get count;
  external set count(int newValue);
  external int get mask;
  external set mask(int newValue);
  external bool get alphaToCoverageEnabled;
  external set alphaToCoverageEnabled(bool newValue);
}

@anonymous
@JS()
@staticInterop
class GPUFragmentState implements GPUProgrammableStage {
  external factory GPUFragmentState({Iterable<GPUColorTargetState> targets});
}

extension PropsGPUFragmentState on GPUFragmentState {
  external Iterable<GPUColorTargetState> get targets;
  external set targets(Iterable<GPUColorTargetState> newValue);
}

@anonymous
@JS()
@staticInterop
class GPUColorTargetState {
  external factory GPUColorTargetState(
      {GPUTextureFormat format, GPUBlendState blend, int writeMask = 0xF});
}

extension PropsGPUColorTargetState on GPUColorTargetState {
  external GPUTextureFormat get format;
  external set format(GPUTextureFormat newValue);
  external GPUBlendState get blend;
  external set blend(GPUBlendState newValue);
  external int get writeMask;
  external set writeMask(int newValue);
}

@anonymous
@JS()
@staticInterop
class GPUBlendState {
  external factory GPUBlendState(
      {GPUBlendComponent color, GPUBlendComponent alpha});
}

extension PropsGPUBlendState on GPUBlendState {
  external GPUBlendComponent get color;
  external set color(GPUBlendComponent newValue);
  external GPUBlendComponent get alpha;
  external set alpha(GPUBlendComponent newValue);
}

@JS()
@staticInterop
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
@staticInterop
class GPUBlendComponent {
  external factory GPUBlendComponent(
      {GPUBlendFactor srcFactor = GPUBlendFactor.one,
      GPUBlendFactor dstFactor = GPUBlendFactor.zero,
      GPUBlendOperation operation = GPUBlendOperation.add});
}

extension PropsGPUBlendComponent on GPUBlendComponent {
  external GPUBlendFactor get srcFactor;
  external set srcFactor(GPUBlendFactor newValue);
  external GPUBlendFactor get dstFactor;
  external set dstFactor(GPUBlendFactor newValue);
  external GPUBlendOperation get operation;
  external set operation(GPUBlendOperation newValue);
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

extension PropsGPUDepthStencilState on GPUDepthStencilState {
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
}

@anonymous
@JS()
@staticInterop
class GPUStencilFaceState {
  external factory GPUStencilFaceState(
      {GPUCompareFunction compare = GPUCompareFunction.always,
      GPUStencilOperation failOp = GPUStencilOperation.keep,
      GPUStencilOperation depthFailOp = GPUStencilOperation.keep,
      GPUStencilOperation passOp = GPUStencilOperation.keep});
}

extension PropsGPUStencilFaceState on GPUStencilFaceState {
  external GPUCompareFunction get compare;
  external set compare(GPUCompareFunction newValue);
  external GPUStencilOperation get failOp;
  external set failOp(GPUStencilOperation newValue);
  external GPUStencilOperation get depthFailOp;
  external set depthFailOp(GPUStencilOperation newValue);
  external GPUStencilOperation get passOp;
  external set passOp(GPUStencilOperation newValue);
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
      {Iterable<GPUVertexBufferLayout> buffers = const []});
}

extension PropsGPUVertexState on GPUVertexState {
  external Iterable<GPUVertexBufferLayout> get buffers;
  external set buffers(Iterable<GPUVertexBufferLayout> newValue);
}

@anonymous
@JS()
@staticInterop
class GPUVertexBufferLayout {
  external factory GPUVertexBufferLayout(
      {int arrayStride,
      GPUInputStepMode stepMode = GPUInputStepMode.vertex,
      Iterable<GPUVertexAttribute> attributes});
}

extension PropsGPUVertexBufferLayout on GPUVertexBufferLayout {
  external int get arrayStride;
  external set arrayStride(int newValue);
  external GPUInputStepMode get stepMode;
  external set stepMode(GPUInputStepMode newValue);
  external Iterable<GPUVertexAttribute> get attributes;
  external set attributes(Iterable<GPUVertexAttribute> newValue);
}

@anonymous
@JS()
@staticInterop
class GPUVertexAttribute {
  external factory GPUVertexAttribute(
      {GPUVertexFormat format, int offset, int shaderLocation});
}

extension PropsGPUVertexAttribute on GPUVertexAttribute {
  external GPUVertexFormat get format;
  external set format(GPUVertexFormat newValue);
  external int get offset;
  external set offset(int newValue);
  external int get shaderLocation;
  external set shaderLocation(int newValue);
}

@JS()
@staticInterop
class GPUCommandBuffer implements GPUObjectBase {
  external factory GPUCommandBuffer();
}

extension PropsGPUCommandBuffer on GPUCommandBuffer {
  external Promise<double> get executionTime;
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
  external factory GPUCommandEncoder();
}

extension PropsGPUCommandEncoder on GPUCommandEncoder {
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
}

@anonymous
@JS()
@staticInterop
class GPUCommandEncoderDescriptor implements GPUObjectDescriptorBase {
  external factory GPUCommandEncoderDescriptor(
      {bool measureExecutionTime = false});
}

extension PropsGPUCommandEncoderDescriptor on GPUCommandEncoderDescriptor {
  external bool get measureExecutionTime;
  external set measureExecutionTime(bool newValue);
}

@anonymous
@JS()
@staticInterop
class GPUImageDataLayout {
  external factory GPUImageDataLayout(
      {int offset = 0, int bytesPerRow, int rowsPerImage});
}

extension PropsGPUImageDataLayout on GPUImageDataLayout {
  external int get offset;
  external set offset(int newValue);
  external int get bytesPerRow;
  external set bytesPerRow(int newValue);
  external int get rowsPerImage;
  external set rowsPerImage(int newValue);
}

@anonymous
@JS()
@staticInterop
class GPUImageCopyBuffer implements GPUImageDataLayout {
  external factory GPUImageCopyBuffer({GPUBuffer buffer});
}

extension PropsGPUImageCopyBuffer on GPUImageCopyBuffer {
  external GPUBuffer get buffer;
  external set buffer(GPUBuffer newValue);
}

@anonymous
@JS()
@staticInterop
class GPUImageCopyTexture {
  external factory GPUImageCopyTexture(
      {GPUTexture texture,
      int mipLevel = 0,
      dynamic origin,
      GPUTextureAspect aspect = GPUTextureAspect.all});
}

extension PropsGPUImageCopyTexture on GPUImageCopyTexture {
  external GPUTexture get texture;
  external set texture(GPUTexture newValue);
  external int get mipLevel;
  external set mipLevel(int newValue);
  external dynamic get origin;
  external set origin(dynamic newValue);
  external GPUTextureAspect get aspect;
  external set aspect(GPUTextureAspect newValue);
}

@anonymous
@JS()
@staticInterop
class GPUImageCopyExternalImage {
  external factory GPUImageCopyExternalImage({dynamic source, dynamic origin});
}

extension PropsGPUImageCopyExternalImage on GPUImageCopyExternalImage {
  external dynamic get source;
  external set source(dynamic newValue);
  external dynamic get origin;
  external set origin(dynamic newValue);
}

@JS()
@staticInterop
class GPUProgrammablePassEncoder {
  external factory GPUProgrammablePassEncoder();
}

extension PropsGPUProgrammablePassEncoder on GPUProgrammablePassEncoder {
  external Object setBindGroup(int index, GPUBindGroup bindGroup,
      [Uint32List? dynamicOffsetsData,
      int dynamicOffsetsDataStart,
      int dynamicOffsetsDataLength]);
  external Object pushDebugGroup(String groupLabel);
  external Object popDebugGroup();
  external Object insertDebugMarker(String markerLabel);
}

@JS()
@staticInterop
class GPUComputePassEncoder
    implements GPUObjectBase, GPUProgrammablePassEncoder {
  external factory GPUComputePassEncoder();
}

extension PropsGPUComputePassEncoder on GPUComputePassEncoder {
  external Object setPipeline(GPUComputePipeline pipeline);
  external Object dispatch(int x, [int? y = 1, int? z = 1]);
  external Object dispatchIndirect(
      GPUBuffer indirectBuffer, int indirectOffset);
  external Object beginPipelineStatisticsQuery(
      GPUQuerySet querySet, int queryIndex);
  external Object endPipelineStatisticsQuery();
  external Object writeTimestamp(GPUQuerySet querySet, int queryIndex);
  external Object endPass();
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
  external factory GPURenderEncoderBase();
}

extension PropsGPURenderEncoderBase on GPURenderEncoderBase {
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
@staticInterop
class GPURenderPassEncoder
    implements GPUObjectBase, GPUProgrammablePassEncoder, GPURenderEncoderBase {
  external factory GPURenderPassEncoder();
}

extension PropsGPURenderPassEncoder on GPURenderPassEncoder {
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
}

@anonymous
@JS()
@staticInterop
class GPURenderPassDescriptor implements GPUObjectDescriptorBase {
  external factory GPURenderPassDescriptor(
      {Iterable<GPURenderPassColorAttachment> colorAttachments,
      GPURenderPassDepthStencilAttachment depthStencilAttachment,
      GPUQuerySet occlusionQuerySet});
}

extension PropsGPURenderPassDescriptor on GPURenderPassDescriptor {
  external Iterable<GPURenderPassColorAttachment> get colorAttachments;
  external set colorAttachments(
      Iterable<GPURenderPassColorAttachment> newValue);
  external GPURenderPassDepthStencilAttachment get depthStencilAttachment;
  external set depthStencilAttachment(
      GPURenderPassDepthStencilAttachment newValue);
  external GPUQuerySet get occlusionQuerySet;
  external set occlusionQuerySet(GPUQuerySet newValue);
}

@anonymous
@JS()
@staticInterop
class GPURenderPassColorAttachment {
  external factory GPURenderPassColorAttachment(
      {GPUTextureView view,
      GPUTextureView resolveTarget,
      dynamic loadValue,
      GPUStoreOp storeOp});
}

extension PropsGPURenderPassColorAttachment on GPURenderPassColorAttachment {
  external GPUTextureView get view;
  external set view(GPUTextureView newValue);
  external GPUTextureView get resolveTarget;
  external set resolveTarget(GPUTextureView newValue);
  external dynamic get loadValue;
  external set loadValue(dynamic newValue);
  external GPUStoreOp get storeOp;
  external set storeOp(GPUStoreOp newValue);
}

@anonymous
@JS()
@staticInterop
class GPURenderPassDepthStencilAttachment {
  external factory GPURenderPassDepthStencilAttachment(
      {GPUTextureView view,
      dynamic depthLoadValue,
      GPUStoreOp depthStoreOp,
      bool depthReadOnly = false,
      dynamic stencilLoadValue,
      GPUStoreOp stencilStoreOp,
      bool stencilReadOnly = false});
}

extension PropsGPURenderPassDepthStencilAttachment
    on GPURenderPassDepthStencilAttachment {
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
}

enum GPULoadOp { load }

enum GPUStoreOp { store, discard }

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
    implements GPUObjectBase, GPUProgrammablePassEncoder, GPURenderEncoderBase {
  external factory GPURenderBundleEncoder();
}

extension PropsGPURenderBundleEncoder on GPURenderBundleEncoder {
  external GPURenderBundle finish([GPURenderBundleDescriptor? descriptor]);
}

@anonymous
@JS()
@staticInterop
class GPURenderBundleEncoderDescriptor implements GPUObjectDescriptorBase {
  external factory GPURenderBundleEncoderDescriptor(
      {Iterable<GPUTextureFormat> colorFormats,
      GPUTextureFormat depthStencilFormat,
      int sampleCount = 1});
}

extension PropsGPURenderBundleEncoderDescriptor
    on GPURenderBundleEncoderDescriptor {
  external Iterable<GPUTextureFormat> get colorFormats;
  external set colorFormats(Iterable<GPUTextureFormat> newValue);
  external GPUTextureFormat get depthStencilFormat;
  external set depthStencilFormat(GPUTextureFormat newValue);
  external int get sampleCount;
  external set sampleCount(int newValue);
}

@JS()
@staticInterop
class GPUQueue implements GPUObjectBase {
  external factory GPUQueue();
}

extension PropsGPUQueue on GPUQueue {
  external Object submit(Iterable<GPUCommandBuffer> commandBuffers);
  external Promise<Object> onSubmittedWorkDone();
  external Object writeBuffer(GPUBuffer buffer, int bufferOffset, dynamic data,
      [int? dataOffset = 0, int? size]);
  external Object writeTexture(GPUImageCopyTexture destination, dynamic data,
      GPUImageDataLayout dataLayout, dynamic size);
  external Object copyExternalImageToTexture(GPUImageCopyExternalImage source,
      GPUImageCopyTexture destination, dynamic copySize);
}

@JS()
@staticInterop
class GPUQuerySet implements GPUObjectBase {
  external factory GPUQuerySet();
}

extension PropsGPUQuerySet on GPUQuerySet {
  external Object destroy();
}

@anonymous
@JS()
@staticInterop
class GPUQuerySetDescriptor implements GPUObjectDescriptorBase {
  external factory GPUQuerySetDescriptor(
      {GPUQueryType type,
      int count,
      Iterable<GPUPipelineStatisticName> pipelineStatistics = const []});
}

extension PropsGPUQuerySetDescriptor on GPUQuerySetDescriptor {
  external GPUQueryType get type;
  external set type(GPUQueryType newValue);
  external int get count;
  external set count(int newValue);
  external Iterable<GPUPipelineStatisticName> get pipelineStatistics;
  external set pipelineStatistics(Iterable<GPUPipelineStatisticName> newValue);
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
  external factory GPUCanvasContext();
}

extension PropsGPUCanvasContext on GPUCanvasContext {
  external GPUSwapChain configureSwapChain(GPUSwapChainDescriptor descriptor);
  external GPUTextureFormat getSwapChainPreferredFormat(GPUAdapter adapter);
}

enum GPUCanvasCompositingAlphaMode { opaque, premultiplied }

@anonymous
@JS()
@staticInterop
class GPUSwapChainDescriptor implements GPUObjectDescriptorBase {
  external factory GPUSwapChainDescriptor(
      {GPUDevice device,
      GPUTextureFormat format,
      int usage = 0x10,
      GPUCanvasCompositingAlphaMode compositingAlphaMode =
          GPUCanvasCompositingAlphaMode.opaque,
      dynamic size});
}

extension PropsGPUSwapChainDescriptor on GPUSwapChainDescriptor {
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
}

@JS()
@staticInterop
class GPUSwapChain {
  external factory GPUSwapChain();
}

extension PropsGPUSwapChain on GPUSwapChain {
  external GPUTexture getCurrentTexture();
}

enum GPUDeviceLostReason { destroyed }

@JS()
@staticInterop
class GPUDeviceLostInfo {
  external factory GPUDeviceLostInfo();
}

extension PropsGPUDeviceLostInfo on GPUDeviceLostInfo {
  external dynamic get reason;
  external String get message;
}

enum GPUErrorFilter { outOfMemory, validation }

@JS()
@staticInterop
class GPUOutOfMemoryError {
  external factory GPUOutOfMemoryError();
}

@JS()
@staticInterop
class GPUValidationError {
  external factory GPUValidationError(String message);
}

extension PropsGPUValidationError on GPUValidationError {
  external String get message;
}

@JS()
@staticInterop
class GPUUncapturedErrorEvent implements Event {
  external factory GPUUncapturedErrorEvent(
      String type, GPUUncapturedErrorEventInit gpuUncapturedErrorEventInitDict);
}

extension PropsGPUUncapturedErrorEvent on GPUUncapturedErrorEvent {
  external dynamic get error;
}

@anonymous
@JS()
@staticInterop
class GPUUncapturedErrorEventInit implements EventInit {
  external factory GPUUncapturedErrorEventInit({dynamic error});
}

extension PropsGPUUncapturedErrorEventInit on GPUUncapturedErrorEventInit {
  external dynamic get error;
  external set error(dynamic newValue);
}

@anonymous
@JS()
@staticInterop
class GPUColorDict {
  external factory GPUColorDict({double r, double g, double b, double a});
}

extension PropsGPUColorDict on GPUColorDict {
  external double get r;
  external set r(double newValue);
  external double get g;
  external set g(double newValue);
  external double get b;
  external set b(double newValue);
  external double get a;
  external set a(double newValue);
}

@anonymous
@JS()
@staticInterop
class GPUOrigin2DDict {
  external factory GPUOrigin2DDict({int x = 0, int y = 0});
}

extension PropsGPUOrigin2DDict on GPUOrigin2DDict {
  external int get x;
  external set x(int newValue);
  external int get y;
  external set y(int newValue);
}

@anonymous
@JS()
@staticInterop
class GPUOrigin3DDict {
  external factory GPUOrigin3DDict({int x = 0, int y = 0, int z = 0});
}

extension PropsGPUOrigin3DDict on GPUOrigin3DDict {
  external int get x;
  external set x(int newValue);
  external int get y;
  external set y(int newValue);
  external int get z;
  external set z(int newValue);
}

@anonymous
@JS()
@staticInterop
class GPUExtent3DDict {
  external factory GPUExtent3DDict(
      {int width, int height = 1, int depthOrArrayLayers = 1});
}

extension PropsGPUExtent3DDict on GPUExtent3DDict {
  external int get width;
  external set width(int newValue);
  external int get height;
  external set height(int newValue);
  external int get depthOrArrayLayers;
  external set depthOrArrayLayers(int newValue);
}

@JS()
@staticInterop
class GPUPresentationContext {
  external factory GPUPresentationContext();
}

extension PropsGPUPresentationContext on GPUPresentationContext {
  external Object configure(GPUPresentationConfiguration? configuration);
  external GPUTextureFormat getPreferredFormat(GPUAdapter adapter);
  external GPUTexture getCurrentTexture();
}

@anonymous
@JS()
@staticInterop
class GPUPresentationConfiguration implements GPUObjectDescriptorBase {
  external factory GPUPresentationConfiguration(
      {GPUDevice device,
      GPUTextureFormat format,
      int usage = 0x10,
      GPUCanvasCompositingAlphaMode compositingAlphaMode =
          GPUCanvasCompositingAlphaMode.opaque,
      dynamic size});
}

extension PropsGPUPresentationConfiguration on GPUPresentationConfiguration {
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
}
