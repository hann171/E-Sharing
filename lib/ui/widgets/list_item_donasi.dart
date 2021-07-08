part of 'widgets.dart';

class RiwayatDonasiListItem extends StatelessWidget {
  final RiwayatDonasi riwayatdonasi;
  final double itemWidth;

  RiwayatDonasiListItem({required this.riwayatdonasi, required this.itemWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width - (2 * defaultPaddingLR),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: greyColor, borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        riwayatdonasi.namaDepanDonatur,
                        style: bodyTextField.copyWith(
                            color: blackColor, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      child: Text(
                        riwayatdonasi.role,
                        style: footnoteText.copyWith(
                            color: blackColor, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      child: Text(
                        NumberFormat.currency(
                                symbol: 'Rp. ',
                                decimalDigits: 0,
                                locale: 'id-ID')
                            .format(riwayatdonasi.jumlahDana),
                        style: captionText.copyWith(
                            color: secondaryColor, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                  height: 20,
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    'Diterima',
                    style: footnoteText.copyWith(color: whiteColor),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  DateFormat('d MMMM y').format(riwayatdonasi.tanggalDonasi),
                  style: captionText.copyWith(color: greyColor),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
