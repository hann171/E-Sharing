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
                BlocBuilder<ArtikelCubit, ArtikelState>(builder: (_, state) {
                  if (state is ArtikelLoaded) {
                    List<DonasiNonDana> artikel = state.artikel;
                    return Column(
                      children: artikel
                          .map<Widget>((e) => (e.kategori ==
                                      KategoriDonasi.artikel &&
                                  e.status == StatusDonasiNonDana.terverifikasi)
                              ? GestureDetector(
                                  onTap: () {
                                    Get.to(DetailArtikel(
                                      artikel: DonasiNonDana(
                                        judul: e.judul,
                                        donatur: e.donatur,
                                        deskripsi: e.deskripsi,
                                        pathMedia: e.pathMedia
                                      ),
                                    ));
                                  },
                                  child: ArtikelListItem(
                                      artikel: e, itemWidth: listItemWidth),
                                )
                              : SizedBox())
                          .toList(),
                    );
                  } else {
                    return Center(child: loadingIndicator);
                  }
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
