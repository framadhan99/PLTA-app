import 'package:flutter/material.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_paths.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';
import 'package:plta_app/widgets/card/card_grey.dart';
import 'package:plta_app/widgets/card/card_shadow_widget.dart';

class DetailLaporanPage extends StatefulWidget {
  const DetailLaporanPage({super.key});

  @override
  State<DetailLaporanPage> createState() => _DetailLaporanPageState();
}

class _DetailLaporanPageState extends State<DetailLaporanPage> {
  bool more = false;
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
                  height: more ? 125 : screenHeightPercentage(context) * 0.6,
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
                      more
                          ? GestureDetector(
                              onTap: () {
                                setState(() {
                                  more = !more;
                                });
                              },
                              child: Text(
                                'Lihat selengkapnya',
                                style: AssetStyle.desText.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: AssetColors.blue,
                                ),
                              ),
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CardGrey(
                                  height:
                                      screenHeightPercentage(context) * 0.44,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Kondisi',
                                        style: AssetStyle.desText.copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                      verticalSpace(4),
                                      Text(
                                        'Baik',
                                      ),
                                      verticalSpace(8),
                                      Divider(),
                                      verticalSpace(8),
                                      Text(
                                        'Judul Pengecekan',
                                        style: AssetStyle.desText.copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                      verticalSpace(4),
                                      Text(
                                        'Expansion join dicek secara rutin',
                                      ),
                                      verticalSpace(8),
                                      Divider(),
                                      verticalSpace(8),
                                      Text(
                                        'Keterangan Pengecekan',
                                        style: AssetStyle.desText.copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                      verticalSpace(4),
                                      Text(
                                        'Berjalan cukup baik, tidak perlu perawatan lebih',
                                      ),
                                      verticalSpace(8),
                                      Divider(),
                                      verticalSpace(8),
                                      Text(
                                        'Solusi Pengecekan',
                                        style: AssetStyle.desText.copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                      verticalSpace(4),
                                      Text(
                                        'Tidak perlu pengecekan berlanjut',
                                      ),
                                      verticalSpace(8),
                                      Divider(),
                                      verticalSpace(8),
                                      Text(
                                        'Bukti Foto Pengecekan',
                                        style: AssetStyle.desText.copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                      verticalSpace(8),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Mesin T1',
                                                style: AssetStyle.primaryText
                                                    .copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  color:
                                                      AssetColors.primaryColor,
                                                ),
                                              ),
                                              verticalSpace(4),
                                              Text(
                                                'EGN-OT-001001',
                                                style:
                                                    AssetStyle.desText.copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                  color:
                                                      AssetColors.primaryColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                verticalSpace(16),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      more = !more;
                                    });
                                  },
                                  child: Text(
                                    'Sembunyikan',
                                    style: AssetStyle.desText.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AssetColors.blue,
                                    ),
                                  ),
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
    );
  }
}
