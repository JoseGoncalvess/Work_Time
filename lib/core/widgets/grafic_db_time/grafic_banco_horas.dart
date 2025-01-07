import 'package:flutter/material.dart';
import 'package:work_time/core/consts.dart';

import 'timer_indicater.dart';

class GraficBancoHoras extends StatelessWidget {
  const GraficBancoHoras({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            transform: GradientRotation(65),
            colors: [Color(0x63565454), secundaryColorVariant]),
        borderRadius: BorderRadius.circular(12),
      ),
      height: MediaQuery.sizeOf(context).height * 0.2,
      width: MediaQuery.sizeOf(context).width * 0.95,
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Dezembro/2024",
            style: TextStyle(
                fontSize: MediaQuery.sizeOf(context).height * 0.025,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.15,
            width: MediaQuery.sizeOf(context).width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TimerIndicater(
                  iconHours: Icons.business_center_rounded,
                  hoursWorkin: "126",
                  colorHours: primaryColorVariant,
                  percentHours: 70,
                  title: "Horas Trabalhadas",
                ),
                TimerIndicater(
                  iconHours: Icons.more_time_outlined,
                  hoursWorkin: "54",
                  colorHours: optionalColor,
                  percentHours: 30,
                  title: "Horas Extra",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
