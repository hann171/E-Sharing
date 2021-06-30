import 'package:e_sharing/ui/pages/LoginPage/Login.dart';
import 'package:flutter/material.dart';
import 'package:e_sharing/theme.dart';

class DaftarPenerima1 extends StatefulWidget {
  const DaftarPenerima1({Key? key}) : super(key: key);

  @override
  _DaftarPenerima1State createState() => _DaftarPenerima1State();
}

class _DaftarPenerima1State extends State<DaftarPenerima1> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nikController = TextEditingController();
    TextEditingController namadepanController = TextEditingController();
    TextEditingController namabelakangController = TextEditingController();
    TextEditingController alamatController = TextEditingController();
    TextEditingController telpController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
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
                  'Daftar Penerima',
                  textAlign: TextAlign.start,
                  style: displaySmall.copyWith(color: primaryColor),
                )),
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
                            'Nama depan',
                            style: bodyTextField,
                          ),
                        ),
                        TextFormField(
                          controller: namadepanController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(16),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: accentColor)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: greyColor)),
                            hintText: 'Masukan Nama depan',
                            hintStyle: bodyTextFieldHint,
                          ),
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
                            'Nama belakang',
                            style: bodyTextField,
                          ),
                        ),
                        TextFormField(
                          controller: namabelakangController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(16),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: accentColor)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: greyColor)),
                            hintText: 'Masukan Nama belakang',
                            hintStyle: bodyTextFieldHint,
                          ),
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
                            'Alamat',
                            style: bodyTextField,
                          ),
                        ),
                        TextFormField(
                          controller: alamatController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(16),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: accentColor)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: greyColor)),
                            hintText: 'Masukan Alamat',
                            hintStyle: bodyTextFieldHint,
                          ),
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
                            'No. Telp',
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
                            hintText: 'Masukan no. telp',
                            hintStyle: bodyTextFieldHint,
                          ),
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
                                  borderSide: BorderSide(color: accentColor)),
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
                  ],
                ),
              ),

              SizedBox(
                height: 40,
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
                          onPressed: () {
                            // ignore: unnecessary_statements
                          },
                          child: Text(
                            'Lanjutkan',
                            style: buttonText,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 32,
              ),

              Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah punya akun ?',
                        style: captionText,
                      ),
                      Text(
                        'Masuk',
                        style: captionTextHyperlink,
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ],
        ),
      ))),
    );
  }
}
