import 'package:flutter/material.dart';
import 'package:work_time/core/consts.dart';
import 'package:work_time/pages/login/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: "Roboto",
            primaryColor: primaryColor,
            colorScheme: ColorScheme(
                onSurface: Colors.white,
                surface: Colors.white,
                onError: primaryColorVariant,
                error: primaryColorVariant,
                onSecondary: secundaryColor,
                onPrimary: primaryColor,
                brightness: Brightness.light,
                primary: primaryColor,
                secondary: secundaryColor),
            useMaterial3: false),
        home: Login());
  }
}
