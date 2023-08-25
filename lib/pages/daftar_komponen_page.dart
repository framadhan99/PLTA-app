import 'package:flutter/material.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_paths.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';
import 'package:plta_app/widgets/appbar/appbar_primary.dart';
import 'package:plta_app/widgets/card/card_grey.dart';
import 'package:plta_app/widgets/card/card_shadow_widget.dart';

class DaftarKomponen extends StatelessWidget {
  const DaftarKomponen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(
        title: "Informasi Mesin",
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardGrey(
              height: 120,
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          AssetPaths.imgMesin,
                        ),
                      ),
                    ),
                  ),
                  horizontalSpace(20),
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
                      verticalSpace(6),
                      Text(
                        'EGN-OT-001001',
                        style: AssetStyle.desText.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AssetColors.primaryColor,
                        ),
                      ),
                      verticalSpace(6),
                      Text(
                        'Hydro turbine & auxiliaries',
                        style: AssetStyle.desText.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      verticalSpace(6),
                      Text(
                        'Ubah Mesin',
                        style: AssetStyle.desText.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AssetColors.blue,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 50,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      alignment: Alignment.center,
                      child: Text('Daily'),
                    ),
                  )
                ],
              ),
            ),
            verticalSpace(22),
            Text(
              'Daftar Komponen',
              style: AssetStyle.bigTitle.copyWith(fontSize: 14),
            ),
            verticalSpace(12),
            ...List.generate(
              10,
              (int index) => Padding(
                padding: const EdgeInsets.only(
                  bottom: 12,
                ),
                child: CardShadow(
                  height: 110,
                  width: screenWidth(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'plumber Block',
                        style: AssetStyle.bigTitle.copyWith(fontSize: 12),
                      ),
                      verticalSpace(6),
                      Text(
                        'KMP-11090005',
                        style: AssetStyle.desText.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      verticalSpace(12),
                      CardGrey(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        height: 30,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '0 / 4 sub komponen sudah dilaporkan',
                              style: AssetStyle.desText.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Belum Dikerjakan',
                              style: AssetStyle.desText.copyWith(
                                  fontWeight: FontWeight.w600,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
