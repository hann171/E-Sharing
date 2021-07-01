import 'package:e_sharing/ui/pages/HomePage/pagesHome.dart';
import '../widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:e_sharing/theme.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: whiteColor,
          ),
          SafeArea(
              child: Container(
            color: whiteColor,
          )),
          SafeArea(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedPage = index;
                });
              },
              children: [
                Center(
                  child: HomePage(),
                ),
                Center(
                  child: Text('Donasiku'),
                ),
                Center(
                  child: Text('Notifikasi'),
                ),
                Center(
                  child: Text('Profile'),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavBar(
                selectedIndex: selectedPage,
                onTap: (index) {
                  setState(() {
                    selectedPage = index;
                  });
                  pageController.jumpToPage(selectedPage);
                }),
          ),
        ],
      ),
    );
  }
}