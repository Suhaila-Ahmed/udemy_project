import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/constants.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Column(
      children: [
      SizedBox(
      height: 20.0,
       ),
       Image.asset(

       //'assets/images/welcome_image.png',
       //'assets/images/suhaila.jpg',
       'assets/welcomee.png',


       width: double.infinity,
       height: 0.4
        ),
       SizedBox(
       height: 20.0,),
        ],
        ),
      ),
    );
  }
}









