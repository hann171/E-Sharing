part of 'pages.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final Function? onBackButtonPressed;
  final Widget? child;
  final Color backColor;

  DetailPage(
      {this.title = "Title",
      this.onBackButtonPressed,
      this.child,
      this.backColor = const Color(0xffFFFFFF)});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: whiteColor,
          ),
          SafeArea(
              child: ListView(
            padding: EdgeInsets.only(top: 128),
            children: [
              Column(
                children: [child ?? SizedBox()],
              )
            ],
          )),
          Container(
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            margin: EdgeInsets.only(bottom: 24),
            padding: EdgeInsets.only(left: 20, bottom: 24, top: 64),
            width: double.infinity,
            height: 148,
            child: Row(
              children: [
                onBackButtonPressed != null
                    ? Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icons/left.png'))),
                      )
                    : SizedBox(),
                SizedBox(
                  width: 16,
                ),
                Text(
                  title,
                  style: h1.copyWith(
                      color: whiteColor, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
