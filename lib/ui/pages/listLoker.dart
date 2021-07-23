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
        child: ListPage(
          title: 'Lowongan pekerjaan',
          onBackButtonPressed: () {},
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<DonasiNonDanaCubit, DonasiNonDanaState>(builder: (_, state) {
                  if (state is DonasiNonDanaLoaded) {
                    List<DonasiNonDana> loker = state.donasiNonDana;
                    return Column(
                      children: loker
                          .map<Widget>((e) => (e.kategori ==
                                      KategoriDonasi.loker &&
                                  e.status == StatusDonasiNonDana.terverifikasi)
                              ? GestureDetector(
                                  onTap: () {
                                    Get.to(DetailLoker(
                                      loker: DonasiNonDana(
                                          judul: e.judul,
                                          deskripsi: e.deskripsi,
                                          posisiLoker: e.posisiLoker,
                                          pendMinLoker: e.pendMinLoker,
                                          lokasiLoker: e.lokasiLoker,
                                          pathMedia: e.pathMedia),
                                    ));
                                  },
                                  child: LokerListItem(
                                      loker: e, itemWidth: listItemWidth),
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
