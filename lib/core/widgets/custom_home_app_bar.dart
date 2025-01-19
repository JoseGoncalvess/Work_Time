import 'package:flutter/material.dart';
import 'package:work_time/core/domain/models/funcionario.dart';

import 'custom_circular_avatar.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSize {
  final Color backgroundColor;
  final double heigthWidget;
  final Funcionario funcionario;
  const CustomHomeAppBar(
      {super.key,
      required this.backgroundColor,
      required this.heigthWidget,
      required this.funcionario});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigthWidget,
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            iconSize: MediaQuery.sizeOf(context).height * 0.04,
            tooltip: "MENU",
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(funcionario.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:
                                MediaQuery.sizeOf(context).width * 0.035)),
                    Text(funcionario.cargo,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize:
                                MediaQuery.sizeOf(context).width * 0.027)),
                    Text(funcionario.matricula,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: MediaQuery.sizeOf(context).width * 0.025))
                  ],
                ),
                CustomCircularAvatar(
                  sizeRadius: 30,
                  imgSrc: "assets/logo.png",
                  borderColor: Colors.red,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(heigthWidget);

  @override
  Widget get child => AppBar();
}
