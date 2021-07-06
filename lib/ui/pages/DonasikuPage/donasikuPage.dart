part of 'pagesDonasiku.dart';

class DonasikuPage extends StatefulWidget {
  final Penerima? penerima;

  DonasikuPage({this.penerima});

  @override
  _DonasikuPageState createState() => _DonasikuPageState();
}

class _DonasikuPageState extends State<DonasikuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 240,
            color: primaryColor,
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: 64, left: defaultPaddingLR, right: defaultPaddingLR),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Donasiku',
                      style: h1.copyWith(
                          color: whiteColor, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      NumberFormat.currency(
                              symbol: 'Rp. ', decimalDigits: 0, locale: 'id-ID')
                          .format(widget.penerima!.jumlahDana),
                      style: displaySmall.copyWith(
                          fontWeight: FontWeight.w700, color: whiteColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 200),
            padding: EdgeInsets.only(top: 28, left: 20, right: 20),
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeButtonDonasi(),
                SizedBox(
                  height: 28,
                ),
                Container(
                  child: Text(
                    'Riwayat transaksi',
                    style: bodyTextField.copyWith(
                        color: blackColor, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 320,
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            width: MediaQuery.of(context).size.width -
                                (2 * defaultPaddingLR),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 3,
                                    offset: Offset(0, 6),
                                    color: Color(0xff252525).withOpacity(0.08))
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: greyColor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Susi',
                                            style: bodyTextField.copyWith(
                                                color: blackColor,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            'Donatur',
                                            style: footnoteText.copyWith(
                                                color: blackColor,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            'Rp.100.000',
                                            style: captionText.copyWith(
                                                color: secondaryColor,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                        height: 20,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 12),
                                        decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: Text(
                                          'Diterima',
                                          style: footnoteText.copyWith(
                                              color: whiteColor),
                                        )),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      child: Text(
                                        '14 Juni 2021',
                                        style: captionText.copyWith(
                                            color: greyColor),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
