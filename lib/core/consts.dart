import 'package:flutter/material.dart';
import 'package:work_time/pages/bottom%20pages/perfil/perfil.dart';
import 'package:work_time/pages/device_info/device_info.dart';
import 'package:work_time/pages/offline_pointer/off_pointer.dart';
import '../pages/records/records_page.dart';
import '../pages/update password/update_password.dart';

final Color primaryColor = Color(0xffD90014);
final Color primaryColorVariant = Color(0xFFC50101);
final Color secundaryColorblack = Color(0xff262626);
final Color secundaryColor = Color(0xFF838282);
final Color secundaryColorVariant = Color(0xFF454546);
final Color optionalColor = Color(0xff61D90B);
final Color backgroudColor = Color(0xFF282830);
final Color backgroudColorgree = Color(0xFF10454F);

const List<Widget> pages = [
  Perfil(),
  OffPointer(),
  DeviceInfo(),
  RecordsPage(),
  UpdatePassword()
];

final String keyFuncionario = "e380ef9b0e027727b52a2db3b9e590be";
final String keyPonto = "ef0080757852d4c3b59254ee3f5007ca";
