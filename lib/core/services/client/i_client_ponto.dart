import '../../domain/models/ponto.dart';

abstract class IClientPonto {
  Future<Ponto> getRegisterDay(int funcionarioId, DateTime dateDay);
}
