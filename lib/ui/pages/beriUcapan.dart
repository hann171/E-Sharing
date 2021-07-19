part of 'pages.dart';

class BeriUcapanTerimakasih extends StatefulWidget {
  BeriUcapanTerimakasih({Key? key}) : super(key: key);

  @override
  _BeriUcapanTerimakasihState createState() => _BeriUcapanTerimakasihState();
}

class _BeriUcapanTerimakasihState extends State<BeriUcapanTerimakasih> {
  @override
  Widget build(BuildContext context) {
    TextEditingController ucapanController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
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
                        'Beri ucapan',
                        style: h1.copyWith(
                            color: whiteColor, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultPaddingLR),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ucapan terimakasih',
                          style: bodyTextField.copyWith(
                              color: blackColor, fontWeight: FontWeight.w700)),
                      TextFormField(
                        controller: ucapanController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: accentColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: greyColor)),
                          hintText: 'Tulis ucapan terimakasih disini',
                          hintStyle: bodyTextFieldHint,
                        ),
                        keyboardType: TextInputType.text,
                        style: bodyTextField.copyWith(
                          color: blackColor,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLength: 150,
                        maxLines: 4,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
                child: ClipRRect(
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelldoneUcapan()));
                      },
                      child: Text(
                        'Kirim ucapan',
                        style: buttonText,
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
