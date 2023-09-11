import 'package:flutter/material.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';
import 'package:plta_app/widgets/appbar/appbar_primary.dart';
import 'package:plta_app/widgets/button/button_radio.dart';
import 'package:plta_app/widgets/card/card_grey.dart';
import 'package:plta_app/widgets/texfield/textfield_general_widget.dart';

class SubKomponenInputPage extends StatefulWidget {
  const SubKomponenInputPage({super.key});

  @override
  State<SubKomponenInputPage> createState() => _SubKomponenInputPageState();
}

class _SubKomponenInputPageState extends State<SubKomponenInputPage> {
  List selected = [
    ['Kondisi Baik', true],
    ['Kondisi Tidak Baik', false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(title: 'Sub Komponen'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CardGrey(
              height: 105,
              child: Column(
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
                    'Expension Joint',
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
            ),
            verticalSpace(16),
            TextFieldGeneral(hintText: 'Judul Pengecekan'),
            verticalSpace(16),
            TextFieldGeneral(hintText: 'Keterangan Pengecekan'),
            verticalSpace(16),
            TextFieldGeneral(hintText: 'Solusi Pengecekan'),
            verticalSpace(16),
            TextFieldGeneral(
              hintText: 'Bukti Foto Pengecekan',
              suffixIcon: GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(top: 12, bottom: 12, right: 16),
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AssetColors.blue,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Unggah Foto',
                    style: AssetStyle.primaryText
                        .copyWith(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            ),
            verticalSpace(16),
            Container(
              height: 100,
              width: screenWidth(context),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AssetColors.greyLight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pilih Kondisi'),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
