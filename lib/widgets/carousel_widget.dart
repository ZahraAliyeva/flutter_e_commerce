import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
  
  
class  CaroulselW extends StatefulWidget {
  const CaroulselW({super.key});

  @override
  State<CaroulselW> createState() => _CaroulselWState();
}

class _CaroulselWState extends State<CaroulselW> {
  List _items = [];
  bool answer = false;

  Future<void> readJson() async{
    final String response = await rootBundle.loadString("assets/images/images.json");
    final data = await jsonDecode(response);

    setState(() {
      _items = data;
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR09BobXZkxq6JMkoIXYPW2HCCB6cgtsuR6pg&usqp=CAU"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1EQeRxtamWLVl98RFaJhdtIXSUfw-_aOTHQ&usqp=CAU"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmmHXTTPzmrc0-kvYCkbNxHse0xq5fMLlDmw&usqp=CAU"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),                              
                // for(var imageUrl in _items)
                // Stack(
                //   children: [
                //     Container(
                //   margin: const EdgeInsets.all(6.0),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8.0),
                //     image: DecorationImage(
                //       image: NetworkImage(imageUrl),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                //   ],
                // )                
          ],
              
            //Slider Container properties
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
    );
  }
}