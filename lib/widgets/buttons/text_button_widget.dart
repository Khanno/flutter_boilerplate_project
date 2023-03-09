import 'package:boilerplate/styles/styles.dart';
import 'package:boilerplate/widgets/indicators/circular_loading_indicator_widget.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final Widget text;
  final Function() onPressed;
  final bool? isLoading;
  final bool? isEnabled;
  final Size? size;
  final Color? color;

  const TextButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.isEnabled = true,
    this.size,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: size,
        minimumSize: const Size(double.infinity, double.minPositive),
        backgroundColor: color ?? Theme.of(context).colorScheme.primary,
        disabledBackgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      onPressed: isLoading! || !isEnabled! ? null : onPressed,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: SizeStyle.size15 + 1),
          child: isLoading! ? const CircularLoadingIndicatorWidget() : text),
    );
  }
}
