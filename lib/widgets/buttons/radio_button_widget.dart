import 'package:boilerplate/styles/styles.dart';
import 'package:flutter/material.dart';

class RadioButtonWidget extends StatelessWidget {
  final bool isActive;
  final Function() onTap;
  final double size;
  final double padding;
  const RadioButtonWidget(
      {super.key, required this.isActive, required this.onTap, this.size = SizeStyle.size15, this.padding = 3});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        height: size * 2,
        width: size * 2,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: isActive ? 2.0 : 1.0,
            color: isActive ? Theme.of(context).colorScheme.primary : ColorStyles.lighterGray,
          ),
          color: Colors.transparent,
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          // curve: Curves.bounceInOut,
          decoration: BoxDecoration(
            color: isActive ? Theme.of(context).colorScheme.primary : Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
