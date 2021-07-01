import 'package:flutter/material.dart';
import 'package:e_sharing/theme.dart';

class Empty404 extends StatelessWidget {
  const Empty404({Key? key}) : super(key: key);

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
                        'Halaman tidak ditemukan',
                        style: h2Text.copyWith(color: primaryColor),
                      ),
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    Container(
                      width: 302,
                      child: Image.asset('assets/img/404.png'),
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    Container(
                      width: 300,
                      child: Text(
                        'Halaman yang anda tuju sepertinya tidak ditemukan',
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
                              onPressed: () {},
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
