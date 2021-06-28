import 'package:flutter/material.dart';
import 'package:e_sharing/theme.dart';

class SignupHome extends StatefulWidget {
  SignupHome({Key? key}) : super(key: key);

  @override
  _SignupHomeState createState() => _SignupHomeState();
}

class _SignupHomeState extends State<SignupHome> {
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
                  'Daftar',
                  textAlign: TextAlign.start,
                  style: displayMediumLogin,
                )),
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
                        'Belum punya akun ?',
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
