import 'package:flutter/material.dart';
import 'myhomepage.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gender and Age Dectection"),
        centerTitle: true,
        leading: Image(image: AssetImage('images/appbar_logo.png'),),
        leadingWidth: 80,
        backgroundColor: Color(0xFF51A8B1),),
      body: MyHomePage(),
    );
  }
}
