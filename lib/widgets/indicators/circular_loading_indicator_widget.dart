import 'package:flutter/material.dart';

class CircularLoadingIndicatorWidget extends StatelessWidget {
  final Color? color;

  const CircularLoadingIndicatorWidget({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color ?? Theme.of(context).colorScheme.primary,
      strokeWidth: 2.0,
    );
  }
}
