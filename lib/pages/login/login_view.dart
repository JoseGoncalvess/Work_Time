import 'package:flutter/material.dart';
import 'package:work_time/pages/login/login_view_model.dart';

class LoginView extends LoginViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF212121),
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  Image.asset("assets/logo.png"),
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
                              suffixIconColor:
                                  obscuredPassword ? Colors.red : Colors.grey,
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
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xFF22890B))),
                      child: Text("Login"),
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
                  )
                ],
              )),
              Text(
                "V 1.0.0",
                style: TextStyle(
                    color: Colors.white,
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
