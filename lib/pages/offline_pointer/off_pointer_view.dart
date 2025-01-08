import 'package:flutter/material.dart';
import 'package:work_time/pages/offline_pointer/off_pointer_view_model.dart';

import '../../core/consts.dart';
import '../../core/widgets/custom_switch_controll.dart';
import '../../core/widgets/offline pointer/custom_buttom_State_pointer.dart';

class OffPointerView extends OffPointerViewModel {
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
          "Registro Offline",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textAlign: TextAlign.center,
                "Se você ultiliza o registro de ponto de maneira offline, certifique-se de ajustar as configurações abaixo para manter seus dados sempre atualizados",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: secundaryColor,
                    fontSize: MediaQuery.sizeOf(context).height * 0.02),
              ),
            ),
            CustomSwitchControll(
              titleFunction: "Sincronização Automatica",
              valueState: assyncMode,
              ontap: (value) {
                setState(() {
                  assyncMode = value;
                });
              },
            ),
            CustomSwitchControll(
              titleFunction: "Sincronizar apenas por Wi-Fi",
              valueState: conectionAssync,
              ontap: (value) {
                setState(() {
                  conectionAssync = value;
                });
              },
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.3,
              child: Row(
                children: [
                  CustomButtomStatePointer(
                    ontap: () {},
                    btntText: "Registros Sincronixzados",
                    btnIcon: Icons.check_circle_outlined,
                  ),
                  CustomButtomStatePointer(
                    ontap: () {},
                    btntText: "Registros Sincronixzados",
                    btnbackgroud: primaryColorVariant,
                    btnIcon: Icons.sync_problem_outlined,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
