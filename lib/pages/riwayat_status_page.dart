import 'package:flutter/material.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';
import 'package:plta_app/widgets/button/button_primary.dart';
import 'package:plta_app/widgets/texfield/textfield_general_widget.dart';

class RiwayatStatusPage extends StatelessWidget {
  const RiwayatStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ButtonPrimary(
          label: 'Tekan aja',
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  insetPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 48),
                    height: screenHeightPercentage(context) * 0.45,
                    width: screenWidth(context),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Catatan Aktivitas',
                            style: AssetStyle.bigTitle,
                          ),
                        ),
                        verticalSpace(32),
                        Container(
                          padding: EdgeInsets.only(left: 16, right: 8),
                          width: screenWidth(context),
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: AssetColors.greyLight),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Foto Aktivitas Perbaikan',
                                style: AssetStyle.primaryText.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              Spacer(),
                              Container(
                                margin: EdgeInsets.only(top: 6, bottom: 6),
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: AssetColors.blue,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Unggah Foto',
                                  style: AssetStyle.primaryText.copyWith(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        verticalSpace(16),
                        Container(
                          height: 100,
                          child: TextFieldGeneral(
                            expands: true,
                            hintText: 'Keterangan Aktivitas',
                            hintStyle: AssetStyle.primaryText.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        verticalSpace(32),
                        Row(
                          children: [
                            Flexible(
                              child: ButtonPrimary(
                                color: AssetColors.blueLight,
                                height: 30,
                                label: 'BATAL',
                                labelStyle: AssetStyle.primaryText,
                                onTap: () => Navigator.pop(context),
                              ),
                            ),
                            horizontalSpace(16),
                            Flexible(
                              child: ButtonPrimary(
                                height: 30,
                                label: 'SIMPAN',
                                onTap: () => Navigator.pop(context),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
