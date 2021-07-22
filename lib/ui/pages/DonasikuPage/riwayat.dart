part of 'pagesDonasiku.dart';

class Riwayat extends StatefulWidget {
  final User? donatur;

  Riwayat({this.donatur});

  @override
  _RiwayatState createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  List<DonasiDana> daftarDonasiDana = dummyDonasiDana
      .where((element) =>
          element.status == StatusDonasiDana.terverifikasi ||
          element.status == StatusDonasiDana.belumVerifikasi)
      .toList();

  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - (2 * defaultPaddingLR);
    if (daftarDonasiDana.length == 0) {
      return EmptyTransaction();
    } else {
      return Container(
        height: MediaQuery.of(context).size.height - 440,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(builder: (_) {
                  return Column(
                    children: daftarDonasiDana
                        .map<Widget>((e) =>
                            (e.donatur!.nik == "3302241701000004")
                                ? RiwayatDonasiListItem(
                                    daftarDonasiDana: e,
                                    itemWidth: listItemWidth)
                                : SizedBox())
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
      );
    }
    /**/
  }
}
