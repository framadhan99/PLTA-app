import 'package:flutter/material.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_style.dart';

class TextFieldGeneral extends StatelessWidget {
  const TextFieldGeneral({
    Key? key,
    required this.hintText,
    this.center,
    this.obscureText,
    this.hintStyle,
    this.style,
    this.border,
    this.suffixIcon,
    this.expands,
  }) : super(key: key);

  final String hintText;
  final bool? center;
  final bool? obscureText;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final bool? border;
  final Widget? suffixIcon;
  final bool? expands;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      style: style ?? AssetStyle.primaryText,
      expands: expands ?? false,
      maxLines: null,
      textAlignVertical: TextAlignVertical.top,
      textAlign: center ?? false ? TextAlign.center : TextAlign.left,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle ??
            AssetStyle.primaryText.copyWith(
              color: AssetColors.grey,
            ),
        isDense: true,
        suffixIcon: suffixIcon,
        enabledBorder: border ?? true
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(
                  color: AssetColors.greyBorder,
                ),
              )
            : const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
        focusedBorder: border ?? true
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(
                  color: AssetColors.greyBorder,
                ),
              )
            : const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
      ),
    );
  }
}
