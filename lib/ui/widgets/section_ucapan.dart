part of 'widgets.dart';

class SectionUcapan extends StatelessWidget {
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
                  'Ucapan terima kasih',
                  style: bodyTextField,
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    Get.to(ListUcapan());
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
            height: 136,
            width: double.infinity,
            child: BlocBuilder<UcapanCubit, UcapanState>(
              builder: (_, state) => (state is UcapanLoaded)
                  ? ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: state.ucapan
                              .map<Widget>((e) => Padding(
                                    padding: EdgeInsets.only(
                                        right:
                                            (e == dummyUcapanTerimakasih.last)
                                                ? 0
                                                : 8,
                                        bottom: 8),
                                    child: CardUcapan(e),
                                  ))
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
