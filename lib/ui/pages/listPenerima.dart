part of 'pages.dart';

class ListPenerima extends StatefulWidget {
  @override
  _ListPenerimaState createState() => _ListPenerimaState();
}

class _ListPenerimaState extends State<ListPenerima> {
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - (2 * defaultPaddingLR);
    return Scaffold(
      body: Container(
        child: ListPage(
          title: 'Pilihan kami',
          onBackButtonPressed: () {},
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Penerima donasi pilihan kami',
                    style: bodyTextField.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                BlocBuilder<PenerimaCubit, PenerimaState>(builder: (_, state) {
                  if (state is PenerimaLoaded) {
                    List<User> penerima = state.penerima;
                    return Column(
                      children: penerima
                          .map<Widget>((e) => (e.tipeUser == TipeUsers.penerima)
                              ? GestureDetector(
                                  onTap: () {
                                    Get.to(DetailPenerima(
                                      donasiDana: DonasiDana(
                                          penerima: e,
                                          donatur: (context
                                                  .read<UserCubit>()
                                                  .state as UserLoaded)
                                              .user),
                                    ));
                                  },
                                  child: PenerimaListItem(
                                      penerima: e, itemWidth: listItemWidth),
                                )
                              : SizedBox())
                          .toList(),
                    );
                  } else {
                    return Center(child: loadingIndicator);
                  }
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
