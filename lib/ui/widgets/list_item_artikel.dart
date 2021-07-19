part of 'widgets.dart';

class ArtikelListItem extends StatelessWidget {
  //final Artikel artikel;
  final DonasiNonDana artikel;
  final double itemWidth;

  ArtikelListItem({required this.artikel, required this.itemWidth});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailArtikel(
                      artikel: dummyDonasiNonDana[0],
                    )));
      },
      child: Container(
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
            Container(
              height: 200,
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
                  margin: EdgeInsets.only(bottom: 4, top: 12),
                  child: Text(
                    artikel.judul,
                    style: h5Text.copyWith(
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                        height: 1.0),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  child: Text(
                    artikel.deskripsi,
                    style: captionText.copyWith(
                        fontWeight: FontWeight.w400,
                        color: blackColor,
                        height: 1.1),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
