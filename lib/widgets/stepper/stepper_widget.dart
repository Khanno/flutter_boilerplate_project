import 'package:boilerplate/styles/styles.dart';
import 'package:flutter/material.dart';

class StepperWidget extends StatelessWidget {
  final int index;
  final int totalOfSteps;
  final double? height;

  const StepperWidget({
    Key? key,
    required this.index,
    required this.totalOfSteps,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeStyle.size150,
      child: Row(
        children: <Widget>[
          Flexible(
            flex: index,
            child: Container(
              height: height ?? SizeStyle.size5 - 3,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Flexible(
            flex: totalOfSteps - index,
            child: Container(
              height: height ?? SizeStyle.size5 - 3,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
