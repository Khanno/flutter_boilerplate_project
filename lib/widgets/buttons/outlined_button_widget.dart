import 'package:boilerplate/styles/styles.dart';
import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final Widget text;
  final Function() onTap;
  final Color? color;
  final bool isLoading;
  final bool isActive;
  final bool hasBorder;
  final Color? borderColor;
  final double? borderRadius;
  final double? height;
  final double? width;

  OutlinedButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
    this.height,
    this.width,
    this.color,
    this.isLoading = false,
    this.isActive = true,
    this.hasBorder = false,
    this.borderColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: hasBorder ? Border.all(color: borderColor ?? ColorStyles.gray) : null,
          borderRadius: BorderRadius.circular(borderRadius ?? SizeStyle.size15),
          color: color ?? Theme.of(context).colorScheme.primary,
        ),
        padding: const EdgeInsets.symmetric(vertical: SizeStyle.size10 - 1),
        child: Center(child: text),
      ),
    );
  }
}
