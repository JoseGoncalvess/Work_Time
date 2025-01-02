import 'package:flutter/material.dart';

class CustomListTitle extends StatelessWidget {
  final String title;
  final IconData iconOpt;
  final Function() ontap;
  final Color? optColor;
  const CustomListTitle(
      {super.key,
      required this.title,
      required this.iconOpt,
      required this.ontap,
      this.optColor});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).width * 0.03,
            color: optColor,
            fontWeight: FontWeight.w600),
      ),
      leading: Icon(
        color: optColor,
        iconOpt,
      ),
      trailing: IconButton(
          onPressed: () => ontap(),
          icon: Icon(
            color: optColor,
            Icons.keyboard_arrow_right_rounded,
            size: MediaQuery.sizeOf(context).width * 0.07,
          )),
    );
  }
}
