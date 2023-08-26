import 'package:flutter/material.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/pages/pin_page.dart';
import 'package:plta_app/pages/daftar_komponen_page.dart';
import 'package:plta_app/pages/daftar_sub_komponen_page.dart';
import 'package:plta_app/pages/landing_page.dart';
import 'package:plta_app/pages/login_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<List> pages = [
      [LoginPage(), 'Login'],
      [DaftarKomponenPage(), 'Daftar komponen'],
      [DaftarSubKomponenPage(), 'Daftar  Sub komponen'],
      [LandingPage(), 'Landing'],
      [PinPage(), 'Pin'],
    ];
    return Scaffold(
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => pages[index][0],
                ));
          },
          child: Container(
            margin: EdgeInsets.all(15),
            height: 50,
            decoration: BoxDecoration(color: Colors.indigo),
            alignment: Alignment.center,
            child: Text(
              pages[index][1],
              style: AssetStyle.primaryText.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
