import 'package:work_time/core/helpers/custom_dio.dart';
import 'package:work_time/core/domain/models/funcionario.dart';
import 'package:work_time/core/services/client/i_client_funcionario.dart';

class ClientFuncionario implements IClientInterface {
  CustomDio? customDio;

  ClientFuncionario() {
    customDio = CustomDio.instance;
  }

  @override
  Future<Funcionario> getInfoByMatricula(String matricula) async {
    var response =
        await customDio!.dio.get("/funcionario/matricula/$matricula");
    return Funcionario.fromMap(response.data);
  }

  @override
  Future<Funcionario> putFuncionario(Funcionario newFuncionario) {
    throw UnimplementedError();
  }

  @override
  Future<String> patchPasswor(int funcionarioId, String newPassword) async {
    var response = await customDio?.dio.get("funcionario", queryParameters: {
      "idFuncionario": funcionarioId,
      "newPassword": newPassword
    });
    return response.toString();
  }
}
