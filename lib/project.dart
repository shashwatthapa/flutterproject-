import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project page',
        style:TextStyle(
          color:Colors.amber
          ),
        ),
      ),
    );
  }
}
