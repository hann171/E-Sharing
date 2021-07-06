part of 'pages.dart';

class ItemModel {
  bool expanded;
  String? headerItem;
  String? discription;

  ItemModel({this.expanded: false, this.headerItem, this.discription});
}

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  bool _showBackToTopButton = false;

  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController!.offset >= 160) {
            _showBackToTopButton = true; // show the back-to-top button
          } else {
            _showBackToTopButton = false; // hide the back-to-top button
          }
        });
      });
  }

  @override
  void dispose() {
    _scrollController!.dispose(); // dispose the controller
    super.dispose();
  }

  // This function is triggered when the user presses the back-to-top button
  void _scrollToTop() {
    _scrollController!.animateTo(0,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
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
                    Container(
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
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Bantuan',
                      style: h1.copyWith(
                          color: whiteColor, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 220,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img/faq.png'))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(32),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: itemData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExpansionPanelList(
                      animationDuration: Duration(milliseconds: 500),
                      children: [
                        ExpansionPanel(
                          body: Container(
                            padding:
                                EdgeInsets.only(bottom: 8, left: 20, right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(itemData[index].discription.toString(),
                                    style: bodyTextField.copyWith(
                                        color: blackColor,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                          headerBuilder:
                              (BuildContext context, bool isExpanded) {
                            return Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 20),
                              child: Text(itemData[index].headerItem.toString(),
                                  style: bodyTextField.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.w600)),
                            );
                          },
                          isExpanded: itemData[index].expanded,
                        )
                      ],
                      expansionCallback: (int item, bool status) {
                        setState(() {
                          itemData[index].expanded = !itemData[index].expanded;
                        });
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              onPressed: _scrollToTop,
              child: Icon(Icons.arrow_upward),
              backgroundColor: primaryColor,
            ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem:
          'Duis mattis risus sit amet lorem pellentesque, in ultricies magna sodales.',
      discription:
          "Duis mattis risus sit amet lorem pellentesque, in ultricies magna sodales. Duis mattis risus sit amet lorem pellentesque, in ultricies magna sodales.",
    ),
    ItemModel(
      headerItem:
          'Duis mattis risus sit amet lorem pellentesque, in ultricies magna sodales.',
      discription:
          "Duis mattis risus sit amet lorem pellentesque, in ultricies magna sodales. Duis mattis risus sit amet lorem pellentesque, in ultricies magna sodales.",
    ),
    ItemModel(
      headerItem:
          'Duis mattis risus sit amet lorem pellentesque, in ultricies magna sodales.',
      discription:
          "Duis mattis risus sit amet lorem pellentesque, in ultricies magna sodales. Duis mattis risus sit amet lorem pellentesque, in ultricies magna sodales.",
    ),
  ];
}
