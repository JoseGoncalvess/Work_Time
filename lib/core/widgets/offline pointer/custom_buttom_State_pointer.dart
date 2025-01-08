import 'package:flutter/material.dart';

import '../../consts.dart';

class CustomButtomStatePointer extends StatelessWidget {
  final String btntText;
  final Color? btnbackgroud;
  final Color? btnTextColor;
  final IconData btnIcon;
  final Function()? ontap;
  const CustomButtomStatePointer(
      {super.key,
      required this.btntText,
      this.btnbackgroud,
      this.btnTextColor,
      required this.btnIcon,
      this.ontap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () => ontap ?? {},
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.4,
            height: MediaQuery.sizeOf(context).height * 0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: btnbackgroud ?? secundaryColor),
            child: Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  color: Colors.white,
                  btnIcon,
                  size: MediaQuery.sizeOf(context).height * 0.07,
                ),
                Text(
                  textAlign: TextAlign.justify,
                  btntText,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: btnTextColor ?? Colors.white,
                      fontSize: MediaQuery.sizeOf(context).height * 0.02),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
