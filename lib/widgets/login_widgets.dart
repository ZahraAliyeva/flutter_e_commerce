

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
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
      SizedBox(height: 10,),
      TextField(
        controller: email,
        decoration: const InputDecoration( hintText: "example54@gmail.com", border: OutlineInputBorder()),),
        const SizedBox( height: 20,),
      Text("pasword", style: TextStyle(fontWeight: FontWeight.bold)),
      SizedBox(height: 10,),
      TextField(
        controller: password,
        decoration: const InputDecoration( hintText: "***********", border: OutlineInputBorder()),
      ),
      const SizedBox(height: 30),
      SizedBox(width: MediaQuery.of(context).size.width*0.9,
      child: ElevatedButton(onPressed: (){
        setState(() {});
        if(email.text.isNotEmpty && password.text.isNotEmpty){
          enteredEmail = email.text;
          enteredPassword = password.text;
          debugPrint(enteredEmail + " " + enteredPassword);
          var data = loginService.loginUser(enteredEmail, enteredPassword);
          // data.then((value) => debugPrint(value));
        }       
      }, 
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 235, 88, 14),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign in",
                  style: TextStyle(color: Colors.white),
                ),
              ],
        )
      ),
      ),
      const SizedBox(
          height: 30,
        ),
    ],
    );
  }
}