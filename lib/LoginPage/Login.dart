import 'package:e_sharing/SignupPage/Signup_home.dart';
import 'package:e_sharing/theme.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //NOTE : Text Masuk
              Container(
                child: (Text(
                  'Masuk',
                  textAlign: TextAlign.start,
                  style: displayMediumLogin,
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
                child: Column(
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'No. Telp',
                                style: bodyTextField,
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(16, 8, 16, 8),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: accentColor)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: greyColor)),
                                hintText: 'Masukan no. telp',
                                hintStyle: bodyTextFieldHint,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
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
                              obscureText: true,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(16, 8, 16, 8),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide:
                                          BorderSide(color: accentColor)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(color: greyColor)),
                                  hintText: 'Masukan password',
                                  hintStyle: bodyTextFieldHint),
                            ),
                          ],
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
                height: 48,
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
                              textStyle: h5,
                              minimumSize: Size(
                                  MediaQuery.of(context).size.width -
                                      defaultPaddingLR,
                                  56)),
                          onPressed: () {},
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

              SizedBox(
                height: 90,
              ),

              Container(
                child: InkWell(
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
                ),
              )
            ]),
          )),
        ));
  }
}
