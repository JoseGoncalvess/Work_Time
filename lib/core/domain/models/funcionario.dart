// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Funcionario {
  final int id;
  final String name;
  final String password;
  final String matricula;
  final int status;
  Funcionario({
    required this.id,
    required this.name,
    required this.password,
    required this.matricula,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'password': password,
      'matricula': matricula,
      'status': status,
    };
  }

  factory Funcionario.fromMap(Map<String, dynamic> map) {
    return Funcionario(
      id: map['id'],
      name: map['name'],
      password: map['password'],
      matricula: map['matricula'],
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Funcionario.fromJson(String source) =>
      Funcionario.fromMap(json.decode(source) as Map<String, dynamic>);
}
