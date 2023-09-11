import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plta_app/config/asset_colors.dart';
import 'package:plta_app/config/asset_paths.dart';
import 'package:plta_app/config/asset_style.dart';
import 'package:plta_app/config/ui_helper.dart';
import 'package:plta_app/widgets/button/button_primary.dart';
import 'package:plta_app/widgets/textfield_general_widget.dart';

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
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: 45,
                  left: 25,
                  right: 25,
                ),
                width: screenWidthPercentage(context) * 0.9,
                height: screenHeightPercentage(context) * 0.75,
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
                    verticalSpace(22),
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
                    TextFieldGeneral(
                      hintText: 'Alamat Email',
                    ),
                    verticalSpace(22),
                    TextFieldGeneral(
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AssetPaths.icEye,
                          width: 22,
                        ),
                      ),
                    ),
                    verticalSpace(screenHeight(context) * 0.1),
                    ButtonPrimary(
                      onTap: () {},
                      label: 'MASUK',
                    ),
                    verticalSpace(22),
                    Text(
                      'Lupa Password?',
                      style: AssetStyle.primaryText.copyWith(
                          color: AssetColors.blueDark,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
