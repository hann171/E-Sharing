part of 'pagesNotifikasi.dart';

class NotifikasiPage extends StatefulWidget {
  NotifikasiPage({Key? key}) : super(key: key);

  @override
  _NotifikasiPageState createState() => _NotifikasiPageState();
}

class _NotifikasiPageState extends State<NotifikasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            color: primaryColor,
          ),
          Container(
            margin: EdgeInsets.only(top: 64, left: 20, right: 20),
            child: Text(
              'Notifikasi',
              style:
                  h1.copyWith(color: whiteColor, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 160),
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width -
                            (2 * defaultPaddingLR),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 3,
                                offset: Offset(0, 6),
                                color: Color(0xff252525).withOpacity(0.08))
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: greyColor,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Donasi kamu sudah sampai',
                                    style: bodyTextField.copyWith(
                                        color: blackColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Nama donatur/Nama penerima',
                                    style: footnoteText.copyWith(
                                        color: blackColor,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '14 Juni 2021',
                                    style: captionText.copyWith(
                                        color: greyColor,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ) //EmptyNotification(),
              )
        ],
      ),
    );
  }
}
