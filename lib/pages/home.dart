import 'package:flutter/material.dart';
import 'package:flutter_clothes/pages/account.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            right: 20,
            top: 50,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const AccountPage())));
              },
              child: Row(
                children: const [
                  Text(
                    "Sign Up",
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
            bottom: 300,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: const Text(
                "Ideal Store For Shopping",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 200,
            child: TextButton(
              onPressed: (() {}),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.2, color: Colors.white),
                ),
                child: const Text(
                  "Sign in With Email",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 110,
              left: 20,
              right: 20,
              height: MediaQuery.of(context).size.height / 13,
              child: ElevatedButton(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color.fromARGB(255, 234, 88, 39),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      CircleAvatar(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6StlUk0XUfO9mhRGR2qKhkmMvQCLSM2IXyw&usqp=CAU")),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Continue with Facebook",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}