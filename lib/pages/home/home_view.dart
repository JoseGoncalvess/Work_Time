import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:work_time/pages/home/home_view_model.dart';
import '../../core/helpers/date_formater.dart';
import '../../core/widgets/custom_home_app_bar.dart';
import '../../core/widgets/custom_bottom_vavigator.dart';
import '../../core/widgets/grafic_db_time/grafic_banco_horas.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomHomeAppBar(
          heigthWidget: MediaQuery.of(context).size.height * 0.12,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              children: [
                GraficBancoHoras(),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.26,
                  child: Column(
                    spacing: 3,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            textAlign: TextAlign.left,
                            "Últimos Registros",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.sizeOf(context).height * 0.034),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: const Color(0x489E9E9E),
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                        blurStyle: BlurStyle.outer)
                                  ],
                                  color:
                                      index.isEven ? Colors.red : Colors.green,
                                  borderRadius: BorderRadius.circular(12)),
                              width: MediaQuery.sizeOf(context).width * 0.33,
                              height: MediaQuery.sizeOf(context).height * 0.01,
                              child: Column(
                                spacing: 3,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    index.isEven ? Icons.logout : Icons.login,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    index.isEven ? "Saida" : "Entrada",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    DateFormater.formaterDate
                                        .format(DateTime.now()),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        spacing: 5,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text("Registros de Ponto",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize:
                                        MediaQuery.sizeOf(context).height *
                                            0.03)),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomVavigator(
          onItemTapped: (value) {
            log(value.toString());
          },
          selectedIndex: 0,
          iconSpacing: MediaQuery.sizeOf(context).width * 0.16,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          width: 100,
          height: 90,
          child: FloatingActionButton(
            backgroundColor: Colors.redAccent,
            onPressed: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(size: 25, Icons.fingerprint),
                Text(
                  "Registar Ponto",
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}