part of 'widgets.dart';

class SectionRecommendation extends StatelessWidget {
  const SectionRecommendation({Key? key}) : super(key: key);

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
                  'Pilihan kami',
                  style: bodyTextField,
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    Get.to(ListPenerima());
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
            height: 208,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: dummyPenerima
                      .map<Widget>((e) => Padding(
                            padding: EdgeInsets.only(
                                right: (e == dummyPenerima.last) ? 0 : 8,
                                bottom: 8),
                            child: CardRecommendation(e),
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
