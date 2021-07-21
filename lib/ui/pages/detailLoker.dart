part of 'pages.dart';

class DetailLoker extends StatelessWidget {
  //final Loker? loker;
  final DonasiNonDana? loker;
  DetailLoker({this.loker});

  @override
  Widget build(BuildContext context) {
    _launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        //throw (url);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Empty404()));
      }
    }

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Konfirmasi'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Apakah kamu ingin menelpon donatur loker?'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Batal',
                    style: captionText.copyWith(color: blackColor)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Container(
                  padding:
                      EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                  decoration: BoxDecoration(
                    color: primaryColor,
                  ),
                  child: Text(
                    'Ya',
                    style: captionText.copyWith(
                        color: whiteColor, fontWeight: FontWeight.w600),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  _launchUrl('tel:${loker!.donatur!.noTelp}');
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: primaryColor,
          ),
          SafeArea(child: Container(color: whiteColor)),
          SafeArea(
            child: Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                  /*image: DecorationImage(
                      image: NetworkImage(widget.loker.pathThumbnail),
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
                      margin: EdgeInsets.only(top: 200),
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
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: whiteColor,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 6,
                                    offset: Offset(0, 4),
                                    color: Color(0xff252525).withOpacity(0.08))
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Informasi lowongan',
                                style: bodyTextField.copyWith(
                                    color: secondaryColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icons/briefcase.png'))),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        loker!.posisiLoker!,
                                        style: bodyTextField.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: blackColor,
                                            height: 1),
                                      ),
                                      Text(
                                        'Posisi',
                                        style: captionText.copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: accentColor),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icons/books.png'))),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        loker!.pendMinLoker!,
                                        style: bodyTextField.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: blackColor,
                                            height: 1),
                                      ),
                                      Text(
                                        'Pendidikan minimum',
                                        style: captionText.copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: accentColor),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icons/location_pin.png'))),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        loker!.lokasiLoker!,
                                        style: bodyTextField.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: blackColor,
                                            height: 1),
                                      ),
                                      Text(
                                        'Lokasi',
                                        style: captionText.copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: accentColor),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width -
                              (2 * defaultPaddingLR),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: whiteColor,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 6,
                                    offset: Offset(0, 4),
                                    color: Color(0xff252525).withOpacity(0.08))
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Deskripsi',
                                style: bodyTextField.copyWith(
                                    color: secondaryColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                loker!.deskripsi!,
                                style: bodyTextField.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: blackColor),
                              )
                            ],
                          ),
                        )
                      ]),
                    )
                  ],
                )
              ],
            ),
          ),
          SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(color: primaryColor),
                      ),
                    ),
                    Center(
                      child: TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              vertical: 16,
                            ),
                            primary: whiteColor,
                            textStyle: h5Text,
                            minimumSize: Size(
                                MediaQuery.of(context).size.width -
                                    defaultPaddingLR,
                                56)),
                        onPressed: () {
                          _showMyDialog();
                        },
                        child: Text(
                          'Hubungi',
                          style: buttonText,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
