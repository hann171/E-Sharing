part of './widgets.dart';

/*final List<String> imagesList = [
  'assets/img/banner_home.png',
  'assets/img/404.png',
  'assets/img/daftar.png',
  'assets/img/login.png',
];*/

class CardCarousel extends StatefulWidget {
  final BannerCarousel? bannerCarousel;
  CardCarousel({this.bannerCarousel});
  @override
  _CardCarouselState createState() => _CardCarouselState();
}

class _CardCarouselState extends State<CardCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: Offset(0, 6),
              blurRadius: 30,
              color: Color(0xff252525).withOpacity(0.15))
        ]),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: 175,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeInOut),
              items: imageList
                  .map(
                    (item) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Card(
                        margin: EdgeInsets.only(
                          bottom: 8,
                        ),
                        //elevation: 6.0,
                        //shadowColor: Color(0xff252525),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Image.asset(
                                item.pathBanner,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.map((urlOfItem) {
                int index = imageList.indexOf(urlOfItem);
                return Container(
                  width: 6.0,
                  height: 6.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? primaryColor : whiteColor,
                  ),
                );
              }).toList(),
            )
          ],
        ));
  }
}
