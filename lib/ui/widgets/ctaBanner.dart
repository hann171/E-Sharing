part of 'widgets.dart';

class CTABanner extends StatelessWidget {
  const CTABanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: primaryColor,
      ),
      width: MediaQuery.of(context).size.width - (2 * defaultPaddingLR),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bingung memilih penerima yang tepat?\nKami bantu bagikan donasi anda !',
              style: captionText.copyWith(
                  fontWeight: FontWeight.w500, height: 1.05, color: whiteColor),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Donasi anda akan kami bagi ke mereka yang paling\nmembutuhkan secara merata.',
              style: footnoteText.copyWith(
                  fontWeight: FontWeight.w400, height: 1.05, color: whiteColor),
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                Get.to(ListPenerima());
              },
              child: Text(
                'Donasi sekarang',
                style: h5Text.copyWith(
                    fontWeight: FontWeight.w700,
                    height: 1.05,
                    color: whiteColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
