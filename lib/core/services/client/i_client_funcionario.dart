import 'package:work_time/core/domain/models/funcionario.dart';

abstract class IClientInterface {
  Future<Funcionario> getInfoByMatricula(String matricula);
  Future<String> patchPasswor(int funcionarioId, String newPassword);
  Future<Funcionario> putFuncionario(Funcionario newFuncionario);
}
