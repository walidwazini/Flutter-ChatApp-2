import 'package:chat_app_2/widgets/chat_detail.dart';
import 'package:chat_app_2/widgets/chat_list.dart';
import 'package:chat_app_2/widgets/forgot_password.dart';
import 'package:chat_app_2/widgets/login.dart';
import 'package:chat_app_2/widgets/messages_screen.dart';
import 'package:chat_app_2/widgets/register.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: LoginPage(),
      routes: {
        'Login' : (context) => LoginPage(),
        'ChatList' : (context) => ChatListPage(),
        'ChatDetails' : (context) => ChatDetailPage(),
        'Register' : (context) => RegisterPage(),
        'RecoverPassword' : (context) => ForgotPasswordPage(),
      },
    );
  }
}
