import 'package:e_sharing/cubit/cubit.dart';
import 'package:e_sharing/cubit/ucapan_cubit.dart';
import 'package:e_sharing/ui/pages/SignupPage/Signup_home.dart';
import 'package:e_sharing/theme.dart';
import 'package:e_sharing/ui/pages/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nikController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  //NOTE : Text Masuk
                  Container(
                    child: (Text(
                      'Masuk',
                      textAlign: TextAlign.start,
                      style: displayMedium.copyWith(color: primaryColor),
                    )),
                  ),

                  SizedBox(
                    height: 8,
                  ),

                  //NOTE: Ilustrasi Login
                  Center(
                    child: Container(
                      child: (Image.asset(
                        'assets/img/login.png',
                        width: 230,
                        height: 209,
                      )),
                    ),
                  ),

                  SizedBox(
                    height: 28,
                  ),

                  //NOTE: Kolom Form Login
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'NIK',
                                style: bodyTextField,
                              ),
                            ),
                            TextFormField(
                              controller: nikController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(16),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: accentColor)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: greyColor)),
                                hintText: 'Masukan NIK',
                                hintStyle: bodyTextFieldHint,
                              ),
                              keyboardType: TextInputType.phone,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Password',
                                style: bodyTextField,
                              ),
                            ),
                            TextFormField(
                              controller: passwordController,
                              obscureText: true,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: accentColor)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: greyColor)),
                                  hintText: 'Masukan password',
                                  hintStyle: bodyTextFieldHint),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),

                        //NOTE: Lupa Password
                        Container(
                          child: InkWell(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Lupa password ?',
                                style: captionTextLogin,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 68,
                  ),

                  //NOTE: Button Login
                  Container(
                    width: MediaQuery.of(context).size.width -
                        (2 * defaultPaddingLR),
                    // ignore: dead_code
                    child: isLoading
                        ? loadingIndicator
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Container(
                                    decoration:
                                        BoxDecoration(color: primaryColor),
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
                                    onPressed: () async {
                                      /*Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MainPage()),
                                          (route) => false);*/

                                      setState(() {
                                        isLoading = true;
                                      });

                                      await context.read<UserCubit>().signIn(
                                          nikController.text,
                                          passwordController.text);
                                      UserState state =
                                          context.read<UserCubit>().state;

                                      if (state is UserLoaded) {
                                        context
                                            .read<PenerimaCubit>()
                                            .getPenerima();
                                        context.read<LokerCubit>().getLoker();
                                        context
                                            .read<ArtikelCubit>()
                                            .getArtikel();
                                        context.read<UcapanCubit>().getUcapan();
                                        context
                                            .read<DonasiCubit>()
                                            .getDonasiDana();
                                        Get.to(MainPage());
                                      } else {
                                        Get.snackbar("", "",
                                            backgroundColor: primaryColor,
                                            icon: Icon(
                                              CupertinoIcons.multiply_circle,
                                              color: whiteColor,
                                            ),
                                            titleText: Text(
                                              "Login gagal",
                                              style: h3Text.copyWith(
                                                  color: whiteColor,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            messageText: Text(
                                              (state as UserLoadingFailed)
                                                  .message,
                                              style: bodyTextField.copyWith(
                                                  color: whiteColor),
                                            ));
                                        setState(() {
                                          isLoading = false;
                                        });
                                      }
                                    },
                                    child: Text(
                                      'Login',
                                      style: buttonText,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                  ),
                ]),
                SizedBox(height: 92),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupHome()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum punya akun? ',
                        style: captionText,
                      ),
                      Text(
                        'Daftar',
                        style: captionTextHyperlink,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
