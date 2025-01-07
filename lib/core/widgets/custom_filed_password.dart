import 'package:flutter/material.dart';

import '../consts.dart';

class CustomFiledPassword extends StatelessWidget {
  final TextEditingController controller;
  final bool obscuredState;
  final Function() ontap;
  const CustomFiledPassword(
      {super.key,
      required this.controller,
      required this.obscuredState,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Nova Senha:",
          style: TextStyle(
              color: primaryColorVariant,
              fontWeight: FontWeight.w700,
              fontSize: MediaQuery.sizeOf(context).height * 0.03),
        ),
        TextField(
          obscureText: obscuredState,
          obscuringCharacter: "*",
          maxLength: 8,
          maxLines: 1,
          autofocus: true,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: secundaryColorVariant, width: 2)),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                    obscuredState ? Icons.visibility_off : Icons.visibility),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      style: BorderStyle.solid, color: primaryColor, width: 4)),
              hintText: "Pelo menos 8 Caracteres"),
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: secundaryColor,
              fontSize: MediaQuery.sizeOf(context).height * 0.022),
        ),
      ],
    );
  }
}
