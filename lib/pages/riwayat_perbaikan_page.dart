import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_paths.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';
import 'package:plta_app/widgets/appbar/appbar_primary.dart';
import 'package:plta_app/widgets/card/card_grey.dart';
import 'package:plta_app/widgets/card/card_shadow_widget.dart';
import 'package:plta_app/widgets/texfield/textfield_search.dart';

class RiwayatPerbaikanPage extends StatelessWidget {
  const RiwayatPerbaikanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(title: 'Riwayat Perbaikan'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextFieldSearch(),
            verticalSpace(16),
            Row(
              children: [
                CardShadow(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  width: screenWidthPercentage(context) * 0.74,
                  child: Row(
                    children: [
                      Text('Agustus 2023'),
                      Spacer(),
                      SvgPicture.asset(
                        AssetPaths.icDropdown,
                        width: 18,
                      )
                    ],
                  ),
                ),
                horizontalSpace(16),
                CardShadow(
                  height: 50,
                  width: 50,
                  child: SvgPicture.asset(
                    AssetPaths.icAdjustments,
                  ),
                ),
              ],
            ),
            verticalSpace(16),
            CardGrey(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '1 Laporan tersimpan pada perangkat',
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
              height: 160,
              width: screenWidth(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'PID-004001',
                        style: AssetStyle.bigTitle.copyWith(fontSize: 12),
                      ),
                      Spacer(),
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
                    ],
                  ),
                  verticalSpace(6),
                  Text(
                    'URGENT - LOTO',
                    style: AssetStyle.primaryText.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                  verticalSpace(16),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                              AssetPaths.imgMesin,
                            ))),
                      ),
                      horizontalSpace(8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mesin T1',
                            style: AssetStyle.bigTitle.copyWith(fontSize: 10),
                          ),
                          verticalSpace(6),
                          Text(
                            'Lokasi 1',
                            style: AssetStyle.primaryText.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  verticalSpace(16),
                  CardGrey(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    height: 30,
                    child: Text(
                      'Dibuat hari Minggu 21 Agustus 2023, 06:30:00 WIB',
                      style: AssetStyle.primaryText.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(16),
            CardShadow(
              height: 165,
              width: screenWidth(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'PID-004001',
                        style: AssetStyle.bigTitle.copyWith(fontSize: 12),
                      ),
                      Spacer(),
                      CardGrey(
                        color: AssetColors.blueLightes,
                        padding: EdgeInsets.all(4),
                        height: 20,
                        width: 125,
                        child: Text(
                          'Menunggu persetujuan',
                          style: AssetStyle.primaryText.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: AssetColors.blueDark),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(6),
                  Text(
                    'URGENT - LOTO',
                    style: AssetStyle.primaryText.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                  verticalSpace(16),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                              AssetPaths.imgMesin,
                            ))),
                      ),
                      horizontalSpace(8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mesin T1',
                            style: AssetStyle.bigTitle.copyWith(fontSize: 10),
                          ),
                          verticalSpace(6),
                          Text(
                            'Lokasi 1',
                            style: AssetStyle.primaryText.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  verticalSpace(16),
                  CardGrey(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    height: 30,
                    child: Text(
                      'Dibuat hari Minggu 21 Agustus 2023, 06:30:00 WIB',
                      style: AssetStyle.primaryText.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(16),
            CardShadow(
              height: 165,
              width: screenWidth(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'PID-004001',
                        style: AssetStyle.bigTitle.copyWith(fontSize: 12),
                      ),
                      Spacer(),
                      CardGrey(
                        color: AssetColors.orangeLightes,
                        padding: EdgeInsets.all(4),
                        height: 20,
                        width: 110,
                        child: Text(
                          'Permintaan material',
                          style: AssetStyle.primaryText.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: AssetColors.orange),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(6),
                  Text(
                    'URGENT - LOTO',
                    style: AssetStyle.primaryText.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                  verticalSpace(16),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                              AssetPaths.imgMesin,
                            ))),
                      ),
                      horizontalSpace(8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mesin T1',
                            style: AssetStyle.bigTitle.copyWith(fontSize: 10),
                          ),
                          verticalSpace(6),
                          Text(
                            'Lokasi 1',
                            style: AssetStyle.primaryText.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  verticalSpace(16),
                  CardGrey(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    height: 30,
                    child: Text(
                      'Dibuat hari Minggu 21 Agustus 2023, 06:30:00 WIB',
                      style: AssetStyle.primaryText.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(16),
            CardShadow(
              height: 165,
              width: screenWidth(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'PID-004001',
                        style: AssetStyle.bigTitle.copyWith(fontSize: 12),
                      ),
                      Spacer(),
                      CardGrey(
                        color: AssetColors.greenLight,
                        padding: EdgeInsets.all(4),
                        height: 20,
                        width: 80,
                        child: Text(
                          'Siap Eksekusi',
                          style: AssetStyle.primaryText.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: AssetColors.green),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(6),
                  Text(
                    'URGENT - LOTO',
                    style: AssetStyle.primaryText.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                  verticalSpace(16),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                              AssetPaths.imgMesin,
                            ))),
                      ),
                      horizontalSpace(8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mesin T1',
                            style: AssetStyle.bigTitle.copyWith(fontSize: 10),
                          ),
                          verticalSpace(6),
                          Text(
                            'Lokasi 1',
                            style: AssetStyle.primaryText.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  verticalSpace(16),
                  CardGrey(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    height: 30,
                    child: Text(
                      'Dibuat hari Minggu 21 Agustus 2023, 06:30:00 WIB',
                      style: AssetStyle.primaryText.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
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
