import 'package:flutter/material.dart';
import 'package:flutter_clothes/home.dart';

class BackPage extends StatefulWidget {
  const BackPage({super.key});

  @override
  State<BackPage> createState() => _BackPageState();
}

class _BackPageState extends State<BackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              "https://www.stylebysavina.com/wp-content/uploads/2022/03/minimalist-fashion-influencers.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 20,
            top: 50,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const HomePage())));
              },
              child: Row(
                children: [
                  Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 250,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: const Text(
                "Make your purchases as",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
          ),
          Positioned(
            bottom: 130,
              left: 20,
              height: MediaQuery.of(context).size.height / 13,
            child: Row(
              children:[
              SizedBox(
                width: 150,
                height: 45,
                child: ElevatedButton(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                    
                    backgroundColor:
                        Color.fromARGB(255, 236, 76, 23),
                  ),
                  child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "MAN",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ),),
                      SizedBox(width: 50,),
              SizedBox(
                width: 150,
                height: 45,
                child: ElevatedButton(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 236, 76, 23),
                  ),
                  child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "WOMAN",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ))
              ]))
        ],
      ),
    );
  }
}