part of 'widgets.dart';

class CardUcapan extends StatelessWidget {
  final Ucapan ucapan;

  CardUcapan(this.ucapan);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
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
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: lightGreyColor
                      /*image: DecorationImage(
                      image: NetworkImage(penerima.pathProfile),
                      fit: BoxFit.cover)*/
                      ),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ucapan.namaPengirim,
                      style: captionText.copyWith(
                          fontWeight: FontWeight.w500, color: blackColor),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                    ),
                    Text(
                      ucapan.pekerjaan,
                      style: footnoteText.copyWith(
                          fontWeight: FontWeight.w400, color: greyColor),
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
                style: footnoteText.copyWith(
                    fontWeight: FontWeight.w400, color: blackColor),
                maxLines: 4,
                overflow: TextOverflow.clip,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Lihat selengkapnya',
                  style: footnoteText.copyWith(
                      fontWeight: FontWeight.w400, color: greyColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
