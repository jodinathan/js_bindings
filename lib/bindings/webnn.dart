/// Web Neural Network API
///
/// https://webmachinelearning.github.io/webnn/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library webnn;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class NavigatorML {
  external factory NavigatorML();
}

extension PropsNavigatorML on NavigatorML {
  Ml get ml => js_util.getProperty(this, 'ml');
}

enum MLDeviceType {
  cpu('cpu'),
  gpu('gpu');

  final String value;
  static MLDeviceType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MLDeviceType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MLDeviceType(this.value);
}

enum MLPowerPreference {
  valueDefault('default'),
  highPerformance('high-performance'),
  lowPower('low-power');

  final String value;
  static MLPowerPreference fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MLPowerPreference> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MLPowerPreference(this.value);
}

@anonymous
@JS()
@staticInterop
class MLContextOptions {
  external factory MLContextOptions._(
      {String? deviceType, String? powerPreference});

  factory MLContextOptions(
          {MLDeviceType? deviceType, MLPowerPreference? powerPreference}) =>
      MLContextOptions._(
          deviceType: deviceType?.value ?? MLDeviceType.cpu.value,
          powerPreference:
              powerPreference?.value ?? MLPowerPreference.valueDefault.value);
}

extension PropsMLContextOptions on MLContextOptions {
  MLDeviceType get deviceType =>
      MLDeviceType.fromValue(js_util.getProperty(this, 'deviceType'));
  set deviceType(MLDeviceType newValue) {
    js_util.setProperty(this, 'deviceType', newValue.value);
  }

  MLPowerPreference get powerPreference =>
      MLPowerPreference.fromValue(js_util.getProperty(this, 'powerPreference'));
  set powerPreference(MLPowerPreference newValue) {
    js_util.setProperty(this, 'powerPreference', newValue.value);
  }
}

@JS('ML')
@staticInterop
class Ml {
  external factory Ml();
}

extension PropsMl on Ml {
  MLContext createContext([MLContextOptions? options]) =>
      js_util.callMethod(this, 'createContext', [options]);
}

@JS()
@staticInterop
class MLContext {
  external factory MLContext();
}

extension PropsMLContext on MLContext {
  void compute(MLGraph graph, dynamic inputs, dynamic outputs) =>
      js_util.callMethod(this, 'compute', [graph, inputs, outputs]);

  Future<void> computeAsync(MLGraph graph, dynamic inputs, dynamic outputs) =>
      js_util.promiseToFuture(
          js_util.callMethod(this, 'computeAsync', [graph, inputs, outputs]));

  MLCommandEncoder createCommandEncoder() =>
      js_util.callMethod(this, 'createCommandEncoder', []);
}

enum MLInputOperandLayout {
  nchw('nchw'),
  nhwc('nhwc');

  final String value;
  static MLInputOperandLayout fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MLInputOperandLayout> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MLInputOperandLayout(this.value);
}

enum MLOperandType {
  float32('float32'),
  float16('float16'),
  int32('int32'),
  uint32('uint32'),
  int8('int8'),
  uint8('uint8');

  final String value;
  static MLOperandType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MLOperandType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MLOperandType(this.value);
}

@anonymous
@JS()
@staticInterop
class MLOperandDescriptor {
  external factory MLOperandDescriptor._(
      {required String type, Iterable<int>? dimensions});

  factory MLOperandDescriptor(
          {required MLOperandType type, Iterable<int>? dimensions}) =>
      MLOperandDescriptor._(
          type: type.value, dimensions: dimensions ?? undefined);
}

extension PropsMLOperandDescriptor on MLOperandDescriptor {
  MLOperandType get type =>
      MLOperandType.fromValue(js_util.getProperty(this, 'type'));
  set type(MLOperandType newValue) {
    js_util.setProperty(this, 'type', newValue.value);
  }

  Iterable<int> get dimensions => js_util.getProperty(this, 'dimensions');
  set dimensions(Iterable<int> newValue) {
    js_util.setProperty(this, 'dimensions', newValue);
  }
}

@JS()
@staticInterop
class MLOperand {
  external factory MLOperand();
}

@JS()
@staticInterop
class MLOperator {
  external factory MLOperator();
}

@anonymous
@JS()
@staticInterop
class MLBufferResourceView {
  external factory MLBufferResourceView._(
      {required GPUBuffer resource, int? offset, int? size});

  factory MLBufferResourceView(
          {required GPUBuffer resource, int? offset, int? size}) =>
      MLBufferResourceView._(
          resource: resource, offset: offset ?? 0, size: size ?? undefined);
}

