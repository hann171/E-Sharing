part of 'pagesDonasiku.dart';

class DonasikuPage extends StatefulWidget {
  //final Penerima? penerima;
  //final UserPenerima penerima;
  final User? donatur;

  DonasikuPage({this.donatur});

  @override
  _DonasikuPageState createState() => _DonasikuPageState();
}

class _DonasikuPageState extends State<DonasikuPage> {
  @override
  Widget build(BuildContext context) {
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
                                  .format(double.parse((context
                                          .read<UserCubit>()
                                          .state as UserLoaded)
                                      .user
                                      .jumlahDana)),
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
                                height:
                                    MediaQuery.of(context).size.height - 440,
                                child: Riwayat(
                                    donatur: (context.read<UserCubit>().state
                                            as UserLoaded)
                                        .user))
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
