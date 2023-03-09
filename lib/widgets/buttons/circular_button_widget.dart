import 'package:boilerplate/styles/styles.dart';
import 'package:boilerplate/widgets/indicators/circular_loading_indicator_widget.dart';
import 'package:flutter/material.dart';

class CircularButtonWidget extends StatelessWidget {
  final Function() onTap;
  final EdgeInsets? padding;
  final bool? isLoading;
  final bool? canProceed;

  const CircularButtonWidget({
    Key? key,
    required this.onTap,
    this.padding,
    this.isLoading = false,
    this.canProceed = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: !isLoading! ? onTap : null,
      child: Container(
        decoration: BoxDecoration(
          color: canProceed! ? Theme.of(context).colorScheme.primary : ColorStyles.middleLightGray,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Padding(
          padding: padding ?? EdgeInsets.all(isLoading! ? SizeStyle.size15 : SizeStyle.size25 - 4),
          child: isLoading!
              ? const CircularLoadingIndicatorWidget(
                  color: Colors.white,
                )
              : Icon(
                  Icons.arrow_forward_sharp,
                  color: !isLoading! ? Colors.white : ColorStyles.gray,
                ),
        ),
      ),
    );
  }
}
