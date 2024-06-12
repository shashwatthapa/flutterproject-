import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myapp/dashbord.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Dashboard(),
  );
  
  }

}

