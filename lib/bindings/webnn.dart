/// Web Neural Network API
///
/// https://webmachinelearning.github.io/webnn/

// ignore_for_file: unused_import

@JS('window')
@staticInterop
library webnn;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';

import 'package:js_bindings/js_bindings.dart';

@JS()
@staticInterop
class NavigatorML {
  external NavigatorML();
}

extension PropsNavigatorML on NavigatorML {
  Ml get ml => js_util.getProperty(this, 'ml');
}

enum MLDevicePreference { valueDefault, gpu, cpu }

enum MLPowerPreference { valueDefault, highPerformance, lowPower }

@anonymous
@JS()
@staticInterop
class MLContextOptions {
  external factory MLContextOptions._(
      {String? devicePreference, String? powerPreference});

  factory MLContextOptions(
          {MLDevicePreference? devicePreference =
              MLDevicePreference.valueDefault,
          MLPowerPreference? powerPreference =
              MLPowerPreference.valueDefault}) =>
      MLContextOptions._(
          devicePreference: devicePreference?.name,
          powerPreference: powerPreference?.name);
}

extension PropsMLContextOptions on MLContextOptions {
  MLDevicePreference get devicePreference => MLDevicePreference.values
      .byName(js_util.getProperty(this, 'devicePreference'));
  set devicePreference(MLDevicePreference newValue) {
    js_util.setProperty(this, 'devicePreference', newValue.name);
  }

  MLPowerPreference get powerPreference => MLPowerPreference.values
      .byName(js_util.getProperty(this, 'powerPreference'));
  set powerPreference(MLPowerPreference newValue) {
    js_util.setProperty(this, 'powerPreference', newValue.name);
  }
}

@JS('ML')
@staticInterop
class Ml {
  external Ml();
}

extension PropsMl on Ml {
  MLContext createContext([MLContextOptions? options]) =>
      js_util.callMethod(this, 'createContext', [options]);
}

@JS()
@staticInterop
class MLContext {
  external MLContext();
}

enum MLInputOperandLayout { nchw, nhwc }

enum MLOperandType { float32, float16, int32, uint32, int8, uint8 }

@anonymous
@JS()
@staticInterop
class MLOperandDescriptor {
  external factory MLOperandDescriptor._(
      {required String type, required Iterable<int> dimensions});

  factory MLOperandDescriptor(
          {required MLOperandType type, required Iterable<int> dimensions}) =>
      MLOperandDescriptor._(type: type.name, dimensions: dimensions);
}

extension PropsMLOperandDescriptor on MLOperandDescriptor {
  MLOperandType get type =>
      MLOperandType.values.byName(js_util.getProperty(this, 'type'));
  set type(MLOperandType newValue) {
    js_util.setProperty(this, 'type', newValue.name);
  }

  Iterable<int> get dimensions => js_util.getProperty(this, 'dimensions');
  set dimensions(Iterable<int> newValue) {
    js_util.setProperty(this, 'dimensions', newValue);
  }
}

@JS()
@staticInterop
class MLOperand {
  external MLOperand();
}

@JS()
@staticInterop
class MLOperator {
  external MLOperator();
}

@anonymous
@JS()
@staticInterop
class MLBufferResourceView {
  external factory MLBufferResourceView(
      {dynamic resource, int? offset = 0, int? size});
}

extension PropsMLBufferResourceView on MLBufferResourceView {
  dynamic get resource => js_util.getProperty(this, 'resource');
  set resource(dynamic newValue) {
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
  external MLGraphBuilder(MLContext context);
}

extension PropsMLGraphBuilder on MLGraphBuilder {
  MLOperand input(String name, MLOperandDescriptor desc) =>
      js_util.callMethod(this, 'input', [name, desc]);

  MLOperand constant(MLOperandDescriptor desc, dynamic bufferView) =>
      js_util.callMethod(this, 'constant', [desc, bufferView]);

  MLGraph build(dynamic outputs) =>
      js_util.callMethod(this, 'build', [outputs]);

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
  external factory MLBatchNormalizationOptions(
      {required MLOperand scale,
      required MLOperand bias,
      int? axis = 1,
      double? epsilon = 1e-5,
      MLOperator? activation});
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
  external factory MLClampOptions(
      {required double minValue, required double maxValue});
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

enum MLConv2dFilterOperandLayout { oihw, hwio, ohwi, ihwo }

enum MLAutoPad { explicit, sameUpper, sameLower }

@anonymous
@JS()
@staticInterop
class MLConv2dOptions {
  external factory MLConv2dOptions._(
      {required Iterable<int> padding,
      required Iterable<int> strides,
      required Iterable<int> dilations,
      String? autoPad,
      int? groups = 1,
      String? inputLayout,
      String? filterLayout,
      MLOperand? bias,
      MLOperator? activation});

