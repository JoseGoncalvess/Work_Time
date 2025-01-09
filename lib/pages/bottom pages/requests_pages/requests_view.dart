import 'package:flutter/material.dart';
import 'package:work_time/core/consts.dart';

import 'requests_view_model.dart';

class RequestsView extends RequestsViewModel {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.white,
            applyTextScaling: true,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.refresh_outlined),
            )
          ],
          title: Text(
            "Solicitações de Regstro",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          color: Colors.white,
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedContainer(
                curve: Curves.fastLinearToSlowEaseIn,
                duration: Duration(seconds: 1),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                height: indexSelect == index
                    ? MediaQuery.sizeOf(context).height * 0.25
                    : MediaQuery.sizeOf(context).height * 0.12,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: optionalColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12))),
                      ),
                    ),
                    Expanded(
                      flex: 15,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Column(
                            spacing: 4,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Ajuste de Ponto",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.sizeOf(context).height *
                                            0.023,
                                    fontWeight: FontWeight.w700,
                                    color: backgroudColor),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Data do Ponto: ",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.sizeOf(context).height *
                                                0.02,
                                        fontWeight: FontWeight.w600,
                                        color: backgroudColor),
                                  ),
                                  Text(
                                    "11/01/2024",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.sizeOf(context).height *
                                                0.02,
                                        fontWeight: FontWeight.w600,
                                        color: secundaryColor),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Status: ",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.sizeOf(context).height *
                                                0.02,
                                        fontWeight: FontWeight.w600,
                                        color: backgroudColor),
                                  ),
                                  Text(
                                    "Aprovado",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.sizeOf(context).height *
                                                0.02,
                                        fontWeight: FontWeight.w600,
                                        color: primaryColorVariant),
                                  ),
                                ],
                              ),
                              index == indexSelect
                                  ? Column(
                                      spacing: 2,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Motivo: ",
                                          style: TextStyle(
                                            color: backgroudColor,
                                            fontSize: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.02,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          "Esqeuci de Bater o poto ao ir almoçar,sair as 12:30",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize:
                                                  MediaQuery.sizeOf(context)
                                                          .height *
                                                      0.02,
                                              fontWeight: FontWeight.w400,
                                              color: primaryColorVariant),
                                        ),
                                      ],
                                    )
                                  : SizedBox()
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 4,
                        child: IconButton(
                            onPressed: () => setIndex(index),
                            icon: Icon(
                              color: index == indexSelect
                                  ? secundaryColor
                                  : primaryColor,
                              index == indexSelect
                                  ? Icons.open_in_browser_rounded
                                  : Icons.inbox_rounded,
                              semanticLabel: "Detalhes",
                              size: MediaQuery.sizeOf(context).height * 0.04,
                            )))
                  ],
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColorVariant,
          onPressed: () {},
          child: Icon(color: Colors.white, Icons.new_label_rounded),
        ),
      ),
    );
  }
}
