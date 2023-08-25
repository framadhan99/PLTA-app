import 'package:flutter/material.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/bg-login.png'))),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: screenWidthPercentage(context) * 0.9,
              height: screenHeightPercentage(context) * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/logo.png'))),
                  ),
                  Text(
                    'Selamat datang di PROMIS',
                    style: AssetStyle.bigTitle,
                  ),
                  verticalSpace(10),
                  Text(
                    'Powerplant Operation & Maintenace Information System',
                    style: AssetStyle.desText,
                  ),
                  verticalSpace(48),
                  Text(
                    'Masuk ke akun dengan memasukkan alamat email \ndan pin yang sudah didaftarkan',
                    textAlign: TextAlign.center,
                    style: AssetStyle.primaryText,
                  ),
                  verticalSpace(48),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
