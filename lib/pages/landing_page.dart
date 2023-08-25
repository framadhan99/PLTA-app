import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_paths.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';
import 'package:plta_app/pages/tab/tab_belum_dikerjakan.dart';
import 'package:plta_app/pages/tab/tab_sudah_dikerjakan.dart';
import 'package:plta_app/widgets/card/card_grey.dart';
import 'package:plta_app/widgets/chip/chip_primary.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
  // TabController _controller = TabController(length: 2, vsync: this);
  List chip = [
    [
      true,
      'Belum dikerjakan',
    ],
    [
      false,
      'Sudah dikerjakan',
    ],
  ];

  List<Widget> tab = [
    const Text(
      'Messages',
    ),
    const Text(
      'Details',
    ),
    const Text(
      'Help',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    TabController _controller = TabController(length: 2, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(20),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset(AssetPaths.imgProfile),
                  ),
                  horizontalSpace(16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ahmad Adhi Pratikno',
                        style: AssetStyle.bigTitle.copyWith(fontSize: 16),
                      ),
                      verticalSpace(6),
                      Text(
                        'TID-11480001',
                        style: AssetStyle.primaryText.copyWith(fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
              verticalSpace(16),
              Row(
                children: [
                  CardGrey(
                    padding: EdgeInsets.all(0),
                    height: 40,
                    width: screenWidthPercentage(context) * 0.43,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AssetPaths.icRiwayat,
                          width: 10,
                        ),
                        horizontalSpace(6),
                        Text(
                          'Riwayat Pemeliharaan',
                          style: AssetStyle.desText.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  CardGrey(
                    padding: EdgeInsets.all(0),
                    height: 40,
                    width: screenWidthPercentage(context) * 0.43,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AssetPaths.icRiwayat,
                          width: 10,
                        ),
                        horizontalSpace(6),
                        Text(
                          'Riwayat Pemeliharaan',
                          style: AssetStyle.desText.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              // verticalSpace(16),
              Container(
                height: 160,
                // decoration: BoxDecoration(color: Colors.grey),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EasyDateTimeLine(
                      initialDate: DateTime.now(),
                      onDateChange: (selectedDate) {
                        //[selectedDate] the new date selected.
                      },
                      dayProps: const EasyDayProps(
                        dayStructure: DayStructure.dayNumDayStr,
                        height: 75,
                        activeDayDecoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: AssetColors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(16),
              Text(
                'Hari ini, 13 Agustus 2023',
                style: AssetStyle.bigTitle.copyWith(
                  fontSize: 14,
                ),
              ),
              verticalSpace(24),
              Container(
                height: 35,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: _controller,
                    labelColor: AssetColors.blue,
                    labelPadding:
                        EdgeInsets.only(right: 16, left: 16, top: 0, bottom: 0),
                    isScrollable: true,
                    unselectedLabelColor: AssetColors.greyLight,
                    indicator: BoxDecoration(
                        color: AssetColors.blueLight,
                        borderRadius: BorderRadius.circular(8)),
                    tabs: [
                      Tab(
                        child: Text('Belum dikerjakan'),
                      ),
                      Tab(
                        child: Text('Sudah dikerjakan'),
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpace(28),
              SizedBox(
                height: screenHeightPercentage(context) * 0.53,
                child: TabBarView(
                  controller: _controller,
                  children: [
                    TabBelumDikerjakan(),
                    TabSudahDikerjakan(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
