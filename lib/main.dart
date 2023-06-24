import 'package:flutter/material.dart';
import 'package:udemy/Home_Screen.dart';
import 'package:udemy/Medicin_Screen.dart';
import 'package:udemy/Messenger_screen.dart';
import 'package:udemy/categories_screen.dart';
import 'package:udemy/login_screen.dart';
import 'Home.dart';

void main() {

  //runApp => لازم جواها parameter
  //runApp => عشان ترن الابلكيشن
  runApp(MyApp());
  //MyApp app =MyApp();
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home:Home(),
    );
  }

}
