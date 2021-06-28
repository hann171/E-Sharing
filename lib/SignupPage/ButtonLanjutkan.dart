import 'package:flutter/material.dart';
import 'package:e_sharing/theme.dart';

class ButtonLanjutkan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(color: primaryColor),
          ),
        ),
        Center(
          child: TextButton(
            style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                ),
                primary: whiteColor,
                textStyle: h5,
                minimumSize: Size(
                    MediaQuery.of(context).size.width - defaultPaddingLR, 56)),
            onPressed: () {},
            child: Text(
              'Lanjutkan',
              style: buttonText,
            ),
          ),
        )
      ],
    );
  }
}
