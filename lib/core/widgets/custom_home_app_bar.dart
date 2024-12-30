import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSize {
  final Color backgroundColor;
  final double heigthWidget;
  const CustomHomeAppBar(
      {super.key, required this.backgroundColor, required this.heigthWidget});

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
            onPressed: () {},
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
                    Text("JOSÉ GONÇALVES DA SILVA FILHO ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:
                                MediaQuery.sizeOf(context).width * 0.035)),
                    Text("AUX. CONTABIL ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize:
                                MediaQuery.sizeOf(context).width * 0.027)),
                    Text("1234-345-893",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: MediaQuery.sizeOf(context).width * 0.025))
                  ],
                ),
                Container(
                  decoration: ShapeDecoration(
                      shape: CircleBorder(
                          eccentricity: 1,
                          side: BorderSide(width: 2, color: Colors.red))),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Image.asset("assets/logo.png"),
                  ),
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
