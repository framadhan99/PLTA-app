import 'package:flutter/material.dart';

import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_style.dart';

class ChipPrimary extends StatelessWidget {
  const ChipPrimary({
    Key? key,
    required this.active,
    required this.label,
    this.onTap,
  }) : super(key: key);

  final bool active;
  final String label;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: active ? AssetColors.blueLight : null,
              borderRadius: BorderRadius.circular(8)),
          alignment: Alignment.center,
          child: Text(
            label,
            style: AssetStyle.desText.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: active ? AssetColors.blue : AssetColors.greyLight),
          )),
    );
  }
}
