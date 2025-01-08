import 'package:flutter/material.dart';

import '../../core/consts.dart';
import 'recors_view_model.dart';

class RecordsView extends RecorsViewModel {
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
            "Registros",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.08,
                  child: Column(
                    spacing: 2,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Seu Saldo do Banco de Horas"),
                      Text("Banco iniciado em 1 de janeiro de 2024"),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time_rounded,
                      color: primaryColor,
                    ),
                    Text("08:00"),
                    TextButton(onPressed: () {}, child: Text("Mais Infmrações"))
                  ],
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.12,
                      ),
                    );
                  },
                )),
              ],
            )));
  }
}
