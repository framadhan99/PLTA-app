import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_paths.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';
import 'package:plta_app/widgets/appbar/appbar_primary.dart';
import 'package:plta_app/widgets/button/button_primary.dart';
import 'package:plta_app/widgets/card/card_grey.dart';
import 'package:plta_app/widgets/card/card_shadow_widget.dart';

class DaftarSubKomponenPage extends StatelessWidget {
  const DaftarSubKomponenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(
        title: "Sub Komponen",
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          color: AssetColors.primaryColor,
                        ),
                      ),
                      verticalSpace(4),
                      Row(
                        children: [
                          SvgPicture.asset(
                            AssetPaths.icLocation,
                            width: 8,
                          ),
                          horizontalSpace(6),
                          Text(
                            'Hydro turbine & auxiliaries',
                            style: AssetStyle.desText.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
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
                        color: AssetColors.greyLightes,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Daily',
                        style: AssetStyle.desText,
                      ),
                    ),
                  )
                ],
              ),
            ),
            verticalSpace(22),
            CardGrey(
              padding: EdgeInsets.only(right: 16, left: 16, top: 16, bottom: 8),
              height: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Plumber Block',
                    style: AssetStyle.bigTitle.copyWith(fontSize: 14),
                  ),
                  verticalSpace(6),
                  Text(
                    'KMP-11090005',
                    style: AssetStyle.desText.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  verticalSpace(6),
                  Divider(
                    thickness: 5,
                    color: Colors.white,
                  ),
                  verticalSpace(4),
                  Text(
                    '0 / 4 sub komponen & Sub task sudah dikerjakan',
                    style: AssetStyle.primaryText.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(12),
            ...List.generate(
              4,
              (int index) => Padding(
                padding: const EdgeInsets.only(
                  bottom: 12,
                ),
                child: CardShadow(
                  height: 100,
                  width: screenWidth(context),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SKMP-02003',
                            style: AssetStyle.desText.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          verticalSpace(12),
                          Text(
                            'plumber Block',
                            style: AssetStyle.bigTitle.copyWith(fontSize: 12),
                          ),
                          verticalSpace(6),
                          Text(
                            'Cek fisik pada komponen expansion join',
                            style: AssetStyle.desText.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Checkbox(
                        activeColor: Color(0xffABABAB),
                        value: true,
                        onChanged: (e) {},
                      )
                    ],
                  ),
                ),
              ),
            ),
            verticalSpace(46),
            ButtonPrimary(
              width: 160,
              height: 35,
              label: 'SELANJUTNYA',
            )
          ],
        ),
      ),
    );
  }
}
