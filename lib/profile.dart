import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(color: Colors.purple),
        child: RawScrollbar(
          controller: scrollController,
          trackVisibility: true,
          thumbVisibility: true,
          thumbColor: Colors.green,
          trackColor: Colors.blue,
          child: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, //mainaxialignment --> Y-axis
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment:
                  CrossAxisAlignment.center, //crossaxisalignmnet --> X-axis
              children: [
                Container(
                  height: 250,
                  width: 150,
                  color: Colors.orange,
                ),
                Container(
                  height: 400,
                  width: 400,
                  color: Colors.black,
                  child: Stack(
                    children:[]
                  )
                ),
                Container(
                  height: 250,
                  width: 100,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
