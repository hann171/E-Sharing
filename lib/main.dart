import 'package:e_sharing/Splash_screen.dart';
import 'package:e_sharing/models/models.dart';
import 'package:e_sharing/theme.dart';
import 'package:e_sharing/ui/pages/main_page.dart';
import 'package:e_sharing/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(fontFamily: 'BalooTamma2', backgroundColor: whiteColor),
        home: MainPage() //DetailPenerima(penerima: dummyPenerima[0],)
        );
  }
}
