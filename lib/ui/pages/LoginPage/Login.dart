import 'package:e_sharing/ui/pages/SignupPage/Signup_home.dart';
import 'package:e_sharing/theme.dart';
import 'package:e_sharing/ui/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController telpController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    bool isLoading = false;

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
                              controller: telpController,
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
                        ? SpinKitCircle(
                            size: 45,
                            color: primaryColor,
                          )
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
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MainPage()),
                                          (route) => false);
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
