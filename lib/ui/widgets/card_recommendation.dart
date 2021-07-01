part of 'widgets.dart';

class CardRecommendation extends StatelessWidget {
  const CardRecommendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                blurRadius: 30,
                offset: Offset(0, 6),
                color: Color(0xff252525).withOpacity(0.08))
          ]),
    );
  }
}
