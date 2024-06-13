import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'profile.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard",
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Colors.blueGrey,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            );
          },
        ),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Click me",
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.people,
                color: Colors.white,
              ))
        ],
        elevation: 10.0,
        shadowColor: Colors.red,
      ),
      drawer: Drawer(
        backgroundColor: Colors.indigo,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Shashwat"),
                accountEmail: Text("shashwat12345@gmail.com"),
                currentAccountPicture: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgBhcplevwUKGRs1P-Ps8Mwf2wOwnW_R_JIA&s"),
                otherAccountsPictures: [
                  Container(
                      decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  )),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
              Card(
                child: ListTile(
                  title: Text("Profile page"),
                  subtitle: Text("Go to profile"),
                  leading: Icon(Icons.home),
                  trailing: Icon(Icons.visibility),
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(
                      builder: (ctx) {
                        return Profile();
                      },
                    ));
                    print("Profile page menu clicked");
                  },
                ),
              ),
              Card(
                child: ExpansionTile(
                  title: Text("Other page"),
                  subtitle: Text("Go to homepage"),
                  leading: Icon(Icons.home),
                  children: [
                    Text("Expanded data"),
                    Container(
                      height: 1000,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
              height: 300,
              width: 350,
              // color: Colors.teal,
              decoration: BoxDecoration(
                color: Colors.teal,
                // borderRadius: BorderRadius.all(Radius.elliptical(200, 100)),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(50),
                    topLeft: Radius.elliptical(30, 50)),
                border: Border.all(width: 5, color: Colors.black),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(0.6),
                    offset: Offset(-20, 20),
                    blurRadius: 10,
                    spreadRadius: 20,
                  ),
                ],
              ),
              // alignment: Alignment.center,
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              transform: Matrix4.rotationZ(0.3),
              child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 206, 88, 88),
                      // borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: Colors.black,
                      )),
                  alignment: Alignment.center,
                  child: Text("HIIIIII",
                      style: TextStyle(
                        color: Colors.teal,
                      )))),
        ],
      ),
    );
  }
}
