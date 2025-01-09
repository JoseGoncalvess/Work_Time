import 'package:flutter/material.dart';

import '../../consts.dart';

class CustomTextHoursCard extends StatelessWidget {
  final String timenHours;
  final String typeTimeText;
  final Color? colorsTitleText;
  final Color? colorsHours;
  const CustomTextHoursCard(
      {super.key,
      required this.timenHours,
      required this.typeTimeText,
      this.colorsTitleText,
      this.colorsHours});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          timenHours,
          style: TextStyle(
              color: colorsHours ?? primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.sizeOf(context).height * 0.022),
        ),
        Text(
          "Horas $typeTimeText",
          style: TextStyle(
              color: colorsTitleText ?? backgroudColor,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.sizeOf(context).height * 0.022),
        ),
      ],
    );
  }
}
