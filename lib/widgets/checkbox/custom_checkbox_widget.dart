import 'package:boilerplate/styles/styles.dart';
import 'package:flutter/material.dart';

class CustomCheckboxWidget extends StatefulWidget {
  final Function onTap;
  final bool value;
  final double? height;
  final double? width;
  final Color? checkColor;

  const CustomCheckboxWidget({
    super.key,
    required this.onTap,
    required this.value,
    this.height,
    this.width,
    this.checkColor,
  });

  @override
  State<CustomCheckboxWidget> createState() => _CustomCheckboxWidgetState();
}

class _CustomCheckboxWidgetState extends State<CustomCheckboxWidget> {
  late bool checkValue = widget.value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.onTap();
          checkValue = !checkValue;
        });
      },
      child: Container(
        height: widget.height ?? SizeStyle.size40,
        width: widget.width ?? SizeStyle.size40,
        decoration: BoxDecoration(
          border: checkValue ? null : Border.all(color: ColorStyles.gray),
          borderRadius: BorderRadius.circular(SizeStyle.size10),
          color: checkValue ? widget.checkColor ?? Theme.of(context).colorScheme.primary : Colors.white,
        ),
        child: const Padding(
          padding: EdgeInsets.all(SizeStyle.size5),
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 25,
          ),
        ),
      ),
    );
  }
}
