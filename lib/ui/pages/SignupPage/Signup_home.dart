import 'package:e_sharing/ui/pages/LoginPage/Login.dart';
import 'package:e_sharing/ui/pages/SignupPage/Signup_donatur.dart';
import 'package:e_sharing/ui/pages/SignupPage/Signup_penerima1.dart';
import 'package:flutter/material.dart';
import 'package:e_sharing/theme.dart';
import 'package:get/get.dart';

class SignupHome extends StatefulWidget {
  SignupHome({Key? key}) : super(key: key);

  @override
  _SignupHomeState createState() => _SignupHomeState();
}

class _SignupHomeState extends State<SignupHome> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget option(int index, String role) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
            decoration: BoxDecoration(
              color: selectedIndex == index ? primaryColor : whiteColor,
              border: Border.all(
                  color: selectedIndex == index
                      ? Color(0x00ffffff)
                      : Color(0xff4D5B7C)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          role,
                          style: TextStyle(
                              color: selectedIndex == index
                                  ? whiteColor
                                  : blackColor,
                              fontFamily: 'BalooTamma2',
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: whiteColor,
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.only(
                left: defaultPaddingLR,
                right: defaultPaddingLR,
                top: 40,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //NOTE : Text Daftar
              Container(
                child: (Text('Daftar',
                    textAlign: TextAlign.start,
                    style: displayMedium.copyWith(color: primaryColor))),
              ),

              SizedBox(
                height: 8,
              ),

              //NOTE: Ilustrasi Signup
              Center(
                child: Container(
                  child: (Image.asset(
                    'assets/img/daftar.png',
                    width: 230,
                    height: 209,
                  )),
                ),
              ),

              SizedBox(
                height: 28,
              ),

              //NOTE: Text daftar sebagai
              Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Daftar sebagai',
                        style: bodyTextField,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 16,
              ),

              //NOTE: Select Option Button
              option(0, 'Donatur'),
              option(1, 'Penerima'),

              SizedBox(
                height: 100,
              ),

              //NOTE: Button Login
              Container(
                width:
                    MediaQuery.of(context).size.width - (2 * defaultPaddingLR),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                              color: selectedIndex == -1
                                  ? lightenColor
                                  : primaryColor),
                        ),
                      ),
                      Center(
                        child: TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                vertical: 16,
                              ),
                              primary:
                                  selectedIndex == -1 ? greyColor : whiteColor,
                              textStyle: h5,
                              minimumSize: Size(
                                  MediaQuery.of(context).size.width -
                                      defaultPaddingLR,
                                  56)),
                          onPressed: () {
                            // ignore: unnecessary_statements
                            selectedIndex == -1
                                ? null
                                : selectedIndex == 0
                                    ? Get.to(() => DaftarDonatur())
                                    : Get.to(() => DaftarPenerima1());
                          },
                          child: Text(
                            'Lanjutkan',
                            style: buttonText,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 92,
              ),

              Container(
                child: InkWell(
                  onTap: () {
                    Get.to(Login());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah punya akun? ',
                        style: captionText,
                      ),
                      Text(
                        'Masuk',
                        style: captionTextHyperlink,
                      ),
                    ],
                  ),
                ),
              )
            ]),
          )),
        ));
  }
}
