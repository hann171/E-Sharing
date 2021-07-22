part of 'pagesDonasiku.dart';

class Riwayat extends StatefulWidget {
  final User? donatur;

  Riwayat({this.donatur});

  @override
  _RiwayatState createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DonasiCubit, DonasiState>(builder: (_, state) {
      if (state is DonasiDanaLoaded) {
        if (state.donasiDana.length == 0) {
          return EmptyTransaction();
        } else {
          double listItemWidth =
              MediaQuery.of(context).size.width - 2 * defaultPaddingLR;
          return Container(
            height: MediaQuery.of(context).size.height - 440,
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(builder: (_) {
                      List<DonasiDana> daftarDonasiDana = state.donasiDana
                          .where((element) =>
                              element.donatur!.nik ==
                                      (context.read<UserCubit>().state
                                              as UserLoaded)
                                          .user
                                          .nik &&
                                  element.status ==
                                      StatusDonasiDana.terverifikasi ||
                              element.status ==
                                  StatusDonasiDana.belumVerifikasi)
                          .toList();

                      return Column(
                        children: daftarDonasiDana
                            .map<Widget>((e) => RiwayatDonasiListItem(
                                daftarDonasiDana: DonasiDana(
                                    penerima: e.penerima,
                                    status: e.status,
                                    jumlahDana: e.jumlahDana,
                                    tglDonasi: e.tglDonasi),
                                itemWidth: listItemWidth))
                            .toList(),
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

    /**/
  }
}
