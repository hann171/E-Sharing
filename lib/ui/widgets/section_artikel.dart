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
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: dummyDonasiNonDana
                      .map<Widget>((e) => (e.kategori==KategoriDonasi.artikel) ? Padding(
                            padding: EdgeInsets.only(
                                right: (e == dummyDonasiNonDana.last) ? 0 : 8,
                                bottom: 8),
                            child: CardArtikel(e),
                          ) : SizedBox())
                      .toList(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
