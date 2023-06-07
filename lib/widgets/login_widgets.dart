

import 'package:flutter/material.dart';
import 'package:flutter_clothes/service/login_service.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  LoginService loginService = LoginService();

  late String enteredEmail ;
  late String enteredPassword;
  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      Text("Email"),
      SizedBox(height: 10,),
      TextField(
        controller: email,
      ),
      Text("pasword"),
      SizedBox(height: 10,),
      TextField(
        controller: password,
      ),

      SizedBox(width: MediaQuery.of(context).size.width*10,
      child: ElevatedButton(onPressed: (){
        setState(() {});
        if(email.text.isNotEmpty && password.text.isNotEmpty){
          enteredEmail = email.text;
          enteredPassword = password.text;
          debugPrint(enteredEmail + " " + enteredPassword);
          var data = loginService.loginUser(enteredEmail, enteredPassword);
          // data.then((value) => debugPrint(value));
        }       
      }, child:Text("data") ),)
    ],);
  }
}