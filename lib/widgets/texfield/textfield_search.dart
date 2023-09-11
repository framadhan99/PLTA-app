import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_style.dart';

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({
    Key? key,
    this.controller,
    this.iconHeight,
    this.iconWidth,
  }) : super(key: key);
  final TextEditingController? controller;
  final double? iconHeight, iconWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextField(
        controller: controller,
        style: AssetStyle.desText,
        decoration: InputDecoration(
          filled: true,
          fillColor: AssetColors.greyLightes,
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          hintText: 'Cari',
          hintStyle: AssetStyle.desText,
          isDense: true,
          prefixIcon: Icon(Icons.search),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
