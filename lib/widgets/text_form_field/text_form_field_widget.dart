import 'package:boilerplate/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFormFieldWidget extends StatefulWidget {
  final TextEditingController? controller;
  final bool? enabled;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final TextStyle? style;
  final bool? isRequired;
  final bool? isPassword;
  final String? labelText;
  final String? hintText;
  final TextInputAction? textInputAction;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? filled;
  final Color? fillColor;
  final bool? isEmail;
  final bool? allowPaste;
  final bool? isCpf;
  final bool? isCnpj;
  final bool? isPhone;
  final Function(String)? onSubmit;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  final FocusNode? focusNode;
  final EdgeInsets? contentPadding;
  final bool? hideEmptyErrorText;
  final String? errorMessage;
  final bool? isCep;
  final String? svgPath;
  final int lines;
  final int? maxLength;
  final InputBorder? focusedBorder;
  final InputBorder? inputBorder;
  final bool isMoney;
  final double? borderRadius;
  final String? suffixText;
  final BoxConstraints? suffixIconConstraints;
  final Widget? suffix;

  const TextFormFieldWidget({
    Key? key,
    this.controller,
    this.enabled,
    this.inputFormatters,
    this.initialValue,
    this.keyboardType,
    this.obscureText,
    this.style,
    this.isRequired = false,
    this.isPassword = false,
    this.labelText,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor,
    this.filled,
    this.isEmail = false,
    this.allowPaste = true,
    this.isCpf = false,
    this.isCnpj = false,
    this.isPhone = false,
    this.hintText,
    this.onSubmit,
    this.onSaved,
    this.onChanged,
    this.focusNode,
    this.contentPadding,
    this.hideEmptyErrorText = false,
    this.errorMessage,
    this.isCep = false,
    this.svgPath,
    this.lines = 1,
    this.maxLength,
    this.focusedBorder,
    this.inputBorder,
    this.isMoney = false,
    this.borderRadius,
    this.suffixText,
    this.suffixIconConstraints,
    this.suffix,
  }) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  Color prefixIconColor = ColorStyles.gray;

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (bool focused) {
        setState(() => prefixIconColor = focused ? Theme.of(context).colorScheme.primary : ColorStyles.gray);
      },
      child: TextFormField(
        controller: widget.controller,
        minLines: widget.lines,
        maxLines: widget.lines,
        maxLength: widget.maxLength,
        buildCounter: (
          BuildContext context, {
          required int currentLength,
          required int? maxLength,
          required bool isFocused,
        }) =>
            maxLength != null
                ? Text(
                    '$currentLength / $maxLength Caracteres',
                    style: SmallTextStyle().style(
                      color: ColorStyles.middleGray,
                    ),
                  )
                : null,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          border: widget.inputBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 4),
              ),
          contentPadding: widget.contentPadding ?? const EdgeInsets.all(SizeStyle.size25 - 6),
          errorText: widget.hideEmptyErrorText! ? null : widget.errorMessage ?? '',
          errorStyle: SmallTextStyle().style(color: Colors.red),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          filled: widget.filled,
          fillColor: widget.fillColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
          ),
          focusedBorder: widget.focusedBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
              ),
          focusColor: Theme.of(context).colorScheme.primary,
          hintText: widget.hintText,
          hintStyle: SmallTextStyle().style(
            size: 16,
            fontWeight: FontWeight.w400,
            color: ColorStyles.gray,
          ),
          labelText: widget.labelText,
          labelStyle: SmallTextStyle().style(
            size: 16,
            fontWeight: FontWeight.w400,
            color: ColorStyles.gray,
          ),
          floatingLabelStyle: SmallTextStyle().style(
            size: 16,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.primary,
          ),
          prefixIcon: widget.svgPath != null
              ? SizedBox(
                  width: SizeStyle.size40,
                  child: Padding(
                    padding: const EdgeInsets.all(SizeStyle.size10),
                    child: SvgPicture.asset(
                      widget.svgPath!,
                      color: prefixIconColor,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          suffixText: widget.suffixText,
          suffixIconConstraints: widget.suffixIconConstraints,
          suffix: widget.suffix,
        ),
        enabled: widget.enabled,
        focusNode: widget.focusNode,
        toolbarOptions: ToolbarOptions(
          copy: false,
          cut: false,
          paste: widget.allowPaste!,
          selectAll: false,
        ),
        inputFormatters: widget.inputFormatters,
        initialValue: widget.initialValue,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText ?? false,
        onFieldSubmitted: widget.onSubmit,
        onSaved: widget.onSaved,
        onChanged: widget.onChanged,
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.start,
        textInputAction: widget.textInputAction,
        style: SmallTextStyle().style(size: 16),
        validator: (String? value) {
          if (widget.isEmail! && (value != null || value!.isEmpty)) {
            if (!RegExp(r'^\w+([\.-]|[+]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$').hasMatch(value)) {
              return 'Email inválido';
            }

            if (RegExp(r'\s\b|\b\s').hasMatch(value)) {
              return 'Email inválido';
            }
          }

          if (widget.isRequired! && (value == null || value.isEmpty)) return 'Campo obrigatório.';

          if (widget.isPassword! && (value == null || value.isEmpty) && widget.isRequired!) return 'Campo obrigatório.';

          if (widget.isPassword! && value!.length < 6) return 'A senha deve conter pelo menos 6 caracteres.';

          if (widget.isPhone! && value!.length < 15) return 'Número incompleto.';

          if (widget.isCpf! && value!.length < 14) return 'CPF incompleto.';

          if (widget.isCnpj! && value!.length < 18) return 'CNPJ incompleto.';

          if (widget.isCep! && value!.length < 9) return 'Cep inválido';

          if (widget.isMoney && double.parse(value!.replaceAll(RegExp(r'[^\d]'), '')) <= 0.0) return 'Valor inválido';

          return null;
        },
      ),
    );
  }
}
