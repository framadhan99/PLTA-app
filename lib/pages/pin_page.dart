import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_paths.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';
import 'package:plta_app/widgets/button/button_animasi.dart';
import 'package:plta_app/widgets/button/button_primary.dart';
import 'package:plta_app/widgets/card/card_grey.dart';
import 'package:plta_app/widgets/texfield/textfield_general_widget.dart';

class PinPage extends StatelessWidget {
  const PinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          verticalSpace(20),
          Text(
            'Masukan PIN',
            style: AssetStyle.bigTitle,
          ),
          verticalSpace(16),
          Text(
            'Gunakan PIN Anda untuk mengakses akun',
            style: AssetStyle.desText,
          ),
          verticalSpace(48),
          CircleAvatar(
            radius: 35,
          ),
          verticalSpace(16),
          CardGrey(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            height: 25,
            width: 110,
            child: Center(child: Text('TID-11480001')),
          ),
          verticalSpace(16),
          Text(
            'Ahmad Adhi Pratikno',
            style: AssetStyle.bigTitle,
          ),
          verticalSpace(8),
          Text(
            'Divisi Operasional',
            style: AssetStyle.desText,
          ),
          verticalSpace(48),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              6,
              (index) => Padding(
                padding: EdgeInsets.only(right: 12),
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.grey[400],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
