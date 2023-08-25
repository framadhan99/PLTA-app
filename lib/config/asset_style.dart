import 'package:flutter/material.dart';
import 'package:plta_app/config/asset_colors.dart';

class AssetStyle {
  static const TextStyle bigTitle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AssetColors.primaryColor,
  );

  static const TextStyle desText = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AssetColors.greyLight,
  );

  static const TextStyle primaryText = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AssetColors.grey,
  );
}
