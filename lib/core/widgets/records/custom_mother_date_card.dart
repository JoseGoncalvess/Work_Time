import 'package:flutter/material.dart';

import '../../consts.dart';

class CustomMotherDateCard extends StatelessWidget {
  final String mother;
  final String year;
  const CustomMotherDateCard(
      {super.key, required this.mother, required this.year});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.2,
      height: MediaQuery.sizeOf(context).height * 0.12,
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            mother,
            style: TextStyle(
                color: secundaryColor,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.sizeOf(context).height * 0.03),
          ),
          Text(
            year,
            style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.sizeOf(context).height * 0.03),
          )
        ],
      ),
    );
  }
}
