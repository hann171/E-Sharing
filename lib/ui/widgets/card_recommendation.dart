part of 'widgets.dart';

class CardRecommendation extends StatelessWidget {
  //final Penerima penerima;
  final User penerima;

  CardRecommendation(this.penerima);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 176,
      height: 196,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 3,
                offset: Offset(0, 6),
                color: Color(0xff252525).withOpacity(0.08))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8, top: 8, right: 8),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: lightGreyColor
                  /*image: DecorationImage(
                      image: NetworkImage(penerima.pathFotoProfil),
                      fit: BoxFit.cover)*/
                  ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 8, top: 8),
            child: Text(
              penerima.namaDpn,
              style: footnoteText.copyWith(
                  fontWeight: FontWeight.w700, color: blackColor),
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              penerima.pekerjaan,
              style: footnoteText.copyWith(
                  fontWeight: FontWeight.w500, color: blackColor),
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4),
            child: LinearPercentIndicator(
              width: 147,
              animation: true,
              lineHeight: 4.0,
              animationDuration: 2500,
              percent: double.parse(penerima.jumlahDana) / 500000.0,
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: primaryColor,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 8, top: 12),
            child: Text(
              'Terkumpul',
              style: footnoteText.copyWith(
                  fontWeight: FontWeight.w500, color: blackColor),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              NumberFormat.currency(
                      symbol: 'Rp. ', decimalDigits: 0, locale: 'id-ID')
                  .format(double.parse(penerima.jumlahDana)),
              style: footnoteText.copyWith(
                  fontWeight: FontWeight.w600, color: blackColor),
            ),
          )
        ],
      ),
    );
  }
}
