import 'package:flutter/material.dart';
import 'package:e_sharing/theme.dart';

class EmptyNotification extends StatelessWidget {
  const EmptyNotification({Key? key}) : super(key: key);

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
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: Text(
                    'Belum ada notifikasi',
                    style: h2Text.copyWith(color: primaryColor),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Container(
                  width: 296,
                  height: 214,
                  child: Image.asset('assets/img/empty_notif.png'),
                ),
                SizedBox(
                  height: 64,
                ),
                Container(
                  width: 300,
                  child: Text(
                    'Notifkasi kamu masih kosong, kembali lagi nanti',
                    style: captionText.copyWith(color: blackColor),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
