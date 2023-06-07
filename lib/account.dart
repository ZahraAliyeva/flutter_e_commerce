import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
              ),
            ),
            title: const Positioned(

                child: Text("Create Your Account", textScaleFactor: 1),
                // Text("Account"),
          
            ),
          ),
          TextAdapter(text: "User name"),
          AdapterMethod(text: "name", answer: false),
          TextAdapter(text: "Phone number"),
          AdapterMethod(text: "055999999", answer: true),
          TextAdapter(text: "Enter your Email"),
          AdapterMethod(text: "example54@gmail.com", answer: false),
          TextAdapter(text: "Password"),
          AdapterMethod(text: "**********", answer: true),
          TextAdapter(text: "Confirm Password"),
          AdapterMethod(text: "**********", answer: true),
          TextAdapter(text:"You agree the terms and privacy policy"),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 30, top: 30, right: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 235, 88, 14),
                ),
                onPressed: () {},
                child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
            ),
          ),
          // Text("____________________OR____________________", style: TextStyle(color: Color.fromARGB(255, 176, 173, 173)),),
          ContinueWith(text: "Continue with Google", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST-jWZ9zMMN1g2g7X__VPJ7p_LoekF2mQFzA&usqp=CAU",),
          ContinueWith(text: "Continue with Facebook", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6StlUk0XUfO9mhRGR2qKhkmMvQCLSM2IXyw&usqp=CAU",),
          TextAdapter(text:"Don't have an account? "),
        ],
      ),
    );
  }
}

class AdapterMethod extends StatelessWidget {
  String text;
  bool answer;
  AdapterMethod({
    required this.text,
    required this.answer,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 20),
        child: TextField(
          obscureText: answer,
          obscuringCharacter: '*',
          decoration:
              InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)), labelText: text),
        ),
      ),
    );
  }
}

class ContinueWith extends StatelessWidget {
  String text;
  String image;
  ContinueWith({
    required this.text,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 20),
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
          style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    side: MaterialStateProperty.all(const BorderSide(width: 0.4, color: Colors.black)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))
                  ),
          onPressed: () {},
        child: Row(
          children: [
            CircleAvatar(child: Image.network(image),
            radius: 15,),
            SizedBox(width: 15,),
          Text(text, style: TextStyle(color: Color.fromARGB(255, 176, 173, 173)),)
        ],)),)
      ),
    );
  }
}

class TextAdapter extends StatelessWidget {
  String text;
  TextAdapter({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 30, top: 20),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}