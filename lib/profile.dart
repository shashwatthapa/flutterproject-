import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style:TextStyle(
           color: Colors.white,
           backgroundColor: Colors.green,

        ),
        ),
      ),
      body:Center(
        child: Text("Profile"),
      )
    );
  }
}
