import 'package:flutter/material.dart';
import 'package:work_time/pages/device_info/device_info_view_model.dart';

import '../../core/consts.dart';
import '../../core/widgets/custom_filed_info.dart';

class DeviceInfoView extends DeviceInfoViewModel {
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
          "Dispositivo",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.7,
                  // color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 8,
                    children: [
                      CustomFiledInfo(
                        titleInfo: "Versão do App",
                        valueInfo: "1.0.0",
                        percentSizeTitle: 0.03,
                      ),
                      CustomFiledInfo(
                          titleInfo: "UUID",
                          valueInfo: "22hjs8ahd6d0j07dgd54b"),
                      CustomFiledInfo(
                          titleInfo: "Sitema Operacional",
                          valueInfo: "Android 9"),
                      CustomFiledInfo(
                          titleInfo: "Fabricante", valueInfo: "Xaomi"),
                      CustomFiledInfo(
                          titleInfo: "Modelo", valueInfo: "Redmi Note 5"),
                      CustomFiledInfo(
                          titleInfo: "Conecxão com a Internete",
                          valueInfo: "Ativo"),
                    ],
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
