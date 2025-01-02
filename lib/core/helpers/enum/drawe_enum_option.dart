import 'package:flutter/material.dart';

enum DraweEnumOption {
  profile(title: "Perfil", icon: Icons.person),
  registerOff(
      title: "Registro Offline",
      icon: Icons.signal_wifi_connected_no_internet_4_rounded),
  deviceInfo(
      title: "Informações do Dispositivo", icon: Icons.device_unknown_rounded),
  register(title: "Registros", icon: Icons.description_outlined),
  updatePassword(title: "Altera Senha", icon: Icons.password_rounded);
  // logout(title: "Sair da Conta", icon: Icons.logout);

  final String title;
  final IconData icon;

  const DraweEnumOption({required this.title, required this.icon});
}
