import 'package:flutter/material.dart';

import '../../consts.dart';

class CustomDbResumeHours extends StatelessWidget {
  final String hours;
  const CustomDbResumeHours({super.key, required this.hours});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Row(
              spacing: 4,
              children: [
                Icon(
                  Icons.access_time_rounded,
                  color: primaryColor,
                ),
                Text(
                  hours,
                  style: TextStyle(
                      color: backgroudColor,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.sizeOf(context).height * 0.05),
                ),
              ],
            ),
            Text(
              "Trabalhadas até o Momento",
              style: TextStyle(
                  color: primaryColorVariant,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.sizeOf(context).height * 0.02),
            ),
          ],
        ),
        TextButton(
            style: ButtonStyle(
                enableFeedback: true,
                side:
                    WidgetStateProperty.all(BorderSide(color: secundaryColor))),
            onPressed: () {},
            child: Text("Mais Informações",
                style: TextStyle(
                    color: secundaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.sizeOf(context).height * 0.03)))
      ],
    );
  }
}
