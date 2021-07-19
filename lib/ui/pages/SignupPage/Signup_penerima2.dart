import 'package:e_sharing/ui/pages/LoginPage/Login.dart';
import 'package:flutter/material.dart';
import 'package:e_sharing/theme.dart';
import 'package:get/get.dart';

class DaftarPenerima2 extends StatefulWidget {
  DaftarPenerima2({Key? key}) : super(key: key);

  @override
  _DaftarPenerima2State createState() => _DaftarPenerima2State();
}

class _DaftarPenerima2State extends State<DaftarPenerima2> {
  @override
  Widget build(BuildContext context) {
    TextEditingController norekController = TextEditingController();
    TextEditingController descekoController = TextEditingController();

    return Scaffold(
      backgroundColor: whiteColor,
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
                            'No. rekening',
                            style: bodyTextField,
                          ),
                        ),
                        TextFormField(
                          controller: norekController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(16),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: accentColor)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: greyColor)),
                            hintText: 'Masukan No.rekening',
                            hintStyle: bodyTextFieldHint,
                          ),
                          keyboardType: TextInputType.number,
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
                            'Deskripsi singkat kondisi ekonomi',
                            style: bodyTextField,
                          ),
                        ),
                        TextFormField(
                          controller: descekoController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(16),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: accentColor)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: greyColor)),
                              hintText:
                                  'contoh: jumlah pendapatan, jumlah tanggungan,dll',
                              hintStyle: bodyTextFieldHint,
                              hintMaxLines: 2),
                          maxLines: 3,
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
                            'Foto Kartu Keluarga',
                            style: bodyTextField,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width -
                              (2 * defaultPaddingLR),
                          height: 179,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff252525).withOpacity(0.08),
                                    blurRadius: 30,
                                    offset: Offset(0, 4))
                              ],
                              color: whiteColor),
                          child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                            image: AssetImage('assets/img/upgambar.png'),
                            fit: BoxFit.cover,
                          ))),
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
                            'Foto Surat PHK',
                            style: bodyTextField,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width -
                              (2 * defaultPaddingLR),
                          height: 179,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff252525).withOpacity(0.08),
                                    blurRadius: 30,
                                    offset: Offset(0, 4))
                              ],
                              color: whiteColor),
                          child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                            image: AssetImage('assets/img/upgambar.png'),
                            fit: BoxFit.cover,
                          ))),
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
                            'Foto SKTM (Surat Keterangan Tidak Mampu)',
                            style: bodyTextField,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width -
                              (2 * defaultPaddingLR),
                          height: 179,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff252525).withOpacity(0.08),
                                    blurRadius: 30,
                                    offset: Offset(0, 4))
                              ],
                              color: whiteColor),
                          child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                            image: AssetImage('assets/img/upgambar.png'),
                            fit: BoxFit.cover,
                          ))),
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
                            'Foto rumah tampak depan',
                            style: bodyTextField,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width -
                              (2 * defaultPaddingLR),
                          height: 179,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff252525).withOpacity(0.08),
                                    blurRadius: 30,
                                    offset: Offset(0, 4))
                              ],
                              color: whiteColor),
                          child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                            image: AssetImage('assets/img/upgambar.png'),
                            fit: BoxFit.cover,
                          ))),
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
                              textStyle: h5Text,
                              minimumSize: Size(
                                  MediaQuery.of(context).size.width -
                                      defaultPaddingLR,
                                  56)),
                          onPressed: () {},
                          child: Text(
                            'Daftar',
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
                        'Sudah punya akun? ',
                        style: captionText,
                      ),
                      Text(
                        'Masuk',
                        style: captionTextHyperlink,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ]),
          ],
        ),
      ))),
    );
  }
}
