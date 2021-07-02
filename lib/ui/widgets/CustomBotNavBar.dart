part of 'widgets.dart';

class CustomBottomNavBar extends StatelessWidget {
  
  final int selectedIndex;
  final Function(int index)? onTap;

  CustomBottomNavBar({this.selectedIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      color: whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(0);
              }
            },
            child: Container(
              width: 72,
              height: 44,
              child: Column(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/ic_home' +
                                ((selectedIndex == 0)
                                    ? '_selected.png'
                                    : '.png')))),
                  ),
                  Text(
                    'Beranda',
                    style: captionText.copyWith(
                        color:
                            selectedIndex == 0 ? primaryColor : lightenColor),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(1);
              }
            },
            child: Container(
              width: 72,
              height: 44,
              child: Column(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/ic_heart' +
                                ((selectedIndex == 1)
                                    ? '_selected.png'
                                    : '.png')))),
                  ),
                  Text(
                    'Donasiku',
                    style: captionText.copyWith(
                        color:
                            selectedIndex == 1 ? primaryColor : lightenColor),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(2);
              }
            },
            child: Container(
              width: 72,
              height: 44,
              child: Column(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/ic_bell' +
                                ((selectedIndex == 2)
                                    ? '_selected.png'
                                    : '.png')))),
                  ),
                  Text(
                    'Notifikasi',
                    style: captionText.copyWith(
                        color:
                            selectedIndex == 2 ? primaryColor : lightenColor),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(3);
              }
            },
            child: Container(
              width: 72,
              height: 44,
              child: Column(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/ic_profile' +
                                ((selectedIndex == 3)
                                    ? '_selected.png'
                                    : '.png')))),
                  ),
                  Text(
                    'Profile',
                    style: captionText.copyWith(
                        color:
                            selectedIndex == 3 ? primaryColor : lightenColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
