part of 'widgets.dart';

class SectionArtikel extends StatelessWidget {
  const SectionArtikel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * defaultPaddingLR),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  'Artikel bisnis',
                  style: bodyTextField,
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    Get.to(ListArtikel());
                  },
                  child: Text(
                    'lihat semua',
                    style: bodyTextField.copyWith(
                        fontWeight: FontWeight.w400, color: accentColor),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 152,
            width: double.infinity,
            child: BlocBuilder<ArtikelCubit, ArtikelState>(
              builder: (_, state) => (state is ArtikelLoaded)
                  ? ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: state.artikel
                              .map<Widget>((e) => (e.kategori ==
                                          KategoriDonasi.artikel &&
                                      e.status ==
                                          StatusDonasiNonDana.terverifikasi)
                                  ? Padding(
                                      padding: EdgeInsets.only(
                                          right: (e == dummyDonasiNonDana.last)
                                              ? 0
                                              : 8,
                                          bottom: 8),
                                      child: GestureDetector(
                                          onTap: () {
                                            Get.to(DetailArtikel(
                                              artikel: e,
                                            ));
                                          },
                                          child: CardArtikel(e)),
                                    )
                                  : SizedBox())
                              .toList(),
                        )
                      ],
                    )
                  : Center(child: loadingIndicator),
            ),
          )
        ],
      ),
    );
  }
}
