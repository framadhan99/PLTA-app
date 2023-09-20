import 'package:flutter/material.dart';

import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    Key? key,
    this.onTap,
    required this.label,
    this.width,
    this.height,
    this.color,
    this.textColor,
    this.labelStyle,
  }) : super(key: key);

  final Function()? onTap;
  final String label;
  final double? width;
  final double? height;
  final Color? color;
  final Color? textColor;
  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 40,
        width: width ?? screenWidth(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color ?? AssetColors.blue,
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: labelStyle ??
              AssetStyle.primaryText.copyWith(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
