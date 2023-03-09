import 'package:flutter/material.dart';

class MoneyTextController extends TextEditingController {
  MoneyTextController({
    double initialValue = 0.0,
    this.decimalSeparator = ',',
    this.thousandSeparator = '.',
    this.precision = 2,
  }) {
    addListener(() {
      updateValue(numberValue);
      afterChange(text, numberValue);
    });

    updateValue(initialValue);
  }

  final String decimalSeparator;
  final String thousandSeparator;
  final int precision;
  double lastValue = 0.0;

  Function afterChange = (String maskedValue, double rawValue) {};

  void updateValue(double value) {
    double valueToUse = value;

    value.toStringAsFixed(0).length > 12 ? valueToUse = lastValue : lastValue = value;

    String masked = applyMask(valueToUse);

    masked = 'R\$ $masked';

    if (masked != text) {
      text = masked;

      final int cursorPosition = super.text.length;
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

    splitValue.insert(precision, decimalSeparator);

    for (int i = precision + 4; true; i = i + 4) {
      if (splitValue.length > i) {
        splitValue.insert(i, thousandSeparator);
      } else {
        break;
      }
    }

    return splitValue.reversed.join('');
  }
}
