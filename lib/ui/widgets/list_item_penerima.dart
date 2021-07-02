part of 'widgets.dart';

class PenerimaListItem extends StatelessWidget {
  final Penerima penerima;
  final double itemWidth;

  PenerimaListItem({required this.penerima, required this.itemWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 3,
                offset: Offset(0, 6),
                color: Color(0xff252525).withOpacity(0.08))
          ]),
      width: MediaQuery.of(context).size.width - (2 * defaultPaddingLR),
      height: 110,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            width: 160,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: lightGreyColor
                /*image: DecorationImage(
                      image: NetworkImage(penerima.pathProfile),
                      fit: BoxFit.cover)*/
                ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 4, top: 4),
                child: Text(
                  penerima.namaDepan,
                  style: footnoteText.copyWith(
                      fontWeight: FontWeight.w700, color: blackColor),
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8),
                child: Text(
                  penerima.pekerjaan,
                  style: footnoteText.copyWith(
                      fontWeight: FontWeight.w500, color: blackColor),
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                child: LinearPercentIndicator(
                  width: itemWidth - 190, //160 + 12
                  animation: true,
                  lineHeight: 4.0,
                  animationDuration: 2500,
                  percent: penerima.jumlahDana.toDouble() / 500000.0,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: primaryColor,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 4),
                child: Text(
                  'Terkumpul',
                  style: footnoteText.copyWith(
                      fontWeight: FontWeight.w500, color: blackColor),
                ),
              ),
              Container(
                child: Text(
                  NumberFormat.currency(
                          symbol: 'Rp. ', decimalDigits: 0, locale: 'id-ID')
                      .format(penerima.jumlahDana),
                  style: footnoteText.copyWith(
                      fontWeight: FontWeight.w600, color: blackColor),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
