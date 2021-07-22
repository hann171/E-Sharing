part of 'widgets.dart';

class DonasiDetailPenerima extends StatefulWidget {
  final DonasiDana? donasiDana;
  final User? user;

  DonasiDetailPenerima({this.donasiDana, this.user});

  @override
  _DonasiDetailPenerimaState createState() => _DonasiDetailPenerimaState();
}

class _DonasiDetailPenerimaState extends State<DonasiDetailPenerima> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DonasiCubit, DonasiState>(builder: (_, state) {
      if (state is DonasiDanaLoaded) {
        if (state.donasiDana.length == 0) {
          return EmptyTransaction();
        } else {
          double listItemWidth =
              MediaQuery.of(context).size.width - (2 * defaultPaddingLR);
          return Container(
            child: ListView(
              shrinkWrap: true,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(builder: (_) {
                      List<DonasiDana> daftarDonasiDana = state.donasiDana
                          .where((element) =>
                              element.penerima!.nik == widget.user!.nik &&
                              element.status == StatusDonasiDana.terverifikasi)
                          .toList();
                      return (daftarDonasiDana.length > 0)
                          ? Column(
                              children: daftarDonasiDana
                                  .map<Widget>((e) => DonasiPenerimaListItem(
                                      daftarDonasiDana: e,
                                      itemWidth: listItemWidth))
                                  .toList(),
                            )
                          : Container(
                              child: Center(
                                child: Text('Belum ada donasi',
                                    style: bodyTextField.copyWith(
                                        color: greyColor,
                                        fontWeight: FontWeight.w400)),
                              ),
                            );
                    })
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          );
        }
      } else {
        return Center(child: loadingIndicator);
      }
    });
  }
}
