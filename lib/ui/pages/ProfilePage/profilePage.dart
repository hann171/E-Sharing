part of 'pagesProfile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
              margin: EdgeInsets.only(top: 72),
              padding: EdgeInsets.symmetric(horizontal: defaultPaddingLR),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width -
                        (2 * defaultPaddingLR),
                    child: Row(
                      children: [
                        Container(
                          width: 72,
                          height: 72,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            decoration: BoxDecoration(
                                color: greyColor,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Angel',
                                style: h3Text.copyWith(
                                    color: whiteColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => EditProfile()));
                                },
                                child: Text(
                                  'Edit profile',
                                  style: bodyTextField.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: whiteColor),
                                ),
                              ),
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 56,
                  ),
                  Container(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutPage()),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(16),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/help.png'))),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  child: Text(
                                    'Bantuan',
                                    style: h5Text.copyWith(
                                        color: blackColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            SystemNavigator.pop();
                          },
                          child: Container(
                            padding: EdgeInsets.all(16),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/walk.png'))),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  child: Text(
                                    'Keluar',
                                    style: h5Text.copyWith(
                                        color: blackColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
