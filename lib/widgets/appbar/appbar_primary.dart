import 'package:flutter/material.dart';

import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_style.dart';

class AppBarPrimary extends StatelessWidget implements PreferredSizeWidget {
  const AppBarPrimary({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: AssetColors.primaryColor,
        ),
        title: Text(
          title,
          style: AssetStyle.primaryText.copyWith(
              fontWeight: FontWeight.w600, color: AssetColors.greyLight),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70);
}
