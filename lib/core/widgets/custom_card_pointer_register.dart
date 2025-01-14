import 'package:flutter/material.dart';
import 'package:work_time/core/consts.dart';
import '../helpers/date_formater.dart';

class CustomCardPointerRegister extends StatelessWidget {
  final List registers;
  const CustomCardPointerRegister({super.key, required this.registers});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: registers.length,
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
              color: index.isEven ? primaryColor : optionalColor,
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
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              ),
              Text(
                DateFormater.formaterDate.format(DateTime.now()),
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: secundaryColorVariant),
              )
            ],
          ),
        ),
      ),
    );
  }
}
