import 'dart:convert';

class Funcionario {
  final int id;
  final String name;
  final String password;
  final String matricula;
  final int status;
  final String email;
  final String cargo;
  final String telefone;

  Funcionario({
    required this.id,
    required this.name,
    required this.password,
    required this.matricula,
    required this.status,
    required this.email,
    required this.cargo,
    required this.telefone,
  });

  Funcionario.isEmpyt({
    this.id = 0,
    this.name = "",
    this.password = "",
    this.matricula = "",
    this.status = 0,
    this.email = "",
    this.cargo = "",
    this.telefone = "",
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'password': password,
      'matricula': matricula,
      'status': status,
      'email': email,
      'cargo': cargo,
      'telefone': telefone,
    };
  }

  factory Funcionario.fromMap(Map<String, dynamic> map) {
    return Funcionario(
      id: map['id'],
      name: map['name'],
      password: map['password'],
      matricula: map['matricula'],
      status: map['status'],
      email: map['email'],
      cargo: map['cargo'],
      telefone: map['telefone'],
    );
  }

  Funcionario copyWith({
    int? id,
    String? name,
    String? password,
    String? matricula,
    int? status,
    String? email,
    String? cargo,
    String? telefone,
  }) {
    return Funcionario(
      id: id ?? this.id,
      name: name ?? this.name,
      password: password ?? this.password,
      matricula: matricula ?? this.matricula,
      status: status ?? this.status,
      email: email ?? this.email,
      cargo: cargo ?? this.cargo,
      telefone: telefone ?? this.telefone,
    );
  }

  String toJson() => json.encode(toMap());

  factory Funcionario.fromJson(String source) =>
      Funcionario.fromMap(json.decode(source) as Map<String, dynamic>);
}
