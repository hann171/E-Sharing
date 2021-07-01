part of 'pagesHome.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            Container(
              width: double.infinity,
              height: 215,
              color: primaryColor,
            ),
            Container(
              margin: EdgeInsets.only(top: 52, left: 20, right: 20, bottom: 64),
              child: Column(
                children: [
                  //HEADER
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          child:
                              Image.asset('assets/icons/Splashscreen-logo.png'),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, ' + 'Angel',
                              style:
                                  h3Text.copyWith(color: whiteColor, height: 1),
                            ),
                            Text(
                              'Apa kabar kamu hari ini?',
                              style: captionText.copyWith(
                                  color: whiteColor, height: 1),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 24,
                  ),

                  //BANNER
                  CardCarousel(),
                  SizedBox(
                    height: 28,
                  ),
                  //CTA
                  HomeButtonDonasi(),
                  SizedBox(
                    height: 28,
                  ),

                  //LIST REKOMENDASI PENERIMA
                  SectionRecommendation(),
                  SizedBox(
                    height: 28,
                  ),

                  //CTA
                  CTABanner(),
                  SizedBox(
                    height: 28,
                  ),

                  //LIST LOKER
                  SectionLoker(),
                  SizedBox(
                    height: 28,
                  ),

                  //LIST ARTIKEL
                  SectionArtikel(),
                  SizedBox(
                    height: 28,
                  ),

                  //LIST UCAPAN TERIMAKASIH
                  SectionUcapan()
                ],
              ),
            ),
          ])
        ],
      ),
    );
  }
}
