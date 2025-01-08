import 'package:flutter/material.dart';
import 'package:work_time/core/consts.dart';
import 'package:work_time/pages/home/home.dart';
import 'package:work_time/pages/login/login_view_model.dart';

class LoginView extends LoginViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            spacing: 4,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/logo.png", scale: 1.5),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                spacing: 8,
                children: [
                  Container(
                      padding: EdgeInsetsDirectional.all(4),
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 255, 255, 255),
                              hintText: "Insira sua matricula",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey)))),
                  Container(
                      padding: EdgeInsetsDirectional.all(4),
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      child: TextField(
                          obscureText: obscuredPassword,
                          obscuringCharacter: "*",
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              suffixIconColor: obscuredPassword
                                  ? primaryColorVariant
                                  : Colors.grey,
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      obscuredPassword = !obscuredPassword;
                                    });
                                  },
                                  icon: Icon(obscuredPassword
                                      ? Icons.visibility_off
                                      : Icons.visibility)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 255, 255, 255),
                              hintText: "Insira sua Senha",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey)))),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    height: MediaQuery.sizeOf(context).height * 0.07,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(optionalColor)),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.deferToChild,
                    onTap: () {},
                    child: Text(
                      "Algo de errado? Contate o RH da Sua empresa!",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.combine(
                              [TextDecoration.underline]),
                          fontSize: MediaQuery.sizeOf(context).height * 0.015),
                    ),
                  ),
                 
                ],
              )),
              Text(
                "V 1.0.0",
                style: TextStyle(
                    color: primaryColorVariant,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.sizeOf(context).height * 0.015),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
