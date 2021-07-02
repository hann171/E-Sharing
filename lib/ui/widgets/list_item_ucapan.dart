part of 'widgets.dart';

class UcapanListItem extends StatelessWidget {
  final Ucapan ucapan;
  final double itemWidth;

  UcapanListItem({required this.ucapan, required this.itemWidth});

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
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: lightGreyColor
                    /*image: DecorationImage(
                      image: NetworkImage(penerima.pathProfile),
                      fit: BoxFit.cover)*/
                    ),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ucapan.namaPengirim,
                    style: bodyTextField.copyWith(
                        fontWeight: FontWeight.w600, color: secondaryColor),
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                  ),
                  Text(
                    ucapan.pekerjaan,
                    style: captionText.copyWith(
                        fontWeight: FontWeight.w400, color: accentColor),
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            child: Text(
              ucapan.ucapan,
              style: captionText.copyWith(
                  fontWeight: FontWeight.w400, color: blackColor),
              maxLines: 3,
            ),
          )
        ],
      ),
    );
  }
}
