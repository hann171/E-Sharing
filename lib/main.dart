import 'package:e_sharing/Splash_screen.dart';
import 'package:e_sharing/cubit/cubit.dart';
import 'package:e_sharing/cubit/loker_cubit.dart';
import 'package:e_sharing/cubit/ucapan_cubit.dart';
import 'package:e_sharing/theme.dart';
import 'package:e_sharing/ui/pages/LoginPage/Login.dart';
import 'package:e_sharing/ui/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserCubit()),
        BlocProvider(create: (context) => PenerimaCubit()),
        BlocProvider(create: (context) => DonasiCubit()),
        BlocProvider(create: (context) => LokerCubit()),
        BlocProvider(create: (context) => ArtikelCubit()),
        BlocProvider(create: (context) => UcapanCubit())
      ],
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme:
              ThemeData(fontFamily: 'BalooTamma2', backgroundColor: whiteColor),
          home: Login()),
    );
  }
}
