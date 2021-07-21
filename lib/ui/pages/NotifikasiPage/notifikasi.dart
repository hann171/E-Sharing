part of 'pagesNotifikasi.dart';

class Notifikasi extends StatefulWidget {
  Notifikasi({Key? key}) : super(key: key);

  @override
  _NotifikasiState createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  List<DonasiDana> daftarDonasiDana = dummyDonasiDana
      .where((element) => element.status == StatusDonasiDana.terverifikasi)
      .toList();
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - (2 * defaultPaddingLR);
    if (daftarDonasiDana.length == 0) {
      return EmptyNotification();
    } else {
      return Container(
        child: ListView(
          children: [
            Column(
              children: [
                Builder(builder: (_) {
                  return Column(
                    children: daftarDonasiDana
                        .map<Widget>((e) =>
                            (e.donatur?.nikDonatur == "3302241701000004")
                                ? NotifikasiListItem(
                                    daftarDonasiDana: e,
                                    itemWidth: listItemWidth)
                                : SizedBox())
                        .toList(),
                  );
                })
              ],
            )
          ],
        ),
      );
    }
  }
}
