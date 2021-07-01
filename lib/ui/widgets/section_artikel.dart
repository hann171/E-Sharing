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
                child: Text(
                  'lihat semua',
                  style: bodyTextField.copyWith(
                      color: accentColor, fontWeight: FontWeight.w400),
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
                  children: dummyArtikel
                      .map<Widget>((e) => Padding(
                            padding: EdgeInsets.only(
                                right: (e == dummyArtikel.last) ? 0 : 8,
                                bottom: 8),
                            child: CardArtikel(e),
                          ))
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
