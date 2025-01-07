import 'package:flutter/material.dart';
import 'package:work_time/core/consts.dart';
import 'package:work_time/core/helpers/enum/drawe_enum_option.dart';
import 'package:work_time/core/widgets/custom_circular_avatar.dart';
import 'package:work_time/core/widgets/custom_drawer/custom_list_title.dart';

class CustomDrawer extends StatelessWidget {
  final List<Widget> pages;
  const CustomDrawer({super.key, required this.pages});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      shadowColor: backgroudColor,
      width: MediaQuery.sizeOf(context).width * 0.6,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Wrap(children: [
          Container(
            color: backgroudColor,
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.17,
            child: Column(
              spacing: 4,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCircularAvatar(
                    sizeRadius: 30,
                    imgSrc: "assets/logo.png",
                    borderColor: Colors.red),
                Text("REDE CAZA",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.sizeOf(context).width * 0.035)),
                Text("12.123.123/0001-98",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: MediaQuery.sizeOf(context).width * 0.035))
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.72,
            child: Column(
                spacing: 4,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: DraweEnumOption.values
                    .map(
                      (e) => CustomListTitle(
                        title: e.title,
                        iconOpt: e.icon,
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => pages[e.index],
                              ));
                        },
                      ),
                    )
                    .toList()),
          ),
          Container(
            color: Colors.white,
            child: CustomListTitle(
                optColor: primaryColorVariant,
                title: "Sair da Conta",
                iconOpt: Icons.logout,
                ontap: () {}),
          )
        ]),
      ),
    );
  }
}
