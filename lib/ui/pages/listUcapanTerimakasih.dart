part of 'pages.dart';

class ListUcapan extends StatefulWidget {
  @override
  _ListUcapanState createState() => _ListUcapanState();
}

class _ListUcapanState extends State<ListUcapan> {
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - (2 * defaultPaddingLR);
    return Scaffold(
      body: Container(
        child: DetailPage(
          title: 'Ucapan terima kasih',
          onBackButtonPressed: () {},
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(builder: (_) {
                  List<Ucapan> ucapan = dummyUcapan;
                  return Column(
                    children: ucapan
                        .map<Widget>((e) =>
                            UcapanListItem(ucapan: e, itemWidth: listItemWidth))
                        .toList(),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}