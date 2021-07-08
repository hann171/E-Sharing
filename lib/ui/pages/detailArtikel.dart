part of 'pages.dart';

class DetailArtikel extends StatelessWidget {
  final Artikel? artikel;

  DetailArtikel({this.artikel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: primaryColor,
          ),
          SafeArea(
              child: Container(
            color: whiteColor,
          )),
          SafeArea(
            child: Container(
              height: 320,
              width: double.infinity,
              decoration: BoxDecoration(
                  /*image: DecorationImage(
                      image: NetworkImage(widget.artikel.pathMedia),
                      fit: BoxFit.cover)*/
                  color: lightGreyColor),
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      height: 64,
                      padding:
                          EdgeInsets.symmetric(horizontal: defaultPaddingLR),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/icons/leftShaped.png')))),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height - 384,
                      margin: EdgeInsets.only(top: 248),
                      padding: EdgeInsets.symmetric(
                          vertical: defaultPaddingLR,
                          horizontal: defaultPaddingLR),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: whiteColor),
                      child: Column(children: [
                        Container(
                          width: MediaQuery.of(context).size.width -
                              (2 * defaultPaddingLR),
                          decoration: BoxDecoration(
                            color: whiteColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        /*image: DecorationImage(
                                        image: NetworkImage(widget.artikel.pathMedia),
                                        fit: BoxFit.cover)*/
                                        color: lightGreyColor),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Juminten',
                                          style: captionText.copyWith(
                                              color: blackColor,
                                              fontWeight: FontWeight.w600),
                                          //artikel!.idDonatur,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'Donatur',
                                          style: footnoteText.copyWith(
                                              color: greyColor,
                                              fontWeight: FontWeight.w400),
                                          //artikel!.role,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Text(
                                  artikel!.judul,
                                  style: bodyTextField.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Text(
                                  artikel!.deskripsiArtikel,
                                  style: bodyTextField.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
