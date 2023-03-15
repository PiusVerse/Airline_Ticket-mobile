import 'package:flutter/material.dart';
import 'package:learnflutter/utils/app_style.dart';

class AppBoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppBoubleText(
      {Key? key, required this.bigText, required this.smallText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text(smallText,
              style: Styles.textStyle.copyWith(
                color: Styles.primaryColor,
              )),
        )
      ],
    );
  }
}
