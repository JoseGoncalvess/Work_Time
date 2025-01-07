import 'package:flutter/material.dart';

class CustomCircularAvatar extends StatelessWidget {
  final String imgSrc;
  final Color borderColor;
  final double sizeRadius;
  const CustomCircularAvatar(
      {super.key,
      required this.imgSrc,
      required this.borderColor,
      required this.sizeRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          shape: CircleBorder(
              eccentricity: 1, side: BorderSide(width: 2, color: borderColor))),
      child: CircleAvatar(
        radius: sizeRadius,
        backgroundColor: Colors.white,
        child: Image.asset(imgSrc),
      ),
    );
  }
}
