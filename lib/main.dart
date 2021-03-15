import 'package:flutter/material.dart';
import 'package:flutter_app/modules/bottom_nav/bottom_nav.dart';
import 'package:flutter_app/modules/home_screen/home_screen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNav(),
    );
  }
}