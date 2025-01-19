// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

import '../../helpers/date_formater.dart';
import 'funcionario.dart';

class Ponto {
  final DateTime? dateEntrada;
  final TimeOfDay? entrada;
  final TimeOfDay? saidaIntervalo;
  final TimeOfDay? retornoIntervalo;
  final TimeOfDay? saida;
  final Funcionario funcionario;
  final TimeOfDay? totalPrimerioIntervalo;
  final TimeOfDay? totalSegundoIntervalo;
  final TimeOfDay? totalHorarioExtra;
  int motivo = 0;

  Ponto({
    required this.dateEntrada,
    required this.entrada,
    required this.saidaIntervalo,
    required this.retornoIntervalo,
    required this.saida,
    required this.funcionario,
    required this.totalPrimerioIntervalo,
    required this.totalSegundoIntervalo,
    required this.totalHorarioExtra,
    required this.motivo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "dataEntrada": dateEntrada.toString(),
      'entrada': entrada.toString(),
      'saidaIntervalo': saidaIntervalo.toString(),
      'retornoIntervalo': retornoIntervalo.toString(),
      'saida': saida.toString(),
      'funcionario': funcionario.toMap(),
      'totalPrimerioIntervalo': totalPrimerioIntervalo.toString(),
      'totalSegundoIntervalo': totalSegundoIntervalo.toString(),
      'totalHorarioExtra': totalHorarioExtra.toString(),
      'motivo': motivo,
    };
  }

  factory Ponto.fromMap(Map<String, dynamic> map) {
    return Ponto(
      dateEntrada: map['dataEntrada'] == null
          ? null
          : DateTime.parse(map['dataEntrada']),
      entrada: map['entrada'] == null
          ? null
          : DateFormater.parseTimeOfDay(map['entrada']),
      saidaIntervalo: map['saidaIntervalo'] == null
          ? null
          : DateFormater.parseTimeOfDay(map['saidaIntervalo']),
      retornoIntervalo: map['retornoIntervalo'] == null
          ? null
          : DateFormater.parseTimeOfDay(map['retornoIntervalo']),
      saida: map['saida'] == null
          ? null
          : DateFormater.parseTimeOfDay(map['saida']),
      funcionario: Funcionario.fromMap(map['funcionario']),
      totalPrimerioIntervalo: map['totalPrimerioIntervalo'] == null
          ? null
          : DateFormater.parseTimeOfDay(map['totalPrimerioIntervalo']),
      totalSegundoIntervalo: map['totalSegundoIntervalo'] == null
          ? null
          : DateFormater.parseTimeOfDay(map['totalSegundoIntervalo']),
      totalHorarioExtra: map['totalHorarioExtra'] == null
          ? null
          : DateFormater.parseTimeOfDay(map['totalHorarioExtra']),
      motivo: map['motivo'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Ponto.fromJson(String source) =>
      Ponto.fromMap(json.decode(source) as Map<String, dynamic>);
}
