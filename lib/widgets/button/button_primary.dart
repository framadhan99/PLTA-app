import 'package:flutter/material.dart';

import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    Key? key,
    this.onTap,
    required this.label,
  }) : super(key: key);

  final Function()? onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: screenWidth(context),
        decoration: BoxDecoration(
          color: AssetColors.colorButton,
          borderRadius: BorderRadius.circular(30),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: AssetStyle.primaryText.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
