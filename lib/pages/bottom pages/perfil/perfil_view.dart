import 'package:flutter/material.dart';
import 'package:work_time/core/consts.dart';
import 'package:work_time/core/widgets/custom_circular_avatar.dart';
import 'package:work_time/core/widgets/custom_filed_info.dart';
import 'perfil_view_model.dart';

class PerfilView extends PerfilViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColorVariant,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
          applyTextScaling: true,
        ),
        title: Text(
          "Perfil",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.2,
              child: Column(
                spacing: 4,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCircularAvatar(
                      sizeRadius: 45,
                      imgSrc: "assets/logo.png",
                      borderColor: Colors.red),
                  Text(
                    "José Gonçalves da Silva Filho",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.sizeOf(context).height * 0.03),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.7,
                // color: Colors.amber,
                child: Column(
                  spacing: 8,
                  children: [
                    CustomFiledInfo(
                        titleInfo: "Cargo", valueInfo: "Aux. Administrativo"),
                    CustomFiledInfo(
                        titleInfo: "Matricula", valueInfo: "12345f"),
                    CustomFiledInfo(
                        titleInfo: "E-mail", valueInfo: "contabil@gmail.com"),
                    CustomFiledInfo(
                        titleInfo: "Telefone", valueInfo: "87 - 9 91234567"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColorVariant,
        onPressed: () {},
        child: Icon(color: Colors.white, Icons.edit_note_rounded),
      ),
    );
  }
}
