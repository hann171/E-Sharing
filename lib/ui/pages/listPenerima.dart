part of 'pages.dart';

class ListPenerima extends StatefulWidget {
  @override
  _ListPenerimaState createState() => _ListPenerimaState();
}

class _ListPenerimaState extends State<ListPenerima> {
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - (2 * defaultPaddingLR);
    return Scaffold(
      body: Container(
        child: ListPage(
          title: 'Pilihan kami',
          onBackButtonPressed: () {},
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Penerima donasi pilihan kami',
                    style: bodyTextField.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Builder(builder: (_) {
                  List<Penerima> penerima = dummyPenerima;
                  return Column(
                    children: penerima
                        .map<Widget>((e) => PenerimaListItem(
                            penerima: e, itemWidth: listItemWidth))
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
