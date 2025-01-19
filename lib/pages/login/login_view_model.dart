import 'package:flutter/material.dart';
import 'package:work_time/core/services/client/impl/client_funcionario.dart';
import 'package:work_time/core/services/local%20repository/local_funcionario.dart';
import 'package:work_time/core/services/local%20repository/local_repository.dart';
import 'package:work_time/pages/login/login.dart';
import '../../core/helpers/formaters/login formaters/matricula_Input_formatter.dart';
import '../../core/helpers/formaters/login formaters/password_input_formatter.dart';

abstract class LoginViewModel extends State<Login> {
  bool obscuredPassword = true;
  final ClientFuncionario clientFuncionario = ClientFuncionario();
  TextEditingController matriculaController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LocalFuncionario local =
      LocalFuncionario(localRepository: LocalRepository.instance);
  final formKey = GlobalKey<FormState>();
  final MatriculaInputFormatter matriculaInputFormatter =
      MatriculaInputFormatter(2);
  final PasswordInputFormatter passwordInputFormatter =
      PasswordInputFormatter(4);

  Future<void> login() async {
    await clientFuncionario.getInfoByMatricula(matriculaController.text).then(
      (value) {
        local.saveFuncionario(value);
      },
    );
  }
}
