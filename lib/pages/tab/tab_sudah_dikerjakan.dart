import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_paths.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';
import 'package:plta_app/widgets/card/card_grey.dart';
import 'package:plta_app/widgets/card/card_shadow_widget.dart';

class TabSudahDikerjakan extends StatelessWidget {
  const TabSudahDikerjakan({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CardGrey(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '2 Laporan tersimpan pada perangkat',
                  style: AssetStyle.desText.copyWith(
                    color: AssetColors.grey,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: AssetColors.colorButton,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Sinkronisasi Laporan',
                      style: AssetStyle.primaryText.copyWith(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(16),
          CardShadow(
            height: 180,
            width: screenWidth(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hydro turbine & auxiliaries',
                  style: AssetStyle.bigTitle.copyWith(fontSize: 12),
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
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                verticalSpace(16),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shift 1',
                          style: AssetStyle.bigTitle.copyWith(fontSize: 12),
                        ),
                        verticalSpace(4),
                        Text(
                          '06:30:00 WIB - 15:30:00 WIB',
                          style: AssetStyle.desText.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
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
                  color: AssetColors.greenLight,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
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
                              fontWeight: FontWeight.w500,
                              color: AssetColors.green,
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
                      verticalSpace(2),
                      Text(
                        'Dilaporkan hari Minggu 13 Agustus 2023, 06:30:00 WIB',
                        style: AssetStyle.primaryText.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(8),
          ...List.generate(
            10,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: CardShadow(
                height: 180,
                width: screenWidth(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hydro turbine & auxiliaries',
                      style: AssetStyle.bigTitle.copyWith(fontSize: 12),
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
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(16),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shift 1',
                              style: AssetStyle.bigTitle.copyWith(fontSize: 12),
                            ),
                            verticalSpace(4),
                            Text(
                              '06:30:00 WIB - 15:30:00 WIB',
                              style: AssetStyle.desText.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
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
                      color: AssetColors.greenLight,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
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
                                  fontWeight: FontWeight.w500,
                                  color: AssetColors.green,
                                ),
                              ),
                              Text(
                                'mesin sudah dilaporkan',
                                style: AssetStyle.desText.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              // Text(
                              //   'Telah diubah',
                              //   style: AssetStyle.desText.copyWith(
                              //     fontWeight: FontWeight.w500,
                              //     color: AssetColors.orange,
                              //   ),
                              // ),
                            ],
                          ),
                          verticalSpace(2),
                          Text(
                            'Dilaporkan hari Minggu 13 Agustus 2023, 06:30:00 WIB',
                            style: AssetStyle.primaryText.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
