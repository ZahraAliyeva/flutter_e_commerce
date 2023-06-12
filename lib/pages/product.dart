
import 'package:flutter/material.dart';
import 'package:flutter_clothes/model/product_model.dart';
import 'package:flutter_clothes/service/product_service.dart';
import 'package:flutter_clothes/service/user_info.dart';
import 'package:flutter_clothes/widgets/carousel_widget.dart';
import 'package:flutter_clothes/widgets/product_widget.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final User _user = User();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(children: [
                    CircleAvatar(
                    backgroundImage: NetworkImage("https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),),
                  const SizedBox(width: 8,),
                          Text("Shella", style: Theme.of(context).textTheme
                             .headlineSmall
                             ?.copyWith(
                             fontWeight: FontWeight.bold),),]
                             ),
                             Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {}, 
                              icon: const Icon(Icons.search),
                              iconSize: 27,
                              ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {}, 
                              icon: const Icon(Icons.notifications_outlined),
                              iconSize: 27,
                            ),
                          ],
                        ),
                ],),
                CaroulselW(),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Our Products", style: TextStyle(fontSize: 20),),
                  Text("See All", style: TextStyle(fontSize: 8, color: Color.fromARGB(255, 245, 126, 29)),),
                ],),
                SizedBox(height: 5,),
                ProductWidget(),
              ],),
              ),
              ),
        )
      ],),
    );
  }
}