extension PropsMLBufferResourceView on MLBufferResourceView {
  GPUBuffer get resource => js_util.getProperty(this, 'resource');
  set resource(GPUBuffer newValue) {
    js_util.setProperty(this, 'resource', newValue);
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
class MLGraphBuilder {
  external factory MLGraphBuilder(MLContext context);
}

extension PropsMLGraphBuilder on MLGraphBuilder {
  MLOperand input(String name, MLOperandDescriptor desc) =>
      js_util.callMethod(this, 'input', [name, desc]);

  MLOperand constant(MLOperandDescriptor desc, dynamic bufferView) =>
      js_util.callMethod(this, 'constant', [desc, bufferView]);

  MLGraph build(dynamic outputs) =>
      js_util.callMethod(this, 'build', [outputs]);

  Future<MLGraph> buildAsync(dynamic outputs) => js_util
      .promiseToFuture(js_util.callMethod(this, 'buildAsync', [outputs]));

  MLOperand batchNormalization(
          MLOperand input, MLOperand mean, MLOperand variance,
          [MLBatchNormalizationOptions? options]) =>
      js_util.callMethod(
          this, 'batchNormalization', [input, mean, variance, options]);

  MLOperand clamp([MLOperand? x, MLClampOptions? options]) =>
      js_util.callMethod(this, 'clamp', [x, options]);

  MLOperand concat(Iterable<MLOperand> inputs, int axis) =>
      js_util.callMethod(this, 'concat', [inputs, axis]);

  MLOperand conv2d(MLOperand input, MLOperand filter,
          [MLConv2dOptions? options]) =>
      js_util.callMethod(this, 'conv2d', [input, filter, options]);

  MLOperand convTranspose2d(MLOperand input, MLOperand filter,
          [MLConvTranspose2dOptions? options]) =>
      js_util.callMethod(this, 'convTranspose2d', [input, filter, options]);

  MLOperand add(MLOperand a, MLOperand b) =>
      js_util.callMethod(this, 'add', [a, b]);

  MLOperand sub(MLOperand a, MLOperand b) =>
      js_util.callMethod(this, 'sub', [a, b]);

  MLOperand mul(MLOperand a, MLOperand b) =>
      js_util.callMethod(this, 'mul', [a, b]);

  MLOperand div(MLOperand a, MLOperand b) =>
      js_util.callMethod(this, 'div', [a, b]);

  MLOperand max(MLOperand a, MLOperand b) =>
      js_util.callMethod(this, 'max', [a, b]);

  MLOperand min(MLOperand a, MLOperand b) =>
      js_util.callMethod(this, 'min', [a, b]);

  MLOperand pow(MLOperand a, MLOperand b) =>
      js_util.callMethod(this, 'pow', [a, b]);

  MLOperand abs(MLOperand x) => js_util.callMethod(this, 'abs', [x]);

  MLOperand ceil(MLOperand x) => js_util.callMethod(this, 'ceil', [x]);

  MLOperand cos(MLOperand x) => js_util.callMethod(this, 'cos', [x]);

  MLOperand exp(MLOperand x) => js_util.callMethod(this, 'exp', [x]);

  MLOperand floor(MLOperand x) => js_util.callMethod(this, 'floor', [x]);

  MLOperand log(MLOperand x) => js_util.callMethod(this, 'log', [x]);

  MLOperand neg(MLOperand x) => js_util.callMethod(this, 'neg', [x]);

  MLOperand sin(MLOperand x) => js_util.callMethod(this, 'sin', [x]);

  MLOperand tan(MLOperand x) => js_util.callMethod(this, 'tan', [x]);

  MLOperand elu([MLOperand? x, MLEluOptions? options]) =>
      js_util.callMethod(this, 'elu', [x, options]);

  MLOperand gemm(MLOperand a, MLOperand b, [MLGemmOptions? options]) =>
      js_util.callMethod(this, 'gemm', [a, b, options]);

  Iterable<MLOperand> gru(MLOperand input, MLOperand weight,
          MLOperand recurrentWeight, int steps, int hiddenSize,
          [MLGruOptions? options]) =>
      js_util.callMethod(this, 'gru',
          [input, weight, recurrentWeight, steps, hiddenSize, options]);

  MLOperand gruCell(MLOperand input, MLOperand weight,
          MLOperand recurrentWeight, MLOperand hiddenState, int hiddenSize,
          [MLGruCellOptions? options]) =>
      js_util.callMethod(this, 'gruCell',
          [input, weight, recurrentWeight, hiddenState, hiddenSize, options]);

  MLOperand hardSigmoid([MLOperand? x, MLHardSigmoidOptions? options]) =>
      js_util.callMethod(this, 'hardSigmoid', [x, options]);

  MLOperand hardSwish([MLOperand? x]) =>
      js_util.callMethod(this, 'hardSwish', [x]);

  MLOperand instanceNormalization(MLOperand input,
          [MLInstanceNormalizationOptions? options]) =>
      js_util.callMethod(this, 'instanceNormalization', [input, options]);

  MLOperand leakyRelu([MLOperand? x, MLLeakyReluOptions? options]) =>
      js_util.callMethod(this, 'leakyRelu', [x, options]);

  MLOperand matmul(MLOperand a, MLOperand b) =>
      js_util.callMethod(this, 'matmul', [a, b]);

  MLOperand linear([MLOperand? x, MLLinearOptions? options]) =>
      js_util.callMethod(this, 'linear', [x, options]);

  MLOperand pad(MLOperand input, MLOperand padding, [MLPadOptions? options]) =>
      js_util.callMethod(this, 'pad', [input, padding, options]);

  MLOperand averagePool2d(MLOperand input, [MLPool2dOptions? options]) =>
      js_util.callMethod(this, 'averagePool2d', [input, options]);

  MLOperand l2Pool2d(MLOperand input, [MLPool2dOptions? options]) =>
      js_util.callMethod(this, 'l2Pool2d', [input, options]);

  MLOperand maxPool2d(MLOperand input, [MLPool2dOptions? options]) =>
      js_util.callMethod(this, 'maxPool2d', [input, options]);

  MLOperand reduceL1(MLOperand input, [MLReduceOptions? options]) =>
      js_util.callMethod(this, 'reduceL1', [input, options]);

  MLOperand reduceL2(MLOperand input, [MLReduceOptions? options]) =>
      js_util.callMethod(this, 'reduceL2', [input, options]);

  MLOperand reduceLogSum(MLOperand input, [MLReduceOptions? options]) =>
      js_util.callMethod(this, 'reduceLogSum', [input, options]);

  MLOperand reduceLogSumExp(MLOperand input, [MLReduceOptions? options]) =>
      js_util.callMethod(this, 'reduceLogSumExp', [input, options]);

  MLOperand reduceMax(MLOperand input, [MLReduceOptions? options]) =>
      js_util.callMethod(this, 'reduceMax', [input, options]);

  MLOperand reduceMean(MLOperand input, [MLReduceOptions? options]) =>
      js_util.callMethod(this, 'reduceMean', [input, options]);

  MLOperand reduceMin(MLOperand input, [MLReduceOptions? options]) =>
      js_util.callMethod(this, 'reduceMin', [input, options]);

  MLOperand reduceProduct(MLOperand input, [MLReduceOptions? options]) =>
      js_util.callMethod(this, 'reduceProduct', [input, options]);

  MLOperand reduceSum(MLOperand input, [MLReduceOptions? options]) =>
      js_util.callMethod(this, 'reduceSum', [input, options]);

  MLOperand reduceSumSquare(MLOperand input, [MLReduceOptions? options]) =>
      js_util.callMethod(this, 'reduceSumSquare', [input, options]);

  MLOperand relu([MLOperand? x]) => js_util.callMethod(this, 'relu', [x]);

  MLOperand resample2d(MLOperand input, [MLResample2dOptions? options]) =>
      js_util.callMethod(this, 'resample2d', [input, options]);

  MLOperand reshape(MLOperand input, Iterable<int> newShape) =>
      js_util.callMethod(this, 'reshape', [input, newShape]);

  MLOperand sigmoid([MLOperand? x]) => js_util.callMethod(this, 'sigmoid', [x]);

  MLOperand slice(MLOperand input, Iterable<int> starts, Iterable<int> sizes,
          [MLSliceOptions? options]) =>
      js_util.callMethod(this, 'slice', [input, starts, sizes, options]);

  MLOperand softmax(MLOperand x) => js_util.callMethod(this, 'softmax', [x]);

  MLOperand softplus([MLOperand? x, MLSoftplusOptions? options]) =>
      js_util.callMethod(this, 'softplus', [x, options]);

  MLOperand softsign([MLOperand? x]) =>
      js_util.callMethod(this, 'softsign', [x]);

  Iterable<MLOperand> split(MLOperand input, dynamic splits,
          [MLSplitOptions? options]) =>
      js_util.callMethod(this, 'split', [input, splits, options]);

  MLOperand squeeze(MLOperand input, [MLSqueezeOptions? options]) =>
      js_util.callMethod(this, 'squeeze', [input, options]);

  MLOperand tanh([MLOperand? x]) => js_util.callMethod(this, 'tanh', [x]);

  MLOperand transpose(MLOperand input, [MLTransposeOptions? options]) =>
      js_util.callMethod(this, 'transpose', [input, options]);
}

@anonymous
@JS()
@staticInterop
class MLBatchNormalizationOptions {
  external factory MLBatchNormalizationOptions._(
      {MLOperand? scale,
      MLOperand? bias,
      int? axis,
      double? epsilon,
      MLOperator? activation});

  factory MLBatchNormalizationOptions(
          {MLOperand? scale,
          MLOperand? bias,
          int? axis,
          double? epsilon,
          MLOperator? activation}) =>
      MLBatchNormalizationOptions._(
          scale: scale ?? undefined,
          bias: bias ?? undefined,
          axis: axis ?? 1,
          epsilon: epsilon ?? 1e-5,
          activation: activation ?? undefined);
}

extension PropsMLBatchNormalizationOptions on MLBatchNormalizationOptions {
  MLOperand get scale => js_util.getProperty(this, 'scale');
  set scale(MLOperand newValue) {
    js_util.setProperty(this, 'scale', newValue);
  }

  MLOperand get bias => js_util.getProperty(this, 'bias');
  set bias(MLOperand newValue) {
    js_util.setProperty(this, 'bias', newValue);
  }

  int get axis => js_util.getProperty(this, 'axis');
  set axis(int newValue) {
    js_util.setProperty(this, 'axis', newValue);
  }

  double get epsilon => js_util.getProperty(this, 'epsilon');
  set epsilon(double newValue) {
    js_util.setProperty(this, 'epsilon', newValue);
  }

  MLOperator get activation => js_util.getProperty(this, 'activation');
  set activation(MLOperator newValue) {
    js_util.setProperty(this, 'activation', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MLClampOptions {
  external factory MLClampOptions({double? minValue, double? maxValue});
}

extension PropsMLClampOptions on MLClampOptions {
  double get minValue => js_util.getProperty(this, 'minValue');
  set minValue(double newValue) {
    js_util.setProperty(this, 'minValue', newValue);
  }

  double get maxValue => js_util.getProperty(this, 'maxValue');
  set maxValue(double newValue) {
    js_util.setProperty(this, 'maxValue', newValue);
  }
}

enum MLConv2dFilterOperandLayout {
  oihw('oihw'),
  hwio('hwio'),
  ohwi('ohwi'),
  ihwo('ihwo');

  final String value;
  static MLConv2dFilterOperandLayout fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MLConv2dFilterOperandLayout> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const MLConv2dFilterOperandLayout(this.value);
}

enum MLAutoPad {
  explicit('explicit'),
  sameUpper('same-upper'),
  sameLower('same-lower');

  final String value;
  static MLAutoPad fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MLAutoPad> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MLAutoPad(this.value);
}

@anonymous
@JS()
@staticInterop
class MLConv2dOptions {
  external factory MLConv2dOptions._(
      {Iterable<int>? padding,
      Iterable<int>? strides,
      Iterable<int>? dilations,
      String? autoPad,
      int? groups,
      String? inputLayout,
      String? filterLayout,
      MLOperand? bias,
      MLOperator? activation});

  factory MLConv2dOptions(
          {Iterable<int>? padding,
          Iterable<int>? strides,
          Iterable<int>? dilations,
          MLAutoPad? autoPad,
          int? groups,
          MLInputOperandLayout? inputLayout,
          MLConv2dFilterOperandLayout? filterLayout,
          MLOperand? bias,
          MLOperator? activation}) =>
      MLConv2dOptions._(
          padding: padding ?? undefined,
          strides: strides ?? undefined,
          dilations: dilations ?? undefined,
          autoPad: autoPad?.value ?? MLAutoPad.explicit.value,
          groups: groups ?? 1,
          inputLayout: inputLayout?.value ?? MLInputOperandLayout.nchw.value,
          filterLayout:
              filterLayout?.value ?? MLConv2dFilterOperandLayout.oihw.value,
          bias: bias ?? undefined,
          activation: activation ?? undefined);
}

extension PropsMLConv2dOptions on MLConv2dOptions {
  Iterable<int> get padding => js_util.getProperty(this, 'padding');
  set padding(Iterable<int> newValue) {
    js_util.setProperty(this, 'padding', newValue);
  }

  Iterable<int> get strides => js_util.getProperty(this, 'strides');
  set strides(Iterable<int> newValue) {
    js_util.setProperty(this, 'strides', newValue);
  }

  Iterable<int> get dilations => js_util.getProperty(this, 'dilations');
  set dilations(Iterable<int> newValue) {
    js_util.setProperty(this, 'dilations', newValue);
  }

  MLAutoPad get autoPad =>
      MLAutoPad.fromValue(js_util.getProperty(this, 'autoPad'));
  set autoPad(MLAutoPad newValue) {
    js_util.setProperty(this, 'autoPad', newValue.value);
  }

  int get groups => js_util.getProperty(this, 'groups');
  set groups(int newValue) {
    js_util.setProperty(this, 'groups', newValue);
  }

  MLInputOperandLayout get inputLayout =>
      MLInputOperandLayout.fromValue(js_util.getProperty(this, 'inputLayout'));
  set inputLayout(MLInputOperandLayout newValue) {
    js_util.setProperty(this, 'inputLayout', newValue.value);
  }

  MLConv2dFilterOperandLayout get filterLayout =>
      MLConv2dFilterOperandLayout.fromValue(
          js_util.getProperty(this, 'filterLayout'));
  set filterLayout(MLConv2dFilterOperandLayout newValue) {
    js_util.setProperty(this, 'filterLayout', newValue.value);
  }

  MLOperand get bias => js_util.getProperty(this, 'bias');
  set bias(MLOperand newValue) {
    js_util.setProperty(this, 'bias', newValue);
  }

  MLOperator get activation => js_util.getProperty(this, 'activation');
  set activation(MLOperator newValue) {
    js_util.setProperty(this, 'activation', newValue);
  }
}

enum MLConvTranspose2dFilterOperandLayout {
  iohw('iohw'),
  hwoi('hwoi'),
  ohwi('ohwi');

  final String value;
  static MLConvTranspose2dFilterOperandLayout fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MLConvTranspose2dFilterOperandLayout> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const MLConvTranspose2dFilterOperandLayout(this.value);
}

@anonymous
@JS()
@staticInterop
class MLConvTranspose2dOptions {
  external factory MLConvTranspose2dOptions._(
      {Iterable<int>? padding,
      Iterable<int>? strides,
      Iterable<int>? dilations,
      Iterable<int>? outputPadding,
      Iterable<int>? outputSizes,
      String? autoPad,
      int? groups,
      String? inputLayout,
      String? filterLayout,
      MLOperand? bias,
      MLOperator? activation});

  factory MLConvTranspose2dOptions(
          {Iterable<int>? padding,
          Iterable<int>? strides,
          Iterable<int>? dilations,
          Iterable<int>? outputPadding,
          Iterable<int>? outputSizes,
          MLAutoPad? autoPad,
          int? groups,
          MLInputOperandLayout? inputLayout,
          MLConvTranspose2dFilterOperandLayout? filterLayout,
          MLOperand? bias,
          MLOperator? activation}) =>
      MLConvTranspose2dOptions._(
          padding: padding ?? undefined,
          strides: strides ?? undefined,
          dilations: dilations ?? undefined,
          outputPadding: outputPadding ?? undefined,
          outputSizes: outputSizes ?? undefined,
          autoPad: autoPad?.value ?? MLAutoPad.explicit.value,
          groups: groups ?? 1,
          inputLayout: inputLayout?.value ?? MLInputOperandLayout.nchw.value,
          filterLayout: filterLayout?.value ??
              MLConvTranspose2dFilterOperandLayout.iohw.value,
          bias: bias ?? undefined,
          activation: activation ?? undefined);
}

extension PropsMLConvTranspose2dOptions on MLConvTranspose2dOptions {
  Iterable<int> get padding => js_util.getProperty(this, 'padding');
  set padding(Iterable<int> newValue) {
    js_util.setProperty(this, 'padding', newValue);
  }

  Iterable<int> get strides => js_util.getProperty(this, 'strides');
  set strides(Iterable<int> newValue) {
    js_util.setProperty(this, 'strides', newValue);
  }

  Iterable<int> get dilations => js_util.getProperty(this, 'dilations');
  set dilations(Iterable<int> newValue) {
    js_util.setProperty(this, 'dilations', newValue);
  }

  Iterable<int> get outputPadding => js_util.getProperty(this, 'outputPadding');
  set outputPadding(Iterable<int> newValue) {
    js_util.setProperty(this, 'outputPadding', newValue);
  }

  Iterable<int> get outputSizes => js_util.getProperty(this, 'outputSizes');
  set outputSizes(Iterable<int> newValue) {
    js_util.setProperty(this, 'outputSizes', newValue);
  }

  MLAutoPad get autoPad =>
      MLAutoPad.fromValue(js_util.getProperty(this, 'autoPad'));
  set autoPad(MLAutoPad newValue) {
    js_util.setProperty(this, 'autoPad', newValue.value);
  }

  int get groups => js_util.getProperty(this, 'groups');
  set groups(int newValue) {
    js_util.setProperty(this, 'groups', newValue);
  }

  MLInputOperandLayout get inputLayout =>
      MLInputOperandLayout.fromValue(js_util.getProperty(this, 'inputLayout'));
  set inputLayout(MLInputOperandLayout newValue) {
    js_util.setProperty(this, 'inputLayout', newValue.value);
  }

  MLConvTranspose2dFilterOperandLayout get filterLayout =>
      MLConvTranspose2dFilterOperandLayout.fromValue(
          js_util.getProperty(this, 'filterLayout'));
  set filterLayout(MLConvTranspose2dFilterOperandLayout newValue) {
    js_util.setProperty(this, 'filterLayout', newValue.value);
  }

  MLOperand get bias => js_util.getProperty(this, 'bias');
  set bias(MLOperand newValue) {
    js_util.setProperty(this, 'bias', newValue);
  }

  MLOperator get activation => js_util.getProperty(this, 'activation');
  set activation(MLOperator newValue) {
    js_util.setProperty(this, 'activation', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MLEluOptions {
  external factory MLEluOptions._({double? alpha});

  factory MLEluOptions({double? alpha}) => MLEluOptions._(alpha: alpha ?? 1);
}

extension PropsMLEluOptions on MLEluOptions {
  double get alpha => js_util.getProperty(this, 'alpha');
  set alpha(double newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MLGemmOptions {
  external factory MLGemmOptions._(
      {MLOperand? c,
      double? alpha,
      double? beta,
      bool? aTranspose,
      bool? bTranspose});

  factory MLGemmOptions(
          {MLOperand? c,
          double? alpha,
          double? beta,
          bool? aTranspose,
          bool? bTranspose}) =>
      MLGemmOptions._(
          c: c ?? undefined,
          alpha: alpha ?? 1.0,
          beta: beta ?? 1.0,
          aTranspose: aTranspose ?? false,
          bTranspose: bTranspose ?? false);
}

extension PropsMLGemmOptions on MLGemmOptions {
  MLOperand get c => js_util.getProperty(this, 'c');
  set c(MLOperand newValue) {
    js_util.setProperty(this, 'c', newValue);
  }

  double get alpha => js_util.getProperty(this, 'alpha');
  set alpha(double newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }

  double get beta => js_util.getProperty(this, 'beta');
  set beta(double newValue) {
    js_util.setProperty(this, 'beta', newValue);
  }

  bool get aTranspose => js_util.getProperty(this, 'aTranspose');
  set aTranspose(bool newValue) {
    js_util.setProperty(this, 'aTranspose', newValue);
  }

  bool get bTranspose => js_util.getProperty(this, 'bTranspose');
  set bTranspose(bool newValue) {
    js_util.setProperty(this, 'bTranspose', newValue);
  }
}

enum MLRecurrentNetworkWeightLayout {
  zrn('zrn'),
  rzn('rzn');

  final String value;
  static MLRecurrentNetworkWeightLayout fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MLRecurrentNetworkWeightLayout> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const MLRecurrentNetworkWeightLayout(this.value);
}

enum MLRecurrentNetworkDirection {
  forward('forward'),
  backward('backward'),
  both('both');

  final String value;
  static MLRecurrentNetworkDirection fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MLRecurrentNetworkDirection> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const MLRecurrentNetworkDirection(this.value);
}

@anonymous
@JS()
@staticInterop
class MLGruOptions {
  external factory MLGruOptions._(
      {MLOperand? bias,
      MLOperand? recurrentBias,
      MLOperand? initialHiddenState,
      bool? resetAfter,
      bool? returnSequence,
      String? direction,
      String? layout,
      Iterable<MLOperator>? activations});

  factory MLGruOptions(
          {MLOperand? bias,
          MLOperand? recurrentBias,
          MLOperand? initialHiddenState,
          bool? resetAfter,
          bool? returnSequence,
          MLRecurrentNetworkDirection? direction,
          MLRecurrentNetworkWeightLayout? layout,
          Iterable<MLOperator>? activations}) =>
      MLGruOptions._(
          bias: bias ?? undefined,
          recurrentBias: recurrentBias ?? undefined,
          initialHiddenState: initialHiddenState ?? undefined,
          resetAfter: resetAfter ?? true,
          returnSequence: returnSequence ?? false,
          direction:
              direction?.value ?? MLRecurrentNetworkDirection.forward.value,
          layout: layout?.value ?? MLRecurrentNetworkWeightLayout.zrn.value,
          activations: activations ?? undefined);
}

extension PropsMLGruOptions on MLGruOptions {
  MLOperand get bias => js_util.getProperty(this, 'bias');
  set bias(MLOperand newValue) {
    js_util.setProperty(this, 'bias', newValue);
  }

  MLOperand get recurrentBias => js_util.getProperty(this, 'recurrentBias');
  set recurrentBias(MLOperand newValue) {
    js_util.setProperty(this, 'recurrentBias', newValue);
  }

  MLOperand get initialHiddenState =>
      js_util.getProperty(this, 'initialHiddenState');
  set initialHiddenState(MLOperand newValue) {
    js_util.setProperty(this, 'initialHiddenState', newValue);
  }

  bool get resetAfter => js_util.getProperty(this, 'resetAfter');
  set resetAfter(bool newValue) {
    js_util.setProperty(this, 'resetAfter', newValue);
  }

  bool get returnSequence => js_util.getProperty(this, 'returnSequence');
  set returnSequence(bool newValue) {
    js_util.setProperty(this, 'returnSequence', newValue);
  }

  MLRecurrentNetworkDirection get direction =>
      MLRecurrentNetworkDirection.fromValue(
          js_util.getProperty(this, 'direction'));
  set direction(MLRecurrentNetworkDirection newValue) {
    js_util.setProperty(this, 'direction', newValue.value);
  }

  MLRecurrentNetworkWeightLayout get layout =>
      MLRecurrentNetworkWeightLayout.fromValue(
          js_util.getProperty(this, 'layout'));
  set layout(MLRecurrentNetworkWeightLayout newValue) {
    js_util.setProperty(this, 'layout', newValue.value);
  }

  Iterable<MLOperator> get activations =>
      js_util.getProperty(this, 'activations');
  set activations(Iterable<MLOperator> newValue) {
    js_util.setProperty(this, 'activations', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MLGruCellOptions {
  external factory MLGruCellOptions._(
      {MLOperand? bias,
      MLOperand? recurrentBias,
      bool? resetAfter,
      String? layout,
      Iterable<MLOperator>? activations});

  factory MLGruCellOptions(
          {MLOperand? bias,
          MLOperand? recurrentBias,
          bool? resetAfter,
          MLRecurrentNetworkWeightLayout? layout,
          Iterable<MLOperator>? activations}) =>
      MLGruCellOptions._(
          bias: bias ?? undefined,
          recurrentBias: recurrentBias ?? undefined,
          resetAfter: resetAfter ?? true,
          layout: layout?.value ?? MLRecurrentNetworkWeightLayout.zrn.value,
          activations: activations ?? undefined);
}

extension PropsMLGruCellOptions on MLGruCellOptions {
  MLOperand get bias => js_util.getProperty(this, 'bias');
  set bias(MLOperand newValue) {
    js_util.setProperty(this, 'bias', newValue);
  }

  MLOperand get recurrentBias => js_util.getProperty(this, 'recurrentBias');
  set recurrentBias(MLOperand newValue) {
    js_util.setProperty(this, 'recurrentBias', newValue);
  }

  bool get resetAfter => js_util.getProperty(this, 'resetAfter');
  set resetAfter(bool newValue) {
    js_util.setProperty(this, 'resetAfter', newValue);
  }

  MLRecurrentNetworkWeightLayout get layout =>
      MLRecurrentNetworkWeightLayout.fromValue(
          js_util.getProperty(this, 'layout'));
  set layout(MLRecurrentNetworkWeightLayout newValue) {
    js_util.setProperty(this, 'layout', newValue.value);
  }

  Iterable<MLOperator> get activations =>
      js_util.getProperty(this, 'activations');
  set activations(Iterable<MLOperator> newValue) {
    js_util.setProperty(this, 'activations', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MLHardSigmoidOptions {
  external factory MLHardSigmoidOptions._({double? alpha, double? beta});

  factory MLHardSigmoidOptions({double? alpha, double? beta}) =>
      MLHardSigmoidOptions._(alpha: alpha ?? 0.2, beta: beta ?? 0.5);
}

extension PropsMLHardSigmoidOptions on MLHardSigmoidOptions {
  double get alpha => js_util.getProperty(this, 'alpha');
  set alpha(double newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }

  double get beta => js_util.getProperty(this, 'beta');
  set beta(double newValue) {
    js_util.setProperty(this, 'beta', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MLInstanceNormalizationOptions {
  external factory MLInstanceNormalizationOptions._(
      {MLOperand? scale, MLOperand? bias, double? epsilon, String? layout});

  factory MLInstanceNormalizationOptions(
          {MLOperand? scale,
          MLOperand? bias,
          double? epsilon,
          MLInputOperandLayout? layout}) =>
      MLInstanceNormalizationOptions._(
          scale: scale ?? undefined,
          bias: bias ?? undefined,
          epsilon: epsilon ?? 1e-5,
          layout: layout?.value ?? MLInputOperandLayout.nchw.value);
}

extension PropsMLInstanceNormalizationOptions
    on MLInstanceNormalizationOptions {
  MLOperand get scale => js_util.getProperty(this, 'scale');
  set scale(MLOperand newValue) {
    js_util.setProperty(this, 'scale', newValue);
  }

  MLOperand get bias => js_util.getProperty(this, 'bias');
  set bias(MLOperand newValue) {
    js_util.setProperty(this, 'bias', newValue);
  }

  double get epsilon => js_util.getProperty(this, 'epsilon');
  set epsilon(double newValue) {
    js_util.setProperty(this, 'epsilon', newValue);
  }

  MLInputOperandLayout get layout =>
      MLInputOperandLayout.fromValue(js_util.getProperty(this, 'layout'));
  set layout(MLInputOperandLayout newValue) {
    js_util.setProperty(this, 'layout', newValue.value);
  }
}

@anonymous
@JS()
@staticInterop
class MLLeakyReluOptions {
  external factory MLLeakyReluOptions._({double? alpha});

  factory MLLeakyReluOptions({double? alpha}) =>
      MLLeakyReluOptions._(alpha: alpha ?? 0.01);
}

extension PropsMLLeakyReluOptions on MLLeakyReluOptions {
  double get alpha => js_util.getProperty(this, 'alpha');
  set alpha(double newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MLLinearOptions {
  external factory MLLinearOptions._({double? alpha, double? beta});

  factory MLLinearOptions({double? alpha, double? beta}) =>
      MLLinearOptions._(alpha: alpha ?? 1, beta: beta ?? 0);
}

extension PropsMLLinearOptions on MLLinearOptions {
  double get alpha => js_util.getProperty(this, 'alpha');
  set alpha(double newValue) {
    js_util.setProperty(this, 'alpha', newValue);
  }

  double get beta => js_util.getProperty(this, 'beta');
  set beta(double newValue) {
    js_util.setProperty(this, 'beta', newValue);
  }
}

enum MLPaddingMode {
  constant('constant'),
  edge('edge'),
  reflection('reflection'),
  symmetric('symmetric');

  final String value;
  static MLPaddingMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MLPaddingMode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MLPaddingMode(this.value);
}

@anonymous
@JS()
@staticInterop
class MLPadOptions {
  external factory MLPadOptions._({String? mode, double? value});

  factory MLPadOptions({MLPaddingMode? mode, double? value}) => MLPadOptions._(
      mode: mode?.value ?? MLPaddingMode.constant.value, value: value ?? 0);
}

extension PropsMLPadOptions on MLPadOptions {
  MLPaddingMode get mode =>
      MLPaddingMode.fromValue(js_util.getProperty(this, 'mode'));
  set mode(MLPaddingMode newValue) {
    js_util.setProperty(this, 'mode', newValue.value);
  }

  double get value => js_util.getProperty(this, 'value');
  set value(double newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}

enum MLRoundingType {
  floor('floor'),
  ceil('ceil');

  final String value;
  static MLRoundingType fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MLRoundingType> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MLRoundingType(this.value);
}

@anonymous
@JS()
@staticInterop
class MLPool2dOptions {
  external factory MLPool2dOptions._(
      {Iterable<int>? windowDimensions,
      Iterable<int>? padding,
      Iterable<int>? strides,
      Iterable<int>? dilations,
      String? autoPad,
      String? layout,
      String? roundingType,
      Iterable<int>? outputSizes});

  factory MLPool2dOptions(
          {Iterable<int>? windowDimensions,
          Iterable<int>? padding,
          Iterable<int>? strides,
          Iterable<int>? dilations,
          MLAutoPad? autoPad,
          MLInputOperandLayout? layout,
          MLRoundingType? roundingType,
          Iterable<int>? outputSizes}) =>
      MLPool2dOptions._(
          windowDimensions: windowDimensions ?? undefined,
          padding: padding ?? undefined,
          strides: strides ?? undefined,
          dilations: dilations ?? undefined,
          autoPad: autoPad?.value ?? MLAutoPad.explicit.value,
          layout: layout?.value ?? MLInputOperandLayout.nchw.value,
          roundingType: roundingType?.value ?? MLRoundingType.floor.value,
          outputSizes: outputSizes ?? undefined);
}

extension PropsMLPool2dOptions on MLPool2dOptions {
  Iterable<int> get windowDimensions =>
      js_util.getProperty(this, 'windowDimensions');
  set windowDimensions(Iterable<int> newValue) {
    js_util.setProperty(this, 'windowDimensions', newValue);
  }

  Iterable<int> get padding => js_util.getProperty(this, 'padding');
  set padding(Iterable<int> newValue) {
    js_util.setProperty(this, 'padding', newValue);
  }

  Iterable<int> get strides => js_util.getProperty(this, 'strides');
  set strides(Iterable<int> newValue) {
    js_util.setProperty(this, 'strides', newValue);
  }

  Iterable<int> get dilations => js_util.getProperty(this, 'dilations');
  set dilations(Iterable<int> newValue) {
    js_util.setProperty(this, 'dilations', newValue);
  }

  MLAutoPad get autoPad =>
      MLAutoPad.fromValue(js_util.getProperty(this, 'autoPad'));
  set autoPad(MLAutoPad newValue) {
    js_util.setProperty(this, 'autoPad', newValue.value);
  }

  MLInputOperandLayout get layout =>
      MLInputOperandLayout.fromValue(js_util.getProperty(this, 'layout'));
  set layout(MLInputOperandLayout newValue) {
    js_util.setProperty(this, 'layout', newValue.value);
  }

  MLRoundingType get roundingType =>
      MLRoundingType.fromValue(js_util.getProperty(this, 'roundingType'));
  set roundingType(MLRoundingType newValue) {
    js_util.setProperty(this, 'roundingType', newValue.value);
  }

  Iterable<int> get outputSizes => js_util.getProperty(this, 'outputSizes');
  set outputSizes(Iterable<int> newValue) {
    js_util.setProperty(this, 'outputSizes', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MLReduceOptions {
  external factory MLReduceOptions._(
      {Iterable<int>? axes, bool? keepDimensions});

  factory MLReduceOptions({Iterable<int>? axes, bool? keepDimensions}) =>
      MLReduceOptions._(
          axes: axes ?? undefined, keepDimensions: keepDimensions ?? false);
}

extension PropsMLReduceOptions on MLReduceOptions {
  Iterable<int> get axes => js_util.getProperty(this, 'axes');
  set axes(Iterable<int> newValue) {
    js_util.setProperty(this, 'axes', newValue);
  }

  bool get keepDimensions => js_util.getProperty(this, 'keepDimensions');
  set keepDimensions(bool newValue) {
    js_util.setProperty(this, 'keepDimensions', newValue);
  }
}

enum MLInterpolationMode {
  nearestNeighbor('nearest-neighbor'),
  linear('linear');

  final String value;
  static MLInterpolationMode fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<MLInterpolationMode> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const MLInterpolationMode(this.value);
}

@anonymous
@JS()
@staticInterop
class MLResample2dOptions {
  external factory MLResample2dOptions._(
      {String? mode,
      Iterable<double>? scales,
      Iterable<int>? sizes,
      Iterable<int>? axes});

  factory MLResample2dOptions(
          {MLInterpolationMode? mode,
          Iterable<double>? scales,
          Iterable<int>? sizes,
          Iterable<int>? axes}) =>
      MLResample2dOptions._(
          mode: mode?.value ?? MLInterpolationMode.nearestNeighbor.value,
          scales: scales ?? undefined,
          sizes: sizes ?? undefined,
          axes: axes ?? undefined);
}

extension PropsMLResample2dOptions on MLResample2dOptions {
  MLInterpolationMode get mode =>
      MLInterpolationMode.fromValue(js_util.getProperty(this, 'mode'));
  set mode(MLInterpolationMode newValue) {
    js_util.setProperty(this, 'mode', newValue.value);
  }

  Iterable<double> get scales => js_util.getProperty(this, 'scales');
  set scales(Iterable<double> newValue) {
    js_util.setProperty(this, 'scales', newValue);
  }

  Iterable<int> get sizes => js_util.getProperty(this, 'sizes');
  set sizes(Iterable<int> newValue) {
    js_util.setProperty(this, 'sizes', newValue);
  }

  Iterable<int> get axes => js_util.getProperty(this, 'axes');
  set axes(Iterable<int> newValue) {
    js_util.setProperty(this, 'axes', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MLSliceOptions {
  external factory MLSliceOptions({Iterable<int>? axes});
}

extension PropsMLSliceOptions on MLSliceOptions {
  Iterable<int> get axes => js_util.getProperty(this, 'axes');
  set axes(Iterable<int> newValue) {
    js_util.setProperty(this, 'axes', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MLSoftplusOptions {
  external factory MLSoftplusOptions._({double? steepness});

  factory MLSoftplusOptions({double? steepness}) =>
      MLSoftplusOptions._(steepness: steepness ?? 1);
}

extension PropsMLSoftplusOptions on MLSoftplusOptions {
  double get steepness => js_util.getProperty(this, 'steepness');
  set steepness(double newValue) {
    js_util.setProperty(this, 'steepness', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MLSplitOptions {
  external factory MLSplitOptions._({int? axis});

  factory MLSplitOptions({int? axis}) => MLSplitOptions._(axis: axis ?? 0);
}

extension PropsMLSplitOptions on MLSplitOptions {
  int get axis => js_util.getProperty(this, 'axis');
  set axis(int newValue) {
    js_util.setProperty(this, 'axis', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MLSqueezeOptions {
  external factory MLSqueezeOptions({Iterable<int>? axes});
}

extension PropsMLSqueezeOptions on MLSqueezeOptions {
  Iterable<int> get axes => js_util.getProperty(this, 'axes');
  set axes(Iterable<int> newValue) {
    js_util.setProperty(this, 'axes', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MLTransposeOptions {
  external factory MLTransposeOptions({Iterable<int>? permutation});
}

extension PropsMLTransposeOptions on MLTransposeOptions {
  Iterable<int> get permutation => js_util.getProperty(this, 'permutation');
  set permutation(Iterable<int> newValue) {
    js_util.setProperty(this, 'permutation', newValue);
  }
}

@JS()
@staticInterop
class MLGraph {
  external factory MLGraph();
}

@JS()
@staticInterop
class MLCommandEncoder {
  external factory MLCommandEncoder();
}

extension PropsMLCommandEncoder on MLCommandEncoder {
  void initializeGraph(MLGraph graph) =>
      js_util.callMethod(this, 'initializeGraph', [graph]);

  void dispatch(MLGraph graph, dynamic inputs, dynamic outputs) =>
      js_util.callMethod(this, 'dispatch', [graph, inputs, outputs]);

  GPUCommandBuffer finish([GPUCommandBufferDescriptor? descriptor]) =>
      js_util.callMethod(this, 'finish', [descriptor]);
}