  factory MLConv2dOptions(
          {required Iterable<int> padding,
          required Iterable<int> strides,
          required Iterable<int> dilations,
          MLAutoPad? autoPad = MLAutoPad.explicit,
          int? groups = 1,
          MLInputOperandLayout? inputLayout = MLInputOperandLayout.nchw,
          MLConv2dFilterOperandLayout? filterLayout =
              MLConv2dFilterOperandLayout.oihw,
          MLOperand? bias,
          MLOperator? activation}) =>
      MLConv2dOptions._(
          padding: padding,
          strides: strides,
          dilations: dilations,
          autoPad: autoPad?.name,
          groups: groups,
          inputLayout: inputLayout?.name,
          filterLayout: filterLayout?.name,
          bias: bias,
          activation: activation);
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
      MLAutoPad.values.byName(js_util.getProperty(this, 'autoPad'));
  set autoPad(MLAutoPad newValue) {
    js_util.setProperty(this, 'autoPad', newValue.name);
  }

  int get groups => js_util.getProperty(this, 'groups');
  set groups(int newValue) {
    js_util.setProperty(this, 'groups', newValue);
  }

  MLInputOperandLayout get inputLayout => MLInputOperandLayout.values
      .byName(js_util.getProperty(this, 'inputLayout'));
  set inputLayout(MLInputOperandLayout newValue) {
    js_util.setProperty(this, 'inputLayout', newValue.name);
  }

