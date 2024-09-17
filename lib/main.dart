import 'package:flutter/material.dart';
import 'package:flutterbloc/constants/colors.dart';
import 'features/home/ui/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: teal,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}



// event => bloc => state