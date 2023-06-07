import 'package:flutter/material.dart';
import 'package:flutter_clothes/pages/account.dart';
import 'package:flutter_clothes/widgets/login_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200, 
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://images.squarespace-cdn.com/content/v1/547a3834e4b053a861c4874e/f6b54c64-cc7c-43ec-b678-d8adce2a6c3f/Sustainably+Chic+%7C+Sustainable+Fashion+Blog+%7C+Best+Eco+Friendly+Sustainable+Minimalist+Clothing+Brands+%7C+Vincent+James.jpg?format=1000w', 
                fit: BoxFit.cover, 
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            title: Column(
              children: const[
                 Text("Log Into Your Account", textScaleFactor: 1),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 30, right: 20),
              child: Column(children: [
                const LoginWidget(),
                 Row(children: const[
                  Expanded(child: Divider(thickness: 1,),
                  ),
                  SizedBox(width: 10,),
                  Text("OR"),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                ],),
                const SizedBox(height: 30,),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(onPressed: (){}, 
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
                    children:[
                       CircleAvatar(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST-jWZ9zMMN1g2g7X__VPJ7p_LoekF2mQFzA&usqp=CAU"),
                         radius: 15,),
                      const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Continue with Google",
                            style: TextStyle(color: Colors.black),
                          ),
                    ],)),
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
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const [
                          Icon(
                            Icons.facebook,
                            color: Colors.blue,
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
              ],),
            ),
          ),
          // ContinueWith(text: "Continue with Google", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST-jWZ9zMMN1g2g7X__VPJ7p_LoekF2mQFzA&usqp=CAU",),
          // ContinueWith(text: "Continue with Facebook", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6StlUk0XUfO9mhRGR2qKhkmMvQCLSM2IXyw&usqp=CAU",),
        ],
      ),
    );
  }
}
