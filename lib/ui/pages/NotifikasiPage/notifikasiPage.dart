part of 'pagesNotifikasi.dart';

class NotifikasiPage extends StatefulWidget {
  NotifikasiPage({Key? key}) : super(key: key);

  @override
  _NotifikasiPageState createState() => _NotifikasiPageState();
}

class _NotifikasiPageState extends State<NotifikasiPage> {
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - (2 * defaultPaddingLR);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            color: primaryColor,
          ),
          Container(
            margin: EdgeInsets.only(top: 64, left: 20, right: 20),
            child: Text(
              'Notifikasi',
              style:
                  h1.copyWith(color: whiteColor, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 160),
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Builder(builder: (_) {
                        List<RiwayatDonasi> riwayatdonasi = dummyRiwayatDonasi;
                        return Column(
                          children: riwayatdonasi
                              .map<Widget>((e) => NotifikasiListItem(
                                  riwayatdonasi: e, itemWidth: listItemWidth))
                              .toList(),
                        );
                      })
                    ],
                  )
                ],
              ) //EmptyNotification(),
              )
        ],
      ),
    );
  }
}
