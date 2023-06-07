import 'package:flutter/material.dart';
import 'package:flutter_clothes/pages/account.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Log into Your Account', textScaleFactor: 1),
              background: Image.asset(
                'assets/images/model.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const LoginWidget(),
                   Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("OR"),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(
                              color: Color.fromARGB(80, 0, 0, 0)),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Continue with Google",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(
                              color: Color.fromARGB(80, 0, 0, 0)),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Continue with Facebook",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const AccountPage()));
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}