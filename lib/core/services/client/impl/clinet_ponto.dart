import 'dart:developer';

import 'package:work_time/core/domain/models/ponto.dart';

import '../../../helpers/custom_dio.dart';
import '../../../helpers/date_formater.dart';
import '../i_client_ponto.dart';

class ClinetPonto implements IClientPonto {
  CustomDio? customDio;

  ClinetPonto() {
    customDio = CustomDio.instance;
  }

  @override
  Future<Ponto> getRegisterDay(int funcionarioId, DateTime dateDay) async {
    var day = DateFormater.dateRequestFormater.format(dateDay);
    var response =
        await customDio!.dio.get("/ponto/registerday/$funcionarioId/$day");
    return Ponto.fromMap(response.data);
  }
}
