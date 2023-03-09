import 'package:boilerplate/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DropdownInputWidget extends StatefulWidget {
  final List<String>? items;
  final Function(String?)? onChanged;
  final Widget? hint;
  final bool isRequired;
  final String? value;
  final bool? hideEmptyErrorText;
  final Function()? onTap;
  final Widget? prefixIcon;
  final String? svgPath;
  final EdgeInsets? contentPadding;
  final List<DropdownMenuItem<String>>? itemsList;
  final String? labelText;
  final Color? labelColor;

  const DropdownInputWidget({
    Key? key,
    this.items,
    this.onChanged,
    this.hint,
    required this.isRequired,
    this.value,
    this.hideEmptyErrorText = false,
    this.onTap,
    this.prefixIcon,
    this.svgPath,
    this.contentPadding,
    this.itemsList,
    this.labelText,
    this.labelColor,
  }) : super(key: key);

  @override
  State<DropdownInputWidget> createState() => _DropdownInputWidgetState();
}

class _DropdownInputWidgetState extends State<DropdownInputWidget> {
  late Color iconColor;

  @override
  void initState() {
    iconColor = ColorStyles.middleDarkGray;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (bool hasFocus) {
        setState(() => iconColor = hasFocus ? Theme.of(context).colorScheme.primary : ColorStyles.middleDarkGray);
      },
      child: DropdownButtonFormField(
        onTap: widget.onTap,
        style: SmallTextStyle().style(),
        value: widget.value,
        items: widget.itemsList ??
            widget.items
                ?.map((String element) => DropdownMenuItem(
                      child: Text(element),
                      value: element,
                    ))
                .toList(),
        borderRadius: BorderRadius.circular(8),
        icon: const Icon(Icons.expand_more_rounded),
        decoration: InputDecoration(
          prefixIcon: widget.svgPath != null
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(
                    SizeStyle.size15,
                    SizeStyle.size10,
                    SizeStyle.size15 - 3.0,
                    SizeStyle.size10,
                  ),
                  child: SvgPicture.asset(widget.svgPath!, color: iconColor),
                )
              : widget.prefixIcon,
          filled: true,
          fillColor: ColorStyles.lighterGray,
          contentPadding: widget.contentPadding ?? const EdgeInsets.all(SizeStyle.size25 - 6),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          errorText: widget.hideEmptyErrorText! ? null : '',
          errorStyle: SmallTextStyle().style(color: Colors.red),
          labelText: widget.labelText,
          labelStyle:
              SmallTextStyle().style(color: widget.labelColor ?? Theme.of(context).colorScheme.primary),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
        ),
        isExpanded: true,
        hint: widget.hint,
        onChanged: widget.onChanged,
        validator: (String? value) {
          if (widget.isRequired && value == null) return 'Campo obrigatório';
          return null;
        },
      ),
    );
  }
}