  MLConv2dFilterOperandLayout get filterLayout =>
      MLConv2dFilterOperandLayout.values
          .byName(js_util.getProperty(this, 'filterLayout'));
  set filterLayout(MLConv2dFilterOperandLayout newValue) {
    js_util.setProperty(this, 'filterLayout', newValue.name);
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

enum MLConvTranspose2dFilterOperandLayout { iohw, hwoi, ohwi }

@anonymous
@JS()
@staticInterop
class MLConvTranspose2dOptions {
  external factory MLConvTranspose2dOptions._(
      {required Iterable<int> padding,
      required Iterable<int> strides,
      required Iterable<int> dilations,
      required Iterable<int> outputPadding,
      required Iterable<int> outputSizes,
      String? autoPad,
      int? groups = 1,
      String? inputLayout,
      String? filterLayout,
      MLOperand? bias,
      MLOperator? activation});

  factory MLConvTranspose2dOptions(
          {required Iterable<int> padding,
          required Iterable<int> strides,
          required Iterable<int> dilations,
          required Iterable<int> outputPadding,
          required Iterable<int> outputSizes,
          MLAutoPad? autoPad = MLAutoPad.explicit,
          int? groups = 1,
          MLInputOperandLayout? inputLayout = MLInputOperandLayout.nchw,
          MLConvTranspose2dFilterOperandLayout? filterLayout =
              MLConvTranspose2dFilterOperandLayout.iohw,
          MLOperand? bias,
          MLOperator? activation}) =>
      MLConvTranspose2dOptions._(
          padding: padding,
          strides: strides,
          dilations: dilations,
          outputPadding: outputPadding,
          outputSizes: outputSizes,
          autoPad: autoPad?.name,
          groups: groups,
          inputLayout: inputLayout?.name,
          filterLayout: filterLayout?.name,
          bias: bias,
          activation: activation);
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
      MLAutoPad.values.byName(js_util.getProperty(this, 'autoPad'));
  set autoPad(MLAutoPad newValue) {
    js_util.setProperty(this, 'autoPad', newValue.name);
  }

  int get groups => js_util.getProperty(this, 'groups');
  set groups(int newValue) {
    js_util.setProperty(this, 'groups', newValue);
  }

  MLInputOperandLayout get inputLayout => MLInputOperandLayout.values
      .byName(js_util.getProperty(this, 'inputLayout'));
  set inputLayout(MLInputOperandLayout newValue) {
    js_util.setProperty(this, 'inputLayout', newValue.name);
  }

  MLConvTranspose2dFilterOperandLayout get filterLayout =>
      MLConvTranspose2dFilterOperandLayout.values
          .byName(js_util.getProperty(this, 'filterLayout'));
  set filterLayout(MLConvTranspose2dFilterOperandLayout newValue) {
    js_util.setProperty(this, 'filterLayout', newValue.name);
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
  external factory MLEluOptions({double? alpha = 1});
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
  external factory MLGemmOptions(
      {required MLOperand c,
      double? alpha = 1.0,
      double? beta = 1.0,
      bool? aTranspose = false,
      bool? bTranspose = false});
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

enum MLRecurrentNetworkWeightLayout { zrn, rzn }

enum MLRecurrentNetworkDirection { forward, backward, both }

@anonymous
@JS()
@staticInterop
class MLGruOptions {
  external factory MLGruOptions._(
      {required MLOperand bias,
      required MLOperand recurrentBias,
      required MLOperand initialHiddenState,
      bool? resetAfter = true,
      bool? returnSequence = false,
      String? direction,
      String? layout,
      Iterable<MLOperator>? activations});

  factory MLGruOptions(
          {required MLOperand bias,
          required MLOperand recurrentBias,
          required MLOperand initialHiddenState,
          bool? resetAfter = true,
          bool? returnSequence = false,
          MLRecurrentNetworkDirection? direction =
              MLRecurrentNetworkDirection.forward,
          MLRecurrentNetworkWeightLayout? layout =
              MLRecurrentNetworkWeightLayout.zrn,
          Iterable<MLOperator>? activations}) =>
      MLGruOptions._(
          bias: bias,
          recurrentBias: recurrentBias,
          initialHiddenState: initialHiddenState,
          resetAfter: resetAfter,
          returnSequence: returnSequence,
          direction: direction?.name,
          layout: layout?.name,
          activations: activations);
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
      MLRecurrentNetworkDirection.values
          .byName(js_util.getProperty(this, 'direction'));
  set direction(MLRecurrentNetworkDirection newValue) {
    js_util.setProperty(this, 'direction', newValue.name);
  }

  MLRecurrentNetworkWeightLayout get layout =>
      MLRecurrentNetworkWeightLayout.values
          .byName(js_util.getProperty(this, 'layout'));
  set layout(MLRecurrentNetworkWeightLayout newValue) {
    js_util.setProperty(this, 'layout', newValue.name);
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
      {required MLOperand bias,
      required MLOperand recurrentBias,
      bool? resetAfter = true,
      String? layout,
      Iterable<MLOperator>? activations});

  factory MLGruCellOptions(
          {required MLOperand bias,
          required MLOperand recurrentBias,
          bool? resetAfter = true,
          MLRecurrentNetworkWeightLayout? layout =
              MLRecurrentNetworkWeightLayout.zrn,
          Iterable<MLOperator>? activations}) =>
      MLGruCellOptions._(
          bias: bias,
          recurrentBias: recurrentBias,
          resetAfter: resetAfter,
          layout: layout?.name,
          activations: activations);
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
      MLRecurrentNetworkWeightLayout.values
          .byName(js_util.getProperty(this, 'layout'));
  set layout(MLRecurrentNetworkWeightLayout newValue) {
    js_util.setProperty(this, 'layout', newValue.name);
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
  external factory MLHardSigmoidOptions(
      {double? alpha = 0.2, double? beta = 0.5});
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
      {required MLOperand scale,
      required MLOperand bias,
      double? epsilon = 1e-5,
      String? layout});

  factory MLInstanceNormalizationOptions(
          {required MLOperand scale,
          required MLOperand bias,
          double? epsilon = 1e-5,
          MLInputOperandLayout? layout = MLInputOperandLayout.nchw}) =>
      MLInstanceNormalizationOptions._(
          scale: scale, bias: bias, epsilon: epsilon, layout: layout?.name);
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
      MLInputOperandLayout.values.byName(js_util.getProperty(this, 'layout'));
  set layout(MLInputOperandLayout newValue) {
    js_util.setProperty(this, 'layout', newValue.name);
  }
}

@anonymous
@JS()
@staticInterop
class MLLeakyReluOptions {
  external factory MLLeakyReluOptions({double? alpha = 0.01});
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
  external factory MLLinearOptions({double? alpha = 1, double? beta = 0});
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

enum MLPaddingMode { constant, edge, reflection, symmetric }

@anonymous
@JS()
@staticInterop
class MLPadOptions {
  external factory MLPadOptions._({String? mode, double? value = 0});

  factory MLPadOptions(
          {MLPaddingMode? mode = MLPaddingMode.constant, double? value = 0}) =>
      MLPadOptions._(mode: mode?.name, value: value);
}

extension PropsMLPadOptions on MLPadOptions {
  MLPaddingMode get mode =>
      MLPaddingMode.values.byName(js_util.getProperty(this, 'mode'));
  set mode(MLPaddingMode newValue) {
    js_util.setProperty(this, 'mode', newValue.name);
  }

  double get value => js_util.getProperty(this, 'value');
  set value(double newValue) {
    js_util.setProperty(this, 'value', newValue);
  }
}

enum MLRoundingType { floor, ceil }

@anonymous
@JS()
@staticInterop
class MLPool2dOptions {
  external factory MLPool2dOptions._(
      {required Iterable<int> windowDimensions,
      required Iterable<int> padding,
      required Iterable<int> strides,
      required Iterable<int> dilations,
      String? autoPad,
      String? layout,
      String? roundingType,
      Iterable<int>? outputSizes});

  factory MLPool2dOptions(
          {required Iterable<int> windowDimensions,
          required Iterable<int> padding,
          required Iterable<int> strides,
          required Iterable<int> dilations,
          MLAutoPad? autoPad = MLAutoPad.explicit,
          MLInputOperandLayout? layout = MLInputOperandLayout.nchw,
          MLRoundingType? roundingType = MLRoundingType.floor,
          Iterable<int>? outputSizes}) =>
      MLPool2dOptions._(
          windowDimensions: windowDimensions,
          padding: padding,
          strides: strides,
          dilations: dilations,
          autoPad: autoPad?.name,
          layout: layout?.name,
          roundingType: roundingType?.name,
          outputSizes: outputSizes);
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
      MLAutoPad.values.byName(js_util.getProperty(this, 'autoPad'));
  set autoPad(MLAutoPad newValue) {
    js_util.setProperty(this, 'autoPad', newValue.name);
  }

  MLInputOperandLayout get layout =>
      MLInputOperandLayout.values.byName(js_util.getProperty(this, 'layout'));
  set layout(MLInputOperandLayout newValue) {
    js_util.setProperty(this, 'layout', newValue.name);
  }

  MLRoundingType get roundingType =>
      MLRoundingType.values.byName(js_util.getProperty(this, 'roundingType'));
  set roundingType(MLRoundingType newValue) {
    js_util.setProperty(this, 'roundingType', newValue.name);
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
  external factory MLReduceOptions(
      {required Iterable<int> axes, bool? keepDimensions = false});
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

enum MLInterpolationMode { nearestNeighbor, linear }

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
          {MLInterpolationMode? mode = MLInterpolationMode.nearestNeighbor,
          Iterable<double>? scales,
          Iterable<int>? sizes,
          Iterable<int>? axes}) =>
      MLResample2dOptions._(
          mode: mode?.name, scales: scales, sizes: sizes, axes: axes);
}

extension PropsMLResample2dOptions on MLResample2dOptions {
  MLInterpolationMode get mode =>
      MLInterpolationMode.values.byName(js_util.getProperty(this, 'mode'));
  set mode(MLInterpolationMode newValue) {
    js_util.setProperty(this, 'mode', newValue.name);
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
  external factory MLSliceOptions({required Iterable<int> axes});
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
  external factory MLSoftplusOptions({double? steepness = 1});
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
  external factory MLSplitOptions({int? axis = 0});
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
  external factory MLSqueezeOptions({required Iterable<int> axes});
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
  external factory MLTransposeOptions({required Iterable<int> permutation});
}

extension PropsMLTransposeOptions on MLTransposeOptions {
  Iterable<int> get permutation => js_util.getProperty(this, 'permutation');
  set permutation(Iterable<int> newValue) {
    js_util.setProperty(this, 'permutation', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class MLInput {
  external factory MLInput(
      {dynamic resource, required Iterable<int> dimensions});
}

extension PropsMLInput on MLInput {
  dynamic get resource => js_util.getProperty(this, 'resource');
  set resource(dynamic newValue) {
    js_util.setProperty(this, 'resource', newValue);
  }

  Iterable<int> get dimensions => js_util.getProperty(this, 'dimensions');
  set dimensions(Iterable<int> newValue) {
    js_util.setProperty(this, 'dimensions', newValue);
  }
}

@JS()
@staticInterop
class MLGraph {
  external MLGraph();
}

extension PropsMLGraph on MLGraph {
  Object compute(dynamic inputs, dynamic outputs) =>
      js_util.callMethod(this, 'compute', [inputs, outputs]);
}
