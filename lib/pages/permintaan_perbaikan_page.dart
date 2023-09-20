import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_paths.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';
import 'package:plta_app/widgets/appbar/appbar_primary.dart';
import 'package:plta_app/widgets/button/button_primary.dart';
import 'package:plta_app/widgets/button/button_radio.dart';
import 'package:plta_app/widgets/card/card_grey.dart';
import 'package:plta_app/widgets/texfield/textfield_general_widget.dart';
import 'package:plta_app/widgets/texfield/textfield_search.dart';

class PermintaanPerbaikanPage extends StatefulWidget {
  const PermintaanPerbaikanPage({super.key});

  @override
  State<PermintaanPerbaikanPage> createState() =>
      _PermintaanPerbaikanPageState();
}

class _PermintaanPerbaikanPageState extends State<PermintaanPerbaikanPage> {
  List selected = [
    ['Preventive', true],
    ['Corrective', false],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(title: 'Permintaan Perbaikan'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 100,
              child: TextFieldGeneral(
                expands: true,
                hintText: 'Keterangan Perbaikan',
              ),
            ),
            verticalSpace(16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              width: screenWidth(context),
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: AssetColors.greyLight),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  Text(
                    'Pilih Departemen Terkait',
                    style: AssetStyle.primaryText,
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    AssetPaths.icDropdown,
                    width: 18,
                  )
                ],
              ),
            ),
            verticalSpace(8),
            Row(
              children: [
                Icon(
                  Icons.add,
                  size: 16,
                  color: AssetColors.blue,
                ),
                horizontalSpace(4),
                Text(
                  'Tambah Departemen',
                  style: AssetStyle.primaryText.copyWith(
                    fontSize: 10,
                    color: AssetColors.blue,
                  ),
                ),
              ],
            ),
            verticalSpace(16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              width: screenWidth(context),
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: AssetColors.greyLight),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  Text(
                    'Pilih Prioritas',
                    style: AssetStyle.primaryText,
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    AssetPaths.icDropdown,
                    width: 18,
                  )
                ],
              ),
            ),
            verticalSpace(16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              width: screenWidth(context),
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: AssetColors.greyLight),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lock Tipe Perbaikan',
                        style: AssetStyle.primaryText,
                      ),
                      verticalSpace(8),
                      Text(
                        'Aktifkan jika mmenggunakan Lock Out Tag Out',
                        style: AssetStyle.desText.copyWith(fontSize: 10),
                      ),
                    ],
                  ),
                  Spacer(),
                  CupertinoSwitch(
                    activeColor: AssetColors.blue,
                    value: true,
                    onChanged: (e) {},
                  )
                ],
              ),
            ),
            verticalSpace(16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              width: screenWidth(context),
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: AssetColors.greyLight),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pilih Tipe Perbaikan',
                    style: AssetStyle.primaryText,
                  ),
                  verticalSpace(8),
                  Row(
                    children: [
                      RadioButton(
                        selected: selected[0][1],
                        label: selected[0][0],
                        onTap: () {
                          setState(() {
                            selected[0][1] = !selected[0][1];
                          });
                        },
                      ),
                      Spacer(),
                      RadioButton(
                        selected: selected[1][1],
                        label: selected[1][0],
                        onTap: () {
                          setState(() {
                            selected[1][1] = !selected[1][1];
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            verticalSpace(16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              width: screenWidth(context),
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: AssetColors.greyLight),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  Text(
                    'Mesin T1',
                    style: AssetStyle.primaryText,
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    AssetPaths.icDropdown,
                    width: 18,
                  )
                ],
              ),
            ),
            verticalSpace(16),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      insetPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        height: screenHeightPercentage(context) * 0.8,
                        width: screenWidth(context),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.close,
                                ),
                              ),
                            ),
                            verticalSpace(16),
                            const Text(
                              'Pilih Komponen / Sub Komponen',
                              style: AssetStyle.bigTitle,
                            ),
                            verticalSpace(16),
                            TextFieldSearch(),
                            verticalSpace(16),
                            Container(
                              height: screenHeightPercentage(context) * 0.59,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    ...List.generate(
                                      10,
                                      (int index) => Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16),
                                        child: CardGrey(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16,
                                              vertical: 16,
                                            ),
                                            height: 66,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Draft Tube Manholes',
                                                  style: AssetStyle.primaryText
                                                      .copyWith(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                ),
                                                verticalSpace(4),
                                                Text(
                                                  'KMP-002001',
                                                  style: AssetStyle.desText,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: screenWidth(context),
                height: 40,
                decoration: BoxDecoration(
                  color: AssetColors.greyLightes,
                  border: Border.all(
                    color: AssetColors.greyLight,
                    style: BorderStyle.none,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      size: 20,
                      color: AssetColors.greyLight,
                    ),
                    horizontalSpace(8),
                    Text(
                      'Tambah Komponen / Sub Komponen',
                      style: AssetStyle.primaryText.copyWith(
                        color: AssetColors.greyLight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 60,
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ButtonPrimary(
              color: AssetColors.greyLightes,
              textColor: AssetColors.primaryColor,
              label: 'Batalkan',
              width: screenWidthPercentage(context) * 0.48,
              height: 35,
            ),
            Spacer(),
            ButtonPrimary(
              width: screenWidthPercentage(context) * 0.48,
              height: 35,
              label: 'Simpan',
            )
          ],
        ),
      ),
    );
  }
}
