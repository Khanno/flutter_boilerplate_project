import 'package:boilerplate/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchWidget extends StatelessWidget {
  final bool switchValue;
  final Function(bool) onChanged;
  final Color? activeColor;
  final Color? thumbColor;
  final Color? trackColor;
  final Color? desactivatedColor;

  const CupertinoSwitchWidget({
    super.key,
    required this.switchValue,
    required this.onChanged,
    this.activeColor,
    this.thumbColor,
    this.trackColor,
    this.desactivatedColor,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      trackColor: trackColor,
      activeColor: activeColor ?? Theme.of(context).colorScheme.onPrimary,
      thumbColor: switchValue
          ? thumbColor ?? Theme.of(context).colorScheme.primary
          : desactivatedColor ?? ColorStyles.lightGray,
      value: switchValue,
      onChanged: onChanged,
    );
  }
}
