part of 'pages.dart';

class DetailPenerima extends StatelessWidget {
  //final Penerima? penerima;
  final DonasiDana? donasiDana;
  final User? penerima;

  DetailPenerima({this.donasiDana, this.penerima});

  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - (2 * defaultPaddingLR);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: primaryColor,
          ),
          SafeArea(child: Container(color: whiteColor)),
          SafeArea(
            child: Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                  /*image: DecorationImage(
                      image: NetworkImage(widget.loker.pathThumbnail),
                      fit: BoxFit.cover)*/
                  color: lightGreyColor),
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      height: 64,
                      padding:
                          EdgeInsets.symmetric(horizontal: defaultPaddingLR),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/icons/leftShaped.png')))),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 200),
                      padding: EdgeInsets.symmetric(
                          vertical: defaultPaddingLR,
                          horizontal: defaultPaddingLR),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: whiteColor),
                      child: Column(children: [
                        Container(
                          width: MediaQuery.of(context).size.width -
                              (2 * defaultPaddingLR),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: whiteColor,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 6,
                                    offset: Offset(0, 4),
                                    color: Color(0xff252525).withOpacity(0.08))
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Terkumpul',
                                style: bodyTextField.copyWith(
                                    color: blackColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      NumberFormat.currency(
                                              symbol: 'Rp. ',
                                              decimalDigits: 0,
                                              locale: 'id-ID')
                                          .format(double.parse(donasiDana!
                                              .penerima!.jumlahDana)),
                                      style: bodyTextField.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: secondaryColor),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    child: Text('dari Rp.500.000',
                                        style: captionText.copyWith(
                                            color: blackColor)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                child: LinearPercentIndicator(
                                  width: MediaQuery.of(context).size.width -
                                      (2 * defaultPaddingLR + 32),
                                  animation: true,
                                  lineHeight: 10.0,
                                  animationDuration: 2500,
                                  percent: double.parse(
                                          donasiDana!.penerima!.jumlahDana) /
                                      500000.0,
                                  linearStrokeCap: LinearStrokeCap.roundAll,
                                  progressColor: primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width -
                              (2 * defaultPaddingLR),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: whiteColor,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 6,
                                    offset: Offset(0, 4),
                                    color: Color(0xff252525).withOpacity(0.08))
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Informasi penerima',
                                style: bodyTextField.copyWith(
                                    color: blackColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icons/ic_profile_selected.png'))),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        donasiDana!.penerima!.namaDpn +
                                            ' ' +
                                            donasiDana!.penerima!.namaBlkng,
                                        style: bodyTextField.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: blackColor,
                                            height: 1),
                                      ),
                                      Text(
                                        'Identitas terverifikasi',
                                        style: captionText.copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: accentColor),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icons/briefcase.png'))),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        donasiDana!.penerima!.pekerjaan,
                                        style: bodyTextField.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: blackColor,
                                            height: 1),
                                      ),
                                      Text(
                                        'Disertai dokumen pendukung',
                                        style: captionText.copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: accentColor),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width -
                              (2 * defaultPaddingLR),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: whiteColor,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 6,
                                    offset: Offset(0, 4),
                                    color: Color(0xff252525).withOpacity(0.08))
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Deskripsi keadaan ekonomi',
                                style: bodyTextField.copyWith(
                                    color: blackColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                donasiDana!.penerima!.deskripsiEko,
                                style: bodyTextField.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: blackColor,
                                    height: 1),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width -
                              (2 * defaultPaddingLR),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: whiteColor,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 6,
                                    offset: Offset(0, 4),
                                    color: Color(0xff252525).withOpacity(0.08))
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jumlah tanggungan',
                                style: bodyTextField.copyWith(
                                    color: blackColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icons/group.png'))),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        donasiDana!.penerima!.jumlahTanggungan,
                                        style: bodyTextField.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: blackColor,
                                            height: 1),
                                      ),
                                      Text(
                                        'Kartu Keluarga (KK) terverifikasi',
                                        style: captionText.copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: accentColor),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width -
                                (2 * defaultPaddingLR),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      spreadRadius: 6,
                                      offset: Offset(0, 4),
                                      color:
                                          Color(0xff252525).withOpacity(0.08))
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Donasi',
                                  style: bodyTextField.copyWith(
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                DonasiDetailPenerima(user: donasiDana?.penerima)
                              ],
                            )),
                      ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 64,
                )
              ],
            ),
          ),
          SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
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
                        onPressed: () {
                          Get.to(PageDonasiDana(
                            donasiDana: donasiDana?.copyWith(
                              penerima: penerima,
                            ),
                          ));
                        },
                        child: Text(
                          'Donasi sekarang',
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
    );
  }
}
