import 'package:chat_app_2/widgets/login.dart';
import 'package:chat_app_2/widgets/register.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_2/widgets/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(primarySwatch: Colors.blue,),
      home: LoginPage(),
      routes: {
        'Login' : (context) => LoginPage(),
        'Register' : (context) => RegisterPage(),
      },
    );
  }
}
