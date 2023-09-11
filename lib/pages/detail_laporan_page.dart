import 'package:flutter/material.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_paths.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';
import 'package:plta_app/widgets/card/card_grey.dart';
import 'package:plta_app/widgets/card/card_shadow_widget.dart';

class DetailLaporanPage extends StatelessWidget {
  const DetailLaporanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: AssetColors.primaryColor),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.grey,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    AssetPaths.imgMesin,
                  ),
                ),
              ),
            ),
            horizontalSpace(12),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mesin T1',
                  style: AssetStyle.primaryText.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AssetColors.primaryColor,
                  ),
                ),
                verticalSpace(4),
                Text(
                  'EGN-OT-001001',
                  style: AssetStyle.desText.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    color: AssetColors.primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            verticalSpace(32),
            ...List.generate(
              10,
              (index) => Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: CardShadow(
                  height: 125,
                  width: screenWidth(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'SKMP-02003',
                            style: AssetStyle.desText.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Sudah terisi',
                            style: AssetStyle.desText.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AssetColors.green,
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(10),
                      Text(
                        'Draft Tube Manhole',
                        style: AssetStyle.bigTitle.copyWith(fontSize: 12),
                      ),
                      verticalSpace(6),
                      Text(
                        'Cek fisik pada komponen darft tube manhole',
                        style: AssetStyle.desText.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AssetColors.primaryColor,
                        ),
                      ),
                      verticalSpace(12),
                      Text(
                        'Lihat selengkapnya',
                        style: AssetStyle.desText.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AssetColors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
