import 'package:work_time/core/consts.dart';
import 'package:work_time/core/domain/models/funcionario.dart';
import 'package:work_time/core/services/local%20repository/local_repository.dart';

class LocalFuncionario {
  final LocalRepository localRepository;
  LocalFuncionario({
    required this.localRepository,
  });

  Future<String> saveFuncionario(Funcionario funcionario) async {
    await localRepository.prefs.setString(keyFuncionario, funcionario.toJson());
    return funcionario.toJson();
  }

  Future<Funcionario> loadFuncionario() async {
    String? responsejson =
        await localRepository.prefs.getString(keyFuncionario);
    return Funcionario.fromJson(responsejson!);
  }

  Future<String> updateFuncionario(Funcionario newfuncionario) async {
    localRepository.prefs.setString(keyFuncionario, newfuncionario.toJson());
    return newfuncionario.toJson();
  }
}
