part of 'widgets.dart';

class CardLoker extends StatelessWidget {
  //final Loker loker;
  final DonasiNonDana loker;
  CardLoker(this.loker);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 176,
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
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: lightGreyColor
                  /*image: DecorationImage(
                      image: NetworkImage(penerima.pathProfile),
                      fit: BoxFit.cover)*/
                  ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 8, top: 4),
            child: Text(
              loker.posisiLoker!,
              style: captionText.copyWith(
                  fontWeight: FontWeight.w500, color: blackColor),
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              loker.pendMinLoker!,
              style: footnoteText.copyWith(
                  fontWeight: FontWeight.w400, color: greyColor),
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
        ],
      ),
    );
  }
}
