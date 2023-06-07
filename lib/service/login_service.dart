import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../constant/apikey.dart';
import '../model/usermodel.dart';

class LoginService{

final String url = "${apiUrl}/login";

Future<UserModel?> loginUser(var email, var password) async{
  
  final response = await Dio().post(url, data: userModelToJson(UserModel(email: email, password: password))); 
  
  if(response.statusCode == 200){
    debugPrint(response.data["token"]);
    return response.data["token"];
  } else {
    debugPrint("UnSuccces");
  }
}
}