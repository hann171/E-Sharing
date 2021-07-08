part of 'pagesProfile.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nikController = TextEditingController();
    TextEditingController namadepanController = TextEditingController();
    TextEditingController namabelakangController = TextEditingController();
    TextEditingController alamatController = TextEditingController();
    TextEditingController telpController = TextEditingController();
    TextEditingController rekeningController = TextEditingController();

    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
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
                  'Edit profile',
                  style: h1.copyWith(
                      color: whiteColor, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Container(
            child: Row(
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
                          color: accentColor, fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: defaultPaddingLR),
            width: double.infinity,
            child: Column(
              children: [
                Column(
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
                        hintText: 'Masukan NIK',
                        hintStyle: bodyTextFieldHint,
                      ),
                      keyboardType: TextInputType.number,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
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
                        hintText: 'Masukan Nama depan',
                        hintStyle: bodyTextFieldHint,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
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
                        hintText: 'Masukan Nama belakang',
                        hintStyle: bodyTextFieldHint,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
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
                        hintText: 'Masukan Alamat',
                        hintStyle: bodyTextFieldHint,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
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
                        hintText: 'Masukan no. telp',
                        hintStyle: bodyTextFieldHint,
                      ),
                      keyboardType: TextInputType.phone,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'No. Rekening',
                        style: bodyTextField,
                      ),
                    ),
                    TextFormField(
                      controller: rekeningController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: accentColor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: greyColor)),
                        hintText: 'Masukan no. rekening',
                        hintStyle: bodyTextFieldHint,
                      ),
                      keyboardType: TextInputType.phone,
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
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
    )));
  }
}
