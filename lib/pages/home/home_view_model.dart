import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:work_time/core/domain/models/ponto.dart';
import 'package:work_time/core/domain/models/register.dart';
import 'package:work_time/core/services/client/impl/clinet_ponto.dart';

import '../../core/domain/models/funcionario.dart';
import '../../core/services/local repository/local_funcionario.dart';
import '../../core/services/local repository/local_repository.dart';

abstract class HomeViewModel extends State {
  LocalFuncionario local =
      LocalFuncionario(localRepository: LocalRepository.instance);
  final ClinetPonto clinetPonto = ClinetPonto();
  Funcionario funcionario = Funcionario.isEmpyt();

  List<Register> pointersDay = [];

  @override
  void initState() {
    super.initState();
    loadFuncionario();
  }

  void loadFuncionario() async {
    local.loadFuncionario().then(
      (value) {
        setState(() {
          funcionario = value;
        });
        _loadRegisterDay();
      },
    );
  }

  void _loadRegisterDay() {
    clinetPonto.getRegisterDay(funcionario.id, DateTime.now()).then(
      (Ponto value) {
        setState(() {
          pointersDay = value.getRegisterDay();
        });
      },
    );
  }
}
