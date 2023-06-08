import 'package:flutter/material.dart';
import 'package:radwatchfinal/pages/login.dart';
import 'package:radwatchfinal/pages/graph.dart';
import 'package:radwatchfinal/pages/radoninfo.dart';
import 'package:radwatchfinal/pages/signup.dart';
import 'package:radwatchfinal/pages/welcome.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: "/",
       routes: {
        "/":(context) => const Welcome(),
        "/signup":(context) => const Signup(),
        "/login":(context) =>   login(),
        "/radoninfo":(context) => const Radoninfo(),
        "/graph":(context) => const graph(),

        
       },
    );
  }
}
