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
      body: isload
          ? CircularProgressIndicator()
          : SizedBox(
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
                          funcionario!.name,
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
                child: Column(
                  spacing: 8,
                  children: [
                    CustomFiledInfo(
                              titleInfo: "Cargo",
                              valueInfo: funcionario!.cargo),
                    CustomFiledInfo(
                              titleInfo: "Matricula",
                              valueInfo: funcionario!.matricula),
                    CustomFiledInfo(
                              isEdited: isEdited,
                              controller: emailController,
                              titleInfo: "E-mail",
                              valueInfo: funcionario!.email),
                    CustomFiledInfo(
                              isEdited: isEdited,
                              controller: numberController,
                              titleInfo: "Telefone",
                              valueInfo: funcionario!.telefone),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColorVariant,
        onPressed: () => editFuncionario(),
        child: Icon(
            color: Colors.white,
            isEdited ? Icons.save_as_rounded : Icons.edit_note_rounded),
      ),
    );
  }
}
