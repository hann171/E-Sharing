part of 'pagesProfile.dart';

class EditProfile extends StatefulWidget {
  final User? user;

  EditProfile(this.user);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nikController = TextEditingController();
  TextEditingController namadepanController = TextEditingController();
  TextEditingController namabelakangController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController telpController = TextEditingController();
  TextEditingController rekeningController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        'Edit profile',
                        style: h1.copyWith(
                            color: whiteColor, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultPaddingLR),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 108,
                                height: 108,
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
                              Text(
                                'Ganti foto',
                                style: bodyTextField.copyWith(
                                    color: accentColor,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'NIK',
                                style: bodyTextField,
                              ),
                            ),
                            TextFormField(
                              controller: nikController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(16),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: accentColor)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: greyColor)),
                                hintText: widget.user?.nik,
                                hintStyle: bodyTextFieldHint,
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Nama depan',
                                style: bodyTextField,
                              ),
                            ),
                            TextFormField(
                              controller: namadepanController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(16),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: accentColor)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: greyColor)),
                                hintText: widget.user?.namaDpn,
                                hintStyle: bodyTextFieldHint,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Nama belakang',
                                style: bodyTextField,
                              ),
                            ),
                            TextFormField(
                              controller: namabelakangController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(16),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: accentColor)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: greyColor)),
                                hintText: widget.user?.namaBlkng,
                                hintStyle: bodyTextFieldHint,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Alamat',
                                style: bodyTextField,
                              ),
                            ),
                            TextFormField(
                              controller: alamatController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(16),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: accentColor)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: greyColor)),
                                hintText: widget.user?.alamat,
                                hintStyle: bodyTextFieldHint,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'No. Telp',
                                style: bodyTextField,
                              ),
                            ),
                            TextFormField(
                              controller: telpController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(16),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: accentColor)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: greyColor)),
                                hintText: widget.user?.noTelp,
                                hintStyle: bodyTextFieldHint,
                              ),
                              keyboardType: TextInputType.phone,
                            )
                          ],
                        ),
                      ),
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
                              onPressed: () {},
                              child: Text(
                                'Simpan',
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
          ),
        )));
  }
}
