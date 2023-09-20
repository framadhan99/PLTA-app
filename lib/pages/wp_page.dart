import 'package:flutter/material.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_paths.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';
import 'package:plta_app/widgets/appbar/appbar_primary.dart';
import 'package:plta_app/widgets/card/card_grey.dart';

class WPPage extends StatelessWidget {
  const WPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarPrimary(title: 'Work Permit'),
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
                      Container(
                        width: 40,
                        height: 40,
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
                            'Riko Ferdinan',
                            style: AssetStyle.primaryText.copyWith(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          verticalSpace(4),
                          Row(
                            children: [
                              Text(
                                'Supervisor HSE-',
                                style: AssetStyle.primaryText.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                'Divisi Kesehatan dan Keselamatan kerja',
                                style: AssetStyle.desText.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          verticalSpace(4),
                          Text(
                            'Dibuat tanggal 13 September 2023, 14:55:35 WIB',
                            style: AssetStyle.desText.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  verticalSpace(16),
                  Text(
                    'Estimasi waktu 120 Menit',
                    style: AssetStyle.desText.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 8,
                    ),
                  ),
                  verticalSpace(6),
                  Row(
                    children: [
                      Text(
                        'Peralatan yang Diperlukan ',
                        style: AssetStyle.desText.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 8,
                        ),
                      ),
                      Text(
                        'Bor Listrik, Meteran, Baut, Kabel Roll dan Water Pass',
                        style: AssetStyle.primaryText.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(16),
                  Container(
                    height: 80,
                    width: screenWidth(context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AssetColors.greyLightes),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 16),
                          height: 30,
                          width: screenWidth(context),
                          decoration: BoxDecoration(
                            color: AssetColors.greyLightes,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Diberikan Izin Kepada',
                            style: AssetStyle.primaryText.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                        verticalSpace(8),
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Row(
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
                                    'Andi Ferdiansyah',
                                    style: AssetStyle.primaryText.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  verticalSpace(4),
                                  Text(
                                    'TID-140219970001',
                                    style: AssetStyle.desText.copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(8),
                  Container(
                    height: 140,
                    width: screenWidth(context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AssetColors.greyLightes),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 16),
                          height: 30,
                          width: screenWidth(context),
                          decoration: BoxDecoration(
                            color: AssetColors.greyLightes,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Pekerja',
                            style: AssetStyle.primaryText.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                        verticalSpace(8),
                        Padding(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: Column(
                            children: [
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Andi Ferdiansyah',
                                        style: AssetStyle.primaryText.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      verticalSpace(4),
                                      Text(
                                        'TID-140219970001',
                                        style: AssetStyle.desText.copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              verticalSpace(4),
                              Divider(
                                thickness: 1,
                                color: AssetColors.greyLightes,
                              ),
                              verticalSpace(4),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Andi Ferdiansyah',
                                        style: AssetStyle.primaryText.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      verticalSpace(4),
                                      Text(
                                        'TID-140219970001',
                                        style: AssetStyle.desText.copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(8),
                  Container(
                    height: 140,
                    width: screenWidth(context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AssetColors.greyLightes),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 16),
                          height: 30,
                          width: screenWidth(context),
                          decoration: BoxDecoration(
                            color: AssetColors.greyLightes,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Penanggung Jawab',
                            style: AssetStyle.primaryText.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                        verticalSpace(8),
                        Padding(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: Column(
                            children: [
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Andi Ferdiansyah',
                                        style: AssetStyle.primaryText.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      verticalSpace(4),
                                      Text(
                                        'TID-140219970001',
                                        style: AssetStyle.desText.copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              verticalSpace(4),
                              Divider(
                                thickness: 1,
                                color: AssetColors.greyLightes,
                              ),
                              verticalSpace(4),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Andi Ferdiansyah',
                                        style: AssetStyle.primaryText.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      verticalSpace(4),
                                      Text(
                                        'TID-140219970001',
                                        style: AssetStyle.desText.copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(16),
            Divider(
              thickness: 6,
              color: AssetColors.greyLightes,
            ),
            verticalSpace(16),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  CardGrey(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    height: 30,
                    child: Row(
                      children: [
                        Text(
                          'Klasifikasi Pekerjaan',
                          style: AssetStyle.primaryText.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text(
                          'Tinggi Risiko (Ledakan)',
                          style: AssetStyle.primaryText.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(8),
                  CardGrey(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    height: 80,
                    child: Column(
                      children: [
                        Text(
                          'Semua area dan peralatan yang diperlukan telah diperiksa dan dibersihkan demi keselamatan',
                          style: AssetStyle.primaryText.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        verticalSpace(6),
                        Row(
                          children: [
                            Text(
                              'Pilihan',
                              style: AssetStyle.desText.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            horizontalSpace(4),
                            Text(
                              'Iya',
                              style: AssetStyle.primaryText.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        verticalSpace(4),
                        Row(
                          children: [
                            Text(
                              'Catatan',
                              style: AssetStyle.desText.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            horizontalSpace(4),
                            Text(
                              'Dapat dikerjakan lebih lanjut',
                              style: AssetStyle.primaryText.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            verticalSpace(16),
            Divider(
              thickness: 6,
              color: AssetColors.greyLightes,
            ),
            verticalSpace(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cek List',
                    style: AssetStyle.primaryText
                        .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  verticalSpace(16),
                  ...List.generate(
                      10,
                      (index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Semua perangkat listrik telah diisolasi dan di beri penanda',
                                style: AssetStyle.primaryText.copyWith(
                                    fontSize: 10, fontWeight: FontWeight.w500),
                              ),
                              Divider(
                                thickness: 1,
                                color: AssetColors.greyLightes,
                              )
                            ],
                          ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
