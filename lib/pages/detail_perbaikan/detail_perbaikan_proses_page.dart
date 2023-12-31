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

class DetailPerbaikanProsesPage extends StatelessWidget {
  const DetailPerbaikanProsesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarPrimary(title: 'Detail Perbaikan'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'PID-004001',
                        style: AssetStyle.bigTitle.copyWith(fontSize: 14),
                      ),
                      Spacer(),
                      Container(
                        width: 85,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xff41A8DC),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Dalam Proses',
                          style: AssetStyle.primaryText
                              .copyWith(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(6),
                  Text(
                    'Divisi Operational, Divisi Finance, Divisi Pengadaan, Divisi Keuangan',
                    style: AssetStyle.primaryText.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  verticalSpace(6),
                  Text(
                    'URGENT - LOTO',
                    style: AssetStyle.primaryText.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
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
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: CardShadow(
                          padding: EdgeInsets.only(left: 6, right: 6),
                          height: 30,
                          width: screenWidth(context),
                          child: Row(
                            children: [
                              Text(
                                'Lihat Safety Work Permit',
                                style: AssetStyle.primaryText.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: AssetColors.blue,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                                color: AssetColors.blue,
                              )
                            ],
                          ),
                        ),
                      ),
                      horizontalSpace(16),
                      Flexible(
                        flex: 1,
                        child: CardShadow(
                          padding: EdgeInsets.only(left: 6, right: 6),
                          height: 30,
                          width: screenWidth(context),
                          child: Row(
                            children: [
                              Text(
                                'Lihat Work Permit',
                                style: AssetStyle.primaryText.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: AssetColors.blue,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                                color: AssetColors.blue,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(16),
                  Divider(
                    thickness: 2,
                    color: AssetColors.greyLightes,
                  ),
                  verticalSpace(16),
                  Text(
                    'Keterangan Perbaikan',
                    style: AssetStyle.desText.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  verticalSpace(4),
                  Text(
                    'Kondisi mesin sudah mengkhawatirkan, segera perbaiki',
                    style: AssetStyle.primaryText.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  verticalSpace(4),
                  Text(
                    'Dibuat hari Minggu 21 Agustus 2023, 06:30:00 WIB',
                    style: AssetStyle.desText.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  verticalSpace(16),
                  Text(
                    'Terdapat perubahan komponen / Sub Komponen',
                    style: AssetStyle.primaryText.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        color: AssetColors.red),
                  ),
                  verticalSpace(16),
                  CardShadow(
                    color: AssetColors.blueLight,
                    padding: EdgeInsets.only(left: 16, right: 16),
                    height: 30,
                    width: screenWidth(context),
                    child: Row(
                      children: [
                        Text(
                          'Catatan Aktifitas',
                          style: AssetStyle.primaryText.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: AssetColors.blue,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: AssetColors.blue,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(16),
            Divider(
              thickness: 8,
              color: AssetColors.greyLightes,
            ),
            verticalSpace(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ...List.generate(
                    10,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CardShadow(
                        height: 130,
                        width: screenWidth(context),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'KMP-02001',
                              style: AssetStyle.desText.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            verticalSpace(4),
                            Text(
                              'Turbin & Expansion Join',
                              style: AssetStyle.primaryText.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                            verticalSpace(8),
                            Text(
                              'Perlu diperbaiki lebih lanjut',
                              style: AssetStyle.primaryText.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            verticalSpace(8),
                            CardGrey(
                              padding: EdgeInsets.only(right: 8, left: 8),
                              height: 25,
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    AssetPaths.icImage,
                                    width: 16,
                                  ),
                                  horizontalSpace(6),
                                  Text(
                                    'IMG-00409001.jpg',
                                    style: AssetStyle.desText.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Lihat Foto',
                                    style: AssetStyle.desText.copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                        color: AssetColors.blue),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  verticalSpace(16),
                  CardShadow(
                    height: 90,
                    width: screenWidth(context),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'KMP-02001',
                          style: AssetStyle.desText.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        verticalSpace(4),
                        Text(
                          'Turbin & Expansion Join',
                          style: AssetStyle.primaryText.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                        verticalSpace(8),
                        Text(
                          'Perlu diperbaiki lebih lanjut',
                          style: AssetStyle.primaryText.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        color: Colors.transparent,
        height: 50,
        child: Center(
          child: ButtonPrimary(
            width: 160,
            height: 30,
            label: 'Selesai Perbaikan',
          ),
        ),
      ),
    );
  }
}
