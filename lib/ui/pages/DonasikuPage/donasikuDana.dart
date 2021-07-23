part of 'pagesDonasiku.dart';

class PageDonasiDana extends StatefulWidget {
  final DonasiDana? donasiDana;

  PageDonasiDana({this.donasiDana});

  @override
  _PageDonasiDanaState createState() => _PageDonasiDanaState();
}

class _PageDonasiDanaState extends State<PageDonasiDana> {
  TextEditingController donasiController = TextEditingController();
  bool isSwitched = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  margin: EdgeInsets.only(bottom: 24),
                  padding: EdgeInsets.only(left: 20, bottom: 24, top: 64),
                  width: double.infinity,
                  height: 148,
                  child: Row(
                    children: [
                      Container(
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                        ),
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icons/left.png'))),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Donasi dana',
                        style: h1.copyWith(
                            color: whiteColor, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultPaddingLR),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Masukan nominal',
                                style: bodyTextField.copyWith(
                                    color: blackColor,
                                    fontWeight: FontWeight.w700)),
                            TextFormField(
                              controller: donasiController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(16),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: accentColor)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: greyColor)),
                                hintText: 'Masukan nominal donasi',
                                hintStyle: bodyTextFieldHint,
                              ),
                              keyboardType: TextInputType.text,
                              style: h1.copyWith(
                                color: blackColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Min. donasi sebesar Rp50.000',
                              style: footnoteText.copyWith(
                                  fontWeight: FontWeight.w300,
                                  color: blackColor),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sembunyikan nama saya (anonim)',
                              style: footnoteText.copyWith(
                                  fontWeight: FontWeight.w300,
                                  color: blackColor),
                            ),
                            Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                });
                              },
                              activeTrackColor: lightenColor,
                              activeColor: primaryColor,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        child: Text('Upload bukti transfer',
                            style: bodyTextField.copyWith(
                                color: blackColor,
                                fontWeight: FontWeight.w700)),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width -
                            (2 * defaultPaddingLR),
                        height: 220,
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
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Foto/Screenshot harus jelas, tidak buram',
                              style: footnoteText.copyWith(
                                  fontWeight: FontWeight.w300,
                                  color: greyColor),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Foto/Scrennshot bukti transfer secara keseluruhan, tidak ada yang terpotong',
                              style: footnoteText.copyWith(
                                  fontWeight: FontWeight.w300,
                                  color: greyColor),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                (isLoading)
                    ? Center(child: loadingIndicator)
                    : ClipRRect(
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
                                onPressed: () async {
                                  setState(() {
                                    isLoading = true;
                                  });

                                  bool result = await context
                                      .read<DonasiCubit>()
                                      .submitDonasiDana(widget.donasiDana!
                                          .copyWith(
                                              donatur:
                                                  (context
                                                          .read<UserCubit>()
                                                          .state as UserLoaded)
                                                      .user,
                                              jumlahDana: donasiController.text,
                                              tglDonasi: DateTime.now(),
                                              penerima: widget
                                                  .donasiDana!.penerima!));

                                  if (result == true) {
                                    Get.to(Welldone());
                                  } else {
                                    setState(() {
                                      isLoading = false;
                                    });
                                    Get.snackbar("", "",
                                        backgroundColor: accentColor,
                                        icon: Icon(
                                          CupertinoIcons.multiply_circle,
                                          color: whiteColor,
                                        ),
                                        titleText: Text('Donasi gagal',
                                            style: h3Text.copyWith(
                                                color: whiteColor,
                                                fontWeight: FontWeight.w600)),
                                        messageText: Text(
                                            'Coba lagi beberapa saat lagi',
                                            style: bodyTextField.copyWith(
                                                color: whiteColor)));
                                  }
                                },
                                child: Text(
                                  'Kirim donasi',
                                  style: buttonText,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
