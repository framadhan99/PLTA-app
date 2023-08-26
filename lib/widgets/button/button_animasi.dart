import 'package:flutter/material.dart';

import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';

class ButtonAnimasi extends StatelessWidget {
  const ButtonAnimasi({
    Key? key,
    this.onTap,
    required this.label,
    this.width,
    this.height,
  }) : super(key: key);

  final Function()? onTap;
  final String label;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        height: height ?? 40,
        width: width ?? screenWidth(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AssetColors.blue,
        ),
        child: Center(
          child: Text(
            label,
            style: AssetStyle.primaryText.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
