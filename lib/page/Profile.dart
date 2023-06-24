import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        elevation: 10.3,

        backgroundColor: Colors.purple,
        leading: Icon(
          Icons.menu,
        ),

        title: Text(
          "profile",
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
      body: Center(
        child: Text("profile screen",

          style: TextStyle(fontSize: 40.0,
            color: Colors.white,
          ),),
      ),
    );
  }
}
