import 'package:flutter/material.dart';
import 'package:work_time/core/widgets/records/custom_db_resume_hours.dart';

import '../../core/consts.dart';
import '../../core/widgets/records/custom_mother_date_card.dart';
import '../../core/widgets/records/custom_text_hours_card.dart';
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
        body: SizedBox(
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
                      Text(
                        "Seu Saldo do Banco de Horas",
                        style: TextStyle(
                            color: secundaryColorVariant,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.sizeOf(context).height * 0.03),
                      ),
                      Text(
                        "Banco iniciado em 1 de janeiro de 2024",
                        style: TextStyle(
                            color: secundaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      ),
                    ],
                  ),
                ),
                CustomDbResumeHours(
                  hours: "60:00",
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
                        height: MediaQuery.sizeOf(context).height * 0.14,
                        child: Row(
                          spacing: 4,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomMotherDateCard(
                              mother: "JAN",
                              year: "2024",
                            ),
                            VerticalDivider(
                              color: secundaryColor,
                              endIndent: 8,
                              thickness: 2,
                              indent: 8,
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * 0.51,
                              height: MediaQuery.sizeOf(context).height * 0.1,
                              child: Column(
                                spacing: 4,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomTextHoursCard(
                                    timenHours: "120:33",
                                    typeTimeText: "Trabalhadas",
                                  ),
                                  CustomTextHoursCard(
                                    timenHours: "00:00",
                                    typeTimeText: "Extra",
                                    colorsTitleText: optionalColor,
                                    colorsHours: secundaryColor,
                                  ),
                                  CustomTextHoursCard(
                                    timenHours: "8:36",
                                    typeTimeText: "Negativas",
                                    colorsTitleText: primaryColor,
                                    colorsHours: secundaryColor,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                        color: secundaryColorVariant,
                                        Icons.description_rounded)))
                          ],
                        ),
                      ),
                    );
                  },
                )),
              ],
            )));
  }
}
