part of 'pagesNotifikasi.dart';

class Notifikasi extends StatefulWidget {
  Notifikasi({Key? key}) : super(key: key);

  @override
  _NotifikasiState createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DonasiCubit, DonasiState>(builder: (_, state) {
      if (state is DonasiDanaLoaded) {
        if (state.donasiDana.length == 0) {
          return EmptyNotification();
        } else {
          double listItemWidth =
              MediaQuery.of(context).size.width - (2 * defaultPaddingLR);
          return Container(
            child: ListView(
              children: [
                Column(
                  children: [
                    Builder(builder: (_) {
                      List<DonasiDana> daftarDonasiDana = state.donasiDana
                          .where((element) =>
                              element.status ==
                                  StatusDonasiDana.terverifikasi &&
                              element.donatur!.nik ==
                                  (context.read<UserCubit>().state
                                          as UserLoaded)
                                      .user
                                      .nik)
                          .toList();
                      return Column(
                        children: daftarDonasiDana
                            .map<Widget>((e) => NotifikasiListItem(
                                daftarDonasiDana: e, itemWidth: listItemWidth))
                            .toList(),
                      );
                    })
                  ],
                )
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
