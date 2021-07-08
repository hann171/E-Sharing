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
    double listItemWidth =
        MediaQuery.of(context).size.width - (2 * defaultPaddingLR);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        color: primaryColor,
                        padding: EdgeInsets.only(left: 20, top: 64),
                        width: double.infinity,
                        height: 212,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Donasiku',
                              style: h1.copyWith(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              NumberFormat.currency(
                                      symbol: 'Rp. ',
                                      decimalDigits: 0,
                                      locale: 'id-ID')
                                  .format(widget.penerima!.jumlahDana),
                              style: displaySmall.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: whiteColor),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
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
                                    color: blackColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height - 440,
                              child: ListView(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Builder(builder: (_) {
                                        List<RiwayatDonasi> riwayatdonasi =
                                            dummyRiwayatDonasi;
                                        return Column(
                                          children: riwayatdonasi
                                              .map<Widget>((e) =>
                                                  RiwayatDonasiListItem(
                                                      riwayatdonasi: e,
                                                      itemWidth: listItemWidth))
                                              .toList(),
                                        );
                                      })
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
