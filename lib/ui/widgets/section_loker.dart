part of 'widgets.dart';

class SectionLoker extends StatelessWidget {
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
                  'Lowongan pekerjaan',
                  style: bodyTextField,
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    Get.to(ListLoker());
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
            height: 140,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: dummyLoker
                      .map<Widget>((e) => Padding(
                            padding: EdgeInsets.only(
                                right: (e == dummyLoker.last) ? 0 : 8,
                                bottom: 8),
                            child: CardLoker(e),
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
