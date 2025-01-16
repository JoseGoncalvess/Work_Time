import 'package:flutter/material.dart';
import 'package:work_time/core/consts.dart';

class CustomFiledInfo extends StatelessWidget {
  final String titleInfo;
  final String valueInfo;
  final double? percentSizeTitle;
  final double? percentSizeValue;
  final Color? colorTitle;
  final Color? colorValue;
  final bool? isEdited;
  final TextEditingController? controller;
  const CustomFiledInfo(
      {super.key,
      required this.titleInfo,
      this.percentSizeTitle = 0.02,
      required this.valueInfo,
      this.percentSizeValue = 0.022,
      this.colorTitle,
      this.colorValue,
      this.isEdited = false,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$titleInfo :",
            style: TextStyle(
                color: colorTitle ?? primaryColorVariant,
                fontWeight: FontWeight.w700,
                fontSize:
                    MediaQuery.sizeOf(context).height * percentSizeTitle!),
          ),
          TextField(
            controller: controller,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: colorValue ?? secundaryColor,
                fontSize:
                    MediaQuery.sizeOf(context).height * percentSizeValue!),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: primaryColor,
                        width: 4)),
                hintText: valueInfo),
            enabled: isEdited,
          ),
        ],
      ),
    );
  }
}
