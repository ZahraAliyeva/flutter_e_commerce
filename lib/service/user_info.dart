import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clothes/constant/apikey.dart';
import 'package:flutter_clothes/model/main_user.dart';

class User{

  Future<MainUser?> fetchSingleUser(var id) async{
    final String url = "${productUrl}/users/${id}";
    final response = await Dio().get<String>(url);

    if(response.statusCode == 200){
      var user = MainUser.fromJson(response.data as Map<String, dynamic>);

      return user;
    } else {
      debugPrint("Unable to fetch data!");
      return null;
    }
  }
}