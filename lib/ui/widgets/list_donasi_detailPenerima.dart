part of 'widgets.dart';

class DonasiDetailPenerima extends StatefulWidget {
  DonasiDetailPenerima({Key? key}) : super(key: key);

  @override
  _DonasiDetailPenerimaState createState() => _DonasiDetailPenerimaState();
}

class _DonasiDetailPenerimaState extends State<DonasiDetailPenerima> {
  List<DonasiDana> daftarDonasiDana = dummyDonasiDana
      .where((element) => element.status == StatusDonasiDana.terverifikasi)
      .toList();
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - (2 * defaultPaddingLR);
    if (daftarDonasiDana.length == 0) {
      return EmptyTransaction();
    } else {
      return Container(
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(builder: (_) {
                  return Column(
                    children: daftarDonasiDana
                        .map<Widget>((e) =>
                            (e.penerima?.nik == "3304427110000005")
                                ? DonasiPenerimaListItem(
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
  }
}
