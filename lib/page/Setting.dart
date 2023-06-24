import 'package:flutter/material.dart';
class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "setting",
        ),
      ),
      body: Center(
        child: Text("setting screen",
          style: TextStyle(fontSize: 40.0,
          ),),
      ),
    );
  }
}
