import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_paths.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';
import 'package:plta_app/widgets/appbar/appbar_primary.dart';
import 'package:plta_app/widgets/card/card_grey.dart';
import 'package:plta_app/widgets/card/card_shadow_widget.dart';

class DetailLocationPage extends StatelessWidget {
  const DetailLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(title: 'Informasi Lokasi'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Plumber Block',
                    style: AssetStyle.bigTitle.copyWith(fontSize: 16),
                  ),
                  verticalSpace(6),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AssetPaths.icCloud,
                        width: 14,
                      ),
                      horizontalSpace(6),
                      Text(
                        'Tersimpan offline',
                        style: AssetStyle.desText.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(16),
                  CardShadow(
                    height: 150,
                    width: screenWidth(context),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Shift 1',
                                  style: AssetStyle.bigTitle
                                      .copyWith(fontSize: 16),
                                ),
                                verticalSpace(4),
                                Text(
                                  '20 Agustus 2023',
                                  style: AssetStyle.desText.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                verticalSpace(4),
                                Text(
                                  '06:30:00 WIB - 15:30:00 WIB',
                                  style: AssetStyle.desText.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
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
                          ],
                        ),
                        verticalSpace(16),
                        CardGrey(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                          height: 45,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '3 / 3 ',
                                    style: AssetStyle.desText.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'mesin sudah dilaporkan - ',
                                    style: AssetStyle.desText.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Telah diubah',
                                    style: AssetStyle.desText.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AssetColors.orange,
                                    ),
                                  ),
                                ],
                              ),
                              verticalSpace(4),
                              Text(
                                'Dilaporkan hari Minggu 13 Agustus 2023, 06:30:00 WIB',
                                style: AssetStyle.primaryText.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(28),
                  Text(
                    'Daftar Mesin',
                    style: AssetStyle.bigTitle.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              width: screenWidth(context),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      width: screenWidthPercentage(context) * 0.6,
                      height: 80,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: AssetColors.greyLightes,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
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
                              verticalSpace(4),
                              Text(
                                '3 / 3 Komponen ',
                                style: AssetStyle.desText.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: AssetColors.blue),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ...List.generate(
                      5,
                      (index) => Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Container(
                          width: screenWidthPercentage(context) * 0.6,
                          height: 80,
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: AssetColors.blueLight,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
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
                                  verticalSpace(4),
                                  Text(
                                    '3 / 3 Komponen ',
                                    style: AssetStyle.desText.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: AssetColors.blue),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Daftar Komponen',
                    style: AssetStyle.bigTitle.copyWith(fontSize: 14),
                  ),
                  verticalSpace(16),
                  ...List.generate(
                    10,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
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
                              color: AssetColors.greenLight,
                              padding: EdgeInsets.symmetric(horizontal: 2),
                              height: 30,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      ' 4 / 4 ',
                                      style: AssetStyle.desText.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: AssetColors.green,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 4,
                                    child: Text(
                                      'sub komponen sudah dilaporkan Minggu 20 Agustus 2023, 06:30:00 WIB',
                                      style: AssetStyle.desText.copyWith(
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
