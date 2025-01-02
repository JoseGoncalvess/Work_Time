import 'package:flutter/material.dart';

class TimerIndicater extends StatelessWidget {
  final double percentHours;
  final String title;
  final Color colorHours;
  final String hoursWorkin;
  final IconData iconHours;

  const TimerIndicater(
      {super.key,
      required this.percentHours,
      required this.title,
      required this.colorHours,
      required this.hoursWorkin,
      required this.iconHours});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.15,
      width: MediaQuery.sizeOf(context).width * 0.45,
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              CircularProgressIndicator(
                backgroundColor: Colors.white,
                color: colorHours,
                strokeWidth: 6,
                strokeCap: StrokeCap.round,
                value: percentHours / 100,
                strokeAlign: 5,
              ),
              Text(
                "$hoursWorkin Hs",
                style: TextStyle(
                    fontSize: MediaQuery.sizeOf(context).height * 0.015,
                    fontWeight: FontWeight.w700,
                    color: colorHours),
              )
            ],
          ),
          Row(
            spacing: 3,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconHours,
                color: colorHours,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: MediaQuery.sizeOf(context).height * 0.02,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
