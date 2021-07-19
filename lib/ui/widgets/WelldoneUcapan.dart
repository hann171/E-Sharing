import 'package:e_sharing/ui/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:e_sharing/theme.dart';

class WelldoneUcapan extends StatelessWidget {
  const WelldoneUcapan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: whiteColor,
          child: Container(
            width: MediaQuery.of(context).size.width - (2 * defaultPaddingLR),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      child: Text(
                        'Ucapan anda sudah terkirim',
                        style: h2Text.copyWith(color: primaryColor),
                      ),
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    Container(
                      width: 296,
                      height: 240,
                      child: Image.asset('assets/img/welldone.png'),
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    Container(
                      width: 320,
                      child: Text(
                        'Ucapan terimakasih anda telah di kirim.\nSemoga dana yang diterima dapat bermanfaat',
                        style: captionText.copyWith(color: blackColor),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(color: primaryColor),
                            ),
                          ),
                          Center(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 16,
                                  ),
                                  primary: whiteColor,
                                  textStyle: h5Text,
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width -
                                          defaultPaddingLR,
                                      56)),
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MainPage()),
                                    (route) => false);
                              },
                              child: Text(
                                'Beranda',
                                style: buttonText,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
