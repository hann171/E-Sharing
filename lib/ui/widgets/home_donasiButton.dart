part of 'widgets.dart';

class HomeButtonDonasi extends StatelessWidget {
  const HomeButtonDonasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * defaultPaddingLR),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, 6),
            blurRadius: 30,
            color: Color(0xff252525).withOpacity(0.08))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whiteColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListPenerima()));
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 28,
                        child: Image.asset('assets/icons/wallet.png'),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        child: Text(
                          'Donasi Dana',
                          style: bodyTextField,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whiteColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DonasiBisnis()));
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 28,
                        child: Image.asset('assets/icons/wallet.png'),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        child: Text(
                          'Donasi Bisnis',
                          style: bodyTextField,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
