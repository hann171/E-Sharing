part of 'widgets.dart';

class SectionRecommendation extends StatelessWidget {
  const SectionRecommendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * defaultPaddingLR),
      color: whiteColor,
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
            height: 168,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CardRecommendation(),
                SizedBox(
                  width: 8,
                ),
                CardRecommendation(),
                SizedBox(
                  width: 8,
                ),
                CardRecommendation(),
                SizedBox(
                  width: 8,
                ),
                CardRecommendation(),
                SizedBox(
                  width: 8,
                ),
                CardRecommendation(),
                SizedBox(
                  width: 8,
                ),
                CardRecommendation(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
