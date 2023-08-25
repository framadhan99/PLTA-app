import 'package:flutter/material.dart';

import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/ui_helper.dart';

class CardGrey extends StatelessWidget {
  const CardGrey({
    Key? key,
    required this.height,
    required this.child,
    this.width,
    this.padding,
    this.color,
  }) : super(key: key);

  final double height;
  final double? width;
  final Widget child;
  final EdgeInsets? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          EdgeInsets.only(
            left: 15,
            right: 15,
            top: 20,
            bottom: 20,
          ),
      height: height,
      width: width ?? screenWidth(context),
      decoration: BoxDecoration(
          color: color ?? AssetColors.greyLightes,
          borderRadius: BorderRadius.circular(8)),
      child: child,
    );
  }
}
