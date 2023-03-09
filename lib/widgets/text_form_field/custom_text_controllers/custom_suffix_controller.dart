import 'package:flutter/material.dart';

class CustomSuffixController extends TextEditingController {
  CustomSuffixController({
    double initialValue = 0.0,
    this.suffix = '',
    this.precision = 1,
  }) {
    addListener(() {
      updateValue(numberValue, suffix);
      afterChange(text, numberValue);
    });

    updateValue(initialValue, suffix);
  }
  final int precision;
  final String suffix;
  double lastValue = 0.0;

  Function afterChange = (String maskedValue, double rawValue) {};

  void updateValue(double value, String suffix) {
    double valueToUse = value;

    value.toStringAsFixed(0).length > 12 ? valueToUse = lastValue : lastValue = value;

    String masked = applyMask(valueToUse);

    masked = '$masked $suffix';
    if (masked != text) {
      text = masked;
      final int cursorPosition = super.text.length - (suffix.length + 1);
      selection = TextSelection.fromPosition(TextPosition(offset: cursorPosition));
    }
  }

  double get numberValue {
    final String onlyNumbers = text.replaceAll(RegExp(r'[^\d]'), '');
    List<String> numbers = onlyNumbers.split('').toList(growable: true);
    numbers.insert(numbers.length - precision, '.');

    return double.parse(numbers.join());
  }

  String applyMask(double value) {
    final List<String> splitValue =
        value.toStringAsFixed(precision).replaceAll('.', '').split('').reversed.toList(growable: true);

    splitValue.insert(precision, '.');

    for (int i = precision + 4; true; i = i + 4) {
      if (splitValue.length > i) {
        splitValue.insert(i, ',');
      } else {
        break;
      }
    }

    return splitValue.reversed.join('');
  }
}
