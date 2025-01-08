import 'package:flutter/material.dart';

import '../consts.dart';

class CustomSwitchControll extends StatelessWidget {
  final String titleFunction;
  final bool valueState;
  final Function(bool value) ontap;
  const CustomSwitchControll(
      {super.key,
      required this.titleFunction,
      required this.valueState,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textAlign: TextAlign.justify,
            titleFunction,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: secundaryColorblack,
                fontSize: MediaQuery.sizeOf(context).height * 0.02),
          ),
          Switch(
            activeTrackColor: primaryColorVariant,
            activeColor: Colors.white,
            value: valueState,
            onChanged: (value) => ontap(value),
          )
        ],
      ),
    );
  }
}
