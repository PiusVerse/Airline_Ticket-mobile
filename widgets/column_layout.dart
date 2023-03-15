import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnflutter/utils/app_style.dart';

class ColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  const ColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle3,
        ),
        const Gap(5),
        Text(
          secondText,
          style: Styles.headLineStyle4,
        )
      ],
    );
  }
}
