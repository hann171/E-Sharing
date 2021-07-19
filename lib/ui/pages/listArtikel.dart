part of 'pages.dart';

class ListArtikel extends StatefulWidget {
  @override
  _ListArtikelState createState() => _ListArtikelState();
}

class _ListArtikelState extends State<ListArtikel> {
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - (2 * defaultPaddingLR);
    return Scaffold(
      body: Container(
        child: ListPage(
          title: 'Artikel bisnis',
          onBackButtonPressed: () {},
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(builder: (_) {
                  List<DonasiNonDana> artikel = dummyDonasiNonDana;
                  return Column(
                    children: artikel
                        .map<Widget>((e) => (e.kategori==KategoriDonasi.loker) ? ArtikelListItem(
                            artikel: e, itemWidth: listItemWidth) : SizedBox())
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
