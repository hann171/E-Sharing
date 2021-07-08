part of 'widgets.dart';

class LokerListItem extends StatelessWidget {
  final Loker loker;
  final double itemWidth;

  LokerListItem({required this.loker, required this.itemWidth});

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
      height: 140,
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 4, top: 4),
                child: Text(
                  loker.posisi,
                  style: footnoteText.copyWith(
                      fontWeight: FontWeight.w700, color: blackColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Text(
                  loker.pendMin,
                  style: footnoteText.copyWith(
                      fontWeight: FontWeight.w400, color: blackColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                width: itemWidth - 190,
                margin: EdgeInsets.only(bottom: 8),
                child: Text(
                  loker.deskripsiLoker,
                  style: footnoteText.copyWith(
                      fontWeight: FontWeight.w400, color: greyColor),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailLoker(
                                  loker: dummyLoker[0],
                                )));
                  },
                  child: Text(
                    'Lihat selengkapnya',
                    style: footnoteText.copyWith(
                        fontWeight: FontWeight.w400, color: accentColor),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
