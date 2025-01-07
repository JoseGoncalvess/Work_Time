import 'package:flutter/material.dart';
import 'package:work_time/pages/update%20password/update_password_view_model.dart';

import '../../core/consts.dart';
import '../../core/widgets/custom_filed_password.dart';

class UpdatePasswordView extends UpdatePasswordViewModel {
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
          "Altera Senha",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFiledPassword(
                controller: TextEditingController(),
                obscuredState: obscurePassword,
                ontap: () {},
              ),
              CustomFiledPassword(
                controller: TextEditingController(),
                obscuredState: obscureConfPassword,
                ontap: () {},
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.6,
                height: MediaQuery.sizeOf(context).height * 0.07,
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(primaryColor)),
                  onPressed: () {},
                  label: Text(
                    "Salvar Senha",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.sizeOf(context).height * 0.03),
                  ),
                  icon: Icon(
                    Icons.save_alt_outlined,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
