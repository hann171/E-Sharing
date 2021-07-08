part of 'pagesDonasiku.dart';

class DonasiBisnis extends StatefulWidget {
  DonasiBisnis({Key? key}) : super(key: key);

  @override
  _DonasiBisnisState createState() => _DonasiBisnisState();
}

class _DonasiBisnisState extends State<DonasiBisnis> {
  String? kategoriTerpilih;
  final bool isEnabled = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController judulController = TextEditingController();
    TextEditingController deskripsiController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                      'Donasi bisnis',
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
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Upload gambar/video',
                              style: bodyTextField.copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.w700)),
                          Container(
                            width: MediaQuery.of(context).size.width -
                                (2 * defaultPaddingLR),
                            height: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          Color(0xff252525).withOpacity(0.08),
                                      blurRadius: 30,
                                      offset: Offset(0, 4))
                                ],
                                color: whiteColor),
                            child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                              image: AssetImage('assets/img/upgambar.png'),
                              fit: BoxFit.cover,
                            ))),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Judul Artikel',
                              style: bodyTextField.copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.w700)),
                          TextFormField(
                            controller: judulController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(16),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: accentColor)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: greyColor)),
                              hintText: 'Masukan judul artikel',
                              hintStyle: bodyTextFieldHint,
                            ),
                            keyboardType: TextInputType.text,
                            style: bodyTextField.copyWith(
                              color: blackColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kategori',
                          style: bodyTextField.copyWith(
                              color: blackColor, fontWeight: FontWeight.w700),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width -
                              (2 * defaultPaddingLR),
                          height: 60,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10.0)),
                              border: Border.all(
                                color: isEnabled ? accentColor : greyColor,
                                width: 1,
                              )),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              hint: Text(
                                'Pilih kategori',
                                style: bodyTextField.copyWith(
                                    fontWeight: FontWeight.w400),
                              ),
                              value: kategoriTerpilih,
                              icon: Icon(Icons.keyboard_arrow_down),
                              iconSize: 24,
                              style: const TextStyle(color: Colors.black),
                              onChanged: (String? newValue) {
                                setState(() {
                                  kategoriTerpilih = newValue!;
                                });
                              },
                              items: <String>[
                                'Artikel',
                                'Loker'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        )
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Deskripsi',
                              style: bodyTextField.copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.w700)),
                          TextFormField(
                            controller: deskripsiController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(16),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: accentColor)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: greyColor)),
                              hintText: 'Masukan deskripsi artikel',
                              hintStyle: bodyTextFieldHint,
                            ),
                            keyboardType: TextInputType.text,
                            style: bodyTextField.copyWith(
                              color: blackColor,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLength: 500,
                            maxLines: 6,
                          ),
                        ],
                      ),
                    )
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
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Welldone()));
                            },
                            child: Text(
                              'Kirim donasi',
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
      ),
    );
  }
}
