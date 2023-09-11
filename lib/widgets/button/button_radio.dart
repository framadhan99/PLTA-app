import 'package:flutter/material.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/ui_helper.dart';

class RadioButton extends StatelessWidget {
  const RadioButton({
    required this.selected,
    required this.label,
    required this.onTap,
    super.key,
  });

  final Function() onTap;
  final bool selected;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        width: screenWidthPercentage(context) * 0.4,
        decoration: BoxDecoration(
          color: selected ? AssetColors.blueLightes : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: selected
              ? Border.all(style: BorderStyle.none)
              : Border.all(
                  color: AssetColors.greyLight,
                ),
        ),
        height: 40,
        child: Row(
          children: [
            Container(
              height: 12,
              width: 12,
              padding: EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                color: selected ? AssetColors.blue : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: selected ? Colors.white : AssetColors.greyLight,
                      width: 1.5,
                    )),
              ),
            ),
            horizontalSpace(16),
            Text(label),
          ],
        ),
      ),
    );
  }
}
