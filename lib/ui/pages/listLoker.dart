part of 'pages.dart';

class ListLoker extends StatefulWidget {
  @override
  _ListLokerState createState() => _ListLokerState();
}

class _ListLokerState extends State<ListLoker> {
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - (2 * defaultPaddingLR);
    return Scaffold(
      body: Container(
        child: DetailPage(
          title: 'Lowongan pekerjaan',
          onBackButtonPressed: () {},
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(builder: (_) {
                  List<Loker> loker = dummyLoker;
                  return Column(
                    children: loker
                        .map<Widget>((e) =>
                            LokerListItem(loker: e, itemWidth: listItemWidth))
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
