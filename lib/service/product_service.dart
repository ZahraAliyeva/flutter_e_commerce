import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clothes/constant/apikey.dart';
import 'package:flutter_clothes/model/product_model.dart';

class ProductService {
  final String url = "$productUrl/products";
  final dio = Dio();

  Future<List<ProductModel>?> getProducts() async{
    final response = await dio.get<String>(url);

    if(response.statusCode == 200){
      var products = productModelFromJson(response.data!);
      return products;
    } else {
      debugPrint("Unable to fetch data");
      return null;
    }
  }
}