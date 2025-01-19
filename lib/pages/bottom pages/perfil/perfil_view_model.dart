import 'package:flutter/material.dart';
import 'package:work_time/core/domain/models/funcionario.dart';
import '../../../core/services/local repository/local_funcionario.dart';
import '../../../core/services/local repository/local_repository.dart';
import 'perfil.dart';

abstract class PerfilViewModel extends State<Perfil> {
  bool isEdited = false;
  bool isload = false;
  LocalFuncionario local =
      LocalFuncionario(localRepository: LocalRepository.instance);
  Funcionario? funcionario = Funcionario.isEmpyt();

  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadFuncionario();
  }

  void loadFuncionario() async {
    isload = false;
    local.loadFuncionario().then(
      (value) {
        setState(() {
          funcionario = value;
        });
      },
    );
    setState(() {
      isload = !isload;
    });
  }

  void updateFuncionario() {
    Funcionario newFuncionario = funcionario!.copyWith(
      telefone: numberController.text,
      email: emailController.text,
    );

    local.updateFuncionario(newFuncionario);
  }

  void editFuncionario() {
    setState(() {
      isEdited = !isEdited;
    });
  }
}
