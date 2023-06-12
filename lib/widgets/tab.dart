
import 'package:flutter/material.dart';
import 'package:flutter_clothes/pages/cart.dart';
import 'package:flutter_clothes/pages/chat.dart';
import 'package:flutter_clothes/pages/product.dart';
import 'package:flutter_clothes/pages/setting.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  List<Widget> pages = const [
    ProductPage(),
    ChatPage(),
    CartPage(),
    SettingPage(),
  ];


  int _item = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color.fromARGB(255, 245, 126, 29),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        selectedLabelStyle: const TextStyle(color: Color.fromARGB(255, 245, 126, 29)),
        currentIndex: _item,
        onTap: (value) {
          setState(() {
            _item=value;
          });          
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.grey,), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.chat, color: Colors.grey,), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded, color: Colors.grey,), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.grey,), label: "Setting"),
                   
      ],
      ),
      body: pages[_item],
    );
  }

  IgnorePointer ignorePointerMethod(int i, Widget widget) {
    return IgnorePointer(
          child: Opacity(
            opacity: _item== i? 1:0, 
            child: widget,),
        );
  }
}