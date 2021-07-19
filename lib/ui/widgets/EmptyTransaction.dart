import 'package:flutter/material.dart';
import 'package:e_sharing/theme.dart';

class EmptyTransaction extends StatelessWidget {
  const EmptyTransaction({Key? key}) : super(key: key);

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
                    'Belum ada transaksi',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
